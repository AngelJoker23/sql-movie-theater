--Insert Tables for Movie Theater

insert into movie theater(
		business_id,
		address,
		phone_number,
		vendor_id
		)Values(
				69,
				'420 Happy Times Dr Wisconsin 54013',
				'715-666-0420',
				662);
				
insert into table consessions(
		vendor_id,
		employee_id,
		register_id,
		purchased_options,
		payment_option,
		purchased_time,
		inventory_stock
		)Values(
				662,
				3,
				22,
				'candy, beverages, popcorn',
				'credit card',
				1805,
				'check stock for candy');
				
insert into table employees(
		last_name,
		first_name,
		employee_id,
		phone_number,
		address,
		employed_position
		)Values(
				'Stripling',
				'Brittany',
				420,
				'666-666-6666',
				'999 Devils Playground Road Psychotic WI 54013',
				'Manager');
				
insert into table employee_benefits(
		employee_id,
		employed_position,
		work_hours,
		discounted_benefits
		)Values(
				420,
				'Manager',
				460,
				'discount movie tickets, consession items, overtime pay, holiday pay');
				
			
insert into table customers(
		age_id,
		ticket_number,
		purchased_time,
		payment_method,
		number_purchased
		)Values(
				39,
				666420,
				0743,
				'Cash pay',
				4);
			
insert into table tickets(
		ticket_number,
		age_id,
		movie_id,
		pricing_amount_id
		)Values(
				444326,
				24,
				4,
				2);
			
insert into table movies(
		movie_id,
		movie_title,
		movie_rating,
		preview_times
		)Values(
				2,
				'The Devils Rejects',
				'R for Adults Only Over 18',
				1800);
			
insert into table offers(
		offer_id,
		age_id,
		prices_ages,
		offer_group
		)Values(
				3,
				20,
				'N/A No offers at this time');
				