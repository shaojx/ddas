/*增加用户的头像字段*/
ALTER TABLE user_info ADD COLUMN head_photo_url VARCHAR(500);
COMMIT ;