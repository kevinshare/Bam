CREATE DATABASE Bamazon;
USE Bamazon;
CREATE table productsCorrected(
	item_id INT NOT NULL,
    product_name VARCHAR(100) NULL,
	department_name VARCHAR(100) NULL,
    stock_quantity INT NULL,
	price DECIMAL(10,4) NULL,
	primary key(item_id)
);
USE Bamazon;
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (1, "Blow Torch", "Hardware", 69, 150);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (2, "Hammer", "Hardware", 69, 14);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (3, "Hose", "Hardware", 69, 100);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (4, "GuardRail", "Hardware", 69, 500);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (5, "Nails", "Hardware", 69, 18);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (6, "Glue", "Hardware", 69, 5);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (7, "Strong Glue", "Hardware", 69, 10);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (8, "Stronger Glue", "Hardware", 69, 20);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (9, "Strongest Glue ever", "Hardware", 69, 30);
INSERT INTO productsCorrected (item_id, product_name, department_name, stock_quantity, price)
VALUES (10, "Oven", "Hardware", 69, 450);
