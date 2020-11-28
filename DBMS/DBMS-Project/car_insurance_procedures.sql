DELIMITER //
CREATE PROCEDURE query_1(
in status1 varchar(20))
BEGIN
	select * 
    from  T8_VEHICLE v inner join T8_CUSTOMER c on v.Cust_id=c.Cust_id  
    where c.Cust_id in ( 
		select x.Cust_id 
        from T8_CLAIM x 
        where x.Claim_Status = status1);
END //
DELIMITER ;





-- query 2
DELIMITER $$
CREATE FUNCTION query2(
)
RETURNS int
DETERMINISTIC
BEGIN
 return(select sum(CAST(Cust_Id as unsigned)) from T8_CUSTOMER);
END $$
DELIMITER ;


DELIMITER //
CREATE PROCEDURE cust_details_query_2()
BEGIN
	select * 
    from T8_CUSTOMER c1 
    where c1.Cust_id in 
    (select p.Cust_id from T8_PREMIUM_PAYMENT p 
    where (p.Premium_Payment_Amount > query2()));
END //
DELIMITER ;





-- query 3

DELIMITER //
CREATE PROCEDURE company_query_3()
BEGIN
select * 
    from T8_INSURANCE_COMPANY 
    where Company_Name in (
		select T8_OFFICE.Company_Name 
		from T8_OFFICE
		group by Company_Name 
		having count(distinct (Address))>1 and Company_Name in (
			select T8_DEPARTMENT.Company_Name
			from T8_PRODUCT , T8_DEPARTMENT
            where T8_DEPARTMENT.Company_Name = T8_PRODUCT.Company_Name 
			group by T8_DEPARTMENT.Company_Name 
			having count(distinct (Product_Number)) > count(distinct (Department_Name))));
END //
DELIMITER ;





-- query 5

DELIMITER //
CREATE PROCEDURE vehicle_details_query_5()
BEGIN
	 select *
    from T8_VEHICLE as v, T8_PREMIUM_PAYMENT as p where v.Cust_id = p.Cust_id and p.Premium_Payment_Amount > v.Vehicle_Number;
END //
DELIMITER ;

