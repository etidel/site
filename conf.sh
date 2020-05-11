#!/bin/bash
# conf.sh
# configuration de serveur  mysql
echo "installation mysql server"
sudo apt update
sudo apt install mysql-server
echo " creation de BD relative a votre projet "
echo "creation d'un utilisateur ayant tous les droits sur le BD"
echo " create database db_projet;create user 'admin'@'%' identified by 'adm';grant all on db_projet.* to admin@'%'; "| sudo mysql
echo "creation d'une table  et remplisez la par quelles que lignes"
echo "  tester l accées a la base et afficher leur contenu en utilise  clientMYSQL"

echo " create table inscription (id int NOT NULL AUTO_INCREMENT , name varchar(20) DEFAULT NULL , email varchar(50) DEFAULT NULL , PRIMARY KEY(id)); insert INTO inscription  (name,email) VALUES ('user1','user1@gmail.com'),('user2','user2@gmail.com'); USE db_projet; show databases; show tables; show columns in inscription; select * from inscription ;" | mysql -u admin -p -D  db_projet -h 192.168.56.21 -P 3306 


