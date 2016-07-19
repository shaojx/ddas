/**
 * 项目名称:	OpenSource
 * 文件名称:	UserInfoService.java
 * 包名:		 com.ddas.sns.friends.service
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userinfo.service;

import com.ddas.common.page.Page;
import com.ddas.common.util.StringUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.domain.UserInfoCriteria;
import com.ddas.sns.userinfo.mapper.UserInfoMapper;
import com.sun.xml.internal.bind.v2.TODO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * ClassName:	UserInfoService
 * Function: 	todo ADD FUNCTION
 *
 * @author shaojunxiang
 * @date 13:59
 * @since JDK 1.6
 */
@Service
public class UserInfoService {
    @Resource
    private UserInfoMapper userInfoMapper;

    /**
     * 用户登录
     *
     * @param userInfo 用户信息
     * @return boolean {false}登录失败,{true}登录成功
     * @author shaojx
     * @date 2016/7/9 14:05
     * @version 1.0
     * @since 1.6
     */
    public UserInfo loginInProxy(UserInfo userInfo) {
        if (userInfo == null) {
            return null;
        }
        UserInfoCriteria example = new UserInfoCriteria();
        UserInfoCriteria.Criteria criteria = example.createCriteria();
        criteria.andUserNameEqualTo(userInfo.getUserName()).andUserPwdEqualTo(userInfo.getUserPwd());
        List<UserInfo> userInfos = userInfoMapper.selectByExample(example);
        if (userInfos != null && userInfos.size() == 1) {//有且只有一条记录
            return userInfos.get(0);
        }
        return null;
    }

    /**
     *保存用户信息
     * @param userInfo 用户信息
     *@return boolean {false}保存失败 {true}保存成功
     *@author shaojx
     *@date 2016/7/16 12:15
     *@version 1.0
     *@since 1.6
     */
    public boolean save(UserInfo userInfo) {
        if(userInfo==null||userInfo.getUserName()==null||userInfo.getUserPwd()==null){
            return false;
        }
        userInfo.setUserId(UUIDUtil.createUUID16());//id
        userInfoMapper.insertSelective(userInfo);
        return true;
    }

    /**
     *根据用户名来查找对应的名字是否被注册
     * @param userName 用户名
     *@return boolean {true}没有被注册,{false}被注册
     *@author shaojx
     *@date 2016/7/16 13:08
     *@version 1.0
     *@since 1.6
     */
    public boolean findUserByName(String userName) {
        UserInfoCriteria userInfoCriteria=new UserInfoCriteria();
        UserInfoCriteria.Criteria criteria = userInfoCriteria.createCriteria();
        criteria.andUserNameEqualTo(userName);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(userInfoCriteria);
        return userInfos.size() <= 0;
    }

    public Page queryUserListExcludeMe(int currentPage, int pageSize, UserInfo userInfo) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserInfoCriteria userInfoCriteria = new UserInfoCriteria();
        userInfoCriteria.setOrderByClause("updated_time");
        userInfoCriteria.setLimitStart(page.getPageStart());
        userInfoCriteria.setLimitEnd(pageSize);
        UserInfoCriteria.Criteria criteria = userInfoCriteria.createCriteria();
        criteria.andUserIdNotEqualTo(userInfo.getUserId());
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userInfoMapper.countByExample(userInfoCriteria));
        }
        page.setDataList(userInfoMapper.selectByExample(userInfoCriteria));
        // TODO: 2016/7/19 此处要去掉用户列表的密码信息
        return page;
    }
}
