# PreLab 1: Provision Azure Data Science VM

## Task 1: Create Azure Data Science VM

#### 1.	Navigate to https://portal.azure.com in a web browser

#### 2.	Search for Azure Data Science in the marketplace
![](/screenshots/Lab1/ADS01_Search.png)
![](/screenshots/Lab1/ADS02_Create.png)

#### 3. Enter configuration details for Azure Data Science VM
   **1. Name:** adswkshpvm
  
   **2. VM Disk Type:** SSD
  
   **3. UserName:** adswkshpadmin
  
   **4. Password:** adswkshpP@ssw0rd!01
  
   **5. Resource Group:** Create New: rg_adsvm
  
   **6. Location:** South Central US
   
   ![](/screenshots/Lab1/ADS03_BasicSettings.png)
  
   **7. Size:** Select DS4_V2
  
   **8. Settings:** Accept default settings
  
   **9. Summary:** Click OK
  
   **10. Purchase:** Click Purchase
 	
## Task 2: Connect to Azure Data Science VM
#### 1.	Navigate to your dashboard and then the Azure Data Science VM

![](/screenshots/Lab1/ADS04_Dashboard1.png)
![](/screenshots/Lab1/ADS05_Dashboard2.png)
   
#### 2.	Click Connect

   ![](/screenshots/Lab1/ADS06_Connect.png)
   
#### 3.	Open the .rdp file that was downloaded

   ![](/screenshots/Lab1/ADS07_ConnectRDP.png)
   
#### 4.	Click “more choices” and choose “Use a different account”.   Enter the admin credentials you supplied under the “Basics” section when provisioning the Azure Data Science VM

   ![](/screenshots/Lab1/ADS08_ConnectCredentials.png)
   
#### 5.Accept the security certificate

   ![](/screenshots/Lab1/ADS09_AcceptCert.png)
   
## Task 3: Setup Data to be uploaded to Azure 
#### NOTE **THE FOLLOWING LABS WILL BE DONE FROM THE DATA SCIENCE VM**
#### 1.	Download the project from GitHub and unzip it on the Azure Data Science VM

   ![](/screenshots/Lab1/ADS10_DownloadData.png)

#### 2.	Move the "bicycle_collision_data.csv" file to the following location: C:\ADSWorkshop\Data\

   ![](/screenshots/Lab1/ADS11_MoveDataFile.png)

## Task 4: Provision Azure Data Services
#### 1.	Navigate to the "Scripts" folder in the project and edit the "AzureDataServicesWorkshop.ps1" file

   ![](/screenshots/Lab1/ADS11_OpenPowerShellFIle.png)

#### 2.	Change the "$SubscriptionName" variable at the top of the script to the name of your Azure subscription

   ![](/screenshots/Lab1/ADS13_ChangeSubscriptionName.png)

#### 3. Click the green play button at the top of the screen to run the script

   ![](/screenshots/Lab1/ADS14_RunScript.png)

#### 4. Verify there are no errors and move onto the next lab

## Task 5: Install USQL Extensions for Data Lake Analytics
#### 1.	Navigate to your Azure Data Lake Analytics Service in the portal

   ![](/screenshots/Lab1/ADS15_NavigatetoADLA.png)

#### 2.	Install USQL Extensions for Data Lake Analytics

   ![](/screenshots/Lab1/ADS16_InstallExtensions.png)


