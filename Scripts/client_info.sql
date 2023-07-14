--Provide an alphabetic list by last name of all Clients showing their full name 
--(e.g., Bob Barlow), with the number of Accounts they hold and the total balance of those Accounts (1 mark) 

SELECT c.first_name, c.last_name, COUNT(o.account_number) AS Num_of_Accounts, SUM(a.balance) AS Total
FROM client c
JOIN owns o ON c.client_number=o.client_number
JOIN account a ON o.account_number=a.account_number
GROUP BY c.first_name, c.last_name
ORDER BY c.last_name;