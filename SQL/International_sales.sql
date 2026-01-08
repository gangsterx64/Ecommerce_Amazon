Use ecommerce;

CREATE TABLE IF NOT EXISTS international_sales (
    `date` DATE,
    month_label VARCHAR(20),
    customer VARCHAR(150),
    style VARCHAR(50),
    sku VARCHAR(50),
    size VARCHAR(20),
    pcs INT,
    rate DECIMAL(10,2),
    gross_amount DECIMAL(10,2)
);


select * from international_sales;
