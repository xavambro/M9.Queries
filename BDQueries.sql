/* Ejercicio 1 */
select count(*) from flights;

/* Ejercicio 2 */
select Origin,avg(ArrDelay) as prom_arribades, avg(DepDelay) as prom_sortides 
from flights 
group by Origin 
order by Origin;

/* Ejercicio 3 */
select origin,colYear,colMonth,avg(ArrDelay) as prom_arribades 
from flights 
group by Origin,colYear,colMonth 
order by Origin,colYear;

/* Ejercicio 4 */
select City,colYear,colMonth,avg(ArrDelay) as prom_arribades 
from flights,usairports 
where Origin = IATA 
group by Origin,colYear,colMonth 
order by City,colYear;

/* Ejercicio 5 */
select UniqueCarrier,colYear,colMonth,sum(Cancelled) as total_cancelled 
from flights 
group by UniqueCarrier,colYear,colMonth 
order by total_cancelled desc;

/* Ejercicio 6 */
select tailNum,SUM(Distance) as total_distance 
from flights 
where tailNum is not null 
group by tailNum 
order by total_distance desc;

/* Ejercicio 7 */
select UniqueCarrier, AVG(ArrDelay) as avgDelay 
from flights 
group by UniqueCarrier 
having AVG(ArrDelay)>10 
order by avgDelay desc;
