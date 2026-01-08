Use ecommerce;
CREATE TABLE IF NOT EXISTS may_2022_catalog (
    sku VARCHAR(50),
    style_id VARCHAR(50),
    catalog VARCHAR(50),
    category VARCHAR(50),
    weight DECIMAL(6,2),
    tp DECIMAL(10,2),
    mrp_old DECIMAL(10,2),
    final_mrp_old DECIMAL(10,2),
    ajio_mrp DECIMAL(10,2),
    amazon_mrp DECIMAL(10,2),
    amazon_fba_mrp DECIMAL(10,2),
    flipkart_mrp DECIMAL(10,2),
    limeroad_mrp DECIMAL(10,2),
    myntra_mrp DECIMAL(10,2),
    paytm_mrp DECIMAL(10,2),
    snapdeal_mrp DECIMAL(10,2)
);

select * from may_2022_catalog;
