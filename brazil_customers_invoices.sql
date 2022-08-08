SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry FROM CUSTOMER
    JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
    WHERE Country = 'Brazil';