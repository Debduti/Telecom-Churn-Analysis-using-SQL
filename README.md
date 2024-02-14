# Telecom-Churn-Analysis-using-SQL

## Summary
This project was a Data Exploration and Analysis Project to understand Churn in Telecom industry. Churn rate is a crucial metric that indicates that rate at which customers are terminating their relationship with the provider. The reasons for Churn can be multifactorial, and understanding the causes can help create and drive strategies to retain and on board more customers and reduce churn.
The dataset used here was from Kaggle. The project was conducted using SQL. Possible extensions for this project can include visualizing the findings using BI tools like Tableau or Power BI, and /or predicting churn rates using Machine Learning algorithms.

## Tools 
MS SQl Server, SSMS, Excel

## Methodology
1. The source dataset was in xls format, and was converted to a CSV format due to some issues in importing the data to SQL Server. The dataset was imported using the Import/Export feature of the tool.
2. I examined if there was inconsistency in the data types. None was found, so no changes were made. I checked for duplicate records,a nd none were found.
3. I then examined all numeric fields to undertand if there were any NULLs. Only one numeric field -' Total_Charges' had NULLS for 11 records, which was replaced with average of the Total_Charges field.
4. I examined the categorical fields for NULLs and , replaced with 0 wherever found.
5. After data cleaning, I did exploratory data analysis, the findings of which are outlined in the following section.   
6. All data cleaning was conducted using SQL, followed by exploratory data analysis, also conducted using SQL.

## Findings:

### 1.	Average Churn Rate:

 The column Churn Label and Churn Value indicate if a customer has churned. A value of Yes /1 indicates a churned customer. The average churn rate turned out to be **26%**.
 The calculation for Churn Rate is done as follows : Number of Customers who Churned/Total number of Customers
 
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/c070c52d-a190-4a0e-9306-d523a1877faa)
 
### 2.	Top 20 Cities with the highest churn rate:
 
 I was interested to see what the churn rate looked like for different cities, and which cities had the highest churn rates. The cities **Boulder Creek**, **Fort Jones**, **Maricopa** 
 turned out to have the highest churn rates (100%). 
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/c2c99955-5b28-4f8c-b046-b5bbcf9bc05e)
 
 However, it is noteworthy that the customer base for these cities was very small too. When sorted on the absolute number of churned customers, **Los Angeles**, **San Diego**,**San 
 Francisco**,**San Jose** were the cities with the highest churn count.
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/34a10acf-5e73-4f25-ab97-3efb8b6456e6)


### 3.	Distribution of Churn Rates across gender:
Are there any differences in Churn Rate between Male and Female subscribers? Turns out, there isn't.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/4ffefa12-d64a-4e35-8960-60e8aad73989)

### 4. Average Tenure of Churned Customers:
My hypothesis was that subscribers that have been with the service provider longer- tend to stay, and those that are relatively new , or are on short term contracts , tend to churn more.
This was confirmed by the findings. The Tenure field contained months, so I grouped these into 6 buckets - '6 months', '1 Year', '2 Years', '3 Years', '4 Years', '5 Years' and 'more than 5 Years'
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/3a84a2ab-eb79-49b4-8816-9eb4a9b30ad4)



 



6.	Average Tenure of Churned Customers:
 
7.	Reasons for Churn:
 
8.	Churn Rate per Contract Type
 

9.	Highest Churn based on Payment type 
10.	Churn Rates based on Monthly Charges

 


11.	

