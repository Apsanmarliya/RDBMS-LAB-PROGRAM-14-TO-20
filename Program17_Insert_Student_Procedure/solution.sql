DELIMITER//
CREATE PROCEDURE InsertStudent(
    IN p_StudentID INT,
    IN p_StudentName VARCHAR(100),
    IN p_Marks INT,
    IN p_DepartmentID INT
)
BEGIN
    INSERT INTO Student
    VALUES (
        p_StudentID,
        p_StudentName,
        p_Marks,
        p_DepartmentID
    );
END //
DELIMITER ;
CALL InsertStudent(105, 'Karthik', 78, 1);
SELECT * FROM Student;
