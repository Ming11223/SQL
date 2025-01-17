-- 1. employees
CREATE TABLE employees (
    id              INT             PRIMARY KEY,
    name            VARCHAR(255)    NOT NULL,
    position        VARCHAR(255),
    department      VARCHAR(255),
    salary          NUMERIC(12, 2)
);

-- 2. customers
CREATE TABLE customers (
    customer_id     INT             PRIMARY KEY,
    customer_name   VARCHAR(255)    NOT NULL,
    city            VARCHAR(255)
);

-- 3. inventories
CREATE TABLE inventories (
    product_id      INT             PRIMARY KEY,
    product_name    VARCHAR(255)    NOT NULL,
    quantity        INT             NOT NULL,
    price           NUMERIC(12, 2)
);

-- 4. orders
CREATE TABLE orders (
    order_id        INT             PRIMARY KEY,
    order_date      DATE,
    customer_id     INT             NOT NULL,
    total_amount    NUMERIC(12, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 5. sales
CREATE TABLE sales (
    order_id        INT             NOT NULL,
    customer_id     INT             NOT NULL,
    product_id      INT             NOT NULL,
    quantity        INT             NOT NULL,
    sale_date       DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES inventories(product_id)
);
