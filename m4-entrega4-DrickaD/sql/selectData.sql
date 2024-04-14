SELECT * FROM books;

SELECT categories."categoryName", books."bookName", books."pages", books."createdAt", books."updatedAt", books."authorId"
FROM categories
JOIN books_categories ON categories."categoryId" = books_categories."categoryId"
JOIN books ON books."bookId" = books_categories."bookId"
WHERE categories."categoryId" = 3; 

SELECT books."bookName", books."pages" AS "bookPages", books."createdAt" AS "createdAtBook",
books."updatedAt" AS "updatedAtBook", books."authorId", categories."categoryName",
categories."createdAt" AS "createdAtCategories",
categories."updatedAt" AS "updatedAtCategories"
FROM books
JOIN books_categories ON books_categories."bookId" = books."bookId"
JOIN categories ON categories."categoryId" = books_categories."categoryId";

SELECT books."bookName",
authors."authorName",
authors."bio" AS "authorBio",
contact_infos."phone" AS "authorPhone",
contact_infos."email" AS "authorEmail"
FROM books
JOIN authors ON books."authorId"= authors."authorId"
JOIN contact_infos ON contact_infos."authorId" = authors."authorId"
WHERE books."bookId" = 1;
