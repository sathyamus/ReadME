

### Create the Logic App and Configure the Trigger

Carved Rock Fitness is a large corporation that uses an external vendor to conduct product satisfaction surveys. Carved Rock would like a copy of the survey results data from the vendor imported into their own databases to use for further analysis.

Unfortunately, the vendor has limited APIs and can only provide the survey results as a bulk file export in JSON format. The file will be uploaded to Azure Blob Storage once a week. You have been tasked with building an Azure Logic App that will run every Friday to migrate the survey data from the file in Azure Blob Storage to more useful database tables in Azure Table Storage.

You will begin by creating the Logic App in the Azure Portal and configuring the scheduled trigger.

1.    To the right of these instructions use the Email, Password, and Open Azure portal button to log in to the Azure portal.

    Note:

        If you get a Welcome pop-up, click Maybe later.

        To avoid possible permission issues in Azure, log out from your own Azure accounts before clicking the Open Azure portal button

2.    In the top Search bar, type in and click on Logic apps.

3.    Click + Add.

4.    On the Create Logic App page, enter the following:

        Resource Group: pl-resource-group

        Type: Consumption

        Logic App name: Enter a name of your choosing.

        Region: East US

    Click Review + create.

5.    Click Create.

6.    When a Your deployment is complete message appears, click  Go to resource.

7.    On the Logic Apps Designer page, click Recurrence to assign the starting trigger type of your Logic App. Azure will then load the designer view with your trigger setup at the first step.

    Note: In a real project you could also use the When a blob is added trigger to start this workflow rather than a Recurrence trigger. However, a Recurrence trigger is a better setup for a sandbox environment.

8.    In the Interval field of the Recurrence trigger, enter a value of 1. In the Frequency drop-down, select a value of Week. Together, these values ensure the app runs once per week.

9.    Click on the Add new parameter drop-down, select On these days, and then click away. A new drop-down will be added to the Recurrence trigger.

10.    For the new drop-down that is labeled On these days, select Friday as the day to run.

11.    Click Save in the upper left, then click Run Trigger > Run.

Your app should execute, and a green checkmark should appear in the upper right corner of the Recurrence node. Although the app does not accomplish anything yet, this verifies it is configured without errors.
