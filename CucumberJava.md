

### Cucumber Java 

#### Date Format

```java
@Format("yyyy-MM-dd")
```

#### Date Format

#### Sample feature file
```java
  Given I visit "/login"
  When I enter "Bob" in the "user name" field
    And I enter "tester" in the "password" field
    And I press the "login" button
  Then I should see the "welcome" page
```

#### Cucumber Runner
```java
package com.example;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(plugin = {"pretty", "html:target/cucumber"})
public class RunCucumberTest {
}
```

#### Cucumber Runner from command line (CLI Runner)
```sh
java io.cucumber.core.cli.Main
```
```sh
java -cp "path/to/each/jar:path/to/compiled/.class/files" io.cucumber.core.cli.Main /path/to/your/feature/files --glue hellocucumber --glue anotherpackage
```

#### Hooks
   - BeforeAll / AfterAll
     - Are executed before all scenarios are executed and after all scenarios have been executed.
   - Before / After 
     - Are executed before and after each scenario is executed.
   - BeforeStep / AfterStep
     - Are executed before and after each step is executed.


#### Running a subset of scenarios
```java
@CucumberOptions(tags = "@smoke and @fast")
public class RunCucumberTest {}
```

#### Ignoring a subset of scenarios
```java
@CucumberOptions(tags = "not @smoke")
public class RunCucumberTest {}
```

#### CucumberOptions
```java
@CucumberOptions(plugin = {"pretty", "html:target/cucumber"})
@CucumberOptions(plugin = {"pretty", "summary"}, snippets = CAMELCASE)
@CucumberOptions(dryRun=true)
```

#### Empty Cucumber project with maven

```sh
mvn archetype:generate                      \
   "-DarchetypeGroupId=io.cucumber"           \
   "-DarchetypeArtifactId=cucumber-archetype" \
   "-DarchetypeVersion=7.0.0"               \
   "-DgroupId=hellocucumber"                  \
   "-DartifactId=hellocucumber"               \
   "-Dpackage=hellocucumber"                  \
   "-Dversion=1.0.0-SNAPSHOT"                 \
   "-DinteractiveMode=false"
```

#### Cucumber Java
   - https://cucumber.io/docs/cucumber/api/
   - https://github.com/cucumber/cucumber-jvm/tree/main/java#data-tables

