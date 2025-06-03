#gloabla arguments
ARG MYSQL_ROOT_PASSWORD='password'
ARG MYSQL_DATABASE='chatapp'
ARG MYSQL_USER='chatappadmin'
ARG MYSQL_PASSWORD='password'

# Base image
FROM ubuntu:22.04

# Environment variables for non-interactive apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install MySQL Server
RUN apt-get update && \
    apt-get install -y mysql-server && \
    apt-get clean

# Copy initialization SQL
COPY init.sql /init.sql

# Allow remote connections
RUN sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf

# Expose MySQL port
EXPOSE 3306

# Start MySQL
CMD service mysql start && sleep 5 && mysql -u root < /init.sql && tail -f /dev/null
