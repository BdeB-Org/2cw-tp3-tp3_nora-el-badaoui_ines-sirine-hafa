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
('The Principia: Mathematical Principles of Natural Philosophy', 3, '1687-07-05', 'A groundbreaking work in classical mechanics.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Isaac_Newton%2C_Head_of_a_Scienist%2C_by_G%27schwind.jpg/1200px-Isaac_Newton%2C_Head_of_a_Scienist%2C_by_G%27schwind.jpg'),
('Frankenstein; or, The Modern Prometheus', 4, '1818-01-01', 'A classic horror novel about a scientist who creates a monster.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Frankenstein_or_The_Modern_Prometheus_%281831%29.jpg/1200px-Frankenstein_or_The_Modern_Prometheus_%281831%29.jpg'),
('Charlottes Web', 5, '1952-10-15', 'A beloved childrens book about a pig and a spider.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/CharlottesWeb.jpg/1200px-CharlottesWeb.jpg'),
('The Art of Cooking', 6, '2008-03-01', 'A cookbook featuring recipes from around the world.', 'https://www.doverpublications.com/global/uploads/cache/productimages/9780486468963med.jpg'),
('Moonwalk', 7, '1985-07-01', 'The autobiography of the first man to walk on the moon.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/19/Moonwalk\_cover.jpg/1200px-Moonwalk\_cover.jpg'),
('Harry Potter and the Philosophers Stone', 8, '1997-06-01', 'The first book in the beloved Harry Potter series.', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/17/Harry\_Potter\_and\_the\_Philosopher%27s\_Stone\_cover.jpg/1200px-Harry\_Potter\_and\_the\_Philosopher%27s\_Stone\_cover.jpg'),
('The Essays of Warren Buffet', 9, '2013-01-01', 'A collection of essays on business and investing from one of the worlds most successful investors.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Warren\_Buffett\_and\_Charlie\_Munger\_-\_Berkshire\_Hathaway\_2016\_-\_Day\_2\_%2846471318012%29.jpg/1200px-Warren\_Buffett\_and\_Charlie\_Munger\_-\_Berkshire\_Hathaway\_2016\_-\_Day\_2\_%2846471318012%29.jpg'),
('House Rules', 10, '2010-02-01', 'A medical thriller novel about a brilliant doctor with a troubled past', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/85/House\_Rules\_%28Jodi\_Picoult\_novel%29.jpg/1200px-House\_Rules\_%28Jodi\_Picoult\_novel%29.jpg'),
('The Road Ahead', 11, '1995-11-01', 'A book about the future of technology and society.', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/The\_Road\_Ahead.jpg/1200px-The\_Road\_Ahead.jpg'),
('No One is Too Small to Make a Difference', 12, '2019-05-03', 'A collection of speeches by teenage environmental activist Greta Thunberg.', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/No\_One\_Is\_Too\_Small\_To\_Make\_A\_Difference.jpg/1200px-No\_One\_Is\_Too\_Small\_To\_Make\_A\_Difference.jpg'),
('The Vitruvian Man', 13, '2018-10-01', 'A biography of the Renaissance polymath Leonardo da Vinci.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Vitruvian\_Man\_-\_Leonardo\_da\_Vinci\_-\_Wellcome\_L006228.jpg/1200px-Vitruvian\_Man\_-\_Leonardo\_da\_Vinci\_-\_Wellcome\_L006228.jpg'),
('Dreams from My Father', 14, '1995-07-01', 'The memoirs of the 44th President of the United States.', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d2/Dreams\_from\_My\_Father.jpg/1200px-Dreams\_from\_My\_Father.jpg'),
('The Wealth of Nations', 15, '1776-03-01', 'A foundational work of economics that introduced the concept of the free market.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Wealth\_of\_Nations\_cover.jpg/1200px-Wealth\_of\_Nations\_cover.jpg'),
('Kitchen Confidential', 16, '2000-02-01', 'A behind-the-scenes look at the culinary world from a celebrated chef.', 'https://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Kitchen\_Confidential.jpg/1200px-Kitchen\_Confidential.jpg'),
('The Absorbent Mind', 17, '1949-05-01', 'A book on child development and education from a pioneering educator.', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/The\_Absorbent\_Mind.jpg/1200px-The\_Absorbent\_Mind.jpg'),
('The Interpretation of Dreams', 18, '1900-11-01', 'A foundational work of psychoanalysis from the father of psychotherapy.', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Interpretation\_of\_Dreams.jpg/1200px-Interpretation\_of\_Dreams.jpg'),
('Martha Stewarts Cooking School', 19, '2012-10-01', 'A comprehensive cookbook from a celebrated lifestyle expert.', 'https://upload.wikimedia.org/wikipedia/en/thumb/8/84/Martha\_Stewart%27s\_Cooking\_School.jpg/1200px-Martha\_Stewart%27s\_Cooking\_School.jpg'),
('The Night Country', 20, '1971-04-01', 'A collection of essays on nature and the human condition.', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c5/The\_Night\_Country.jpg/1200px-The\_Night\_Country.jpg');