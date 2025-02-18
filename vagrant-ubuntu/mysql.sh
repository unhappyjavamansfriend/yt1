# 连接到 Docker 中运行的 MySQL 容器
sudo docker exec -it <your-container-name> mysql -u root -p

# 创建DATABASE 
mysql> CREATE DATABASE IF NOT EXISTS yt1_db;

# 创建新的用户
mysql> CREATE USER 'yt1_user'@'%' IDENTIFIED BY 'yt1_password';

# 授予权限
mysql> GRANT ALL PRIVILEGES ON yt1_db.* TO 'yt1_user'@'%';

# 查看当前有哪些DATABASE
mysql> show DATABASES;

# 重新加载权限
mysql> FLUSH PRIVILEGES;

# 该用户可能没有被授予访问特定数据库
mysql> GRANT ALL PRIVILEGES ON yt1_user.* TO 'yt1_user'@'%';
mysql> GRANT ALL PRIVILEGES ON yt1_article.* TO 'yt1_user'@'%';
mysql> GRANT ALL PRIVILEGES ON yt1_wemedia.* TO 'yt1_user'@'%';