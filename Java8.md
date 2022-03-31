## Java8 features

 - Functional Interfaces
 - Lambda
 - Predicates
 
#### Streams

 - Map 
   - Changing the type 
   - Count of objects will remain same
   - Respects the order

 - Filter
   - Type of objects remains same
   - Change in the Count of objects

 - Reduce
   - Performing aggregations
   - Returns final results, where map, filter are applied

 - Collection Framework is not the right place to implement map/filter/reduce to avoid the duplicate data.
 - By definition, once stream is created its empty.
 - Does not duplicate the data, no additional load on CPU, memory.
 - Works almost in similar way, when we do iterator

 - Intermediate operations / Non-Terminal operations
   - Methods, that create another stream

 - Terminal operations
   - Method, that produce a result
