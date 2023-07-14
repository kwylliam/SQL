CREATE VIEW client_acc_details AS
SELECT c.Client_Number, c.First_Name, c.Last_Name, a.Account_Number, a.Balance
FROM client c
LEFT JOIN owns o ON c.Client_Number = o.Client_Number
LEFT JOIN account a ON o.Account_Number = a.Account_Number;