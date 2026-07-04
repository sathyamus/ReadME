## Spark

 - Spark 3.5.3

 
### Spark SQL

 - explode (Turns each element of an array or each key-value pair of a map into a separate row) on two columns 
   select explode(trade_ids), explode(netting_details) from inventory
   
 - In Spark SQL (and PySpark), the explode function is used to transform an array or map column into multiple rows — one row per element.

	Below is the complete guide to the available options and variations.

	1. Basic explode
		Purpose: Turns each element of an array or each key-value pair of a map into a separate row.

			SELECT explode(array_column) AS element FROM table

		or for maps:
			SELECT explode(map_column) AS (key, value) FROM table

	2. posexplode
		Purpose: Like explode, but also returns the position (index) of each element.

			SELECT posexplode(array_column) AS (pos, element) FROM table

	3. explode_outer
		Purpose: Similar to explode, but preserves rows with NULL or empty arrays/maps by returning NULL instead of dropping them.

			SELECT explode_outer(array_column) AS element FROM table

	4. posexplode_outer
		Purpose: Combines posexplode and explode_outer — returns position and element, preserving NULL/empty arrays.

			SELECT posexplode_outer(array_column) AS (pos, element) FROM table

	5. Multiple Explodes
		Spark SQL only allows one explode per SELECT clause.
		To explode multiple arrays, you must:
		Use nested subqueries, or
		Use LATERAL VIEW syntax.

			SELECT t.id, e1.element AS arr1_elem, e2.element AS arr2_elem
			FROM table t
			LATERAL VIEW explode(array_col1) e1 AS element
			LATERAL VIEW explode(array_col2) e2 AS element

	6. PySpark Equivalent

		from pyspark.sql import functions as F

		df.select(F.explode("array_col").alias("element"))
		df.select(F.posexplode("array_col").alias("pos", "element"))
		df.select(F.explode_outer("array_col").alias("element"))
		df.select(F.posexplode_outer("array_col").alias("pos", "element"))

	✅ Key Notes:

	explode drops rows where the array/map is NULL or empty.
	explode_outer keeps those rows with NULL values.
	For maps, explode returns (key, value) pairs.
	Use LATERAL VIEW in SQL to explode multiple columns in one query.
