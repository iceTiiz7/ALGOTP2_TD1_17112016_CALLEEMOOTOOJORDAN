create schema Banque;
create dbspace SP_CLIENT;
create dbspace SP_COMPTE;

	Create table SP_CLIENT
		(NUMCLIENT decimal (21) not null,
		NOM char (12) not null,
		PRENOM char (12) not null,
		ADRESSE char (21) not null,
	Primary Key (NUMCLIENT));
		in SP_CLIENT

	Create table SP_COMPTE
		(NUMCOMPTE decimal (21) not null,
		NUMCLIENT decimal (21) not null,
		Solde decimal (5) not null,
	Primary Key (NUMCOMPTE),
	Foreign Key (NUMCLIENT) reference SP_CLIENT);
		in SP_COMPTE

	Create table SP_BENEFICIAIRE
		(NUMCLIENT decimal(21) not null,
		NUMCOMPTE decimal (21) not null,
		NUMBENE decimal (21) not null,
	Primary Key (NUMBENE),
	Foreign Key (NUMCLIENT) reference SP_CLIENT,
	Foreign Key (NUMCOMPTE) reference SP_COMPTE);
		in SP_CLIENT


	Create table SP_OPERATION
		(IDOPERATION decimal (21) not null,
		MONTANT decimal (5) not null,
		DATEOP date not null,
		RETRAIT [0-1] not null,
		DEPOT [0-1 not null,
	Primary Key (IDOPERATION),
		in SP_COMPTE



create index XIMPL_SP_CLIENT on CLIENT(NUMCLIENT);

create index XIMPL_SP_COMPTE on COMPTE(NUMCOMPTE);

