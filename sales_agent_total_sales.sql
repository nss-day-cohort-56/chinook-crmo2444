/* Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time) */

SELECT Employee.FirstName || ' ' || Employee.LastName AS FullName, SUM(Invoice.Total) AS TotalSales FROM InvoiceLine
    JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
    JOIN Customer on Customer.CustomerId = Invoice.CustomerId
    JOIN Employee on Employee.EmployeeId = Customer.SupportRepId
    GROUP BY Employee.EmployeeId