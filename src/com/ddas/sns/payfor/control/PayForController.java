package com.ddas.sns.payfor.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
