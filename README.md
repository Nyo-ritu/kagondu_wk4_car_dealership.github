# kagondu_wk4_car_dealership.github

ERD Car Dealership Database Relationships

1.	Customer (one) to Invoice (zero to many): Each customer can have many invoices (in case they buy more than one car), but each invoice is restricted to one customer.

2.	Salesperson (one) to Invoice (zero to many): Each Salesperson can be on multiple invoices (one for each car they sell) but each invoice is restricted to one salesperson (one salesperson per sale, if more than one salespersons work on a deal (uncommon) then any sharing of revenue is regulated by management, who will instruct payroll to split the deal).


3.	Car (one) to Invoice (zero to many): Each car can have multiple invoices, from zero (before it’s sold) to many (in case it is traded back in a new deal). Each invoice represents one car only. If a customer buys two cars, that’s two invoices. 

4.	Customer (one) to service Ticket (zero to many): Each customer can have multiple service tickets (one for each service issue), but each service ticket refers to one customer only.


5.	Car (one) to service Ticket (one to many): Each car can have multiple tickets (one for each issue) but each ticket refers to one car only. A car must have an initial ticket, as they are inspected and detailed when they first arrive on the lot. 

6.	Mechanic (one) to Service Ticket (zero to many): each Mechanic can and will have multiple service Tickets, one for each time they service a car. And each ticket can refer back to one mechanic. If more than one mechanic works on a service item (uncommon), only the lead mechanic is on the ticket, and sharing of revenue is regulated by management, who will instruct payroll to split pay as necessary. 


7.	Parts (zero to one) to service Ticket (zero to many) : Each part ordered can have multiple service Tickets (e.g. floor mats, or window tints etc. can be ordered multiple times). However there will be a separate ticket for each part ordered. 
