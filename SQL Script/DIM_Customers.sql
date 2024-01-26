SELECT
    c.customerkey AS CustomerKey,
    c.firstname AS [First Name],
    c.lastname AS [Last Name],
    c.firstname + ' ' + lastname AS [Full Name],
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
    c.datefirstpurchase AS DateFirstPurchase,
    g.city AS [Customer City]
FROM
    dbo.dimcustomer AS c
    LEFT JOIN dbo.dimgeography as g on g.geography = c.geographykey
ORDER BY
    CustomerKey ASC -- Ordered List by CustomerKey