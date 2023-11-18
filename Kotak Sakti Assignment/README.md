# Data Analyst Application Question by Kotak Sakti

## Introduction
As part of the application process for the Data Analyst role at Kotak Sakti, this document addresses a series of questions and tasks designed to demonstrate my skills and understanding in key areas relevant to the position. 

The assignment involves a detailed exploration of various aspects of data analysis:
* including understanding the role of a Data Engineer
* executing SQL queries
* mplementing data ingestion and extraction processes using Python and 
* orchestrating a data pipeline for a company.

## Question 1
**Describe a Data Engineer role in an organisation and its main responsibilities**
A data engineer will often have to handle  with multiple types of data to perform many operations using many scripting or coding languages according to the preferences of the organization.

Data engineer will deals with three primary types of data: 
* Structured: usually a table-based source system i.e relational database, comma separated file.
* Semi-structured: data that requires flattening prior loading i.e JSON
* Unstructured: data stored as key-value pair or non-relational data i.e noSQL, images, PDFs

Among the key task performed by data engineer includes the following:-
* data integration: establishing link between business operation and data sources
* data transformation: data is transformed into a suitable format through _Extract, Transform and Load_ (ETL) process, or through the _extract, load and transform_(ELT) where data is ingested to a data lake and processed using big data techniques. Both ETL and ELT are to support downstream analytical needs.
* data consolidation: is a process to combined extracted data from multiple data sources into one consistent structure to support analytics and reporting - usually done using analytical stores using data lake or data warehouses

## Question 2
From the three tables in Appendix A

- a. Show schema generation query
- b. Show the SQL query for number of customers purchasing more than 5 books
- c. Show the SQL query for a list of customers who never purchased anything
- d. Show the SQL query for list of book purchased with the users
You can attempt this question in any SQL based database (SQLSRV, MYSQL, OracleDB)

![Image](https://github.com/Syarmine/Portfolio/blob/466830c563b2aabe3333f558a16f6b9873d3dca0/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202a.png)

Generated relational database named `bookstore` with 3 tables named as `customers`, `invoices` and `invoiceslines` as showed as the following:-

![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a.PNG)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a1.PNG)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/2a2.PNG)

![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202b.png)
![Image](https://github.com/Syarmine/Portfolio/blob/45279de298a95d032a3bda2f810c3bf732c18ed1/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202c.png)
![Image](https://github.com/Syarmine/Portfolio/blob/500860354e01f49447c9af10fdf42aedb296bd78/Kotak%20Sakti%20Assignment/SQL%20Images/Question%202d1.png)
