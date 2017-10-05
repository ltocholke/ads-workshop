# PreLab 1: Provision Azure Data Science VM

## Task 1: Create Azure Data Science VM

#### 1.	Navigate to https://portal.azure.com in a web browser

#### 2.	Search for Azure Data Science in the marketplace
![](/images/ADS01_Search.png)
![](/images/ADS02_Create.png)

#### 3. Enter configuration details for Azure Data Science VM
   **1. Name:** adswkshpvm
  
   **2. VM Disk Type:** SSD
  
   **3. UserName:** adswkshpadmin
  
   **4. Password:** adswkshpP@ssw0rd!01
  
   **5. Resource Group:** Create New: rg_adsvm
  
   **6. Location:** South Central US
   
   ![](/images/ADS03_BasicSettings.png)
  
   **7. Size:** Select DS4_V2
  
   **8. Settings:** Accept default settings
  
   **9. Summary:** Click OK
  
   **10. Purchase:** Click Purchase
 	
## Task 2: Connect to Azure Data Science VM
#### 1.	Navigate to your dashboard and then the Azure Data Science VM

![](/images/ADS04_Dashboard1.png)
![](/images/ADS05_Dashboard2.png)
   
#### 2.	Click Connect

   ![](/images/ADS06_Connect.png)
   
#### 3.	Open the .rdp file that was downloaded

   ![](/images/ADS07_ConnectRDP.png)
   
#### 4.	Click “more choices” and choose “Use a different account”.   Enter the admin credentials you supplied under the “Basics” section when provisioning the Azure Data Science VM

   ![](/images/ADS08_ConnectCredentials.png)
   
#### 5.Accept the security certificate

   ![](/images/ADS09_AcceptCert.png)
   
## Task 3: Setup Data to be uploaded to Azure 
#### NOTE **THE FOLLOWING LABS WILL BE DONE FROM THE DATA SCIENCE VM**
#### 1.	Download the project from GitHub and unzip it on the Azure Data Science VM

   ![](/images/ADS10_DownloadData.png)

#### 2.	Move the "bicycle_collision_data.csv" file to the following location: C:\ADSWorkshop\Data\

   ![](/images/ADS11_MoveDataFile.png)

## Task 4: Provision Azure Data Services
#### 1.	Navigate to the "Scripts" folder in the project and edit the "AzureDataServicesWorkshop.ps1" file

   ![](/images/ADS11_OpenPowerShellFIle.png)

#### 2.	Change the "$SubscriptionName" variable at the top of the script to the name of your Azure subscription

   ![](/images/ADS13_ChangeSubscriptionName.png)

#### 3. Click the green play button at the top of the screen to run the script

   ![](/images/ADS14_RunScript.png)

#### 4. Verify there are no errors and move onto the next lab
