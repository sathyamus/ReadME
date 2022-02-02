
### Retrieve the File Contents and Store Them in a Variable

With the Logic App created, next you will need to retrieve the Survey Results file from Azure Blob Storage and initialize its data by using a variable.

1.    Click Designer at the top of the page to ensure you are in the edit view. In the center of the designer, click + New step to add a new Action to the Logic App workflow.

2.    In the search field of the new node, type Blob. Then, in the search results under Actions, select the Get blob content item. After the selection is made, the Action should update with new input fields. These will be used to create a connection to a Storage Account.

3.    For Connection name type Carved Rock, and then select the Storage Account with the Resource Group named pl-resource-group. Click Create to establish the connection, and the Action node will update with new input fields again.

    Note: If you cannot see the storage account, Azure may not have had a chance to populate the drop-down yet. You will need to manually enter connection information. In the top Search bar, type in Storage accounts, and open it in a new tab. Click the Name of the only storage account in the list; it will be something like lab6027. Copy that name and paste it into the Designer's Azure Storage Account name field. At the lab-prefixed Storage account page, in its left-hand menu under Security + networking, click Access keys. Click Show keys, and under key1 copy the Key value. Paste that value into the Designer's Azure Storage Account Access Key field. Remember to click Create.

4.    In the Blob selection input, click on the folder icon on the far right. Click on the arrow on the right side of the flyout, and then select the surveyresults.json file. Leave the Infer content type drop-down set to Yes.

5.    In the center of the designer, click + New step again to add another Action. In the search box, type variables, and then from the search results select the Initialize variable Action.

6.    In the variable Name input, type the name SurveyResultsContent. Then from the Type drop-down, select String.

7.    Click into the Value input field, and in the Add Dynamic Content flyout, click File Content to assign the results of the previous Get blob content Action to the new string variable.

    Note: Initializing the blob content as a variable like this is an easy way to convert the data from an octet-stream into a more usable string format for later use.

8.    In the Initialize variable panel's upper right corner, click ... > Rename. Then enter a description of Convert Blob Content to String so the step is more easily identifiable.

    Note: Although our Logic App is simple, keep in mind that assigning descriptive names becomes important as workflows grow in complexity.

9.    Click Save in the upper left, then click Run Trigger > Run.

Your app should execute, and a green checkmark should appear in the upper right corner of all three nodes. Click the Convert Blob Content to String Action to expand its details. You should see a string of survey data printed in the Value output of this Action, which means it retrieved and loaded the blob content correctly.
