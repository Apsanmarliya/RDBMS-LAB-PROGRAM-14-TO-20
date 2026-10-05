DELIMITER //
CREATE FUNCTION CountStudents(p_DepartmentID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE student_count INT;
    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;
    RETURN student_count;
END //
DELIMITER ;
Call the function:
SELECT CountStudents(1) AS Total_Students;
