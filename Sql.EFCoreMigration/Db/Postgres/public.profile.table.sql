create table profile(
	profileid uuid NOT NULL DEFAULT uuid_generate_v4(),
	username varchar(30) null,
	serialnumber varchar(8) null,
	totaltime decimal(6, 2) not null,
	errormessage varchar(255) null,
 constraint pk_profile primary key 
(
	profileid 
)
)