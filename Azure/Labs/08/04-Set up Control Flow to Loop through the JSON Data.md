

### Set up Control Flow to Loop through the JSON Data

The Surveys for Products and Services have different structures, so Carved Rock would like to handle the results for each type differently. You will need to loop through the JSON objects and conditionally branch the workflow for different survey result types.

1.    Click Designer then click + New step.

2.    In the new Action node, navigate to Built-in > Control. Click the For each control to add it to the workflow.

3.    Click For each's ... > Rename. Name this step Loop through Survey Results.

4.    Click into the only form field of the For each Action. In the flyout that appears select the Body item under Parse Survey Data as JSON.

    Note: The For each action allows us to iterate through the items in the JSON array. This iteration is possible because we parsed the string into an actual JSON object in the previous step.

5.    At the bottom of the For each Action, click Add an action. Inside the expanded node, navigate to Built-in > Control. Select Condition from the list of options.

6.    In the Condition box, click into the left value input. In the flyout menu, select the itemType property under the Parse Survey Data as JSON section.

7.    Ensure the middle dropdown is set to is equal to. In the right input field of the conditional, type in a value of product.

8.    Click Save in the upper left, then click Run Trigger > Run.

Your app should execute, and a green checkmark should appear in the upper right corner of all Action nodes. Click the Loop through Survey Results' Condition node to expand its details. You should see the first result of the conditional loop, and you can click the arrow in the upper right to step through the results.

