INSERT INTO authors("authorName", "bio")
VALUES('Eiichiro Oda', 'Eiichiro Oda em um mangaká conhecido pela criação do mangá One Piece.'), 
('J. K. Rowling', 'J. K. Rowling é uma escritora, roteirista e produtora cinematográfica britânica, notória por escrever a série de livros Harry Potter.'),
('Osvaldo Silva', 'Autor e compositor brasileiro.') RETURNING *;

INSERT INTO books( "bookName", "pages", "createdAt", "updatedAt", "authorId")
VALUES ('Harry Potter', 325, '2024-03-22', '2024-03-22', 2),
('Jogos Vorazes', 276, '2024-03-22', '2024-03-22', null),
('One Piece - Volume 1', 120, '2024-03-22', '2024-03-22', null),
('One Piece - Volume 2', 137, '2024-03-22', '2024-03-22', null) RETURNING *;

INSERT INTO categories("categoryName", "createdAt", "updatedAt")
VALUES ('Mangá', '2024-03-22', '2024-03-22'),
('Aventura', '2024-03-22', '2024-03-22'),
('Fantasia', '2024-03-22', '2024-03-22') RETURNING *; 

INSERT INTO books_categories("bookId", "categoryId")
VALUES (1,2),(2,2),(3,2),(4,2),(1,3),(3,3),(4,3),(3,1),(4,1) RETURNING *;
 
INSERT INTO contact_infos("phone", "email", "authorId")
VALUES('(44)99123-4567', 'osvaldo@osvaldocompany.com', 3) RETURNING *;

INSERT INTO contact_infos("phone", "email", "authorId")
VALUES('(51)9999-4567', 'JKRowlingo@osvaldocompany.com', 2) RETURNING *;
