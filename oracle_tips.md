
### Oracle: Show size in Kb of BLOB fields 
SELECT round(DBMS_LOB.getlength(REP.REPORT_BINARY)/1024) KB FROM T_REPORTS REP

### Oracle: Foreign constraints

select f.constraint_name, f.table_name T_FIRST_TAB, p.table_name T_SECOND_TAB
from user_constraints f, user_constraints p
where f.constraint_type = 'R'
and f.r_constraint_name = p.constraint_name

-- constraint_type (http://docs.oracle.com/cd/B19306_01/server.102/b14237/statviews_1037.htm): 
-- R -> Referential (FK)
-- C -> Check constraint on a table
-- P -> Primary Key
-- U -> Unique Key
-- V -> With check option, on a view
-- O -> With read only, on a view

### Oracle: Find View created date and last modified date 
select uo.created,uo.last_ddl_time
from user_objects uo
where uo.object_name='MY_VIEW' and uo.object_type='VIEW';

