-- Авторлар кестесі
CREATE TABLE authors (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  country VARCHAR(100)
);

-- Кітаптар кестесі
CREATE TABLE books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200),
  author_id INT,
  genre VARCHAR(100),
  year INT,
  quantity INT,
  FOREIGN KEY (author_id) REFERENCES authors(id)
);

-- Оқырмандар кестесі
CREATE TABLE readers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  phone VARCHAR(20),
  email VARCHAR(100)
);

-- Тапсырыстар кестесі
CREATE TABLE borrowings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  book_id INT,
  reader_id INT,
  borrow_date DATE,
  return_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (book_id) REFERENCES books(id),
  FOREIGN KEY (reader_id) REFERENCES readers(id)
);
