create database TATA_DB_FORAGE

SELECT * from [Online Retail Data]

select distinct country from [Online Retail Data]

---sum of revenue by year and month---
select sum(Revenue) as Total_Revenue,
year(InvoiceDate) as Year,
month(invoicedate) as Month
from [Online Retail Data]
group by year(InvoiceDate),month(invoicedate)
order by month(invoicedate)

---Sum of revenue for year 2011 and for months---
select month(invoicedate) as Month, sum(Revenue) as Total_Revenue
from [Online Retail Data]
where InvoiceDate between '2011-01-01' and '2011-12-31'
group by month(invoicedate)
order by Total_Revenue desc

---top 10 countries by total revenue---
select distinct top 10 Country,sum(revenue) as Total_Revenue, sum (Quantity_sold) as Total_Sales
from [Online Retail Data]
where Country != 'United Kingdom'
group by Country
order by Total_Revenue desc

---top 10 customers by revenue---
select top 10 CustomerID as CustomerID,
sum (Revenue) as Total_Revenue
from [Online Retail Data]
where CustomerID is not null
Group by CustomerID
order by Total_Revenue desc


---Top 10 country by total order---

select distinct top 10 Country as Country,
COUNT(CustomerID) as Total_Order
from [Online Retail Data]
where Country != 'United Kingdom'
Group by Country
order by Total_Order  desc