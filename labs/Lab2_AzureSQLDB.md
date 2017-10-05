# Lab 1: Connect to and explore data in Azure SQL DB

## Task 1: Create Azure SQL DB

#### 1.	In the Azure portal, select SQL DB from the Marketplace

#### 2.	Enter the following information for the SQL DB
  **1.	Database Name:** adsAppDB
  
  **2.	Subscription:** Use your current subscription
  
  **3.	Resource Group:** rg_adswkshpsqldb
  
  **4.	Select Source:** Sample (AdventureWorksLT)
  
  **5.	Server:** Create New
  
   *	**Server Name:** adswkshp-sqlserver<number>
  
   *	**Server Admin Login:** sqladmin
   
   *	**Password:** P@ssw0rd01
   
   *	**Location:** North Central US
  
  **6.	Want to use SQL elastic pool?:** Not now
  
  **7.	Pricing Tier: Standard S2:** 50 DTU, 250 GB
  
  **8.	Collation:** SQL_Latin1_General_CP1_CI_AS
 
## Task 2: Connect to Azure SQL DB
#### 1.	Open SSMS on Azure Data Science VM

   ![](/screenshots/Lab2/AzureDB01_OpenSSMS.png)
   
#### 2.	Find the name of the server for your Azure SQL DB

   ![](/screenshots/Lab2/AzureDB02_ServerName.png)
   
#### 3.	Paste the server name into the Server Name input box and enter the Login and Password for the Azure SQL DB

   ![](/screenshots/Lab2/AzureDB03_SSMSConnect.png)
   
#### 4.	Expand out the Database node and Tables node

   ![](/screenshots/Lab2/AzureDB04_ObjectExplorer.png)
   
#### 5.	Click “New Query”

   ![](/screenshots/Lab2/AzureDB05_NewQuery.png)
   
#### 6.	Switch the context from master to the adsAppDB

   ![](/screenshots/Lab2/AzureDB06_SwitchContext.png)
   
#### 7.	Paste or type in the following queries
```SQL
Select * from sys.tables
Select * from sys.databases
Select * from [SalesLT].[ProductCategory] p inner join [SalesLT].[ProductCategory] pc on p.[ProductCategoryID] = pc.[ProductCategoryID]
```
#### 8.	Take a look at live query statistics 

   ![](/screenshots/Lab2/AzureDB07_LiveQuery.png)
   
