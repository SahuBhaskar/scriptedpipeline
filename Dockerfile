FROM centos:latest
MAINTAINER bhaskar467@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/1oxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip 1oxury.zip
RUN cp -rvf 1oxury/* .
RUN rm -rf 1oxury 1oxury.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
