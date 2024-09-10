# SQL, noSQL Injection

What is SQL Injection?
SQL Injection is a code injection technique that exploits vulnerabilities in an application’s software by inserting malicious SQL code into a query. This can allow attackers to manipulate the database, retrieve unauthorized data, or even execute administrative operations.

How does noSQL Injection differ?
NoSQL Injection targets NoSQL databases, which often use different query languages and structures compared to SQL databases. The injection techniques exploit the way NoSQL databases handle unstructured data, often through JSON or other document formats.

What are the risks of SQL Injection?
Unauthorized access to sensitive data
Data manipulation or deletion
Compromise of the entire database
Execution of administrative operations
Potential for further network compromise
Describe a UNION attack.
A UNION attack involves using the SQL UNION operator to combine the results of two or more SELECT queries into a single result set. Attackers can use this to retrieve data from different database tables.

Explain Blind SQL Injection.
Blind SQL Injection occurs when an application is vulnerable to SQL injection but does not display the results of the injection directly. Attackers infer the results based on the application’s behavior, such as response times or error messages.

How to prevent SQL Injections?
Use parameterized queries
Employ stored procedures
Validate and sanitize user inputs
Implement proper error handling
Use ORM frameworks
What is a Parameterized Query?
A parameterized query is a type of SQL query that uses placeholders for parameters, which are then safely substituted with actual values at execution time. This prevents the insertion of malicious SQL code.

What are Stored Procedures in SQL?
Stored procedures are precompiled collections of SQL statements stored in the database. They can be executed as a single unit, which helps in reducing the risk of SQL injection by encapsulating the SQL logic.

Why is Input Validation important?
Input validation ensures that user inputs conform to expected formats and values, preventing malicious data from being processed by the application. It is a critical step in securing applications against various types of injection attacks.

How does noSQL Injection occur in MongoDB?
NoSQL Injection in MongoDB can occur when user inputs are directly included in database queries without proper validation or sanitization. Attackers can manipulate the query structure to access or modify data.

What is the role of ORMs in preventing injections?
Object-Relational Mappers (ORMs) abstract database interactions and automatically handle query parameterization, reducing the risk of injection attacks by ensuring that user inputs are safely incorporated into queries.

Can noSQL Databases like MongoDB be injected?
Yes, NoSQL databases like MongoDB can be vulnerable to injection attacks if user inputs are not properly validated and sanitized. The injection techniques differ from SQL but can still exploit query handling mechanisms.

What is Escaping User Input in SQL queries?
Escaping user input involves adding escape characters to special characters in user inputs to prevent them from being interpreted as part of the SQL query. This helps in mitigating SQL injection risks.

Explain the use of LIMIT in SQL injection attacks.
Attackers can use the LIMIT clause in SQL injection attacks to control the number of rows returned by a query, potentially bypassing application logic that restricts data access.

How to use Regular Expressions for input validation?
Regular expressions can be used to define patterns that user inputs must match. This helps in ensuring that inputs conform to expected formats and do not contain malicious content.

What is a NoSQL Injection Attack Vector?
A NoSQL Injection Attack Vector refers to the specific methods and techniques used to exploit vulnerabilities in NoSQL databases. This can include manipulating query structures, injecting malicious code, or exploiting weak input validation.
