FROM centos:latest
MAINTAINER bhaskar467@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page270/veggie.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip veggie.zip
RUN cp -rvf veggie/* .
RUN rm -rf veggie veggie.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
