FROM centos:7.7.1908
MAINTAINER "Shikhar Bishnoi shikharbishnoi19@gmail.com"
RUN yum install epel-release -y
RUN yum install nginx wget net-tools bind-utils unzip -y
RUN yum clean all
copy index.html /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx" , "-g" , "daemon off;"]

