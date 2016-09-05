package com.ddas.sns.payfor.control;

import com.ddas.common.Msg;
import com.ddas.common.util.StringUtil;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.payfor.service.PayService;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.service.UserInfoService;
import com.ddas.sns.userrechargerecords.domain.UserRechargeRecord;
import com.ddas.sns.userrechargerecords.service.UserRechargeRecordService;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import com.sun.xml.internal.bind.v2.TODO;
import com.sun.xml.internal.ws.api.message.ExceptionHasMessage;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestClientException;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.DecimalFormat;

/**
 * ClassName:	PayForController
 * Function: 	充值中心Controller
 *
 * @author shaojx
 * @date 2016/7/9 18:48
 * @since JDK 1.6
 */
@Controller
@RequestMapping("/payfor")
public class PayForController extends BaseController{
    private static  final Logger LOGGER= LoggerFactory.getLogger(PayForController.class);
    private static final String clientID = "AdXFF0sPxNMYjNltGOGlwfbBvqFrsql7fOBv-_5ww0V4izpmmgzrCArQGblGhYoGX_IB2LrkpBavEs7c";
    private static final String clientSecret = "EMef1NW1OGzzHn-86cjxfXTEecNTEc3dklDRVQ9TwWKNUM1SnqzgfSjaNoACkaurSWsl355GVAEza-QD";

    @Resource
    private PayService payService;

    @Resource
    private UserInfoService userInfoService;

    @Resource
    private UserRechargeRecordService userRechargeRecordService;
    /**
     *跳转到 充值中心 的首页
     *@return java.lang.String
     *@author shaojx
     *@date 2016/7/9 18:49
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoIndex")
    public ModelAndView gotoIndex(HttpServletRequest httpServletRequest){
        UserInfo loginUser = getLoginUser(httpServletRequest);
        ModelAndView mav = new ModelAndView("payfor/paycenter");
        mav.addObject("loginUserId", loginUser.getUserId());
        return mav;
    }

    /**
     *跳转到 充值中心 的首页
     *@return java.lang.String
     *@author shaojx
     *@date 2016/7/9 18:49
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/payPalRedirect")
    @ResponseBody
    public Msg gotoPaypal(String userId, String payMethod, String mount, HttpServletRequest request){
        String redirectUrl = "";
        if("1".equals(payMethod)) {//使用paypal支付
            try {
                redirectUrl = payService.getRedirectUrl(userId, mount, getLoginUser(request));
            }catch(Exception e){
                LOGGER.error("Paypal 支付失败！" + e.getMessage(), e);
            }
        }else if("2".equals(payMethod)){
            // TODO: 2016/7/15 其他的支付方式
        }
        Msg msg = new Msg();
        msg.setMsg(redirectUrl);
        return msg;
    }

    @RequestMapping("/paypalProcess")
    @ResponseBody
    public ModelAndView callBackForPaypal(String userid, String paymentId, String token, String PayerID, String hquserid, HttpServletRequest request){//userid代表钱冲到哪个用户，hquserid代表花钱的用户ID
        APIContext context = new APIContext(clientID, clientSecret, "sandbox");
        Payment payment = new Payment();
        payment.setId(paymentId);
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(PayerID);
        Msg msg = new Msg();
        try{
            payment = payment.execute(context, paymentExecution);
            if(("approved").equals(payment.getState())){
                UserInfo userInfo = userInfoService.fetchUserInfoByUserId(userid);
                String payAmount = payment.getTransactions().get(0).getAmount().getTotal();
                Double userAmount = Double.valueOf(StringUtil.isEmpty(userInfo.getUserCoin()) ? "0.00" : userInfo.getUserCoin());
                Double totalAmount = userAmount + Double.valueOf(payAmount);//将用户的剩余金额和此次支付成功的金额加起来
                DecimalFormat df = new DecimalFormat("0.00");//保留两位小数，存到数据库
                userInfo.setUserCoin(df.format(totalAmount));
                userInfoService.saveUserInfo(userInfo);
                userRechargeRecordService.saveRechargeRecords(userid, hquserid, payAmount);

                msg.setMsg("Pay Success，the balance on your account is <strong>" + userAmount + " </strong>coins");
            }else {
                msg.setMsg("Pay failed！Please contact customer service.");
            }
        }catch(Exception e){
            LOGGER.error(e.getMessage(), e);
            msg.setMsg("Pay failed！Please contact customer service.");
        }

        ModelAndView mav = withLocal(request, "payfor/callBack");
        mav.addObject("msg", msg);
        return mav;
    }
}
