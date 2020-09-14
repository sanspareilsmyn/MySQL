SELECT name, sum(saleprice)
FROM customer natural join book natural join orders
Group by name