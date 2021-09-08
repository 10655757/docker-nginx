FROM centos:7

LABEL contact="alexander.nazarian@gmail.com"

RUN yum -y install epel-release \
    && yum -y update \
    && yum -y clean all \
    && yum -y install nginx

RUN rm -f /usr/share/nginx/html/index.html \
    && echo -e '<!DOCTYPE html>\n<html>\n<body>\n<h1>' > /usr/share/nginx/html/index.html \
    && date +%d"-"%b"-"%Y" "%R >> /usr/share/nginx/html/index.html \
    && echo -e '</h1>\n</body>\n</html>' >> /usr/share/nginx/html/index.html
    
EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
