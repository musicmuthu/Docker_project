FROM centos:7
MAINTAINER MUTHU@muthu.com
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
