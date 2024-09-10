# Company Database Project

This project consists of creating a relational database for a company using SQL. It includes the definition of tables for customers, categories, departments, roles, employees, orders, products, projects, and the relationships between them. The SQL script is designed to structure and manage data efficiently, including various CRUD operations (Create, Read, Update, Delete) and relationships with foreign keys.

## Database Schema

The database is organized into several entities representing the main components of the company:

### Tables:

1. **Customer**: Holds customer information including ID, name, address, and phone.
2. **Category**: Defines product categories with fields like category ID and name.
3. **Department**: Stores department details, such as ID, name, and capacity.
4. **Role**: Contains employee roles within the company.
5. **Employee**: Stores employee data, including name, age, salary, and links to departments and roles.
6. **Order**: Represents customer orders, including shipping details and related customer information.
7. **Product**: Describes products, including name, price, quantity, and category ID.
8. **Project**: Describes company projects and deadlines.
9. **Project Employee**: Relates employees to projects they are working on.
10. **Product Order**: Relates products to orders made by customers.

## Features

- **Data Insertion**: Adds customers, categories, departments, roles, employees, orders, products, and projects.
- **Data Updates**: Modifies existing entries such as customer names, category names, and department names.
- **Data Deletion**: Removes records like roles from the database.
- **Foreign Key Relationships**: Ensures referential integrity between tables.
- **Error Prevention**: Uses `PRIMARY KEY` and `FOREIGN KEY` constraints to avoid duplicates and maintain relationships.
- **Alter Table Operations**: Modifies tables to add new columns for expanded functionality.

## Prerequisites

- A MySQL or SQL-compatible database system.
- Basic knowledge of SQL queries.
