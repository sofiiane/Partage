
/*---Creation de la vue---*/
CREATE VIEW view_comiss 
AS 
select * from comiss 
where 
comiss.NOM_FONDS in (select privi.NOM_FONDS from privi where (convert(privi.NOM_USERS using utf8) like convert((select substring_index(user(),'@',1)) using utf8)));

commit;

/*---privileges sur la vue---*/
GRANT SELECT, SHOW VIEW
ON  mt.view_comiss
TO herve;
FLUSH PRIVILEGES;

GRANT SELECT, SHOW VIEW
ON  mt.view_comiss
TO asmaa;
FLUSH PRIVILEGES;

GRANT SELECT, SHOW VIEW
ON  mt.view_comiss
TO khalil;
FLUSH PRIVILEGES;
