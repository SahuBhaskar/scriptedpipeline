FROM centos:latest
MAINTAINER bhaskar467@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page267/pcoint.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
