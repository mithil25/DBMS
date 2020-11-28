-- query4
    create view query_4 as
	select *
    from T8_CUSTOMER 
    where Cust_id in (
		select Cust_id 
		from T8_INCIDENT_REPORT 
        where Cust_id in (
			select Cust_id 
            from T8_VEHICLE 
            group by Cust_id 
            having count(Cust_id) > 1) and Cust_id not in (select Cust_id from T8_PREMIUM_PAYMENT));


-- view query 6
create view query_6 as
    select Cust_Id, Cust_FName, Cust_LName, Cust_DOB, Cust_Gender, Cust_Address, Cust_MOB_Number, Cust_Email, Cust_Passport_Number, Cust_Marital_Status, Cust_PPS_Number
    from T8_CUSTOMER
    where Cust_id in (
		select distinct (cl.Cust_id)
		from T8_CLAIM as cl, T8_CLAIM_SETTLEMENT as cs, T8_COVERAGE as co 
        where cl.Claim_Amount > cs.Claim_Settlement_id + cs.Vehicle_id + cl.Claim_id + cl.Cust_id and cl.Claim_Amount < Coverage_Amount );