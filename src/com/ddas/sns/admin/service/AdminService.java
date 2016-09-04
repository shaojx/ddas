package com.ddas.sns.admin.service;

import com.ddas.common.page.Page;
import com.ddas.common.service.BaseService;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.domain.UserInfoCriteria;
import com.ddas.sns.userinfo.mapper.UserInfoMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName:	AdminService
 * Function: 	后台管理 Service
 *
 * @author shaojx
 * @date 2016/9/4 23:48
 * @since JDK 1.6
 */
@Service
public class AdminService extends BaseService {
    @Resource
    private UserInfoMapper userInfoMapper;
    /**
     *获取所有的用户信息
     * @param pageNo 当前页
     * @param pageSize 每页的数据量
     * @param loginUser 登录的用户信息
     *@return com.ddas.common.page.Page 对数据的封装
     *@author shaojx
     *@date 2016/9/5 0:02
     *@version 1.0
     *@since 1.6
     */
    public Page findAllUserInfos(int pageNo, int pageSize, UserInfo loginUser) {
        Page page = new Page();
        page.setCurrentPage(pageNo);
        page.setPageSize(pageSize);
        UserInfoCriteria example = new UserInfoCriteria();
        int totalCount = userInfoMapper.countByExample(example);
        example.setOrderByClause("created_time desc");
        example.setLimitStart(page.getPageStart());
        example.setLimitEnd(pageSize);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        page.setTotalCount(totalCount);
        setPassword2Null(userInfos);
        page.setDataList(userInfos);
        return page;
    }

    /**
     *设置用户的密码为null
     * @param userInfos 用户信息列表
     *@return void
     *@author shaojx
     *@date 2016/9/5 0:26
     *@version 1.0
     *@since 1.6
     */
    private void setPassword2Null(List<UserInfo> userInfos) {
        if(userInfos==null){
            return;
        }
        for(UserInfo userInfo:userInfos){
            userInfo.setUserPwd(null);
        }
    }


    public Page findAllUserRecords(){
        return null;
    }
}
