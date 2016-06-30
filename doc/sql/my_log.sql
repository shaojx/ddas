CREATE TABLE my_log (
  my_log_id      VARCHAR(32) PRIMARY KEY
  COMMENT '日志表主键',
  my_log_title   VARCHAR(50) COMMENT '日志标题',
  my_log_types   VARCHAR(20) COMMENT '日志分类,与表my_log_types关联',
  my_log_tags    VARCHAR(300) COMMENT '日志标签,多个用逗号隔开',
  my_log_privs   VARCHAR(10) COMMENT '日志开放权限,0表示全部可见，1表示自己可见',
  my_log_content VARCHAR(1000) COMMENT '日志内容'
)
  ENGINE = inndb
  DEFAULT CHARSET = utf8;