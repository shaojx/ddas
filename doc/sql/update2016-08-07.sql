/*增加用户的头像字段*/
ALTER TABLE user_info ADD COLUMN head_photo_url VARCHAR(500) COMMENT '用户头像的url';
/*邮件回复增加字段*/
ALTER  TABLE user_email ADD COLUMN parent_email_id VARCHAR(64) COMMENT '回复邮件的id';
ALTER  TABLE user_email ADD COLUMN mother_email_id VARCHAR(64) COMMENT '当有多级回复时，这个id表示最初的邮件id';
COMMIT ;