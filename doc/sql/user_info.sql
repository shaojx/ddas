DROP TABLE IF EXISTS user_info;
CREATE TABLE user_info(
  user_id VARCHAR(32) PRIMARY KEY COMMENT '用户id--主键',
  user_name VARCHAR(50) COMMENT '用户名',
  user_pwd VARCHAR(50) COMMENT '用户密码',
  user_email VARCHAR(50) COMMENT '用户邮箱',
  user_height VARCHAR(50) COMMENT '用户身高',
  user_weight VARCHAR(50) COMMENT '用户体重',
  user_sex VARCHAR(10) COMMENT '用户性别(只存储数据字典值)',
  user_contury VARCHAR(50) COMMENT '所属国家',
  user_birth VARCHAR(50) COMMENT '出生日期',
  user_religion VARCHAR(50) COMMENT '宗教信仰',
  user_education VARCHAR(50) COMMENT '教育',
  user_declaration VARCHAR(50) COMMENT '交友誓言',
  user_enroll VARCHAR(50) COMMENT  '年收入(只存储数据字典值)',
  user_marry_status VARCHAR(50) COMMENT '婚姻状态(只存储数据字典值)',
  user_status VARCHAR(50) COMMENT '用户状态(可以对用户进行相应的限制)',
  create_time DATETIME DEFAULT now() COMMENT '创建时间'
)ENGINE =innodb DEFAULT CHARSET =utf8 COMMENT '用户信息表';
