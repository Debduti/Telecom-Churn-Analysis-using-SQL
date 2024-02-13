-- Basic Data Exploration to check the contents of the table
SELECT TOP (10) [CustomerID]
      ,[Count_Cust]
      ,[Country]
      ,[State]
      ,[City]
      ,[Zip_Code]
      ,[Lat_Long]
      ,[Latitude]
      ,[Longitude]
      ,[Gender]
      ,[Senior_Citizen]
      ,[Partner]
      ,[Dependents]
      ,[Tenure_Months]
      ,[Phone_Service]
      ,[Multiple_Lines]
      ,[Internet_Service]
      ,[Online_Security]
      ,[Online_Backup]
      ,[Device_Protection]
      ,[Tech_Support]
      ,[Streaming_TV]
      ,[Streaming_Movies]
      ,[Contract]
      ,[Paperless_Billing]
      ,[Payment_Method]
      ,[Monthly_Charges]
      ,[Total_Charges]
      ,[Churn_Label]
      ,[Churn_Value]
      ,[Churn_Score]
      ,[CLTV]
      ,[Churn_Reason]
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]


  -- 1.Data Cleaning
  --1.0 Total Number of Customers

  SELECT COUNT(*)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  -- 1.1 Check for Duplicates

  SELECT CustomerID,COUNT(CustomerID) as Customer_Count
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  GROUP BY CustomerID
  HAVING COUNT(CustomerID) > 1

  --1.2 Check for NULLS in numeric fields

  SELECT 'Count_Cust' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Count_Cust IS NULL 
  GROUP BY Count_Cust
  UNION
  SELECT 'Latitude' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Latitude IS NULL 
  GROUP BY Latitude
  UNION
  SELECT 'Longitude' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Longitude IS NULL 
  GROUP BY Longitude
  UNION
  SELECT 'Tenure_Months' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Tenure_Months IS NULL 
  GROUP BY Tenure_Months
  UNION
  SELECT 'Monthly_Charges' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Monthly_Charges IS NULL 
  GROUP BY Monthly_Charges
  UNION
  SELECT 'Total_Charges' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Total_Charges IS NULL 
  GROUP BY Total_Charges
  UNION
  SELECT 'Churn_Value' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Churn_Value IS NULL 
  GROUP BY Churn_Value
  UNION
  SELECT 'Churn_Score' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE Churn_Score IS NULL 
  GROUP BY Churn_Score
  UNION
  SELECT 'CLTV' as ColumnName, COUNT(*) AS NullCount 
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  WHERE   CLTV IS NULL 
  GROUP BY   CLTV

  --1.3 Handle NULLS in Integer fields ( Total_Charges)

  UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
  SET Total_Charges = (SELECT AVG(Total_Charges) FROM [Telco Customer Churn].[dbo].[Telco_customer_churn])
  WHERE Total_Charges IS NULL

  -- 1.4 Checking unique values in categorical fields
  SELECT DISTINCT(COUNTRY)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]
  
  SELECT DISTINCT(State)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(CITY)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Zip_Code)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT  DISTINCT(Gender)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Senior_Citizen)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Partner)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Dependents)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Phone_Service)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Multiple_Lines)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Internet_Service)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Online_Security)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Online_Backup)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Device_Protection)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] --found to have NULLs

  SELECT DISTINCT(Tech_Support)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] --found to have NULLs

  SELECT DISTINCT(Streaming_TV)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] --found to have NULLs

  SELECT DISTINCT(Streaming_Movies)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] --found to have NULLs

  SELECT DISTINCT(Contract)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Paperless_Billing)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Payment_Method)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Churn_Label)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

  SELECT DISTINCT(Churn_Reason)
  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]


  --1.5 Count Nulls in Categorical Fields and calculate percentage of records  that have NULLS in these fields
  SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS null_Phone_Service,
    100.0 * SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ; --no NULLS

   SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS null_Internet_Service,
    100.0 * SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ; -- no nulls
   
 SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS null_Multiple_Lines,
    100.0 * SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ;   -- About 10% nulls

  SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Device_Protection IS NULL THEN 1 ELSE 0 END) AS null_Device_Protection,
    100.0 * SUM(CASE WHEN Device_Protection IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ; --About 20% nulls
   
   SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Tech_Support IS NULL THEN 1 ELSE 0 END) AS null_Tech_Support,
    100.0 * SUM(CASE WHEN Tech_Support IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ; --About 20% nulls

   SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS null_Streaming_TV,
    100.0 * SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ; --About 20% nulls

   SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS null_Streaming_Movies,
    100.0 * SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ;   --About 20% nulls
   
   SELECT
    COUNT(*) AS record_count,
    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS null_Churn_Reason,
    100.0 * SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS null_percentage
   FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ;   --About 73% nulls- indicating these are customers that stayed on

   --1.6 Handle Nulls in above categorical fields- replace them with 0

   UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
   SET Multiple_Lines = 0
   WHERE Multiple_Lines IS NULL

   UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
   SET Device_Protection = 0
   WHERE Device_Protection IS NULL 

   UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
   SET Tech_Support = 0
   WHERE Tech_Support IS NULL 
   
   UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
   SET Streaming_TV = 0
   WHERE Streaming_TV IS NULL

   UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
   SET Streaming_Movies = 0
   WHERE Streaming_Movies IS NULL


  

  -- 2.Data Exploration

  -- Answering the following business questions

  --2.1 Average Churn Rate

    SELECT COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    CONCAT(100* SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / COUNT(*),'%') AS Churn_Rate
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] ;

  --2.2 Churn Rate by city, and top cities with highest churn rate

    SELECT City,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY City) AS Customers_City,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY City) AS Churn_RateCity
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY City
	ORDER BY Churn_RateCity DESC
	OFFSET  0 ROWS 
    FETCH NEXT 20 ROWS ONLY 

  -- 2.2 Distribution of Churn Rate across Genders

    SELECT Gender,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY Gender) AS Customers_per_Gender,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY Gender) AS Churn_Rate_Per_Gender
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Gender
	ORDER BY Churn_Rate_Per_Gender DESC

	 
  --2.3 What is the typical tenure for churned customers
  -- We are adding a new column to create buckets for tenure months. We will create 7 buckets- 6 months,1 year,2 years,3 years,4 years,5 years and above
	
	ALTER TABLE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	ADD Tenure_grouping VARCHAR(50)

	UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	SET Tenure_grouping = 
	CASE WHEN Tenure_Months <= 6 THEN '6 months'
		 WHEN Tenure_Months <= 12 THEN '1 year'
		 WHEN Tenure_Months <= 24 THEN '2 years'
		 WHEN Tenure_Months <= 36 THEN '3 years'
		 WHEN Tenure_Months <= 48 THEN '4 years'
		 WHEN Tenure_Months <= 60 THEN '5 years'
     ELSE 'more than 5 years'
	END 
	-- Confirm that new column is added
	SELECT *  FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 

	
	-- Percentage of Churned Customers per Tenure group

	SELECT Tenure_Grouping,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY Tenure_Grouping) AS Customers_per_TenureGroup,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY Tenure_Grouping) AS Churn_Rate_Per_TenureGroup
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Tenure_Grouping
	ORDER BY Churn_Rate_Per_TenureGroup DESC

	--2.7 Customer Churn Rate distribution across Contract Type

	SELECT Contract,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY Contract) AS Customers_per_Contract,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY Contract) AS Churn_Rate_Per_Contract
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Contract
	ORDER BY Churn_Rate_Per_Contract DESC

	--2.8 Customer Churn Rate - different reasons

	SELECT Churn_Reason,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER() AS Churn_Rate_Per_ChurnReason
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Churn_Reason
	ORDER BY Churn_Count DESC	
	--We will group the reasons into relevant buckets

	ALTER TABLE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	ADD Churn_Reason_Category VARCHAR(50)

	UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	SET Churn_Reason_Category = 
	CASE WHEN Churn_Reason ='Attitude of support person' THEN 'Poor Customer Service'
		 WHEN Churn_Reason ='Attitude of service provider' THEN 'Poor Customer Service'
		 WHEN Churn_Reason ='Poor Expertise of phone Support' THEN 'Poor Customer Service'
		 WHEN Churn_Reason ='Poor Expertise of online Support' THEN 'Poor Customer Service'
		 WHEN Churn_Reason ='Competitor offered higher download speeds' THEN 'Competitor Edge'
		 WHEN Churn_Reason ='Competitor offered more data' THEN 'Competitor Edge'
		 WHEN Churn_Reason ='Competitor made better offer' THEN 'Competitor Edge'
		 WHEN Churn_Reason ='Competitor had better devices' THEN 'Competitor Edge'
		 WHEN Churn_Reason ='Network reliability' THEN 'Unhappy with Service'
		 WHEN Churn_Reason ='Service Dissatisfaction' THEN 'Unhappy with Service'
		 WHEN Churn_Reason ='Lack of self-service on Website' THEN 'Unhappy with Service'
		 WHEN Churn_Reason ='Limited range of services' THEN 'Unhappy with Service'
		 WHEN Churn_Reason ='Product dissatisfaction' THEN 'Unhappy with Product'
		 WHEN Churn_Reason ='Price too high' THEN 'Unfavorable Pricing'
		 WHEN Churn_Reason ='Extra data charges' THEN 'Unfavorable Pricing'
		 WHEN Churn_Reason ='Long distance charges' THEN 'Unfavorable Pricing'
		 WHEN Churn_Reason ='Lack of affordable download/upload speed' THEN 'Unfavorable Pricing'
		 ELSE Churn_Reason
	END 

	SELECT DISTINCT(Churn_Reason), Churn_Reason_Category
	FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 


	SELECT Churn_Reason_Category,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    CAST(100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER() AS DECIMAL(10,2)) AS Churn_Rate_Per_ChurnReason
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Churn_Reason_Category
	ORDER BY Churn_Count DESC

  -- 2.9 Preferred Payment Methods

  SELECT Payment_Method,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY Payment_Method) AS Customers_per_ChurnReason,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY Payment_Method) AS Churn_Rate_Per_PaymentMethod
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Payment_Method
	ORDER BY Churn_Rate_Per_PaymentMethod DESC

  --2.10 Average Monthly charges and Total Charges for churned customers

    SELECT AVG(Monthly_Charges) Average_MonthlyCharges,MIN(Monthly_Charges) AS Min_MonthlyCharges,MAX(Monthly_Charges) AS Max_MonthlyCharges
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn]

	SELECT AVG(Total_Charges) Average_TotalCharges,MIN(Total_Charges) AS Min_TotalCharges,MAX(Total_Charges) AS Max_TotalCharges
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 


	-- We will create 5 buckets to group the monthly charges into Very Low, Low,Moderate,High and Very High

	ALTER TABLE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	ADD Monthly_Charges_Bucket VARCHAR(50)

	UPDATE [Telco Customer Churn].[dbo].[Telco_customer_churn]
	SET Monthly_Charges_Bucket = 
	CASE WHEN Monthly_Charges <= 20 THEN 'Very Low'
		 WHEN Monthly_Charges <= 40 THEN 'Low'
		 WHEN Monthly_Charges <= 60 THEN 'Moderate'
		 WHEN Monthly_Charges <= 80 THEN 'High'
		 ELSE 'Very High'
	END 

  -- Monthly Charges range for churned customers

    SELECT Monthly_Charges_Bucket,
	SUM(COUNT(CustomerID)) OVER() AS Grand_Total_Customers,
	SUM(COUNT(CustomerID)) OVER(PARTITION BY Monthly_Charges_Bucket) AS Count_MonthlyChargesRange,
    SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) AS Churn_Count,
    100*SUM(CASE WHEN Churn_Label ='YES' THEN 1 ELSE 0 END) / SUM(COUNT(CustomerID)) OVER(PARTITION BY Monthly_Charges_Bucket) AS Churn_Rate_Per_MonthlyChargesRange
    FROM [Telco Customer Churn].[dbo].[Telco_customer_churn] 
	GROUP BY Monthly_Charges_Bucket
	ORDER BY Churn_Rate_Per_MonthlyChargesRange DESC


  
   
  
	


