FROM richarvey/nginx-php-fpm:latest

WORKDIR /usr/share/nginx/html

# Install tools
RUN apt-get update
RUN apt-get install wget vim unzip -y

# Download ZentaoPMS
#RUN curl -O -s http://dl.cnezsoft.com/zentao/8.1/ZenTaoPMS.8.1.stable.zip
RUN wget --no-verbose -O /tmp/ZenTaoPMS.8.1.stable.zip http://dl.cnezsoft.com/zentao/8.1/ZenTaoPMS.8.1.stable.zip
RUN unzip -n /tmp/ZenTaoPMS.8.1.stable.zip -d /usr/share/nginx/html/
RUN rm /tmp/ZenTaoPMS.8.1.stable.zip