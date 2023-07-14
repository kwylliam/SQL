CREATE OR REPLACE PROCEDURE statement(acc_num VARCHAR2) IS
    tAmount transaction.amount%Type;
    tCode transaction.txcode%Type;
    tDate transaction.transaction_date%Type;
    balance NUMBER(5,2);
    CURSOR acc_audit IS
        SELECT Amount,TxCode, Transaction_Date,
            SUM(CASE WHEN TxCode IN ('D', 'R') THEN Amount ELSE -Amount END) OVER (PARTITION BY AccountNbr ORDER BY Transaction_Date) AS Returning_Balance
        FROM transaction
        WHERE AccountNbr = acc_num
        ORDER BY Transaction_Date;
BEGIN
    OPEN acc_audit;
    dbms_output.put_line('Amount'||'       '||'Type'||'    '||'Date'||'   '||'Balance');
    LOOP
    
    FETCH acc_audit
        INTO tAmount, tCode, tDate, balance;
    EXIT WHEN acc_audit%NOTFOUND;
    
    dbms_output.put_line(tAmount||'         '||tCode||'    '||tDate||'   '||balance);
    
    END LOOP;
    CLOSE acc_audit;
END;
    