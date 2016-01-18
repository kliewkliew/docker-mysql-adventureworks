FROM centos:6.6
MAINTAINER Kevin Liew, kliew, kliewkliew

# Install MySQL server
RUN yum install -y mysql-server
COPY my.cnf /etc/

# Import AdventureWorks database
ADD AdventureWorks.sql.tar.gz /tmp/
RUN service mysqld start && \
	mysql < /tmp/AdventureWorks.sql && \
	mysql -e'GRANT ALL ON *.* TO sqoop@"%" IDENTIFIED BY "sqoop";'

ENTRYPOINT service mysqld start && \
	tail -f /var/log/mysqld.log

EXPOSE 3306
