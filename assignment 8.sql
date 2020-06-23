use sakila;

select * from city limit 10;
select * from customer limit 10;
select * from address limit 10;
select * from country limit 10;
select * from staff limit 10;
select * from film limit 10;
select * from language limit 10;
select * from actor limit 10;
select * from film_actor limit 10;
select * from store limit 10;
select * from staff limit 10;
select * from inventory limit 10;
select * from category limit 10;
select * from film_category limit 10;
select * from rental limit 10;
select * from payment limit 10;

#1.

select customer_id,first_name from customer c
join address a on c.address_id=a.address_id
join city ci on ci.city_id=a.city_id
join country co on co.country_id=ci.country_id
where country="India";

#2.

select city,count(customer_id)count from customer c
join address a on c.address_id=a.address_id
join city ci on ci.city_id=a.city_id
group by city order by count;

#3.

select country,count(city)count from city ci
join country co on co.country_id=ci.country_id
group by country order by count;

#4.

select * from staff where upper(first_name) like "R%";

#5.

select * from staff where last_name like "_a";

#6.

select	name,count(*)"count" from film f
join language l on f.language_id=l.language_id
where name="Tamil" group by name;

#7.

select first_name , last_name,count(a.actor_id)count from film_actor fa
join actor a on fa.actor_id=a.actor_id
join film f on f.film_id=fa.film_id
group by a.actor_id order by count desc limit 1;

#8.

select store_id,count(film_id)count from inventory 
group by store_id order by count desc limit 1;

#9.

select title,count(f.film_id)count from inventory i
join film f on f.film_id=i.film_id
group by store_id,f.film_id order by count desc;

#10.

select c.category_id,avg(length)count from film_category fc
join film f on f.film_id=fc.film_id
join category c on c.category_id=fc.category_id
group by category_id order by category_id asc;

#11.

select i.store_id from inventory i
join film f on f.film_id=i.film_id
where title="ABCD";

#12.

select distinct last_name from actor;

#14.

select customer_id,count(i.film_id) count from rental r
join inventory i on i.inventory_id=r.inventory_id
where customer_id=20 group by customer_id;

#15.

select r.customer_id,count(i.film_id) count from rental r
join inventory i on i.inventory_id=r.inventory_id
join customer c on c.customer_id=r.customer_id
where first_name="Thiru";

#16.

select * from rental where last_update>return_date;
