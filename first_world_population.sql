-- This is the first query:

SELECT DISTINCT year from population_years; /*What years are covered by the dataset? From 2000 up to 2010. (Both included).*/


-- Add your additional queries below:

select * from population_years 
where country = 'Gabon'
order by population desc; /* What is the largest population size from Gabon in this dataset? The largest population size from Gabon is 1.54526 millions of people in the year 2010.*/

select country from population_years
where year = 2005 --with or without commas, the output is the same
order by population
limit 10; /*What were the 10 lowest population countries in 2005? 
		Niue
		Falkland Islands (Islas Malvinas)
		Montserrat
		Saint Pierre and Miquelon
		Saint Helena
		Nauru
		Cook Islands
		Turks and Caicos Islands
		Virgin Islands, British
		Gibraltar*/

select country from population_years 
where population > 100 and year = 2010; /*What are all the distinct countries with a population of over 100 million in the year 2010? The countries with a population over than 100 millions are:
	Mexico
	United States
	Brazil
	Russia
	Nigeria
	Bangladesh
	China
	India
	Indonesia
	Japan
	Pakistan*/


select distinct country from population_years 
where country like '%Islands%'; /*How many countries in this dataset have the word “Islands” in their name?
	Cayman Islands
	Falkland Islands (Islas Malvinas)
	Turks and Caicos Islands
	Virgin Islands,  U.S.
	Virgin Islands, British
	Faroe Islands
	Cook Islands
	Solomon Islands
	U.S. Pacific Islands*/


/*What is the difference in population between 2000 and 2010 in Indonesia?*/

select * from population_years
where country = 'Indonesia' and year in ('2000', '2010');  

--output: Indonesia|214.67661|2000
	--Indonesia|242.96834|2010

---solution: 28.29173
	



	


	




