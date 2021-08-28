# BigData

 - Yarn (Yet Another Resource Negotiator)
 - Oozie (workflow, coordinator)
   - Oozie wait = true / false
   - Stop Application - cron pattern
      - Spark  
      - Coordinator
      - Spring level
   - spark.yarn.maxAppAttempts
      - maximum number of attempts that will be made to submit the application. 
      - should be no larger than the global number of max attempts in the YARN configuration.

   - We can add custom stop configuration to check, if any spark job is processing a task, 
     and restart will happen only after the task completion, so that task will be un-interrupted.

