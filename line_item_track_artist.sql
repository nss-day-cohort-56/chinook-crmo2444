SELECT InvoiceLineId, InvoiceId, InvoiceLine.TrackId, InvoiceLine.UnitPrice, Quantity, Name, Composer FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId