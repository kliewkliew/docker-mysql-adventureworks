FROM centos:6.6
MAINTAINER Kevin Liew, kliew, kliewkliew

# Install MySQL server
RUN yum install -y mysql-server
RUN sed s/bind-address/#bind-address/g /etc/my.cnf

# Import AdventureWorks database
ADD AdventureWorks.sql.tar.gz /tmp/
RUN service mysqld start && \
	mysql < /tmp/AdventureWorks.sql

ENTRYPOINT service mysqld start && \
	tail -f /var/log/mysqld.log

EXPOSE 3306
