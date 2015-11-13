select * from asmaa; 
select * from test.trace;

select * from mysql.user;
SHOW GRANTS FOR khalil;
SHOW GRANTS FOR asmaa;
select user();

/*--------------------------*/
GRANT SHOW VIEW
ON mt_qa.view_k
TO khalil;
/*---------------------------------*/
REVOKE SELECT
ON mt_qa.view_a
from asmaa;

revoke SELECT, SHOW VIEW ON mt_qa.view_k from 'khalil'@'%'
/*---------------------------------*/
REVOKE ALL PRIVILEGES, GRANT OPTION FROM ado;

FLUSH PRIVILEGES;

insert into asmaa values (5, "LALALALALLA");
delete from  test.asmaa;
update test.asmaa set info ='azazza' where id=1;

SET SQL_SAFE_UPDATES=0;
SET SQL_SAFE_UPDATES=1;

show profiles;
show FULL processlist;