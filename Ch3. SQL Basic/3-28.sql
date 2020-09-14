CREATE TABLE NewOrders(
  orderid INTEGER PRIMARY KEY,
  custid INTEGER NOT NULL,
  bookid INTEGER,
  saleprice INTEGER,
  FOREIGN KEY(custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE
);