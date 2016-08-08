/*增加用户的头像字段*/
ALTER TABLE user_info ADD COLUMN head_photo_url VARCHAR(500);
/*增加用户金币字段*/
ALTER TABLE user_info ADD COLUMN user_coin VARCHAR(64) COMMENT '用户金币数,1美元=1金币';

COMMIT ;