package com.ddas.sns.vip.service;

import com.ddas.common.service.BaseService;
import com.ddas.common.util.StringUtil;
import com.ddas.sns.vip.domain.UserVipInfo;
import com.ddas.sns.vip.domain.UserVipInfoCriteria;
import com.ddas.sns.vip.domain.VipPrivs;
import com.ddas.sns.vip.domain.VipPrivsCriteria;
import com.ddas.sns.vip.mapper.UserVipInfoMapper;
import com.ddas.sns.vip.mapper.VipPrivsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * ClassName:	VipService
 * Function: 	Vip  Service类
 *
 * @author shaojx
 * @date 2016/8/12 22:19
 * @since JDK 1.6
 */
@Service
public class VipService extends BaseService {
    @Autowired
    private VipPrivsMapper vipPrivsMapper;

    @Autowired
    private UserVipInfoMapper UserVipInfoMapper;
    /**
     *根据VIP的类型来获取相应的权限信息
     * @param vipCode vip类型code
     *@return java.util.List<com.ddas.sns.vip.domain.VipPrivs>
     *@author shaojx
     *@date 2016/8/12 22:53
     *@version 1.0
     *@since 1.6
     */
    public List<VipPrivs> fetchVipPrivsByVipCode(String vipCode){
        VipPrivsCriteria criteria=new VipPrivsCriteria();
        VipPrivsCriteria.Criteria criterion = criteria.createCriteria();
        criterion.andVipTypeCodeEqualTo(vipCode);
        List<VipPrivs> vipPrivses = vipPrivsMapper.selectByExample(criteria);
        return vipPrivses;
    }

    /**
     *根据用户的id来获取相应的用户vip信息
     * @param userId 用户id
     *@return com.ddas.sns.vip.domain.UserVipInfo vip信息
     *@author shaojx
     *@date 2016/8/12 22:58
     *@version 1.0
     *@since 1.6
     */
    public UserVipInfo fetchUserVipInfoByUserId(String userId){
        if(StringUtil.isNotEmpty(userId)){
            UserVipInfoCriteria userVipInfoCriteria =new UserVipInfoCriteria();
            UserVipInfoCriteria.Criteria criteria = userVipInfoCriteria.createCriteria();
            criteria.andUserIdEqualTo(userId);
            List<UserVipInfo> userVipInfos = UserVipInfoMapper.selectByExample(userVipInfoCriteria);
            if(userVipInfos!=null&&userVipInfos.size()>0){
                return userVipInfos.get(0);
            }
            return null;
        }
        return null;
    }

    /**
     *根据用户的id来获取用户相应的vip权限
     * @param userId 用户的id
     *@return java.util.List<com.ddas.sns.vip.domain.VipPrivs> vip相应的权限
     *@author shaojx
     *@date 2016/8/12 23:03
     *@version 1.0
     *@since 1.6
     */
    public List<VipPrivs> fetchVipPrivsByUserId(String userId){
        UserVipInfo userVipInfo = fetchUserVipInfoByUserId(userId);
        if(userVipInfo==null){
            return new ArrayList<VipPrivs>();
        }
        return fetchVipPrivsByVipCode(userVipInfo.getVipTypeCode());
    }
}
