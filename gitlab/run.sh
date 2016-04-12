#!/usr/bin/env bash

mkdir -p /opt/gitlab && chmod -R 777 /opt/gitlab

docker run -d \
    --name gitlab \
    --restart=always \
    -p 11080:80 \
    -p 11022:22 \
    -v /opt/gitlab:/home/git/data \
    -e 'DEBUG=false' \
    -e 'TZ=Asia/Chongqing' \
    -e 'GITLAB_TIMEZONE=Chongqing' \
    -e 'GITLAB_SECRETS_DB_KEY_BASE=XPfntgpfRdKpMMjPf9d4d9LLsbLjxhNcFdr7nWC9dCCzjMh9rCmXxm4P7fwnsPxH' \
    -e 'GITLAB_HOST=gitlab.dev.cn' \
    -e 'GITLAB_PORT=11080' \
    -e 'GITLAB_SSH_PORT=11022' \
    -e 'GITLAB_RELATIVE_URL_ROOT=/' \
    -e 'GITLAB_ROOT_PASSWORD=nihao213' \
    -e 'DB_ADAPTER=mysql2' \
    -e 'DB_HOST=18.18.19.222' \
    -e 'DB_PORT=3306' \
    -e 'DB_NAME=gitlabhq_production' \
    -e 'DB_USER=root' \
    -e 'DB_PASS=123456' \
    -e 'REDIS_HOST=18.18.19.222' \
    -e 'REDIS_PORT=6379' \
    -e 'GITLAB_NOTIFY_ON_BROKEN_BUILDS=true' \
    -e 'GITLAB_NOTIFY_PUSHER=false' \
    -e 'GITLAB_EMAIL=devadmin@eqrbank.com' \
    -e 'GITLAB_EMAIL_REPLY_TO=devadmin@eqrbank.com' \
    -e 'GITLAB_INCOMING_EMAIL_ADDRESS=devadmin@eqrbank.com' \
    -e 'GITLAB_BACKUP_SCHEDULE=daily' \
    -e 'GITLAB_BACKUP_TIME=01:00' \
    -e 'SMTP_ENABLED=true' \
    -e 'SMTP_DOMAIN=smtp.eqrbank.com' \
    -e 'SMTP_HOST=smtp.eqrbank.com' \
    -e 'SMTP_PORT=25' \
    -e 'SMTP_USER=devadmin@eqrbank.com' \
    -e 'SMTP_PASS=devadmin123' \
    -e 'SMTP_STARTTLS=true' \
    -e 'SMTP_AUTHENTICATION=login' \
    registry.aliyuncs.com/zuowenbo/gitlab