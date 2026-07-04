
Failing jobs or executors removed
https://learn.microsoft.com/en-us/azure/databricks/optimizations/spark-ui-guide/failing-spark-jobs

So you're seeing failed jobs or removed executors:

Failing Jobs

The most common reasons for executors being removed are:

	==> Autoscaling: In this case it's expected and not an error. 
		See Enable autoscaling. ===> https://learn.microsoft.com/en-us/azure/databricks/compute/configure#autoscaling
	==> Spot instance losses: The cloud provider is reclaiming your VMs. 
			You can learn more about Spot instances here. ===> https://www.databricks.com/blog/2016/10/25/running-apache-spark-clusters-with-spot-instances-in-databricks.html
	==> Executors running out of memory


Failing executors
To find out why your executors are failing, you'll first want to check the compute's Event log to see if there's any explanation for why the executors failed. For example, it's possible you're using spot instances and the cloud provider is taking them back.

Event Log

See if there are any events explaining the loss of executors. For example you may see messages indicating that the cluster is resizing or spot instances are being lost.

If you are using spot instances, 
	see Losing spot instances ==> https://learn.microsoft.com/en-us/azure/databricks/optimizations/spark-ui-guide/losing-spot-instances
If your compute was resized with autoscaling, it's expected and not an error. 
	See Learn more about cluster resizing ==> https://www.databricks.com/discover/pages/optimize-data-workloads-guide#autoscaling



Next step
If you've gotten this far, the likeliest explanation is a memory issue. The next step is to dig into memory issues. 
	See Spark memory issues. ==> https://learn.microsoft.com/en-us/azure/databricks/optimizations/spark-ui-guide/spark-memory-issues

