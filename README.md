# Telecom-Churn-Analysis-using-SQL

## Summary
This project was a Data Exploration and Analysis Project to understand Churn in Telecom industry. Churn rate is a crucial metric that indicates that rate at which customers are terminating their relationship with the provider. The reasons for Churn can be multifactorial, and understanding the causes can help create and drive strategies to retain and on board more customers and reduce churn.
The dataset used here was from Kaggle. The project was conducted using SQL. Possible extensions for this project can include visualizing the findings using BI tools like Tableau or Power BI, and /or predicting churn rates using Machine Learning algorithms.

## Tools 
MS SQl Server, SSMS, Excel

## Methodology
The source dataset was in xls format, and was converted to a CSV format due to some issues in importing the data to SQL Server. The dataset was imported using the Import/Export feature of the tool. All data cleaning was conducted using SQL, followed by exploratory data analysis, also conducted using SQL.

## Findings:

1.	Average Churn Rate:

 The column Churn Label and Churn Value indicate if a customer has churned. A value of Yes /1 indicates a churned customer. The average churn rate turned out to be **26%**.
 The calculation for Churn Rate is done as follows : Number of Customers who Churned/Total number of Customers
 
2.	Top 20 Cities with the highest churn rate:
 
 I was interested to see what the churn rate looked like for different cities, and which cities had the highest churn rates. The cities **Boulder Creek**, **Fort Jones**, **Maricopa** turned out to have the highest churn rates (100%). However, it is noteworthy that the customer base for these cities was very small too. When sorted on the absolute number of churned customers, **Los Angeles**, **San Diego**,**San Francisco**,**San Jose** were the cities with the highest churn count.
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/34a10acf-5e73-4f25-ab97-3efb8b6456e6)


4.	Distribution of Churn Rates across gender

 



5.	Average Tenure of Churned Customers:
 
6.	Reasons for Churn:
 
7.	Churn Rate per Contract Type
 

8.	Highest Churn based on Payment type 
9.	Churn Rates based on Monthly Charges

 


10.	

