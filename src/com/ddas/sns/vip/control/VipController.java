package com.ddas.sns.vip.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ClassName:	VipController
 * Function: 	会员Controller
 *
 * @author shaojx
 * @date 2016/7/8 21:44
 * @since JDK 1.6
 */
@Controller
@RequestMapping("/vip")
public class VipController {

    /**
     *升级会员页面
     *@return java.lang.String 升级会员的页面
     *@author shaojx
     *@date 2016/7/8 21:45
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoVip")
    public String gotoVip(){
        return "vip/index";
    }
}
