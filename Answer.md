1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
   ANSWER:There is a  many-to-one relationship between a product table and a product category table. Therefore multiple products can belong to the same category.
   This means that for each product category listed in the product category table, there can be multiple products listed in the product table associated with that category.
    However, each product can only be associated with one category. This relationship allows for efficient organization and categorization of products within a database.

2.How could you ensure that each product in the "Product" table has a valid category assigned to it?
  ANSWER: To ensure that each product in the product table has a valid category assigned to it, we can set up a foreign key constraint between the product table and the product category table. 
  This constraint would enforce referential integrity, meaning that every value in the category column of the product table must match a primary key value in the category column of the product category table.
  This ensures that each product is associated with a valid category. Additionally, we can implement data validation rules and checks in your database schema or application logic to prevent
  inserting or updating product records without a valid category.   
