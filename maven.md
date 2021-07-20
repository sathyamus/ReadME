https://maven.apache.org/guides/getting-started/maven-in-five-minutes.html

#### Maven

```sh
mvn archetype:generate -DgroupId=com.snsystems -DartifactId=UnitTest -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```

## Build the Project

```sh
    mvn package
```
	
## Running Maven Tools
## Maven Phases

Although hardly a comprehensive list, these are the most common default lifecycle phases executed.

    validate: validate the project is correct and all necessary information is available
    compile: compile the source code of the project
    test: test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed
    package: take the compiled code and package it in its distributable format, such as a JAR.
    integration-test: process and deploy the package if necessary into an environment where integration tests can be run
    verify: run any checks to verify the package is valid and meets quality criteria
    install: install the package into the local repository, for use as a dependency in other projects locally
    deploy: done in an integration or release environment, copies the final package to the remote repository for sharing with other developers and projects.

There are two other Maven lifecycles of note beyond the default list above. They are

    clean: cleans up artifacts created by prior builds

    site: generates site documentation for this project

Phases are actually mapped to underlying goals. The specific goals executed per phase is dependant upon the packaging type of the project. For example, package executes jar:jar if the project type is a JAR, and war:war if the project type is - you guessed it - a WAR.

An interesting thing to note is that phases and goals may be executed in sequence.

```sh
    mvn clean dependency:copy-dependencies package
```

This command will clean the project, copy dependencies, and package the project (executing all phases up to package, of course).


#### Ensure pom is also uploaded to the repository along with the package jar and sources, this will allow you to get the transitive dependencies mentioned in pom. If not, then you will get only the dependency classes alone from that jar.

```sh
    mvn clean dependency:tree -Dverbose=true
```

#### Prepare the package by Ignoring the Tests
```sh
mvn clean install -DskipTests -Dmaven.test.skip=true -Dmaven.test.failure.ignore=true
```