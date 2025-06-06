# Sql_Sales_E-commerce_Project

This project is a comprehensive SQL-based simulation of an e-commerce platform’s backend database. It covers essential components like customer management, product cataloging, orders, payments, reviews, inventory, and shipping—along with meaningful queries for analysis and reporting.

## Project Structure

The database includes the following major tables:

- **Customers**: Stores customer information.
- **CustomerAddresses**: Handles billing and shipping addresses.
- **ProductCategories**: Lists product categories.
- **Products**: Includes product details and stock levels.
- **Orders**: Tracks order records with statuses.
- **OrderDetails**: Maintains individual product items in an order.
- **Payments**: Stores transaction information.
- **Shipping**: Tracks shipping carrier details and delivery status.
- **ProductReviews**: Captures customer ratings and reviews.
- **InventoryLogs**: Logs changes in product stock.

## Key Features

- **Relational Design**: Fully normalized tables with foreign key constraints.
- **Comprehensive Data**: Includes seed data for testing (25 customers, 25 orders, 25 products).
- **Analytical Queries**:
  - Revenue by product category
  - Monthly sales trends
  - Customer lifetime value (CLV)
  - Top products by order volume
  - Customers without any orders
  - Unpaid/failed orders
  - Shipping performance tracking

