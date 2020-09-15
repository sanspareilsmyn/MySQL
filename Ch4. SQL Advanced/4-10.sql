CREATE VIEW vw_Customer
AS SELECT *
FROm Customer
WHERE address LIKe '%대한민국%';

SELECT *
FROM vw_Customer;