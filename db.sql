#
#    |----------------------------------------------------------------------------------------------------------|
#    |                                                                                                          |
#    |        This is database for developement of project:::::::                                               |        
#    |                                                                                                          |
#    |        Import this to your mysql server and you ll have                                                  |                      
#    |                                                                                                          |
#    |        fake teams with other information                                                                 |           
#    |                                                                                                          |
#    |                                                                                                          |
#    |                                                                                                          |
#    |                                             developed to make developement easier                        |            
#    |                                                                                                          |
#    |                                                                                                          |
#    |__________________________________________________________________________________________________________|







drop DATABASE if EXISTS `return_treasure`;

#creating db

CREATE DATABASE IF NOT EXISTS `return_treasure`;

#creating teams table

CREATE TABLE IF NOT EXISTS `return_treasure`.`div1Teams` ( `id` INT(150) UNSIGNED NOT NULL AUTO_INCREMENT , `team_name` VARCHAR(40) NOT NULL , `mem1_name` VARCHAR(50) NOT NULL , `mem2_name` VARCHAR(50) NOT NULL , `mem3_name` VARCHAR(50) NOT NULL , `mem1_adm` VARCHAR(30) NOT NULL , `mem2_adm` VARCHAR(30) NOT NULL , `mem3_adm` VARCHAR(30) NOT NULL , `password` VARCHAR(80) NOT NULL , `phon_no` INT(20) NOT NULL , `division` ENUM('1','2') NOT NULL , `cookie` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `return_treasure`.`div2Teams` ( `id` INT(150) UNSIGNED NOT NULL AUTO_INCREMENT , `team_name` VARCHAR(40) NOT NULL , `mem1_name` VARCHAR(50) NOT NULL , `mem2_name` VARCHAR(50) NOT NULL , `mem3_name` VARCHAR(50) NOT NULL , `mem1_adm` VARCHAR(30) NOT NULL , `mem2_adm` VARCHAR(30) NOT NULL , `mem3_adm` VARCHAR(30) NOT NULL , `password` VARCHAR(80) NOT NULL , `phon_no` INT(20) NOT NULL , `division` ENUM('1','2') NOT NULL , `cookie` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

#creating points table

CREATE TABLE `return_treasure`.`div1points` ( `team_name` VARCHAR(40) NOT NULL , `team_points` INT(20) NOT NULL , `treasure` INT(10) NOT NULL , `pass_id` INT(10) NOT NULL , `achived_t` INT(10) NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `return_treasure`.`div2points` ( `team_name` VARCHAR(40) NOT NULL , `team_points` INT(20) NOT NULL , `treasure` INT(10) NOT NULL , `pass_id` INT(10) NOT NULL , `achived_t` INT(10) NOT NULL ) ENGINE = InnoDB;

#creating questions and locations tables

CREATE TABLE `return_treasure`.`questions` ( `id` INT(100) UNSIGNED NOT NULL AUTO_INCREMENT , `title` VARCHAR(10) NOT NULL , `description` VARCHAR(100) NOT NULL , `marks` INT(20) NOT NULL , `answers` VARCHAR(60) NOT NULL , `level_id_3` INT(10) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `return_treasure`.`locations` ( `id` INT(100) UNSIGNED NOT NULL AUTO_INCREMENT , `title` VARCHAR(10) NOT NULL , `description` VARCHAR(100) NOT NULL , `marks` INT(20) NOT NULL , `answers` VARCHAR(60) NOT NULL , `level_id_3` INT(10) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

#creating bonus_loc table

CREATE TABLE `return_treasure`.`bonus_loc` ( `id` INT(100) UNSIGNED NOT NULL AUTO_INCREMENT , `title` VARCHAR(10) NOT NULL , `description` VARCHAR(100) NOT NULL , `marks` INT(20) NOT NULL , `answers` VARCHAR(60) NOT NULL , `level_id_2` INT(10) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

#creating trackking  table

CREATE TABLE IF NOT EXISTS `return_treasure`.`curr_pos` ( `team_name` VARCHAR(40) NOT NULL, `round1` INT(10) NOT NULL, `round2` INT(10) NOT NULL, `round3` INT(10) NOT NULL )ENGINE=InnoDB;

#done done done


#inserting some raw values in teams tables

insert into return_treasure.div1teams (id,team_name,mem1_name,mem2_name,mem3_name,mem1_adm,mem2_adm,mem3_adm,password,phon_no,division,cookie)
values (1,'hackstreet boys','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(12,'hackstreet boys','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(2,'team_coder','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(3,'codeforce1','abhinav','mukesh','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(4,'codeforce2','peter parker','parker','peter',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(5,'codeforce3','steve','steve2','steve3',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(6,'codeforce4','bob','will','george',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(7,'hackers','pratyush','rituraj','shobhit',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(8,'hunters','pranay_bhai','pranay','pannu',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(9,'team_mario','bikram','naruto','rochak',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(10,'bonaza','ron','harrry','emma',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(11,'perverts','jenifer','mia','lokesh',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353');

insert into return_treasure.div2teams (id,team_name,mem1_name,mem2_name,mem3_name,mem1_adm,mem2_adm,mem3_adm,password,phon_no,division,cookie)
values (1,'hackstreet boys','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(12,'hackstreet boys','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(2,'team_coder','aarush','sangamo','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(3,'codeforce1','abhinav','mukesh','harman',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(4,'codeforce2','peter parker','parker','peter',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(5,'codeforce3','steve','steve2','steve3',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(6,'codeforce4','bob','will','george',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(7,'hackers','pratyush','rituraj','shobhit',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(8,'hunters','pranay_bhai','pranay','pannu',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(9,'team_mario','bikram','naruto','rochak',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(10,'bonaza','ron','harrry','emma',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353'),
(11,'perverts','jenifer','mia','lokesh',1424,1427,1300,'098f6bcd4621d373cade4e832627b4f6',123456789,1,'random_1224353');

# Hurrey done up with inserting false names
# 