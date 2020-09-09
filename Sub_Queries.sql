Insert into "tblProducts" (name, description) values ('TV', '52 inch black color LCD TV');
Insert into "tblProducts" (name, description) values ('Laptop', 'Very thin black color acer laptop');
Insert into "tblProducts" (name, description) values ('Desktop', 'HP high performance desktop');

Insert into "tblProductSales" (product_id, unit_price, quantity_sold) values(3, 450, 5);
Insert into "tblProductSales" (product_id, unit_price, quantity_sold) values(2, 250, 7);
Insert into "tblProductSales" (product_id, unit_price, quantity_sold) values(3, 450, 4);
Insert into "tblProductSales" (product_id, unit_price, quantity_sold) values(3, 450, 9);

commit;

/*Q1. Write a query to retrieve products that are not at all sold.*/
/*Join*/
select tp.id, tp.name, tp.description
from "tblProductSales" tps
right join "tblProducts" tp
on tps.product_id = tp.id
where tps.product_id IS NULL;

/*Sub-Query*/
select id, name, description
from "tblProducts"
where id NOT IN (select distinct product_id from "tblProductSales");

/*Q1. Write a query to retrieve the name and quantity sold.*/
/*Join*/
select tp.name, sum(tps.quantity_sold) as QtySold
from "tblProductSales" tps
right join "tblProducts" tp
on tps.product_id = tp.id
group by name
order by name;

/*Sub-Query*/
select name, (select sum(quantity_sold) from "tblProductSales" where product_id = "tblProducts".id) as QtySold
from "tblProducts"
order by name;