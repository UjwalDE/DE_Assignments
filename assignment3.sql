CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT,
    employee_name VARCHAR(50),
    manager_id INT,
    PRIMARY KEY (employee_id)
);

INSERT INTO Employees (employee_id, employee_name, manager_id)
VALUES
    (1, 'Boss', 1),
    (3, 'Alice', 3),
    (2, 'Bob', 1),
    (4, 'Daniel', 2),
    (7, 'Luis', 4),
    (8, 'Jhon', 3),
    (9, 'Angela', 8),
    (77, 'Robert', 1);

SELECT e3.employee_id FROM Employees e1, Employees e2, Employees e3
WHERE e1.manager_id = 1 AND e2.manager_id = e1.employee_id AND e3.manager_id = e2.employee_id AND e3.employee_id != 1;