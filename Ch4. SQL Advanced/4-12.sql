CREATE OR REPLACE VIEW vw_Customer(custid, name, address)
AS SELECT custid, name, address
FROM Customer
WHERe address like '%영국%';