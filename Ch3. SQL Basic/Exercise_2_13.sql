select *
from book natural join customer c1 natural join orders
where avg(c1.saleprice) > (select avg(saleprice)
							from book natural join customer natural join orders
							where customer.custid = orders.custid);
				