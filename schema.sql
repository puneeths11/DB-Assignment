CREATE TABLE Product_Category (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE Product (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    desc TEXT,
    SKU VARCHAR(255),
    category_id INT NOT NULL REFERENCES Product_Category(id),
    inventory_id INT,
    price DECIMAL,
    discount_id INT,
     created_at TIMESTAMP,
     modified_at TIMESTAMP, 
     deleted_at TIMESTAMP
);

CREATE TABLE Discount (
  id INT PRIMARY KEY, 
  name VARCHAR(255), 
  desc TEXT, 
  discount_percent DECIMAL, 
  active BOOLEAN, 
  created_at TIMESTAMP, 
  modified_at TIMESTAMP, 
  deleted_at TIMESTAMP
);

CREATE TABLE Product_Inventory (
   id INT PRIMARY KEY,  
   quantity INT ,  
   created_at TIMESTAMP ,  
   modified_at TIMESTAMP ,  
   deleted_at TIMESTAM P ,
   FOREIGN KEY (product_id) REFERENCES Products(id)
);
