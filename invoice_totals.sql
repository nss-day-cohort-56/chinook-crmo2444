SELECT Total, Customer.FirstName || ' ' || Customer.LastName AS CustName, Employee.FirstName ||' '|| Employee.LastName AS EmpName, Customer.Country FROM Customer
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
    JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId