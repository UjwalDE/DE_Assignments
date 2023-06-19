
CREATE TABLE customer (
  CustID INT,
  Dates VARCHAR(6)
);

INSERT INTO customer (CustID, Dates)
VALUES
  (1111, '202212'),
  (1111, '202210'),
  (1111, '202209'),
  (1111, '202301'),
  (2222, '202201'),
  (2222, '202205'),
  (2222, '202204');

SELECT
  CustID,
  Dates,
  TIMESTAMPDIFF(MONTH, MIN(Dates), Dates) AS Differenceinmonths
FROM
  customer
GROUP BY
  CustID, Dates
ORDER BY
  CustID, Differenceinmonths;
