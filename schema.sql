CREATE TABLE [product] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [desc] text,
  [SKU] nvarchar(255),
  [category_id] integer,
  [inventory_id] integer,
  [price] decimal,
  [discount_id] integer,
  [created_at] timestamp,
  [modified_at] timestamp,
  [deleted_at] timestamp
)
GO

CREATE TABLE [product_category] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [desc] text,
  [created_at] timestamp,
  [modified_at] timestamp,
  [deleted_at] timestamp
)
GO

CREATE TABLE [product_inventory] (
  [id] integer PRIMARY KEY,
  [quantity] integer,
  [created_at] timestamp,
  [modified_at] timestamp,
  [deleted_at] timestamp
)
GO

CREATE TABLE [discount] (
  [id] integer PRIMARY KEY,
  [name] nvarchar(255),
  [desc] text,
  [discount_percent] decimal,
  [active] boolean,
  [created_at] timestamp,
  [modified_at] timestamp,
  [deleted_at] timestamp
)
GO

ALTER TABLE [product] ADD FOREIGN KEY ([category_id]) REFERENCES [product_category] ([id])
GO

ALTER TABLE [product] ADD FOREIGN KEY ([inventory_id]) REFERENCES [product_inventory] ([id])
GO

ALTER TABLE [product] ADD FOREIGN KEY ([discount_id]) REFERENCES [discount] ([id])
GO
