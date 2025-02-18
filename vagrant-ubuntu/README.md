# vagrant

```sh
# 同步nginx 用
vagrant rsync 
```

# docker compose

```sh
sudo nano docker-compose.yml

cat docker-compose.yml

# 服務記得起
sudo docker compose up -d nacos redmine nginx_yt1
sudo docker compose up -d redis rabbitmq
sudo docker compose up -d ytdlp ffmpeg 
```

# spring boot

## pom

```xml 
<!--    沒有子項目記得改回jar-->
<packaging>jar</packaging>
```

## log

logback.xml

LOG_HOME記得改

# nacos + spring boot

## bootstrap.yml

對應spring boot 的 bootstrap.yml
group要給對

## pom.xml

```xml
<!--    父項目-->

  <properties>
    <com.alibaba.cloud>2.2.1.RELEASE</com.alibaba.cloud>
    <spring.cloud.version>Hoxton.SR12</spring.cloud.version>
  </properties>

  <dependencyManagement>
    <dependencies>
      <!-- Spring Cloud Dependencies -->
      <dependency>
        <groupId>org.springframework.cloud</groupId>
        <artifactId>spring-cloud-dependencies</artifactId>
        <version>${spring.cloud.version}</version>
        <type>pom</type>
        <scope>import</scope>
      </dependency>

      <dependency>
        <groupId>com.alibaba.cloud</groupId>
        <artifactId>spring-cloud-starter-alibaba-nacos-config</artifactId>
        <version>${com.alibaba.cloud}</version>
      </dependency>

      <dependency>
        <groupId>com.alibaba.cloud</groupId>
        <artifactId>spring-cloud-starter-alibaba-nacos-discovery</artifactId>
        <version>${com.alibaba.cloud}</version>
      </dependency>
</dependencies>
  </dependencyManagement>

 
<!--    子項目-->

        <dependency>
            <groupId>com.alibaba.cloud</groupId>
            <artifactId>spring-cloud-starter-alibaba-nacos-config</artifactId>
        </dependency>

        <dependency>
            <groupId>com.alibaba.cloud</groupId>
            <artifactId>spring-cloud-starter-alibaba-nacos-discovery</artifactId>
        </dependency>
```

# mysql

yt1-service吃nacos 記得先下mysql.sh 創建db、user

```sh 
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
```