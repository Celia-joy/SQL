
CREATE TABLE person (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    date_of_birth DATE
);

CREATE TABLE passport (
    passport_id INT PRIMARY KEY AUTO_INCREMENT,
    person_id INT UNIQUE, -- ensures 1-to-1
    passport_no VARCHAR(20),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Insert sample data
INSERT INTO person (name, date_of_birth) VALUES
('John Smith', '1990-05-15'),
('Emma Johnson', '1985-08-22'),
('Michael Brown', '1995-12-03'),
('Sarah Wilson', '1988-03-17'),
('David Lee', '1992-07-30');

INSERT INTO passport (person_id, passport_no) VALUES
(1, 'P12345678'),
(2, 'P87654321'),
(3, 'P98765432'),
(4, 'P54321987'),
(5, 'P56789012');

