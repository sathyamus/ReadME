# Liquibase : 

https://docs.liquibase.com/concepts/advanced/home.html

#### Preconditions
    https://docs.liquibase.com/concepts/advanced/preconditions.html

    <preConditions>  
        <dbms  type="oracle"  />  
        <runningAs  username="SYSTEM"  />  
    </preConditions> 
	
#### changelog
    https://docs.liquibase.com/concepts/basic/changelog.html \
	https://docs.liquibase.com/concepts/basic/changelog-parameters.html
	
#### changeset
    https://docs.liquibase.com/concepts/basic/changeset.html
	
#### contexts
    https://docs.liquibase.com/concepts/contexts.html


	
https://www.liquibase.org/get-started/best-practices


Manage Stored Procedures

Try to maintain separate changelog for Stored Procedures and use runOnChange=”true”. This flag forces Liquibase to check if the changeset was modified. If so, Liquibase executes the change again.

Document changesets

Always use <comments> in the changesets. As they say, “A stitch in time saves nine!”


Always have a rollback plan

Write changesets in a way that they can be rolled back. For example, use a relevant change clause instead of using a custom <sql> tag. Include a <rollback> clause whenever a change doesn’t support an out-of-box rollback. (e.g., <sql>, <insert>, etc). Learn more about rollbacks.

	
# SQL to stdout
    java -jar liquibase.jar ... updateSQL

# or redirect SQL to file
    java -jar liquibase.jar ... updateSQL > /changes.sql

## Liquibase Multiple executions / databases / schemas / users
    <plugin>
      <groupId>org.liquibase</groupId>
      <artifactId>liquibase-maven-plugin</artifactId>
      <version>3.0.5</version>
      <executions>
        <execution>
          <phase>process-resources</phase>
          <configuration>
            <changeLogFile>PATH_TO_CHANGELOG_1</changeLogFile>
            ... connection properties  ...
          </configuration>
          <goals>
            <goal>update</goal>
          </goals>
        </execution>
       <execution>
          <phase>process-resources</phase>
          <configuration>
            <changeLogFile>PATH_TO_CHANGELOG_2</changeLogFile>
            ... connection properties  ...
          </configuration>
          <goals>
            <goal>update</goal>
          </goals>
        </execution>
      </executions>
    </plugin>

	

https://www.liquibase.com/ci-cd \
References : \
	https://stackoverflow.com/questions/25364023/liquibase-on-multiple-databases \
	https://rollout.io/blog/liquibase-tutorial-manage-database-schema \
