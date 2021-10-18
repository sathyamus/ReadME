## Azure App Services

App Types:
	App Service allows you to create the following app types from a single development experience:
	1.	Web Apps - Quickly create and deploy mission critical Web apps that scale with your business.
	2.	API Apps - Easily build and consume Cloud APIs.
	3.	Logic Apps - Automate the access and use of data across clouds without writing code.
	4.	Serverless Functions – Function written by developer and executed without any dedicated hardware.


 Vertically - Scale Up
    - Vertical scaling or scaling up is a scaling method that involves the upgradation or addition of resources to the existing system infrastructure.
 Horizontally - Scale Out 
    - Horizontal scaling or scaling out refers to the integration of additional server nodes or machines to your existing system infrastructure. 
	--> Rules .. Scale out ... Or...
  				 Scale in .... And


App Service Environments


------------------------------------------------------

https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions

https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-vs-code-java

VS Code
Java 11 -- https://github.com/redhat-developer/vscode-java/wiki/JDK-Requirements#java.configuration.runtimes

Error : func.ps1 cannot be loaded because running scripts is disabled on this system. For more information, see about_Execution_Policies

Solution : 

1. Open PowerShell, Run the following command: 

	Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 

	OR 

	Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

	(Remove -Scope CurrentUser to apply to all users)

2. Switch to cmd

-------------------------------------------------------



http://localhost:7071/api/HttpTriggerJava-SayHello?name=Sathya


-------------------------------------------------------

Home -> Function App -> snsystems | Advanced Tools -> Go
	https://snsystems.scm.azurewebsites.net/

-------------------------------------------------------



-------------------------------------------------------

Create Web App

Summary
Web App
by Microsoft
Basic (B1) sku
Estimated price - 894.08 INR/Month
Details
Subscription
ab89f89a-xxx
Resource Group
sathya-assignment1-rg
Name
snsystems
Publish
Code
Runtime stack
Java 8
Java web server stack
Java SE (Embedded Web Server)
App Service Plan (New)
Name
snsystems-app-service-plan-basic-b1
Operating System
Linux
Region
East US
SKU
Basic
Size
Small
ACU
100 total ACU
Memory
1.75 GB memory
Monitoring
Application Insights
Not enabled
Deployment
Continuous deployment
Not enabled / Set up after app creation



--------

Summary
Function App
by Microsoft

Details
Subscription : ab89f89a-xxx
Resource Group : sathya-func-apps-rg
Name : snsystems
Runtime stack : Java 8.0

Hosting : 
Storage (New)
Storage account : sathyafuncstoreac
Plan (New)
Plan type : Consumption (Serverless)
Name 	: ASP-sathyafuncappsrg-a71e
Operating System : Linux
Region 			: East US
SKU 			: Dynamic

Monitoring
Application Insights : Not enabled
