
CREATE TABLE IF NOT EXISTS TableA (
    dataA INT
);

INSERT INTO TableA (dataA)
VALUES
    (1),
    (2),
    (NULL),
    (3),
    (2),
    (4),
    (4),
    (6),
    (10);

CREATE TABLE IF NOT EXISTS TableB (
    dataB INT
);

INSERT INTO TableB (dataB)
VALUES
    (7),
    (NULL),
    (NULL),
    (3),
    (4),
    (4),
    (2),
    (2),
    (8);

#Inner Join
SELECT *
FROM TableA
INNER JOIN TableB ON TableA.dataA = TableB.dataB;

#Right Join
SELECT *
FROM TableA
RIGHT JOIN TableB ON TableA.dataA = TableB.dataB;

#Left Join
SELECT *
FROM TableA
LEFT JOIN TableB ON TableA.dataA = TableB.dataB;

#Full Outer Join
SELECT *
FROM TableA
LEFT JOIN TableB ON TableA.dataA = TableB.dataB
UNION
SELECT *
FROM TableA
RIGHT JOIN TableB ON TableA.dataA = TableB.dataB
WHERE TableA.dataA IS NULL;

#Left Anti-Join
SELECT TableA.dataA
FROM TableA
LEFT JOIN TableB ON TableA.dataA = TableB.dataB
WHERE TableB.dataB IS NULL;
