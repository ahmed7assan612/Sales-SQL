-- Sales Table --

select * from sales;
___
select [Date], Amount, Customers from sales;
select Amount, Customers, Sales_Person from sales;
___
select Sales_Person, Amount, Boxes, Amount / Boxes as 'new_column' from sales;
___
select * from sales
where Amount > 10000;
___
select * from sales
where Amount > 10000
order by Amount desc;
___
select * from sales
where amount < 10000
order by amount ASC;
___
select * from sales
where Geo='g1'
order by Sales_Person, Amount desc;
___
Select * from sales
where Amount > 10000 and Date >= '2022-01-01';
___
select [Date], Amount from sales
where Amount > 10000 and year([Date]) = 2022
order by Amount desc;
___
select * from sales
where Boxes between 0 and 500
order by Boxes ASC;
___
select [Date], Amount, Boxes, day([Date]) as 'Day of week' from sales
where day([Date]) = 4;

select [Date], Amount, Boxes, month([Date]) as 'Month of year' from sales
where Month([Date]) = 6;

select [Date], Amount, Boxes, year([Date]) as 'Year' from sales
where year([Date]) between 2021 and 2022;
___
select * from sales;

select 	[Date], Amount,
		case 	when amount < 1000 then 'Under 1k'
				when amount < 5000 then 'Under 5k'
                when amount < 10000 then 'Under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;
_____________________________________

-- People Table --

select * from people;
___
select * from people
where Team = 'Delish' or Team = 'Jucies';
___
select * from people
where Sales_person like 'B%';

select * from people
where Sales_person like '%B%';

select * from people
where Sales_person like '%B';

select * from people
where Sales_person like 'B%K%';
___
select team, count(*) from people
group by team 
_____________________________________










