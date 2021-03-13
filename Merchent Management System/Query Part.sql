SELECT cb.Branch_name,cb.Location,d.Division_name
FROM company_branch AS cb,division AS d
WHERE SUBSTRING(cb.Branch_id,1,1) = d.Division_id AND d.Division_id = '2';

SELECT md.Merchant_name,md.Merchant_id,pt.type_name
FROM merchant_details AS md,product_types AS pt
WHERE SUBSTRING(md.Merchant_id,1,1) = pt.type_id AND pt.type_id = '3';

SELECT Merchant_name,Merchant_id,Contruct_age_months/12 AS Contruct_age_years
FROM merchant_details

SELECT pd.Product_name,pd.Product_id,pd.Amount,pt.type_name
FROM product_details AS pd,product_types AS pt
WHERE SUBSTRING(pd.Product_id,1,1) = pt.type_id;

SELECT pd.Product_name,pd.Product_id,pd.Amount,md.Merchant_name
FROM product_details AS pd,merchant_details AS md
WHERE SUBSTRING(pd.Product_id,1,2) = md.Merchant_id;

SELECT pd.Product_name,pd.Product_id,pd.Amount,cb.Branch_name AS Froms
FROM product_details AS pd,company_branch AS cb
WHERE SUBSTRING(pd.Product_id,3,2) = cb.Branch_id AND cb.Branch_id = '11'

SELECT md.Merchant_name,e.Employee_name AS Delivary_Man,pd.Product_name,os.Order_status_name
FROM product_details AS pd,merchant_details AS md,employee AS e,order_status AS os
Where SUBSTRING(pd.Product_id,1,2) = md.Merchant_id AND 
	pd.Product_id = e.Product_id AND
	e.Order_status = os.Order_status_id AND
 	pd.product_id IN (SELECT Product_id FROM employee)

SELECT e.Employee_name,e.Employee_id,t.Transport_name
FROM employee AS e,transports AS t
WHERE SUBSTRING(e.Employee_id,1,1) = t.Transport_id 

SELECT pd.Product_name,pd.Product_id,cbf.Branch_name AS 'From',cbt.Branch_name AS 'To'
FROM product_details AS pd,company_branch AS cbf,company_branch cbt
WHERE SUBSTRING(pd.Product_id,3,2) = cbf.Branch_id AND
 	SUBSTRING(pd.Product_id,5,2) = cbt.Branch_id

SELECT merchant_name,Rating*5 AS 'Discount %' 
FROM merchant_details
WHERE Rating > 5

 SELECT pd.Product_name,pd.Product_id,Weight_kg,pt.type_name AS Product_type
 FROM product_details AS pd,product_types AS pt
 WHERE SUBSTRING(pd.Product_id,1,1) = pt.type_id AND pd.Weight_kg IN
 													(SELECT MAX(pd.Weight_kg)
 													FROM product_details AS pd,product_types AS pt
  													WHERE SUBSTRING(pd.Product_id,1,1) = pt.type_id
   													GROUP BY pt.type_name)

 SELECT md.Merchant_name,pay.Payment_charge,md.Rating*5 AS 'Discount %',
 		pay.Payment_charge-(pay.Payment_charge*md.Rating*5/100) AS 'Payment with Discount'
 FROM merchant_details AS md, payment_info AS pay
 WHERE md.merchant_id = pay.Merchant_id AND md.Rating > 5

        
        
