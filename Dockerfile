FROM centos:latest
MAINTAINER shahfahad110g@gmail.com
RUN apt install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
