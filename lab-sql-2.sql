/*1. Select all the actors with the first name ‘Scarlett’.
2.Select all the actors with the last name ‘Johansson’.
3.How many films (movies) are available for rent?
4.How many films have been rented?
5.What is the shortest and longest rental period?
6.What are the shortest and longest movie duration? Name the values max_duration and min_duration.
7.What's the average movie duration?
8.What's the average movie duration expressed in format (hours, minutes)?
9.How many movies longer than 3 hours?
10.Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
11.What's the length of the longest film title? */

select * from actor
where first_name = 'Scarlett';

select * from actor
where last_name = 'Johansson';

select count(film_id) from film;

select count(rental_id) from rental;

select max(rental_duration) from film;

select min(length) as min_duration from film; 

select max(length) as max_duration from film; 

select avg(length) from film;

select left(sec_to_time(avg(length * 60)),5)  as New_Avg_Length from film;

select count(length) from film
where length > 180;

select concat(upper(left(first_name, 1)), lower(substring(first_name, 2))), last_name, lower(email) from customer;