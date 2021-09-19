FROM centos:latest
MAINTAINER bhaskar467@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page267/pcoint.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip pcoint.zip.zip
RUN cp -rvf pcoint/* .
RUN rm -rf pcoint pcoint.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
