DELIMITER $$
CREATE TRIGGER tr_IASMAA After INSERT ON ASMAA
FOR EACH ROW
BEGIN
Set @user = (select SESSION_USER());
Set @Dcrea = (select Create_time from INFORMATION_SCHEMA.TABLES where table_name like 'ASMAA');
insert into trace set
user = @user,
commande = 'INSERT',
date_exe = (sysdate()),
date_cre = @Dcrea,
etat = 'Terminé',
table_name = 'ASMAA';
end $$ 
DELIMITER;
-----------------------------------------------------
DELIMITER $$
CREATE TRIGGER tr_DASMAA After DELETE ON ASMAA
FOR EACH ROW
BEGIN
Set @user = (select SESSION_USER());
Set @Dcrea = (select Create_time from INFORMATION_SCHEMA.TABLES where table_name like 'Asmaa');
insert into trace set
user = @user,
commande = 'DELETE',
date_exe = (sysdate()),
date_cre = @Dcrea,
etat = 'Terminé',
table_name = 'ASMAA';
end $$ 
DELIMITER;
-----------------------------------------------------
DELIMITER $$
CREATE TRIGGER tr_UASMAA After UPDATE ON ASMAA
FOR EACH ROW
BEGIN
Set @user = (select SESSION_USER());
Set @Dcrea = (select Create_time from INFORMATION_SCHEMA.TABLES where table_name like 'ASMAA');
insert into trace set
user = @user,
commande = 'UPDATE',
date_exe = (sysdate()),
date_cre = @Dcrea,
etat = 'Terminé',
table_name = 'ASMAA';
end $$ 
DELIMITER;