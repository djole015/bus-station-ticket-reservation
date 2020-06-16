insert into line values(1,'Beograd',STR_TO_DATE('02-05-2018 ', '%m-%d-%Y '), STR_TO_DATE('02-05-2018 11:00', '%m-%d-%Y %H:%i'), 42,800.00,2);

insert into line values(2,'Sabac',STR_TO_DATE('02-05-2018 ', '%m-%d-%Y '), STR_TO_DATE('02-05-2018 11:30', '%m-%d-%Y %H:%i'),35,700.00,2);

insert into line values(3,'Beograd',STR_TO_DATE('02-05-2018', '%m-%d-%Y'), STR_TO_DATE('02-05-2018 12:30', '%m-%d-%Y %H:%i'),18,800.00,2);

insert into line values(4,'Sombor',STR_TO_DATE('02-05-2018', '%m-%d-%Y'), STR_TO_DATE('02-05-2018 12:45', '%m-%d-%Y %H:%i'),12,600.00,3);

insert into line values(5,'Nis',STR_TO_DATE('02-05-2018', '%m-%d-%Y'), STR_TO_DATE('02-05-2018 13:50', '%m-%d-%Y %H:%i'),35,1200.00,1);

insert into line values(6,'Beograd',STR_TO_DATE('02-06-2018', '%m-%d-%Y'), STR_TO_DATE('02-06-2018 9:30', '%m-%d-%Y %H:%i'),42,800.00,2);


insert into carrier (id, address, name, pib) values (1,'Camurlija 160, 18000 Nis, Srbija','Nis Ekspes',100615493);

insert into carrier (id, address, name, pib) values (2,'Autoput Beograd-Nis 4, 11000 Beograd, Srbija','Lasta',100002006);

insert into carrier (id, address, name, pib) values (3,'Segedinski Put 84, 24105 Subotica, Srbija','Subotica Trans',100960042);


insert into role values(1,'ADMIN')

insert into user_role values(1,1);