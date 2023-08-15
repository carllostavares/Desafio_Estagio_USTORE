CREATE SCHEMA RH; 

CREATE TABLE `employee` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(200) NOT NULL,
`email` varchar(200) NOT NULL,
PRIMARY KEY (`id`)
) ;
CREATE TABLE `salary` (
`id` int(11) NOT NULL,
`value` decimal(10,0) NOT NULL,
`payment_date` date NOT NULL,
`employee_id` int(11) NOT NULL,
KEY `employee_id` (`employee_id`),
CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee`
(`id`)
);

-- Inserir 10 funcionários fictícios
INSERT INTO employee (name, email)
VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Michael Johnson', 'michael.johnson@example.com'),
    ('Susan Wilson', 'susan.wilson@example.com'),
    ('David Jones', 'david.jones@example.com');

-- Inserir salários fictícios para cada funcionário nos próximos 5 meses
INSERT INTO salary (id, value, payment_date, employee_id)
VALUES
    (11, 5000, '2023-02-01', 1),
    (12, 7000, '2023-03-01', 1),
    (13, 4000, '2023-06-01', 1),
    (14, 1000, '2023-07-01', 1),
    (15, 2000, '2023-08-01', 1),
    
    (16, 10000, '2023-02-01', 2),
    (17, 9000, '2023-03-01', 2),
    (18, 18000, '2023-06-01', 2),
    (19, 9000, '2023-07-01', 2),
    (20, 6000, '2023-08-01', 2),
    
    (21, 3500, '2023-02-01', 3),
    (22, 5500, '2023-03-01', 3),
    (23, 1500, '2023-06-01', 3),
    (24, 1550, '2023-07-01', 3),
    (25, 550, '2023-08-01', 3),
    
    (26, 7800, '2023-02-01', 4),
    (27, 4800, '2023-03-01', 4),
    (28, 3500, '2023-06-01', 4),
    (29, 2900, '2023-07-01', 4),
    (30, 2800, '2023-08-01', 4),
    
    (31, 200, '2023-02-01', 5),
    (32, 800, '2023-03-01', 5),
    (33, 900, '2023-06-01', 5),
    (34, 300, '2023-07-01', 5),
    (35, 100, '2023-08-01', 5);


    
SELECT e.id, e.name, avg(s.value) AS average_salary
FROM employee e
JOIN salary s ON e.id = s.employee_id
WHERE s.payment_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY e.id, e.name
ORDER BY e.id  DESC
LIMIT 3;
