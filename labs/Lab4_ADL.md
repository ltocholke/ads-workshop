# Lab 4: Query and transform data in Azure Data Lake Store with Azure Data Lake Analytics
## Task 1: Query data from Azure Data Lake Store
#### 1.	Open Visual Studio on the Azure Data Science VM

![](/screenshots/Lab4/ADL01_OpenVS.png)
 
#### 2.	If you are using this for the first time, select the following settings and click Start Visual Studio

![](/screenshots/Lab4/ADL02_ConfigureVS.png)
 
#### 3.	You may also be asked to log in, or be prompted that your license is expired.  Enter your live ID credentials and this should be fixed.
#### 4.	Create a new USQL project 

 ![](/screenshots/Lab4/ADL03_CreateUSQLProject.png)
 
 ![](/screenshots/Lab4/ADL04_CreateUSQLProject2.png)
 
#### 5.	Navigate to Azure Data Lake Storage Explorer through the Server Explorer pane 

 ![](/screenshots/Lab4/ADL05_ServerExplorer.png)
 
#### 6.	Navigate into the Raw folder to see the files that were imported from the last step

 ![](/screenshots/Lab4/ADL06_DataExplorer.png)
 
#### 7.	Select Solution Explorer and then double click on the “Script.usql” file.  This will open up a query window to start writing a USQL Query

![](/screenshots/Lab4/ADL07_USQLScript.png)
 
#### 8.	Rename the script file to 0_Select.usql
#### 9.	Copy and paste the 0_Select.txt script into the query editor and click “Submit”
  * Note: Make sure you have the context set to your Azure Data Lake Analytics account (azuredatalakeanalytics{number})
 
 ![](/screenshots/Lab4/ADL08_SubmitUSQLJob.png)
 
After the job has completed you should see a screen like the following:

![](/screenshots/Lab4/ADL09_USQLJobSummary.png)
 
#### 10.	Verify the results of the job by navigating to the transformed file that was output
 
 ![](/screenshots/Lab4/ADL10_USQLJobVerify.png)
 
 ![](/screenshots/Lab4/ADL11_USQLJobOutput.png)
 
 ![](/screenshots/Lab4/ADL11_USQLJobOutput2.png)
 
 ## Task 2: Create script to aggregate the data
#### 1.	Create new script in Visual Studio
  1. Right click on the project name and Add a new item
 
 ![](/screenshots/Lab4/ADL12_CreateNewUSQLScript.png)
 
  2. Name the new script “1_Aggregation.usql” and click Add
 
 ![](/screenshots/Lab4/ADL13_NameUSQLScript.png)
 
#### 2.	Copy and paste the whole script from the file 1_Aggregation.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.

![](/screenshots/Lab4/ADL14_SubmitUSQLTranformScript.png)
 
#### 3.	Once the job has finished, navigate to the “Transformed” directory and open the 1_AggregationOutput file to see the results.
 
 ![](/screenshots/Lab4/ADL15_VerifyUSQLJob.png)
 
 ![](/screenshots/Lab4/ADL16_VerifyUSQLJobOutput.png)
 
 ![](/screenshots/Lab4/ADL17_VerifyUSQLJobOutput2.png)
 
## Task 3: Create script to transform the data
#### 1.	Create new script in Visual Studio
  1. Right click on the project name and Add a new item
 
  2. Name the new script “2_Transform” and click Add
 
#### 2.	Copy and paste the whole script from the file Task2_Transform.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.
 
#### 3.	Once the job has finished, navigate to the “Transformed” directory and open the BikeCollisionData.txt file to see the results.
 
## Task 4: Create Table
#### 1.	Add a new script file to the project(Task 2 Step 1)

#### 2.	Name the file 3_CreateTable.usql and click “Add”
 
#### 3.	Copy and paste the whole script from the file 3_CreateTable.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.
 
#### 4.	Verify the results of the job by navigating to the table in Server Explorer

 ![](/screenshots/Lab4/ADL18_VerifyTable.png)
 
 ## Task 5: Join Tables
#### 1.	Add a new script file to the project(Task 2 Step 1)

#### 2.	Name the file 4_Join.usql and click “Add”
 
#### 3.	Copy and paste the whole script from the file 4_Join.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.

#### 4.	Verify the results of the job by navigating to the transformed file that was output
 
 ## Task 6: Create View
#### 1.	Add a new script file to the project(Task 2 Step 1)

#### 2.	Name the file 5_CreateView.usql and click “Add”
 
#### 3.	Copy and paste the whole script from the file 5_CreateView.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.

#### 4.	Verify the results of the job by navigating to the location in Server Explorer

 ![](/screenshots/Lab4/ADL19_VerifyView.png)
 
 ## Task 7: Cognitive Services Text Sentiment
#### 1.	Add a new script file to the project(Task 2 Step 1)

#### 2.	Name the file 6_CognitiveServices.usql and click “Add”
 
#### 3.	Copy and paste the whole script from the file 6_CognitiveServices.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.
 
#### 4.	Verify the results of the job by navigating to the transformed file that was output
The results will show an object id, a collision code, text for a collision, sentiment of the text column and confidence of the sentiment
