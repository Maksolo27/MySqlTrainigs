use World;

select ct.name, code, district, continent from city ct
			right join country c
            on ct.countryCode = c.code
            group by district;
            
select language from countrylanguage cl
			left join country c
            on c.code = cl.countrycode
            where c.code = "AFG";
            
select * from city ct
		left join country c
        on ct.countrycode = c.code
        where c.name = "Belgium";
            
			