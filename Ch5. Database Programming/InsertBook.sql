use madang;
delimiter //
CREATE PROCEDURE InsertBook(
  IN myBookID INTEGER,
  IN myBookName VARCHAR(40),
  IN myPublisher VARCHAR(40),
  IN myPrice INTEGER)
BEGIN
  INSERT INTO BOOK(bookid, bookname, publisher, price)
	VALUES(myBookID, myBookName, myPublisher, myPrice);
END;
//
delimiter;