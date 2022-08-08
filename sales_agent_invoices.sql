SELECT InvoiceId, Employee.FirstName, Employee.LastName FROM Customer
    JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId