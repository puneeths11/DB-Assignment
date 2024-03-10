# DB-Assignment
--------------------
# 1.
The relationship between the “Product” and “Product_Category” entities is a many-to-one relationship. This means that each product belongs to one and only one product category, but a product category can have many products. The “category_id” attribute in the “Product” entity is a foreign key that references the primary key (id) of the “Product_Category” entity. This attribute establishes the link between the two entities.

# 2.
To ensure that each product in the “Product” table has a valid category assigned to it, you can use database constraints. You can make the “category_id” field in the Product table a mandatory field, meaning that it cannot be null or empty. You can also enforce a referential integrity constraint, meaning that any value entered into this field must correspond to an existing id value in the Product_Category table. This way, you can prevent invalid or orphaned records in the Product table.


