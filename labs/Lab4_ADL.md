# Lab 4: Query and transform data in Azure Data Lake Store with Azure Data Lake Analytics
## Task 1: Query data from Azure Data Lake Store
#### 1.	Open Visual Studio on the Azure Data Science VM

![](/images/Lab4/ADL01_OpenVS.png)
 
#### 2.	If you are using this for the first time, select the following settings and click Start Visual Studio

![](/images/Lab4/ADL02_ConfigureVS.png)
 
#### 3.	You may also be asked to log in, or be prompted that your license is expired.  Enter your live ID credentials and this should be fixed.
#### 4.	Create a new USQL project 

 ![](/images/Lab4/ADL03_CreateUSQLProject.png)
 
 ![](/images/Lab4/ADL04_CreateUSQLProject2.png)
 
#### 5.	Navigate to Azure Data Lake Storage Explorer through the Server Explorer pane 

 ![](/images/Lab4/ADL05_ServerExplorer.png)
 
#### 6.	Navigate into the Raw folder to see the files that were imported from the last step

 ![](/images/Lab4/ADL06_DataExplorer.png)
 
#### 7.	Select Solution Explorer and then double click on the “Script.usql” file.  This will open up a query window to start writing a USQL Query

![](/images/Lab4/ADL07_USQLScript.png)
 
#### 8.	Rename the script file to Task1_QueryData
#### 9.	Copy and paste the Task1_QueryData script into the query editor and click “Submit”
  * Note: Make sure you have the context set to your Azure Data Lake Analytics account (azuredatalakeanalytics{number})
 
 ![](/images/Lab4/ADL08_SubmitUSQLJob.png)
 
After the job has completed you should see a screen like the following:

![](/images/Lab4/ADL09_USQLJobSummary.png)
 
#### 10.	Verify the results of the job by navigating to the transformed file that was output
 
 ![](/images/Lab4/ADL10_USQLJobVerify.png)
 
 ![](/images/Lab4/ADL11_USQLJobOutput.png)
 
 ![](/images/Lab4/ADL11_USQLJobOutput2.png)
 
## Task 2: Create script to transform the data
#### 1.	Create new script in Visual Studio
  1. Right click on the project name and Add a new item
 
 ![](/images/Lab4/ADL12_CreateNewUSQLScript.png)
 
  2. Name the new script “Task2_Transform” and click Add
 
 ![](/images/Lab4/ADL13_NameUSQLScript.png)
 
#### 2.	Copy and paste the whole script from the file Task2_Transform.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.

![](/images/Lab4/ADL14_SubmitUSQLTranformScript.png)
 
#### 3.	Once the job has finished, navigate to the “Transformed” directory and open the CustomerProductSale.csv file to see the results.
 
 ![](/images/Lab4/ADL15_VerifyUSQLJob.png)
 
 ![](/images/Lab4/ADL16_VerifyUSQLJobOutput.png)
 
 ![](/images/Lab4/ADL17_VerifyUSQLJobOutput2.png)
 
## Task 3: Transform the bicycle_collision.csv file to have a common key to join on.
#### 1.	Add a new script file to the project(Task 2 Step 1)

#### 2.	Name the file Task3_BikeCollisionTransform.usql and click “Add”

![](/images/Lab4/ADL18_NameUSQLScript.png)
 
#### 3.	Copy and paste the whole script from the file Task3_BikeCollision_Trasform.txt into the newly created script – Read through the script and make sure you understand what it is doing.  If something is not making sense… ask!  When you understand the script, submit the job and wait for it to finish.

![](/images/Lab4/ADL19_SubmitUSQLTransformScript2.png)
 
After the job has completed you should see a screen like the following:

![](/images/Lab4/ADL20_USQLTransformJobResult.png)
 
#### 4.	Verify the results of the job by navigating to the transformed file that was output
 
 ![](/images/Lab4/ADL21_NavigateDataExplorer.png)
 
 ![](/images/Lab4/ADL22_VerifyUSQLTransformJob.png)
 
 ![](/images/Lab4/ADL23_VerifyUSQLTransformJobOutput.png)