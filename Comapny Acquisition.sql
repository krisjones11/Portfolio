USE companydata;


Select * FROM
acquisitions;

-- Number of Acquisitions by Apple In the 2010s
select count(AcquisitionID)
from acquisitions
where ParentCompany = "Apple" AND
AcquisitionYear LIKE "201%";

-- Total Spent On Acquisitions From Each Company
select 
ParentCompany,
SUM(ValueUSD) as TotalSpent
from acquisitions2
group by ParentCompany
order by TotalSpent desc; 


-- Selection of Acquisition ID, Year, Business Type, Company, and Product by Apple In the 2010s
select
a.AcquisitionID as ID,
a.AcquisitionYear as Year,
a.Business as BusinessType,
a.Company,
a.DerivedProducts as Product 
from 
acquisitions2 a
where ParentCompany = "Apple" AND
AcquisitionYear LIKE "201%" 
Order by Year DESC;


-- A count of total acquisitions by each company
select ParentCompany,
count(AcquisitionID) as TotalAcquisitions
from acquisitions2
group by ParentCompany
order by TotalAcquisitions desc;
