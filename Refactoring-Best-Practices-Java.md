### Refactoring Best Practices Java


##### 1. Reorder String Literal Equality Check
This order prevents NullPointerException (NPE), as a defined String literal can never be null.

` "VALIDATED".equals(deal.getStatus()); `

##### 2. Use IsEmpty method On Collections
Replace the Comparisons of length() or size() with 0 with a call to isEmpty() to improve the performance

##### 3. Replace Primitive type Constructor calls
Replace primitive type Constructor calls with the corresponding static valueOf() method to improve the performance
` new Integer("10") becomes Integer.valueOf("10") `


##### 4. Use Enhanced For Loop, where applicable
` for (String str : names) {
        sb.append(str);
`

##### 5. Simplify Lambda Expression with Method Reference

local method
` statuses.forEach((Status status) -> verifyStatus(status)); ` 
becomes
` statuses.forEach(this::verifyStatus); `

static method
` Collections.sort(students, (Student s1, Student s2) -> Student.compareByAge(s1, s2)); `
becomes
` Collections.sort(students, Student::compareByAge); `

instance method
` Collections.sort(students, (Student s1, Student s2) -> matchStudent.compareByName(s1, s2)); ` 
becomes
` Collections.sort(students, matchStudent::compareByName); ` 

##### 6. Better Logging Statements
Using the built-in string formatting placeholders {} for loggers to avoid concatenation in logs.
` logger.info("Deal : " + deal.getName() + "with Status : " + deal.getStatus()); `
becomes

` logger.info("Deal : {} with Status : {}", deal.getName(), deal.getStatus()); `

##### 7. Prevent SQL injections
Prevent SQL injections by using the named parameter or Escaping User Input in SQL Statement Queries
` ESAPI.encoder().encodeForSql(codec, input)  `

##### 8. Make Fields And Variables Final, if the variable or field is not assigned after its initialisation to prevent accidental re-assignment

##### 9. Avoid performing Null-Checks when performing instanceof check
` boolean isUser = x != null && x instanceof User; `
becomes
` boolean isUser = x instanceof User; `

##### 10. Use collectors when using streams

##### 11. Use contains() instead of indexOf() for Strings, Collections

##### 12. Make use of Util classes like CollectionUtils, StringUtils etc

##### 13. Avoid declaring collections with null, initialize them with Empty.




