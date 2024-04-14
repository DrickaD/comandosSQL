CREATE DATABASE "Livraria_Kenzie";

CREATE TABLE authors(
    "authorId" SERIAL PRIMARY KEY,
    "authorName" VARCHAR(200) NOT NULL,
    "bio" TEXT NOT NULL
);

CREATE TABLE contact_infos(
    "id" SERIAL PRIMARY KEY,
    "phone" VARCHAR(20),
    "email" VARCHAR(200) NOT NULL,
    "authorId" INTEGER UNIQUE NOT NULL,
    FOREIGN KEY ("authorId") REFERENCES authors("authorId") ON DELETE CASCADE
);

CREATE TABLE categories(
    "categoryId" SERIAL PRIMARY KEY,
    "categoryName" VARCHAR(100) NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP NOT NULL
);

CREATE TABLE books(
    "bookId" SERIAL PRIMARY KEY,
    "bookName" VARCHAR(200) NOT NULL,
    "pages" INTEGER NOT NULL,
    "createdAt" TIMESTAMP NOT NULL,
    "updatedAt" TIMESTAMP NOT NULL,
    "authorId" INTEGER,
    FOREIGN KEY ("authorId") REFERENCES authors("authorId") ON DELETE SET NULL
);

CREATE TABLE books_categories(
    "id" SERIAL PRIMARY KEY,
    "bookId" INTEGER NOT NULL,
    FOREIGN KEY ("bookId") REFERENCES books("bookId") ON DELETE CASCADE,
    "categoryId" INTEGER NOT NULL,
    FOREIGN KEY ("categoryId") REFERENCES categories("categoryId") ON DELETE CASCADE
);

