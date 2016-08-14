/**插入相应的权限值 信息*/
INSERT INTO user_vip_info(vip_info_id, user_id, vip_type_code, vip_start_date, vip_end_start, describ)
VALUES ('1','1',0,'2016-8-14','2017-8-14','这是一条测试数据!');

/**privis type_code=0*/
INSERT INTO vip_privs(vip_priv_id, vip_type_code, priv_type, priv_value)
VALUES ('1','0','photoCount',1);