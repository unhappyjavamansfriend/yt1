select * from config_info ci 
where data_id like 'yt1%'
order by id desc;

INSERT INTO nacos_config.config_info (id, data_id, group_id, content, md5, gmt_create, gmt_modified, src_user, src_ip, app_name, tenant_id, c_desc, c_use, effect, `type`, c_schema, encrypted_data_key) VALUES(18, 'yt1-gateway', 'DEFAULT_GROUP_yt1', 'spring:
  security:
    basic:
      enabled: false
  banner:
    location: classpath:banner.txt
  cloud:
    gateway:
      globalcors:
        add-to-simple-url-handler-mapping: true
        corsConfigurations:
          ''[/**]'':
            allowedHeaders: "*"
            allowedOrigins: "*"
            allowedMethods:
              - GET
              - POST
              - DELETE
              - PUT
              - OPTION
      routes:
        - id: yt1
          uri: lb://yt1-service
          predicates:
            - Path=/yt1/**
          filters:
            - StripPrefix= 1
jwt:
  secret: cTce+fPOxFLntX3Ie+gHTYwPEcQzJU7dWSiRhAW1Pxg=
  ttl: 36000000', 'b2bd4526888d5d13cfbf0af174f45e7d', '2025-02-12 14:12:07', '2025-02-12 14:12:07', NULL, '10.0.2.2', '', '', NULL, NULL, NULL, 'yaml', NULL, '');
INSERT INTO nacos_config.config_info (id, data_id, group_id, content, md5, gmt_create, gmt_modified, src_user, src_ip, app_name, tenant_id, c_desc, c_use, effect, `type`, c_schema, encrypted_data_key) VALUES(17, 'yt1-service', 'DEFAULT_GROUP_yt1', 'spring:
  security:
    basic:
      enabled: false
  banner:
    location: classpath:banner.txt
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://192.168.33.11:3308/yt1_db?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false
    username: yt1_user
    password: yt1_password
  jpa:
    hibernate:
      ddl-auto: update
    show-sql: true
    properties:
      hibernate:
        format_sql: true
  rabbitmq:
    host: 192.168.33.11
    port: 5672
    username: admin
    password: rabbitmq_password
  redis:
    host: 192.168.33.11
    port: 6379
    password: redis_password
    lettuce:
      pool:
        max-active: 8
        max-idle: 8
        min-idle: 0
rabbitmq:
  convert-queue: convertQueue
  download-log-queue: downloadLogQueue
  notification-queue: notificationQueue
  embedUrl-queue: embedUrlQueue
  user-log-queue: userLogQueue
vagrant:
  id: 0d36b1c
yt1:
  base-dir: D:\local\workspace\yt1\download\
jwt:
  secret: cTce+fPOxFLntX3Ie+gHTYwPEcQzJU7dWSiRhAW1Pxg=
  ttl: 36000000', '4d48d6a808b6cc0e2ec9957d2978d77e', '2025-02-12 14:11:10', '2025-02-12 14:11:10', NULL, '10.0.2.2', '', '', NULL, NULL, NULL, 'yaml', NULL, '');
