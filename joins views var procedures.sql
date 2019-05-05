select * from HumanResources.Department
select * from HumanResources.Employee
select * from HumanResources.EmployeeDepartmentHistory
select * from HumanResources.EmployeePayHistory
select * from HumanResources.JobCandidate


select BusinessEntityID,OrganizationLevel,Name 
from
HumanResources.Employee
join HumanResources.Department
on HumanResources.Department.DepartmentID = HumanResources.Employee.OrganizationLevel

create view myvie as 
select BusinessEntityID,NationalIDNumber,LoginID
from HumanResources.Employee


create view mynewvie as 
select BusinessEntityID,NationalIDNumber,LoginID
from HumanResources.Employee
where BusinessEntityID < 10


select * from mynewvie
select * from myvie

create Procedure contant
As
select LoginID , JobTitle , MaritalStatus , BirthDate
from HumanResources.Employee
join HumanResources.Department
on HumanResources.Department.ModifiedDate = HumanResources.Employee.BirthDate

create Procedure contant2
As
select LoginID , JobTitle , MaritalStatus , BirthDate
from HumanResources.Employee
join HumanResources.Department
on HumanResources.Department.DepartmentID= HumanResources.Employee.BusinessEntityID

Exec contant
Exec contant2

create procedure Emp @EmpId int , @EmpGender varchar(50)
 as
 select HumanResources.Employee.BusinessEntityID ,HumanResources.Employee.Gender
 from HumanResources.Employee
 where HumanResources.Employee.BusinessEntityID = @EmpId And HumanResources.Employee.Gender = @EmpGender


create procedure Emp1 @EmpId int , @EmpGender varchar(50)
 as
 select HumanResources.Employee.BusinessEntityID ,HumanResources.Employee.Gender
 from HumanResources.Employee
 where HumanResources.Employee.BusinessEntityID = @EmpId And HumanResources.Employee.Gender = @EmpGender

 
 Exec Emp1 2, 'F';
 Exec Emp1 3, 'F';
 Exec Emp1 4, 'F';
 Exec Emp1 5, 'F';

 Exec Emp1 2, 'F';
 Exec Emp1 2, 'F';


