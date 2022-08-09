/* Which sales agent made the most in sales in 2009? */

SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, SUM(Invoice.Total) AS TotalSales FROM InvoiceLine
    JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer on Customer.CustomerId = Invoice.CustomerId
    JOIN Employee on Employee.EmployeeId = Customer.SupportRepId
    WHERE InvoiceDate BETWEEN '2009-01-01 00:00:00' AND '2009-12-31 00:00:00' 
    GROUP BY Employee.EmployeeId
    ORDER BY TotalSales DESC
    LIMIT 1
