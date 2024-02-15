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
 turned out to be some of the cities with the highest churn rates (**100%**). 
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/c2c99955-5b28-4f8c-b046-b5bbcf9bc05e)
 
 However, it is noteworthy that the customer base for these cities was very small too. When sorted on the absolute number of churned customers, **Los Angeles**, **San Diego**,**San 
 Francisco**,**San Jose** were the cities with the highest churn count.
 ![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/34a10acf-5e73-4f25-ab97-3efb8b6456e6)


### 3.	Distribution of Churn Rates across gender:
Are there any differences in Churn Rate between Male and Female subscribers? Turns out, there isn't. Churn rate for both genders is at **26%**.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/4ffefa12-d64a-4e35-8960-60e8aad73989)

### 4. Average Tenure of Churned Customers:
My hypothesis was that subscribers that have been with the service provider longer- tend to stay, and those that are relatively new , or are on short term contracts , tend to churn more.
This was confirmed by the findings. The Tenure field contained months, so I grouped these into 6 buckets - '6 months', '1 Year', '2 Years', '3 Years', '4 Years', '5 Years' and 'more than 5 Years'. At a whopping **52%**, Churn rate was highest amongst the group that have been customers for less than or equal to 6 months.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/3a84a2ab-eb79-49b4-8816-9eb4a9b30ad4)

### 5.	Reasons for Churn:

What are the various factors that contribute to Churn? This might be the most important question to answer, as it gives a direct pathway to what should be controlled in order to reduce Churn. There were a number of different reasons attributed to Churn, which I grouped into 8 buckets for easier understanding of the broad reasons. **8%** of churn happens because a competition has better services, offers and products, followed by poor customer service that contributes to **5%** churn. 
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/1e63096b-b4cb-460a-9a78-9566c3925882)
 
### 6.	Churn Rate per Contract Type

Subscribers on a long term contract tend to stay longer, with the least amount of churn . Month-to-month contracts however tend to see a very high churn rate at **42%**.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/7aaa2f7f-5f93-40d0-bd48-d5f83dd0ec17)


### 7.	Highest Churn based on Payment type 

Payment method seems to be a big influennce in whether a customer would stay or leave. Those customers that pay with Electronic check tend to churn the most, at **45%**.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/b5a749df-0354-4f77-8f75-e2b7fb95b6ac)

### 8.	Churn Rates based on Monthly Charges	

Monthly charges, unsurprisingly , contribute a lot towards churn . We grouped the monthly charges into 5 buckets ranging from Very Low (under $20) to Very High (above $100), and churn rate is highest at **33%**.
![image](https://github.com/Debduti/Telecom-Churn-Analysis-using-SQL/assets/58540839/ac63e1a7-abfb-4aa9-8d39-800d2292fb8c)


