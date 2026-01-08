Use ecommerce;

CREATE TABLE IF NOT EXISTS sale_report (
    sku_code VARCHAR(50),
    design_no VARCHAR(50),
    stock INT,
    category VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(30)
);

select * from sale_report;
