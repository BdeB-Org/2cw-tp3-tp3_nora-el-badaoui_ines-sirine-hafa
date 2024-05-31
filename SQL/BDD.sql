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

INSERT INTO authors (name) VALUES
('Pierre Berton'),
('Jane Doe'),
('Albert Newton'),
('Mary Johnson'),
('Linda Wilson'),
('Gordon Ramsay'),
('Neil Armstrong'),
('J.K. Rowling'),
('Warren Buffet'),
('Dr. House'),
('Bill Gates'),
('Greta Thunberg'),
('Leonardo Da Vinci'),
('Barack Obama'),
('Adam Smith'),
('Anthony Bourdain'),
('Maria Montessori'),
('Sigmund Freud'),
('Martha Stewart'),
('Loren Eiseley');

INSERT INTO books (title, author_id,publication_date,description,cover_image_url) VALUES
('The Great Lakes',1,'1996-12-1', 'Berton documente les différents acteurs - les premiers explorateurs, les missionnaires et la guerre de 1812, au cours de laquelle les soldats britanniques et américains saffrontaient pour le contrôle de la voie deau.','')
