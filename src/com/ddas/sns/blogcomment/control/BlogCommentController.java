package com.ddas.sns.blogcomment.control;

import com.ddas.common.Msg;
import com.ddas.sns.blogcomment.service.BlogCommentService;
import com.ddas.sns.common.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * ClassName:	BlogCommentController
 * Function: 	日志评论Controller
 *
 * @author shaojx
 * @date 2016/7/10 13:31
 * @since JDK 1.6
 */
@Controller
@RequestMapping("/blogComment")
public class BlogCommentController extends BaseController {

    @Resource
    private BlogCommentService blogCommentService;


    /**
     *保存朋友日志评论信息
     * @param blogId 日志id
     * @param comment 评论内容
     *@return com.ddas.common.Msg
     *@author shaojx
     *@date 2016/7/10 13:53
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/saveFriendComment")
    @ResponseBody
    public Msg saveFriendComment(String blogId, String comment) {
        boolean saveResult=blogCommentService.saveFriendComment(blogId,comment,getLoginUserAutoBySpringMVC());
        Msg msg=new Msg();
        if(saveResult){
            msg.setSuccessful(true);
            msg.setMsg("success");
        }else{
            msg.setSuccessful(false);
            msg.setMsg(getMsgByKeyViaLocal("saveBlogComment.error"));
        }
        return msg;
    }


    /**
     *根据blogId来获取相应的评论总数n
     * @param blogId
     *@return com.ddas.common.Msg
     *@author shaojx
     *@date 2016/7/10 15:05
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/fetchCommentCountById")
    @ResponseBody
    public Msg fetchCommentCountById(String blogId){
        int count=blogCommentService.fetchCommentCountById(blogId);
        Msg msg=new Msg();
        msg.setSuccessful(true);
        msg.setMsg(count+"");
        return msg;
    }

}
