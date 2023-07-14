--create a Trigger to enforce the referential integrity for the Transaction RefNbr
CREATE OR REPLACE TRIGGER check_refnbr
BEFORE UPDATE ON transaction
FOR EACH ROW
DECLARE
  v_branch_count NUMBER;
  v_merchant_count NUMBER;
BEGIN
  IF :NEW.TxCode IN ('D', 'W') THEN
    -- Check if RefNbr exists in branch_number column of the branch table
    SELECT COUNT(*)
    INTO v_branch_count
    FROM branch
    WHERE branch_number = :NEW.RefNbr;

    IF v_branch_count = 0 THEN
      RAISE_APPLICATION_ERROR(-20001, 'Invalid RefNbr. RefNbr does not exist in the branch table.');
    END IF;
  ELSE
    -- Check if RefNbr exists in merchant_number column of the merchant table
    SELECT COUNT(*)
    INTO v_merchant_count
    FROM merchant
    WHERE merchant_number = :NEW.RefNbr;

    IF v_merchant_count = 0 THEN
      RAISE_APPLICATION_ERROR(-20002, 'Invalid RefNbr. RefNbr does not exist in the merchant table.');
    END IF;
  END IF;
END;
/

-- account update trigger
CREATE OR REPLACE TRIGGER balance_update
AFTER INSERT ON transaction
FOR EACH ROW
BEGIN
  IF :NEW.TxCode IN ('D', 'R') THEN
    -- Update the balance by adding the amount
    UPDATE account
    SET Balance = Balance + :NEW.Amount
    WHERE Account_Number = :NEW.AccountNbr;
  ELSE
    -- Update the balance by subtracting the amount
    UPDATE account
    SET Balance = Balance - :NEW.Amount
    WHERE Account_Number = :NEW.AccountNbr;
  END IF;
END;
/

