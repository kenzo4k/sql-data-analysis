BikeStore Database Analysis
Overview

This project focuses on analyzing data from the BikeStore database using SQL queries. The goal is to extract meaningful insights related to customer orders, products, sales, and operations to inform business decisions at BikeStore. The database consists of multiple tables that contain information about products, orders, customers, staff, and more.
Project Instructions
A. Explore Data

    Display all the data from the tables in the database to understand the structure and the relationships between them.

B. Key Questions to Answer

    Which bike is the most expensive?
        Identify the most expensive bike and discuss possible reasons behind its high price.

    How many total customers does BikeStore have?
        Count the total number of customers and discuss whether customers with order status 3 (Rejected) should be considered customers.

    How many stores does BikeStore have?
        Find the total number of stores that BikeStore operates.

    What is the total price spent per order?
        Calculate the total price per order using the formula:
        Total Price = [list_price] * [quantity] * (1 - [discount])

    What’s the sales/revenue per store?
        Calculate the sales or revenue for each store using:
        Sales Revenue = [list_price] * [quantity] * (1 - [discount])

    Which category is the most sold?
        Identify the category with the highest number of sold items.

    Which category had the most rejected orders?
        Determine the category with the highest count of rejected orders.

    Which bike is the least sold?
        Identify the least sold bike.

    What’s the full name of the customer with ID 259?
        Retrieve the full name of the customer with ID 259.

    What did customer 259 buy, and when?
        Determine what products customer 259 bought, when, and the status of the order.

    Which staff processed the order of customer 259?
        Identify which staff member processed the order for customer 259, and the store they worked in.

    How many staff does BikeStore have, and who is the lead staff?
        Find out the total number of staff and identify the lead staff.

    Which brand is the most liked?
        Identify the most popular brand at BikeStore based on sales data.

    How many categories does BikeStore have, and which one is the least liked?
        Find the number of categories and identify the least liked category.

    Which store has the most products from the most liked brand?
        Determine which store holds the most stock of products from the most liked brand.

    Which state is doing better in terms of sales?
        Identify the state that is performing the best in terms of sales.

    What’s the discounted price of product ID 259?
        Calculate the discounted price of product ID 259.

    What’s the product name, quantity, price, category, model year, and brand of product number 44?
        Retrieve detailed information about product number 44.

    What’s the zip code of CA?
        Find the zip code for California.

    How many states does BikeStore operate in?
        Determine the number of states BikeStore operates in.

    How many bikes under the children’s category were sold in the last 8 months?
        Calculate how many bikes from the children's category were sold in the last 8 months.

    What’s the shipped date for the order from customer 523?
        Retrieve the shipped date for the order from customer 523.

    How many orders are still pending?
        Count how many orders have the status of "Pending."

    What’s the category and brand of "Electra White Water 3i - 2018"?
        Identify the category and brand of the "Electra White Water 3i - 2018" product.

Tools & Technologies Used

    SQL Server Management Studio (SSMS) for running SQL queries.
    BikeStore Database for analysis (the database is provided for you to load and work with).

Instructions

    Load the BikeStore database using the attached .sql file.
    Execute the solution script in SSMS to analyze the data.
    Answer the questions by writing SQL queries based on the provided guidelines.

Notes

    Order Status Codes:
        1 = Pending
        2 = Processing
        3 = Rejected
        4 = Completed
