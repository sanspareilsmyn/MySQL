SELECT bookid, orderdate
FROM Book natural join orders
WHERE orderdate not between '2014-07-04' and '2014-07-07';