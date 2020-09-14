SELECT distinct name
FROM Customer, Orders
WHERE Customer.name not in (Select name
							From customer, orders
                            where customer.custid = orders.custid);