# Lab 4: Use Azure Data Factory to copy data from ADLS into Azure Data Warehouse
## Task 1: Create Azure Data Warehouse
#### 1.	Select SQL Data Warehouse from the Marketplace in the Azure portal

![](/screenshots/Lab5/ADW01_1_ProvisionADW.png)
 
#### 2.	Enter the following properties of the DB
  1. Database Name: adsDW
  2. Subscription: Default you have been using
  3. Resource Group: Use Existing: rg_adswkshpsqldb
  4. Select Source: Blank Database
  5. Server: adswkshp-sqlserver<number>
  6. Collation: SQL_Latin1_General_CP1_CI_AS
  7. Performance: 100 DWU
 
 ![](/screenshots/Lab5/ADW01_2_ProvisionADWSettings.png)
 
 ![](/screenshots/Lab5/ADW01_3_ProvisionADWSettings.png)
 
## Task 2: Create Tables in Azure Data Warehouse
#### 1.	If you are not already logged into your Azure SQL DB Server, follow Task 1 of Lab 1.
#### 2.	Expand the tables node on the DB adsDW.  Note that it is on the same server as the Azure SQL DB, it is just shown as another DB.
 
 ![](/screenshots/Lab5/ADW01_DBTree.png)
 
#### 3.	Right click on the adsDW DB and select “New Query”

![](/screenshots/Lab5/ADW02_NewQuery.png)
 
#### 4.	Paste the script from the file ADSWorkshop_CreateTables.txt into the query window and execute the query.

![](/screenshots/Lab5/ADW03_QueryPaste.png)
 
#### 5.	You can refresh the tree view on the left to see the tables have been created in the Azure Data Warehouse.

## Task 3: Create copy Pipeline
#### 1.	Navigate to Azure Data Factory in the Azure portal

![](/screenshots/Lab5/ADW04_NavigateToADF.png)
 
#### 2.	Create a Copy data pipeline

![](/screenshots/Lab5/ADW05_CopyPipeline.png)
 
#### 3.	Enter Properties for copying data from blob storage to Azure Data Lake Store
  1. Task Name: Copy-ADLS2ADW
  2. Task Description: Copy data from Azure Data Lake Storage to Azure Data  Warehouse
  3. Task Cadence or Task Schedule: Run once now
  4. Expiration time: 3.00:00:00
  
![](/screenshots/Lab5/ADW06_CopyPipelineProperties.png)
 
#### 4.	Select Azure Data Lake Store as a source from existing connections and click “Next”

![](/screenshots/Lab5/ADW07_SelectDataSource.png)
 
#### 5.	Review connection properties and click “Next”

![](/screenshots/Lab5/ADW08_SourceConnProperties.png)
 
#### 6.	Navigate to the “Transformed” directory and select the CustomerProductSale.csv file and click “Next”

![](/screenshots/Lab5/ADW09_ChooseSourceInputFile.png)
 
#### 7.	Configure the file format settings as follows(These should be the default settings)

![](/screenshots/Lab5/ADW10_SourceFileFormat.png)
 
#### 8.	Select Azure SQL Data Warehouse as a destination and click “Next”

![](/screenshots/Lab5/ADW11_DestinationSelect.png)
 
#### 9.	Configure the Azure DW connection
  1. Connection Name: ADSWorkshop-ADWConnection
  2. Account Subscription Method: From Azure subscriptions
  3. Azure Subscription: Use the same as you have been for the labs
  4. Server Name: adswkshp-sqlserver
  5. Database Name: adsDW
  6. User Name: sqladmin
  7. Password: Password specified for server
  
  ![](/screenshots/Lab5/ADW12_DestinationConnection.png)
 
#### 10. Select the CustomerProductSale table from the dropdown and click “Next”

![](/screenshots/Lab5/ADW13_TableMapping.png)
 
#### 11. Accept defaults and click “Next”

![](/screenshots/Lab5/ADW14_SchemaMapping.png)
 
#### 12. Select the blob storage existing connection for the staging storage account and click “Next”

![](/screenshots/Lab5/ADW15_PipelinePerfSettings.png)

#### 13. Review summary and click “Next”

![](/screenshots/Lab5/ADW16_PipelineReviewSummary.png)
 
#### 14. Click on the link to monitor the pipeline and verify it ran without error

![](/screenshots/Lab5/ADW17_PipelineMonitor.png)
 
## Task 4: Verify the pipelines have completed successfully
#### 1.	Navigate to the Azure Data Factory in the portal

![](/screenshots/Lab5/ADW18_NavigateToADF.png)
 
#### 2.	Go to the Manage and Monitor link

![](/screenshots/Lab5/ADW19_ADFMonitorAndManage.png)
 
#### 3.	Verify all is “green” in the pipelines for copying data from Azure Data Lake to Azure DW.

![](/screenshots/Lab5/ADW20_MonitorAndManageGreen.png)
 
