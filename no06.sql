-- membuat database
CREATE DATABASE DBgudang;

-- menggunakan database
USE DBgudang;

-- membuat table
CREATE TABLE categories(
category_id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY(category_id)
);

CREATE TABLE products(
product_id INT NOT NULL AUTO_INCREMENT,
category_id INT NOT NULL,
name VARCHAR(100) NOT NULL,
PRIMARY KEY(product_id),
CONSTRAINT FK_categories FOREIGN KEY(category_id)
REFERENCES categories(category_id)
);

-- menyimpan data
	-- pada table categories
INSERT INTO categories(name) VALUES ('Peralatan Mandi');
INSERT INTO categories(name) VALUES ('Mie Instant');
INSERT INTO categories(name) VALUES ('Olahan Daging');

	-- pada table products
INSERT INTO products (category_id, name) VALUES (1, "Sampo");
INSERT INTO products (category_id, name) VALUES (1, "Sikat Gigi");
INSERT INTO products (category_id, name) VALUES (2, "Indomie");
INSERT INTO products (category_id, name) VALUES (2, "Mie Sedap");
INSERT INTO products (category_id, name) VALUES (3, "Nuget");

-- menampilkan data
SELECT categories.category_id, categories.name AS category_name, GROUP_CONCAT(products.name) AS products
FROM categories INNER JOIN products ON categories.category_id = products.category_id
GROUP BY category_id;