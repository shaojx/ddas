package com.ddas.sns.payfor.control;

import com.ddas.common.Msg;
import com.ddas.sns.payfor.service.PayService;
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
public class PayForController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(PayForController.class);
    private static final String clientID = "AdXFF0sPxNMYjNltGOGlwfbBvqFrsql7fOBv-_5ww0V4izpmmgzrCArQGblGhYoGX_IB2LrkpBavEs7c";
    private static final String clientSecret = "EMef1NW1OGzzHn-86cjxfXTEecNTEc3dklDRVQ9TwWKNUM1SnqzgfSjaNoACkaurSWsl355GVAEza-QD";

    @Resource
    private PayService payService;
    /**
     *跳转到 充值中心 的首页
     *@return java.lang.String
     *@author shaojx
     *@date 2016/7/9 18:49
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoIndex")
    public String gotoIndex(){
        return "payfor/paycenter";
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
    public Msg gotoPaypal(String userId, String payMethod, String mount){
        String redirectUrl = "";
        if("1".equals(payMethod)) {//使用paypal支付
            try {
                redirectUrl = payService.getRedirectUrl(userId, mount);
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
    public Msg callBackForPaypal(String userId, String paymentId, String token, String PayerID){
        APIContext context = new APIContext(clientID, clientSecret, "sandbox");
        Payment payment = new Payment();
        payment.setId(paymentId);
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(PayerID);
        Msg msg = new Msg();
        try{
            payment = payment.execute(context, paymentExecution);
        }catch(Exception e){
            LOGGER.error(e.getMessage(), e);
            msg.setMsg("支付失败！");
        }
        if(("approved").equals(payment.getState())){
            msg.setMsg("支付成功！");
            // TODO: 2016/7/15 支付成功就修改用户的金币数量
        }else {
            msg.setMsg("支付失败！");
        }

        return msg;
    }
}
