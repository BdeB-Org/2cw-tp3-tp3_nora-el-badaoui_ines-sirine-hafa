CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title, VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publication_date DATE,
    description TEXT,
    cover_image_url VARCHAR(255),
    FOREIGN KET (author_id) REFERENCES authors(id)
);


CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE genres (
    id INT AUTO_INCREMENT PRIMARY KEY
    name VARCAHR(255) NOT NULL
);

CREATE TABLE book_genres (
    book_id INT NOT NULL,
    genre_id INT NOT NULL, 
    PRIMARY KEY (book_id, genre_id),
    FOREIGN KEY (book_id) REFERENCES books(id),
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

