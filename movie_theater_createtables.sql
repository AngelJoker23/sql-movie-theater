--Create Tables for Movie Theater

create table movie theater(
		business_id serial primary key,
		address varchar(150),
		phone_number vsrchar (15),
		vendor_id integer not null
		foreign key (vendor_id) references consessions(vendor_id)
	);
		
create table consessions(
		vendor_id serial primary key,
		employee_id integer not null,
		register_id integer not null,
		purchased_options varchar (150),
		payment_option varchar (100),
		purchased_time integer not null,
		inventory_stock varchar (150)
		);
		
create table employees(
		last_name serial primary key,
		first_name varchar (150),
		employee_id integer not null,
		foreign key (employee_id references employee_benefits (employee_id),
		phone_number varchar (15),
		address varchar (150),
		employed_position varchar (150)
		);
		
create table employee_benefits(
		employee_id serial primary key,
		employed_position varchar (150),
		work_hours integer not null,
		discounted_benefits varchar(150)
		);
		
create table customers(
		age_id serial primary key,
		ticket_number integer not null,
		foreign key (ticket_number) references tickets (ticket_number),
		purchased_time integer not null,
		payment_method varchar (150),
		number_purchased integer not null
		);
		
create table tickets(
		ticket_number serial primary key,
		age_id integer not null,
		foreign key (age_id) references customers(age_id),
		movie_id integer not null,
		foreign key (movie_id) references movie (movie_id),
		pricing_amount_id integer not null
		);
		
create table movies(
		movie_id serial primary key,
		movie_title varchar (150),
		movie_rating varchar (100),
		preview_times integer not null
		);
		
create table offers(
		offer_id serial primary key,
		age_id integer not null,
		foreign key (age_id) references customers (age_id) and tickets (age_id),
		prices_ages integer not null,
		offer_group varchar (150) 
		);