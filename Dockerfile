FROM centos:latest

RUN yum update -y
RUN yum install httpd httpd-tools -y
RUN yum install vim -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install htop -y

WORKDIR /var/www/html
EXPOSE 80

ADD ./index.html /var/www/html/
ENTRYPOINT [ "httpd" ]
CMD [ "-D", "FOREGROUND" ]