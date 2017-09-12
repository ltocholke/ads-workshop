# Lab 2: Copy data from Azure SQL DB and Blob Storage into Azure Data Lake using Azure Data Factory
## Task 1: Copy data from Blob Storage to Azure Data Lake
#### 1.	Navigate to Azure Data Factory in the Azure portal
   
   ![](/images/Lab3/ADF01_Navigate.png)
   
#### 2.	Create a Copy data pipeline
 
  ![](/images/Lab3/ADF02_CreateCopyPipeline.png)

#### 3.	Enter Properties for copying data from blob storage to Azure Data Lake Store
  1. **Task Name:** Copy-AzureBlob2ADLS
  2. **Task Description:** Copy CSV file from Azure Blob Storage to Azure Data Lake Storage
  3. **Task Cadence or Task Schedule:** Run once now
  4. **Expiration time:** 3.00:00:00
  
  ![](/images/Lab3/ADF03_CopyPipelineProperties.png)
  
#### 4.	Add an Azure Blob Storage account as a source

![](/images/Lab3/ADF04_CopyPipelineSelectSource.png)

#### 5.	Configure Blob Storage account connection settings and click Next
  1. **Connection Name:** ADSWorkshop-BlobStorageConnection
  2. **Account Subscription Method:** From Azure subscriptions
  3. **Azure Subscription:** Use the same as you have been for the labs
  4. **Storage Account Name:** sasdswkshpdatastorage
 
   ![](/images/Lab3/ADF05_CopyPipelineSelectSA.png)
 
#### 6.	Select CSV file from Blob Storage

![](/images/Lab3/ADF06_CopyPipelineSelectSACsv.png)

![](/images/Lab3/ADF07_CopyPipelineSelectSACsv2.png)

#### 7.	Configure properties of CSV file for import and click Next
  1. **File format:** Text format
  2. **Column delimiter:** Comma (,)
  3. **Row delimiter:** Line Feed (\n)
  4. **Skip line count:** 0 
  5. **Make sure both checkboxes under the Skip line count option are checked**
  
   ![](/images/Lab3/ADF08_CopyPipelineFileFormat.png)

#### 8. Add an Azure Data Lake Storage account as a destination

![](/images/Lab3/ADF09_CopyPipelineSelectDestination.png)
 
#### 9.	Configure Azure Data Lake Storage account settings and click Next
  1. **Connection Name:** ADSWorkshop-AzureDataLakeStoreConnection
  2. **Account Subscription Method:** From Azure subscriptions
  3. **Azure Subscription:** Use the same as you have been for the labs
  4. **Storage Account Name:** azuredatalakestore
  5. **Authentication Type:** OAuth
  
![](/images/Lab3/ADF10_CopyPipelineDestinationConnection.png)
 
#### 10. Select output file and folder in Azure Data Lake Store

![](/images/Lab3/ADF11_CopyPipelineDestinationSelectFile.png)
 
#### 11. Configure file format settings and click Next
  1. **File Format:** Text format
  2. **Column Delimiter:** Comma (,)
  3. **Row Delimiter:** Carriage Return + Line Feed (\r\n)
  4. Check Add header to file box
  5. In Advanced Settings add the quote character as “
  
![](/images/Lab3/ADF12_CopyPipelineDestinationFileFormat.png)
  
#### 12. Accept defaults for performance and click Next

![](/images/Lab3/ADF13_CopyPipelinePerfSettings.png)
 
#### 13. Click “Authorize” and enter your Azure credentials

![](/images/Lab3/ADF14_CopyPipelineSummary.png)

#### 14. After you see a green check mark by “Authorize” click Next

![](/images/Lab3/ADF15_CopyPipelineSummaryAuthorize.png)
 
#### 15. Once your pipeline has been deployed, click the link to view it

![](/images/Lab3/ADF16_CopyPipelineComplete.png)
 
#### 16. Navigate to the Pipeline json in the Azure portal.

![](/images/Lab3/ADF32_ModifyPipeline.png)
 
#### 17. Change data types on columns in CSV file

![](/images/Lab3/ADF17_ChangeCSVColumnType1.png)

![](/images/Lab3/ADF18_ChangeCSVColumnType2.png)
  
#### 18. Deploy the pipeline

![](/images/Lab3/ADF33_DeployPipeline.png)
 
## Task 2: Copy data from SQL Server DB to Azure Data Lake Store
#### 1.	Configure Pipeline Properties
  1. **Task Name:** Copy-AzureSQLDB2ADLS
  2. **Task description:** Copy data from Azure SQL DB to Azure Data Lake Storage
  
![](/images/Lab3/ADF19_CopyPipelineProps2.png)
 
#### 2.	Select Azure SQL DB as a source and click Next

![](/images/Lab3/ADF20_CopyPipelineSelectSourceSQLDB.png)
 
#### 3.	Configure Azure SQL DB connection properties and click Next.
  1. **Connection Name:** ADSWorkshop-AzureSQLDBConnection
  2. Server/database selection method:** From Azure subscription
  3. Azure subscription:** 
  4. Server Name:** adswkshp-sqlserver<random number>
  5. Database Name:** adsAppDB
  6. User Name:** sqladmin
  7. Password:** P@ssw0rd01
   
![](/images/Lab3/ADF21_CopyPipelineSQLDBConnection.png)
 
#### 4.	Select tables to copy and click Next
1.	**Select the following tables:**
  *	[SalesLT].[Address]
  *	[SalesLT].[Customer]
  *	[SalesLT].[CustomerAddress]
  *	[SalesLT].[ProductCategory]
  *	[SalesLT].[SalesOrderDetail]
  *	[SalesLT].[SalesOrderHeader]
  
  ![](/images/Lab3/ADF22_CopyPipelineSQLDBSelectTables.png)

#### 5.	Select the previously created connection to Azure Data Lake Store and click Next.
 ![](/images/Lab3/ADF24_CopyPipelineSelectDestinationADLS.png)
#### 6. Accept the connection properties by clicking Next
 ![](/images/Lab3/ADF25_CopyPipelineAcceptConnection.png)
#### 7.	Select the location of /Raw/AWSQLDB as the folder to put the files
 ![](/images/Lab3/ADF26_CopyPipelineChooseADLSFile.png)
#### 8.	Change the column delimiter to Pipe(|) and check the box to add a header row in the output files and click Next
 ![](/images/Lab3/ADF27_CopyPipelineADLSFileFormat.png)
#### 9.	Accept the defaults for performance and click Next.
 ![](/images/Lab3/ADF28_CopyPipelinePerfSettings2.png)
#### 10.	Click Next on the Summary page.
 ![](/images/Lab3/ADF29_CopyPipelineSummary2.png)
#### 11.	Click on the link to view the pipeline deployment.
 ![](/images/Lab3/ADF30_CopyPipelineComplete.png)

## Task 3: Modify Pipeline JSON to include Product table and better names for files
#### 1.	Navigate to the Azure Data Factory in the Azure portal
 ![](/images/Lab3/ADF31_NavigateToADF.png)
 ![](/images/Lab3/ADF32_ModifyPipeline.png)
#### 2.	Clone the current Copy-AzureSQLDB2ADLS pipeline.
 ![](/images/Lab3/ADF33_1ClonePipeline.png)
#### 3.	Copy and paste the Copy-AzureSQLDB2ADLS.json file into the Pipeline editor. 
  1. Change the name of the copy to have a “-1” at the end.
 ![](/images/Lab3/ADF33_2_CopyPastePipeline.png)
  2. Change the hubName property to be the name of your Azure Data Factory
 ![](/images/Lab3/ADF33_3_ChangeHubName.png)
#### 4.	Click “Deploy”
 ![](/images/Lab3/ADF33_DeployPipeline.png)
#### 5.	Navigate to the “Data Explorer” for Azure Data Lake Storage to verify the files have been copied
 ![](/images/Lab3/ADF34_NavigateToADLS.png)
 
 ![](/images/Lab3/ADF35_DataExplorer.png)
 
 ![](/images/Lab3/ADF36_ViewDataExplorer.png)
 

