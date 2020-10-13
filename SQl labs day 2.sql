-- SQL Queries 3

USE sakila;

-- different actors' last names 
SELECT count(distinct(last_name)) as 'sum_last_names' from sakila.actor;

-- different languages originally produced 
select distinct(name) from sakila.language;

-- not originally in english
select original_language_id <> 'English' AS not_english from sakila.film;

-- 10 longest movies from 2006
select*from sakila.film where release_year = 2006 
order by length 
limit 10;

-- days has been the company operating use datefiff () function


-- show rental info with additional columns month and weekday. Get 20. 
select date_format(convert(rental_date, date), '%M') as 'month' from sakila.rental
limit 20;

select date_format(convert(rental_date, date), '%D') as 'weekday' from sakila.rental
limit 20; 

--  Add day_type column with values 'weekday' and 'workday'

select *,
case
     when date_format(rental_date, '%w') between 1 and 5 then 'weekday' 
     Else 'week-end'
     end as 'day_type'
     from rental;

-- how many rentals in the last month of activity 
select*from sakila.rental 
order by return_date;

select*from sakila.rental;
select date_format(return_date, '%m-%d') > 01-15 as 'last_month_rentals' from sakila.rental;










