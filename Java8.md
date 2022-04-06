## Java8 features

 - Functional Interfaces
 - Lambda
 - Predicates
 
### Features
 - String.intern(..)
   - If you decide to internalize strings is that the intern() method is relatively expensive.
   - Interned Strings live in PermGen space, which is usually quite small; you may run into an OutOfMemoryError with plenty of free heap space.
   - In *JDK 7*, interned strings are no longer allocated in the permanent generation of the Java heap, but are instead allocated in the main part of the Java heap (known as the young and old generations), along with the other objects created by the application. 

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
 - Works almost in similar way, when we do iterator.
 - Forbidden to call non-terminal operations on same stream multiple times.
   - Will get error as "Stream has already been operated upon or closed"

 - Intermediate operations / Non-Terminal operations
   - Methods, that create another stream

 - Terminal operations
   - Method, that produce a result
   - All operations on stream are applied in this step / stage
