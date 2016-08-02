package com.ddas.sns.gift.control;

import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.gift.service.GiftService;
import com.ddas.sns.mylog.service.MyLogService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * ClassName:	MyLogController
 * Function: 	我的日志Controller
 *
 * @author shaojx
 * @date 2016/6/29 23:01
 * @since JDK 1.6
 */
@Controller
@RequestMapping("/gift")
public class GiftController extends BaseController{
    @Resource
    private GiftService giftService;

    /**
     * 跳转到我的好友界面
     *@Author liuchen6
     *@Date 2016/7/1 14:52
     *@param
     *@return org.springframework.web.servlet.ModelAndView
     *@since JDK1.6
     */
    @RequestMapping(value = "/gotoIndex", method = {RequestMethod.GET})
    public ModelAndView goToMyBlogPage(HttpServletRequest request) {
        ModelAndView modelAndView = containLocal(request);
        modelAndView.setViewName("gift/gift");

        return modelAndView;
    }

}
