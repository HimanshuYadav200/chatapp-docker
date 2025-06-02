CREATE USER 'chatappadmin'@'%' IDENTIFIED BY 'password';
CREATE DATABASE chatapp;
GRANT ALL PRIVILEGES ON chatapp.* TO 'chatappadmin'@'%';
FLUSH PRIVILEGES;
