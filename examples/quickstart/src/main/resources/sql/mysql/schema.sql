CREATE DATABASE IF NOT EXISTS quickstart DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci;
use quickstart;

drop table if exists ss_task;
drop table if exists ss_user;

create table ss_task (
                         id bigint auto_increment,
                         title varchar(128) not null,
                         description varchar(255),
                         user_id bigint not null,
                         primary key (id)
) engine=InnoDB;

create table ss_user (
                         id bigint auto_increment,
                         login_name varchar(64) not null unique,
                         name varchar(64) not null,
                         password varchar(255) not null,
                         salt varchar(64) not null,
                         roles varchar(255) not null,
                         register_date timestamp not null default 0,
                         primary key (id)
) engine=InnoDB;

insert into ss_task (id, title, description, user_id) values(1, 'Study PlayFramework 2.0','http://www.playframework.org/', 2);
insert into ss_task (id, title, description, user_id) values(2, 'Study Grails 2.0','http://www.grails.org/', 2);
insert into ss_task (id, title, description, user_id) values(3, 'Try SpringFuse','http://www.springfuse.com/', 2);
insert into ss_task (id, title, description, user_id) values(4, 'Try Spring Roo','http://www.springsource.org/spring-roo', 2);
insert into ss_task (id, title, description, user_id) values(5, 'Release SpringSide 4.0','As soon as posibble.', 2);

insert into ss_user (id, login_name, name, password, salt, roles, register_date) values(1,'admin','Admin','691b14d79bf0fa2215f155235df5e670b64394cc','7efbd59d9741d34f','admin','2012-06-04 01:00:00');
insert into ss_user (id, login_name, name, password, salt, roles, register_date) values(2,'user','Calvin','2488aa0c31c624687bd9928e0a5d29e7d1ed520b','6d65d24122c30500','user','2012-06-04 02:00:00');
