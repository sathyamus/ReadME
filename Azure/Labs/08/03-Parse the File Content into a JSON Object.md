

### Parse the File Content into a JSON Object

The Survey Results data is available as a raw string, but it will be much more useful when parsed as an actual JSON object.

1.    In the center of the designer, click + New step to open a new node on the Logic App workflow.

2.    In the search field of the new node, type Parse JSON. Then in the search results under Actions, select the Parse JSON item.

    Note: You can also search for Data Operations, which is a useful way to see all of the available Actions for manipulating data - including Parse JSON.

3.    Click the field under Content, and from the flyout select the SurveyResultsContent variable. This is the variable that was created in the previous challenge. In the Schema form field, for now simply enter an empty array by typing [ ].

    Note: The best way to generate a schema for the parse Action is to provide sample JSON as a template. An easy way to retrieve sample JSON from the blob file is to run the Logic App and copy the blob contents from the output. We will do this in the next few tasks.

4.    In the upper left of the Logic Apps Designer, click Save, and then click Run Trigger > Run to execute the app.

5.    After the run completes, you should see an error for the Parse JSON step. Expand the Convert Blob Content to a String node, and then copy the JSON array out of the Value form field. Then at the top of the page click Designer to switch back to edit mode.

6.    Expand the Parse JSON Action, and then click Use sample payload to generate schema. Paste the JSON array you copied in the previous task into the pop-up, and then click Done. When the pop-up closes, a new schema should populate in the form.

7.    Click Parse JSON's ... > Rename. Call this step Parse Survey Data as JSON.

8.    Click Save in the upper left, and then click Run Trigger > Run.

Your app should execute, and a green check mark should appear in the upper right corner of all Action nodes. Click the Parse Survey Data as JSON node to expand its details, and you should see a JSON object populated with survey content.

