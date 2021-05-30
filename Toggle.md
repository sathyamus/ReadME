# Toggle

What are feature flags?  
a feature flag, in the simplest terms, is an if statement surrounding code snippet.

How do you use them? 
  Possible listed approaches are provided below.


Toggle approach

1. Property Based (Key, value) \
   Pros: \
    -> Easy to configure and use \
   Cons: \
    -> Requires re-start of application, if properties loaded at startup
2. Database \
   Pros: \
    -> Easy to configure and use
    -> No need of restart of application to reflect the changes
   Cons: \
    -> Requires dedicated UI / script to update the entires
3. Toggle service (micro service) \
   Pros: \
    -> Easy to configure and use 
    -> No need of restart of application to reflect the changes 
    -> Simple API can be used to enable updations \
   Cons: \
    -> Requires dedicated schema / DB and UI (optional)

4. Config server \
   Pros: \
    -> Very useful, if you have a good number of micro services. \
   Cons: \
    -> Painful to maintain, if you have very minimal micro services.


5. JavaScript toggle
