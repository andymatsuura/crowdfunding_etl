CREATE TABLE contacts (
	contact_id int not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	email varchar(50) not null,
	primary key (contact_id)
);

CREATE TABLE categories (
	category_id varchar(4) not null,
	category varchar(20) not null,
	primary key(category_id)
);

CREATE TABLE subcategories (
	subcategory_id varchar(10) not null,
	subcategory varchar(25) not null,
	primary key(subcategory_id)
);

CREATE TABLE campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar(50) not null,
	description text not null,
	goal float not null,
	pledged float not null, 
	outcome varchar(30) not null,
	backers_count int not null,
	country varchar(5) not null,
	currency varchar(5) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(4) not null,
	subcategory_id varchar(10) not null,
	primary key (cf_id),
	foreign key (contact_id) references contacts(contact_id),
	foreign key (category_id) references categories(category_id),
	foreign key (subcategory_id) references subcategories(subcategory_id)
);

SELECT * FROM subcategories;

SELECT * FROM contacts;

SELECT * FROM categories;

SELECT * FROM campaign;