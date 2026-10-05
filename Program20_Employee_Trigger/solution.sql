Create message table
CREATE TABLE Employee_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeID INT,
    Message VARCHAR(200),
    LogDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
Create Trigger
DELIMITER //
CREATE TRIGGER After_Employee_Insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log(EmployeeID, Message)
    VALUES (
        NEW.EmployeeID,
        'New employee inserted successfully'
    );
END //
DELIMITER ;
Test the trigger
INSERT INTO Employee
VALUES (2, 'Priya', 35000);
SELECT * FROM Employee_Log;
