/* Question 2a - Show schema generation query. creating a table */ 
SET global time_zone = '-5:00'; 

SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE DATABASE bookstore;
USE bookstore;

CREATE TABLE customers (
	customer_id  BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    email_id VARCHAR(50),
    tel VARCHAR(50),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    PRIMARY KEY (customer_id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO customers (customer_id, first_name, email_id, tel, created_at, updated_at) VALUES
(1, 'Irfan Bakti', 'irfan88@example.com', '+60123456789', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(2, 'Jack Smmith', 'jack.smmith@acme.io', '+60132456781', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(3, 'Nazir', NULL, '+601185434012', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(4, 'Faiz Ma', 'faiz.ma@jholow.cn', '+6019772002', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(5, 'Isham Rais', 'isham@pmo.gov.my', '+60135482020', '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(6, 'Shanon Teoh', 'shahnon.teoh@st.com.sg', NULL, '2019-08-07 08:13:21', '2019-08-07 08:13:21');
COMMIT;

CREATE TABLE invoices (
	invoices_id  BIGINT UNSIGNED NOT NULL,
    invoices_number BIGINT UNSIGNED NOT NULL,
    sub_total DECIMAL(10,2),
    tax_total DECIMAL(10,2),
    invoices_total DECIMAL(10,2),
    customer_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO invoices (invoices_id, invoices_number, sub_total, tax_total, invoices_total, customer_id, created_at, updated_at) VALUES
(1, 2019001, 30.00, 0.00, 30.00, 1, '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(2, 2019002, 150.00, 0.00, 150.00, 2, '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(3, 2019003, 30.00, 0.00, 30.00, 2, '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(4, 2019004, 55.00, 0.00, 55.00, 3, '2019-08-07 08:13:21', '2019-08-07 08:13:21'),
(5, 2019005, 450.00, 0.00, 450.00, 6, '2019-08-07 08:13:21', '2019-08-07 08:13:21')
;
COMMIT;

CREATE TABLE invoiceslines(
	invoiceslines_id  BIGINT UNSIGNED NOT NULL,
    invoices_description VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity BIGINT UNSIGNED,
    sub_total DECIMAL(10,2),
    tax_total DECIMAL(10,2),    
    invoiceslines_total DECIMAL(10,2),    
    tax_id VARCHAR(50),
	sku_id BIGINT UNSIGNED NOT NULL,
	invoices_id  BIGINT UNSIGNED NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO invoiceslines (invoiceslines_id, invoices_description, unit_price, quantity, sub_total, tax_total, invoiceslines_total, tax_id, sku_id, invoices_id) VALUES
(1, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00, NULL, 1, 1),
(2, 'Book #2', 25.00, 4, 100.00, 0.00, 100.00, NULL, 2, 2),
(3, 'Book #3', 50.00, 1, 50.00, 0.00, 50.00, NULL, 3, 2),
(4, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00, NULL, 1, 3),
(5, 'Book #1', 30.00, 1, 30.00, 0.00, 30.00, NULL, 1, 4),
(6, 'Book #2', 25.00, 1, 25.00, 0.00, 25.00, NULL, 2, 4),
(7, 'Book #1', 30.00, 5, 150.00, 0.00, 150.00, NULL, 1, 5),
(8, 'Book #3', 50.00, 6, 300.00, 0.00, 300.00, NULL, 3, 5)
;
COMMIT
;

/* Question 2b: number of customers purchasing more than 5 books */
SELECT COUNT(quantity) AS customers_with_over_5_purchases
FROM bookstore.invoiceslines
WHERE quantity >5
;

/* Question 2c: customes who never purchased anything  */
SELECT *
FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT invoices.customer_id
                          FROM invoices)
;

/* Question 2d: Show the SQL query for list of book purchased with the users */
SELECT DISTINCT invoiceslines.invoices_description, invoices.customer_id, customers.first_name
FROM invoices
INNER JOIN customers ON invoices.customer_id = customers.customer_id
INNER JOIN invoiceslines ON invoices.invoices_id = invoiceslines.invoices_id