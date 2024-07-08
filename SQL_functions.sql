
# string function
# numeric function
# date function
# general functions

use sakila;
select  first_name, if(first_name='NICK','yes','no')
from actor;


select  first_name,actor_id, substr(first_name,1,1),
 if(  substr(first_name,1,1)='J',actor_id+10,  actor_id+15)
from actor;



--  if(condition, True, False)
-- if(condition, True, if(condition, True, False) )
select  first_name,actor_id, substr(first_name,1,1),
 if(  mod(actor_id,2)=0, actor_id*10, 
		if(mod(actor_id,5)=0, actor_id*20, actor_id*100) ) 
        as 'new'
from actor;


/*
select  col,
	case  expression
    when  value then work
    when value then work
    end 
    from table
*/

select actor_id,first_name,
	case first_name
    when 'NICK' then ''
    else actor_id
    end as 'newid'
from actor;



-- nullif(exp1,exp2)
-- exp1  = exp2  ( return null otherwise return exp1
select first_name, last_name,
nullif( length(first_name),4)
from actor;




-- ifnull
-- nvl, nvl2, coals
select address_id, address2, 
coalesce(address2,address_id,10) from address;




