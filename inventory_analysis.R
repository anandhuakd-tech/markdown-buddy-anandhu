
# BDA400 Assignment 1
# Inventory Analysis Using R
# Synthetic inventory data

inventory <- data.frame(
  Product_ID = c("P001", "P002", "P003", "P004", "P005",
                 "P006", "P007", "P008", "P009", "P010"),

  Product_Name = c(
    "Laptop", "Keyboard", "Office Chair", "Desk",
    "Printer Paper", "Pens", "Monitor",
    "Filing Cabinet", "Stapler", "Mouse"
  ),

  Category = c(
    "Electronics", "Electronics", "Furniture",
    "Furniture", "Office Supplies", "Office Supplies",
    "Electronics", "Furniture", "Office Supplies",
    "Electronics"
  ),

  Quantity = c(25, 8, 12, 4, 50, 18, 7, 9, 30, 14),

  Reorder_Level = c(10, 15, 5, 6, 20, 25, 10, 4, 10, 12),

  Unit_Price = c(850, 35, 180, 250, 8, 2, 220, 140, 12, 25)
)

# Display inventory
print(inventory)

# Calculate inventory value
inventory$Inventory_Value <-
  inventory$Quantity * inventory$Unit_Price

print(inventory)

# Calculate total inventory value
total_inventory_value <- sum(inventory$Inventory_Value)
print(total_inventory_value)

# Identify low-stock products
low_stock <- inventory[
  inventory$Quantity < inventory$Reorder_Level,
]

print(low_stock)

# Summarize inventory by category
category_summary <- aggregate(
  Quantity ~ Category,
  data = inventory,
  FUN = sum
)

print(category_summary)
