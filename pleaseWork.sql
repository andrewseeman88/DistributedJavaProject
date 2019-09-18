create table menu (
	optionID varchar(75) primary key
);

insert into menu (optionID) values ('Heroes');
insert into menu (optionID) values ('Villains');
insert into menu (optionID) values ('Movie Order');
insert into menu (optionID) values ('Add an Entry');

create table heroes (
	heroID integer primary key generated always as identity (start with 1, increment by 1),
	nm varchar(75) not null,
	optionID varchar(75),
	foreign key (optionID) references menu (optionID)
);

insert into heroes (nm, optionID) values (1, 'Iron Man');
insert into heroes (nm, optionID) values (1, 'Hawkeye');
insert into heroes (nm, optionID) values (1, 'Spiderman');
insert into heroes (nm, optionID) values (1, 'Thor');

create table heroList (
	heroListID integer primary key generated always as identity (start with 1, increment by 1),
	nm float,
	info varchar(150) not null
);

insert into heroList(nm, info) values (1, 'Iron Man');
insert into heroList(nm, info) values (2, 'Hawkeye');
insert into herolist(nm, info) values (3, 'Spiderman');
insert into herolist(nm, info) values (4, 'Thor');

create table heroInfo (
	heroInfoID integer,
	heroInfo varchar(500),
	primary key (heroInfoID, heroInfo),
	foreign key (heroInfoID) references heroes (heroID)
);

insert into heroInfo (heroInfoID, heroInfo) values (1, 'Iron Man uses a suit made of advanced technology to fight his enemies.');
insert into heroInfo (heroInfoID, heroInfo) values (2, ' ');
insert into heroInfo (heroInfoID, heroInfo) values (3, ' ');
insert into heroInfo (heroInfoID, heroInfo) values (4, ' ');

commit;