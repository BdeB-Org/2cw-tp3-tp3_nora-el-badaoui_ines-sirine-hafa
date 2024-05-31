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
('Jane Austen'),
('Isaac Newton'),
('Mary Shelley'),
('E.B White'),
('Gordon Ramsay'),
('Neil Armstrong'),
('J.K. Rowling'),
('Warren Buffet'),
('Hugh Laurie'),
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

INSERT INTO books (title, author_id, publication_date, description, cover_image_url) VALUES
('The Great Lakes', 1, '1996-12-01', 'Berton documente les différents acteurs - les premiers explorateurs, les missionnaires et la guerre de 1812, au cours de laquelle les soldats britanniques et américains saffrontaient pour le contrôle de la voie deau.', 'https://pictures.abebooks.com/inventory/22411004380.jpg'),
('Pride and Prejudice', 2, '1813-01-28', 'A romantic novel that follows the story of Elizabeth Bennet and Mr. Darcy.', 'https://www.gutenberg.org/files/1342/1342-h/images/1342h-0001-h.jpg'),
('The Principia: Mathematical Principles of Natural Philosophy', 3, '1687-07-05', 'A groundbreaking work in classical mechanics.', 'https://example.com/principia_cover.jpg'),
('Frankenstein; or, The Modern Prometheus', 4, '1818-01-01', 'A classic horror novel about a scientist who creates a monster.', 'https://example.com/frankenstein_cover.jpg'),
('Charlotte's Web', 5, '1952-10-15', 'A beloved children's book about a pig and a spider.', 'https://example.com/charlottesweb_cover.jpg'),
('The Art of Cooking', 6, '2008-03-01', 'A cookbook featuring recipes from around the world.', 'https://example.com/cooking_cover.jpg'),
('Moonwalk', 7, '1985-07-01', 'The autobiography of the first man to walk on the moon.', 'https://example.com/moonwalk_cover.jpg'),
('Harry Potter and the Philosophers Stone', 8, '1997-06-01', 'The first book in the beloved Harry Potter series.', 'https://example.com/hp_cover.jpg'),
('The Essays of Warren Buffet', 9, '2013-01-01', 'A collection of essays on business and investing from one of the worlds most successful investors.', 'https://example.com/buffet_cover.jpg'),
('House Rules', 10, '2010-02-01', 'A medical thriller novel about a brilliant doctor with a troubled past', 'https://example.com/house_cover.jpg'),
('The Road Ahead', 11, '1995-11-01', 'A book about the future of technology and society.', 'https://example.com/roadahead_cover.jpg'),
('No One is Too Small to Make a Difference', 12, '2019-05-03', 'A collection of speeches by teenage environmental activist Greta Thunberg.', 'https://example.com/thunberg_cover.jpg'),
('The Vitruvian Man', 13, '2018-10-01', 'A biography of the Renaissance polymath Leonardo da Vinci.', 'https://example.com/vitruvian_cover.jpg'),
('Dreams from My Father', 14, '1995-07-01', 'The memoirs of the 44th President of the United States.', 'https://example.com/dreams_cover.jpg'),
('The Wealth of Nations', 15, '1776-03-01', 'A foundational work of economics that introduced the concept of the free market.', 'https://example.com/wealth_cover.jpg'),
('Kitchen Confidential', 16, '2000-02-01', 'A behind-the-scenes look at the culinary world from a celebrated chef.', 'https://example.com/kitchen_cover.jpg'),
('The Absorbent Mind', 17, '1949-05-01', 'A book on child development and education from a pioneering educator.', 'https://example.com/absorbent_cover.jpg'),
('The Interpretation of Dreams', 18, '1900-11-01', 'A foundational work of psychoanalysis from the father of psychotherapy.', 'https://example.com/dreams_cover.jpg'),
('Martha Stewarts Cooking School', 19, '2012-10-01', 'A comprehensive cookbook from a celebrated lifestyle expert.', 'https://example.com/martha_cover.jpg'),
('The Night Country', 20, '1971-04-01', 'A collection of essays on nature and the human condition.', 'https://example.com/nightcountry_cover.jpg');