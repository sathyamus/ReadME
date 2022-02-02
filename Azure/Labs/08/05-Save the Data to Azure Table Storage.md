

### Save the Data to Azure Table Storage

The Survey Results data is available as JSON, and the workflow branches correctly based on each item. Next you need to persist each Survey Result into the proper table in Azure Table Storage.

1.    Ensure you are on the main designer view with the Loop through Survey Results and Condition Actions expanded.

2.    In the Condition Action's True branch, click Add an action. In the search form, type Insert or Replace, and select the Insert or Replace Entity Action.

3.    In the Connection name input field, enter in a name of Carved Rock Table Storage. For the Storage Account, select the one that is in the pl-resource-group Resource Group. Next click Create, and the Action will update with new inputs after the connection is established.

4.    In the Table drop-down choose the ProductResults table. For the Partition Key, type in products.

5.    For the Row Key, click into the input field, and then from the flyout menu select itemId. This will provide a unique identifier for every row in the table.

6.    For the Entity, click into the input field. In the flyout menu, scroll through the options and select Current item. This will reference the current item of the loop as we iterate through the Survey Results.

    The True branch of the workflow is now complete. 

7.    In the False branch of the Condition Action, repeat tasks 2-6. However, for the Table field, make sure to select ServiceResults, and for its Partition Key enter services. 

    The Carved Rock Table Storage connection you made the first time around will also automatically be reused for the ServiceResults, so you will skip repeating task 3.

8.    Click Save in the upper left, then click Run Trigger > Run.

Your app should execute, and a green checkmark should appear in the upper-right corner of all three nodes. Click the Loop through Survey Results' Condition node to expand its details. You should see the first result of the conditional loop, and you can click the arrow in the upper right to step through the results.

