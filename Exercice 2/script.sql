create schema Magasin;
create dbspace SP_CLIENT
create dbspace SP_COMMANDE;

	create table SP_CLIENT
		(NUMCLIENT decimal (12) not null,
		NOM char (12) not null,
		PRENOM char (12) not null,
		ADRESSE char (22) not null,
	Primary Key (NUMCLIENT));
		In SP_CLIENT

	create table SP_COMMANDE
		(NUMCLIENT decimal (12) not null,
		NUMCOM decimal (12) not null,
		DATEcom date not null,
		PRIXTT decimal (4) not null,
	Primary Key (NUMCOM),
	Foreign Key (NUMCLIENT) reference SP_CLIENT);
		In SP_COMMANDE


	create table SP_Produit
		(PRIX decimal (4) not null,
		LIBELLE char (12) not null,
		REFERENCE decimal (12) not null
		QUANTITE decimal (3) not null,
	Primary Key (REFERENCE),
		In SP_COMMANDE


create index XIMPL_SP_CLIENT on CLIENT(NUMCLIENT);

create index XIMPL_SP_COMMMANDEon COMPTE(NUMCOM);
