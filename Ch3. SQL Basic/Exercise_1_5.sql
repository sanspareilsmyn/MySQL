SELECT name, count(publisher)
FROM customer natural join orders natural join book
where customer.name = '박지성' and customer.custid = orders.custid