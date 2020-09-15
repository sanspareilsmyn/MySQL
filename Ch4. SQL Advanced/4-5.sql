UPDATE Orders
SET bname = (SELECT bookname
			FROM Book
            WHERE Book.bookid = Orders.bookid);
            

