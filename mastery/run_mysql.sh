#!/bin/bash
read -p "My SQL user: " user_name
read -sp "My SQL Password: " mysql_pwd
echo
read -p "MySQL Command: " mysql_cmd
read -p "MySQL Database: " mysql_db
mysql -u"$user_name" -p$mysql_pwd $mysql_db -Be"$mysql_cmd"