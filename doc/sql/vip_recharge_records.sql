/*vip 充值记录表 **/
DROP  TABLE if EXISTS vip_recharge_records;
CREATE TABLE vip_recharge_records (
  records_id VARCHAR(32) PRIMARY KEY  COMMENT '充值记录id',
  vip_code VARCHAR(100) COMMENT '充值的vip类型',
  recharge_money_count VARCHAR(10) COMMENT '充值多少钱',
  recharge_months_count VARCHAR(10) COMMENT '充值多少个月',
  recharge_sale VARCHAR(10) COMMENT '充值打折数',
  recharge_real_money_count VARCHAR(10) COMMENT '充值的真实钱，这个值为recharge_money_count*recharge_sale',
  sale_promotion_id VARCHAR(32) COMMENT '这个字段保留，以后如果有促销活动，这个id表示为活动的id',
  recharge_date VARCHAR(64) COMMENT '充值时间'
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '用户vip充值记录';