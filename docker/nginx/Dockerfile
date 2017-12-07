FROM nginx:1.11
RUN apt-get update && \
    apt-get install -y apt-utils cron logrotate\
                       locales && \
    echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./rails.conf /etc/nginx/conf.d/default.conf
ADD ./mime.types /etc/nginx/mime.types
