# Dockerfile
FROM centos:latest

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Linux-* \
    && sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Linux-* \
    && yum update -y && yum install -y perl perl-core perl-Test-Simple

COPY myscript.pl /usr/local/bin/myscript.pl
COPY tests.t /usr/local/bin/tests.t

CMD ["prove", "-v", "/usr/local/bin/tests.t"]
