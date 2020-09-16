use madang;
delimiter //
CREATE PROCEDURE BookInsertOrUpdate(
	myBookID INTEGER,
    myBookNAme VARCHAR(40),
    myPublisher VARCHAR(40),
    myPrice INTEGER)
BEGIN
	DECLARE mycount INTEGER;
    SELECT count(*) INTO mycount FROM book
      WHERE bookname LIKE myBookName;
	IF mycount != 0 THEN
      SET SQL_SAFE_UPDATES = 0;
      UPDATE Book SET Price = myPrice
        WHERE bookname LIKE myBookName;
	ELSE
      INSERT INTO Book(bookid, bookname, publisher, price)
        VALUES (mybookID, myBookName, myPublisher, myPrice);
	END IF;
END;
//
delimiter ;