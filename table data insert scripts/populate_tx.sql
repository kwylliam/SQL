-- Transaction 1
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'X', 1000001, 123.45, TO_DATE('May 1 2019 12:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 2
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000000, 234.56, TO_DATE('May 1 2019 12:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 3
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000001, 345.67, TO_DATE('May 1 2019 12:00', 'Mon DD YYYY HH24:MI'), 111);

-- Transaction 4
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000001, 100.00, TO_DATE('May 1 2019 10:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 5
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000001, 200.00, TO_DATE('May 11 2019 11:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 6
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000001, 300.00, TO_DATE('May 21 2019 12:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 7
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'W', 1000001, 50.00, TO_DATE('May 29 2009 10:00', 'Mon DD YYYY HH24:MI'), 102);

-- Transaction 8
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'W', 1000001, 75.00, TO_DATE('May 29 2009 11:00', 'Mon DD YYYY HH24:MI'), 103);

-- Transaction 9
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000001, 123.45, TO_DATE('Jun 15 2019 13:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 10
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000002, 1000.00, TO_DATE('May 15 2019 9:00', 'Mon DD YYYY HH24:MI'), 104);

-- Transaction 11
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'W', 1000002, 456.78, TO_DATE('May 15 2019 9:05', 'Mon DD YYYY HH24:MI'), 104);

-- Transaction 12
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000003, 456.78, TO_DATE('May 15 2019 9:10', 'Mon DD YYYY HH24:MI'), 104);

-- Transaction 13
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'W', 1000003, 500.00, TO_DATE('May 18 2019 14:00', 'Mon DD YYYY HH24:MI'), 104);

-- Transaction 14
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000003, 100.00, TO_DATE('May 20 2019 13:00', 'Mon DD YYYY HH24:MI'), 104);

-- Transaction 15
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'P', 1000003, 65.78, TO_DATE('May 20 2019 14:50', 'Mon DD YYYY HH24:MI'), 304);

-- Transaction 16
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'B', 1000002, 100.00, TO_DATE('May 21 2019 9:00', 'Mon DD YYYY HH24:MI'), 301);

-- Transaction 17
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'P', 1000002, 200.00, TO_DATE('May 21 2019 10:00', 'Mon DD YYYY HH24:MI'), 302);

-- Transaction 18
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'R', 1000002, 50.00, TO_DATE('May 26 2019 12:34', 'Mon DD YYYY HH24:MI'), 301);

-- Transaction 19
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000004, 2000.00, TO_DATE('Jun 1 2019 13:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 20
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000005, 2000.00, TO_DATE('Jun 1 2019 13:00', 'Mon DD YYYY HH24:MI'), 101);

-- Transaction 21
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'D', 1000005, 2000.00, TO_DATE('Jun 1 2019 14:00', 'Mon DD YYYY HH24:MI'), 102);

-- Transaction 22
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'B', 1000005, 3456.78, TO_DATE('Jun 10 2019 12:00', 'Mon DD YYYY HH24:MI'), 301);

-- Transaction 23
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'B', 1000005, 432.10, TO_DATE('Jun 15 2019 14:30', 'Mon DD YYYY HH24:MI'), 302);

-- Transaction 24
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'B', 1000005, 100.00, TO_DATE('Jun 20 2019 15:55', 'Mon DD YYYY HH24:MI'), 303);

-- Transaction 25
INSERT INTO transaction (TxNbr, TxCode, AccountNbr, Amount, Transaction_Date, RefNbr)
VALUES (DEFAULT, 'B', 1000005, 80.00, TO_DATE('Jun 25 2019 16:56', 'Mon DD YYYY HH24:MI'), 304);


