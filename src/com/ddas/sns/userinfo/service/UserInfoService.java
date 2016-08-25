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
import com.ddas.common.util.date.DateUtil;
import com.ddas.common.util.uuid.UUIDUtil;
import com.ddas.sns.userfriend.domain.UserFriendCriteria;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.domain.UserInfoCriteria;
import com.ddas.sns.userinfo.mapper.UserInfoMapper;
import com.sun.xml.internal.bind.v2.TODO;
import org.apache.http.impl.client.TunnelRefusedException;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
     * 根据用户ID找到用户
     * @author liuchen
     * @date 2016/7/9 14:05
     * @version 1.0
     * @since 1.6
     */
    public UserInfo fetchUserInfoByUserId(String userId) {
        return userInfoMapper.selectByPrimaryKey(userId);
    }

    /**
     * 若用户ID为空，则新增，保存，若不为空，则直接保存
     * @author liuchen
     * @date 2016/7/9 14:05
     * @version 1.0
     * @since 1.6
     */
    public boolean saveUserInfo(UserInfo userInfo) {
        if(userInfo == null) {
            return false;
        }
        String currentDateTime = DateUtil.getCurrentDateString();
        if(StringUtil.isEmpty(userInfo.getUserId())) {//用户ID为空，那么新增
            userInfo.setUserId(UUIDUtil.createUUID16());
            userInfo.setCreatedTime(currentDateTime);
            userInfo.setUpdatedTime(currentDateTime);
            userInfoMapper.insertSelective(userInfo);
            return true;
        }else {
            userInfoMapper.updateByPrimaryKey(userInfo);
            return true;
        }
    }

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
        String currentDateTime = DateUtil.getCurrentDateString();
        userInfo.setUserId(UUIDUtil.createUUID16());//id
        userInfo.setCreatedTime(currentDateTime);
        userInfo.setUpdatedTime(currentDateTime);
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
    /**
     *首页显示其他的用户列表
     *@author shaojx
     *@date 2016/7/16 13:08
     *@version 1.0
     *@since 1.6
     */
    public Page queryUserListExcludeMe(int currentPage, int pageSize, String searchUserName, UserInfo userInfo) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserInfoCriteria userInfoCriteria = new UserInfoCriteria();
        userInfoCriteria.setOrderByClause("updated_time desc");
        userInfoCriteria.setLimitStart(page.getPageStart());
        userInfoCriteria.setLimitEnd(pageSize);
        UserInfoCriteria.Criteria criteria = userInfoCriteria.createCriteria();
        criteria.andUserIdNotEqualTo(userInfo.getUserId());
        if(StringUtil.isNotEmpty(searchUserName)) {
            criteria.andUserNameLikeInsensitive("%" + searchUserName + "%");
        }
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userInfoMapper.countByExample(userInfoCriteria));
        }
        page.setDataList(userInfoMapper.selectByExample(userInfoCriteria));
        // TODO: 2016/7/19 此处要去掉用户列表的密码信息
        return page;
    }

    /**
     *首页推荐用户列表
     *@author shaojx
     *@date 2016/7/16 13:08
     *@version 1.0
     *@since 1.6
     */
    public Page queryUserListExcludeMeAndRecommend(int currentPage, int pageSize, UserInfo userInfo) {
        Page page = new Page();
        page.setCurrentPage(currentPage);
        page.setPageSize(pageSize);
        UserInfoCriteria userInfoCriteria = new UserInfoCriteria();
        userInfoCriteria.setOrderByClause("updated_time");
        userInfoCriteria.setLimitStart(page.getPageStart());
        userInfoCriteria.setLimitEnd(pageSize);
        UserInfoCriteria.Criteria criteria = userInfoCriteria.createCriteria();
        criteria.andUserIdNotEqualTo(userInfo.getUserId());
        criteria.andRecommendEqualTo("2");
        if(currentPage==1){//如果是当前第一页，则要求总数
            page.setTotalCount(userInfoMapper.countByExample(userInfoCriteria));
        }
        page.setDataList(userInfoMapper.selectByExample(userInfoCriteria));
        // TODO: 2016/7/19 此处要去掉用户列表的密码信息
        return page;
    }

    /**
     *根据用户名来查找注册的邮箱
     * @param userName 用户名
     *@author shaojx
     *@date 2016/7/20 21:52
     *@version 1.0
     *@since 1.6
     */
    public UserInfo fetchUserInfoByUserName(String userName){
        UserInfoCriteria criteria=new UserInfoCriteria();
        UserInfoCriteria.Criteria criteria1 = criteria.createCriteria();
        criteria1.andUserNameEqualTo(userName);
        List<UserInfo> userInfos = userInfoMapper.selectByExample(criteria);
        if(userInfos!=null&&userInfos.size()>0){
            return userInfos.get(0);
        }
        return null;
    }

    /**
     *更新用户的密码
     * @param userId 用户id
     * @param resetPwd 重置的密码
     *@return int 更新的记录数
     *@author shaojx
     *@date 2016/7/22 23:24
     *@version 1.0
     *@since 1.6
     */
    public int resetPwd(String userId, String resetPwd) {
        UserInfo record=new UserInfo();
        record.setUserId(userId);
        record.setUserPwd(resetPwd);
        int count = userInfoMapper.updateByPrimaryKeySelective(record);
        return count;
    }

    /**
     *更新用户的头像
     * @param userId 用户id
     * @param headPhotoUrl 头像的url
     *@return int 更新的数量(根据id来更新的数据，应该为1或者为0)
     *@author shaojx
     *@date 2016/8/7 0007 11:23
     *@version 1.0
     *@since 1.6
     */
    public int updateUserInfoHeadPhoto(String userId, String headPhotoUrl) {
        UserInfo userInfo=new UserInfo();
        userInfo.setUserId(userId);
        userInfo.setHeadPhotoUrl(headPhotoUrl);
        int updateByPrimaryKeySelective = userInfoMapper.updateByPrimaryKeySelective(userInfo);
        return updateByPrimaryKeySelective;
    }

    /**
     *根据用户的id来查询用户的信息
     * @param userId 用户id
     *@return com.ddas.sns.userinfo.domain.UserInfo
     *@author shaojx
     *@date 2016/8/7 0007 13:57
     *@version 1.0
     *@since 1.6
     */
    public UserInfo queryUserInfoByUserId(String userId){
        UserInfo userInfo = userInfoMapper.selectByPrimaryKey(userId);
        return userInfo;
    }

    /**
     *更新用户资料
     * @param userInfo 用户信息
     *@return com.ddas.sns.userinfo.domain.UserInfo 从数据库中重新获取的用户信息
     *@author shaojx
     *@date 2016/8/20 21:45
     *@version 1.0
     *@since 1.6
     */
    public UserInfo updateUserInfo(UserInfo userInfo) {
        userInfo.setUpdatedTime(DateUtil.getCurrentDateString());
        int updateByPrimaryKeySelective = userInfoMapper.updateByPrimaryKeySelective(userInfo);
        //get new data
        UserInfo newUserInfo = userInfoMapper.selectByPrimaryKey(userInfo.getUserId());
        return newUserInfo;
    }
}
