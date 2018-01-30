select * from ContactUpdates
select * from GLAccounts
select * from InvoiceArchive
select * from InvoiceLineItems
select * from Invoices
select * from Terms
select * from Vendors

-- Q-1  Find the vendors that have no orders 
select v.VendorID,i.InvoiceID 
from Vendors as v
full join Invoices as i
on v.VendorID = i.VendorID where i.InvoiceID is null

-- Q-2 Find the orders that have no vendors
select *
from Invoices
where VendorID is null

-- Q-3 How can we prevent #2 from happening
-- While creating the database if we set the attribute of vendorID as NOT NULL we can prevent
-- this situation from happening.

-- Q-4	Write a query to show the invoice and the vendors show the total invoice amount, vendor name and the terms of the invoice (not just the term id)
select i.InvoiceID,i.InvoiceNumber,i.InvoiceDate,i.InvoiceTotal,i.TermsID,v.VendorID,v.VendorName,t.TermsDescription,t.TermsDueDays
from Invoices as i
	join vendors as v
		on i.VendorID = v.VendorID
	join  Terms as t
		on t.TermsID = i.TermsID

-- Q-5 Compare the terms of an invoice to the default terms of a vendor and show when they are different (show more than the term id)
select i.InvoiceID,i.InvoiceNumber,i.TermsID,v.DefaultTermsID,v.VendorID,v.VendorName,t.TermsDescription,t.TermsDueDays
from Invoices as i
	join vendors as v
		on i.VendorID = v.VendorID
	join  Terms as t
		on t.TermsID = i.TermsID
		where i.TermsID != v.DefaultTermsID

-- Q-6 review the contact updates table in SSMS what is the purpose of this table and what do you think is good or bad about the design choices
-- I think that using the GLcontactsupdate is a good approach to update the contact names of the table without touching the actual table.

-- Q-7 Find all the vendors who have a contact with a vowel 'aeiou' in the second character of thier first name
select VendorContactFName, VendorID, VendorAddress1,VendorPhone 
	from vendors
		where VendorContactFName like '_[a,e,i,o,u]%'

-- Q-8  Find all the vendors who have a contact withouti a vowel 'aeiou' in the second character of thier first name
select VendorContactFName, VendorID, VendorAddress1,VendorPhone 
	from vendors
		where VendorContactFName not like '_[a,e,i,o,u]%'

--Q-9  Is GL account related to any other table if so list it
-- Yes, GL account is related to the Vendors table and the Invoice Line Item table.