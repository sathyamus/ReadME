# DevOps

 --> Isolate below processes
 - Build (validate product quality)
 - Deployment (validate runtime stability)
 - Release (validate feature usage)

 - Development
   - Developing of application
   - Testing
   - Tools
     - IDE (Eclipse, STS, IntelliJ, VS Code, Atom)
     - Remote Coding for Collaborative development
     - Text Editors (Notepad++, Sublime Text, Bracket) :: Install plug-ins for addon behaviours
     - JIRA, Asana
     - Tomcat, JBoss, Websphere
     - Spring 

- Support structure
  - L1 - Managed by PRD (Health check)
  - L2 - Investigation on issues
  - L3 - Bug fix (on Core feature Team)

 - Operations
   - Deployment of application
   - Maintained on the server
   - Infra / Weekend activities
     - Start / stop procedure
     - Health of the applications

### Orchestration tools
 - Infrastructure more robust and High availability or no downtime
 - Scalability or high performance
 - Disaster recovery - backup and restore

### Tools
 - Liquibase - Track, Version, and Deploy database schema changes
 - Databases
   - Oracle
   - MySQL
   - Audit String .. Mongo / Casandra .. with Retention time (say 3 months)
 - Business Objects
 - Deploy IT from XL Deploy
 - Autosys from CA - Scheduling tool
 - Jenkins, ArgoCD
 - Sonar / SonarQube
   - Automatic code review tool to detects bugs, vulnerabilities and code smells.
 - Checkmarx 
   - Static and Interactive application security testing
 - Docker
 - Docker Desktop 
   - WSL 2 backend
   - BIOS-level hardware virtualization support must be enabled
 - Vault
 - Kuberenetes
    - Sysdig - Sysdig Monitor provides cloud monitoring at scale with full Prometheus compatibility.
      - Dashboards
      - Teams config (managing access to Dashboards)
    - K9S
 - Ansible - open-source tool to automate apps and IT infrastructure
 - Prometheus - open-source metrics and alerting monitoring solution
 - Imperva
 - CyberArk
 - Terraform
 - SQL Editors
   - Oracle SQL Developer
   - MySQL Workbench
   - Azure Data Studio
   - SQL Server Management studio 
   - Toad
   - MongoDB Compass, The GUI for MongoDB
 - Cmder -> Console Emulator
   - Git for Windows (by default)
   - Themes
   - Portability (copy, paste ctrl + c, v)
 - Lens -> Kubernetes IDE
   - GUI Portal to view Pods from multiple namespaces
   - Supports proxy inside Corporate environment
   - Easy access to many of the kubectl operations
 - Postman (REST calls, OAuth2, Basic credentials, can generate code snippets for curl, python etc)
 - Remote Desktop Gateway (RDG or RD Gateway) is a Windows Server role that provides a secure encrypted connection to the server via RDP. It enhances control by removing all remote user access to your system and replaces it with a point-to-point remote desktop connection.

#### Deployment Pipeline
 - Spark HDI Cluster
  - source (Git) --> prepare package (Jenkins) --> Repository (Nexus) --> Provisioning Engine (Azure storage) --> Deployment (Toolbox)
 - AKS
  - source (Git) --> prepare package (Jenkins) --> Repository (Harbor) --> Provisioning Engine (Pull image, Deployment)
 - DeployIT
  - source (Git) --> prepare package (Jenkins) --> Repository (Nexus) --> Deployment Archive (DAR) --> DeployIT UI
  - Dictionaries, Infrastructure, Environments, Packages

#### GitOps
  - GitOps
  - ArgoCD
  - Kuberneties

#### Docker
 - Runs on a single node
 - Docker Engine - runtime environment
 - Docker Swarm
 - Docker Hub
 - Standalone deployments
 - In built load balancer

#### Kuberenetes
 - Runs across a cluster
 - Kuberenetes service
 - Automatic status management
 - Auto-scaling
 - Prestart / Poststart 
 - Readiniess probes
 - Helm - Packaging manager
   - Managing Deployments
   - Environment specific configuration

### Blue Green
 - Traffic Manager
 - SLB 
 - Blue Cycle
   - Once we reach end of support, then switch to Green Cycle
 - Green Cycle
   - Once we reach end of support, then switch to Blue Cycle


    * [DevOps Roadmap 2021 - How to become a DevOps Engineer?](https://www.youtube.com/watch?v=9pZ2xmsSDdo&list=RDCMUCdngmbVKX1Tgre699-XLlUA&index=5)


### Disaster Recovery (DR)
 - Active - Active
 - Active - Passive
 - Failover
 - Failback

### AWS

    * https://pages.awscloud.com/awsmp-h2-dev-aws-marketplace-devops-workshop-series.html

      * https://pages.awscloud.com/awsmp-whitepaper-dev-infrastructure-as-code-for-self-service-aws-environments-ty.html
      * https://pages.awscloud.com/rs/112-TZM-766/images/Infrastructure-as-code-for-automated-self-service-aws-environments.pdf

      * https://pages.awscloud.com/awsmp-whitepaper-dev-roadmap-to-continuous-delivery-pipeline-maturity-ty.html
      * https://pages.awscloud.com/rs/112-TZM-766/images/A-Roadmap-to-Continuous-Delivery-Pipeline-Maturity-dev-whitepaper.pdf

      * https://pages.awscloud.com/awsmp-whitepaper-dev-continuous-quality-testing-to-accelerate-development-ty.html
      * https://pages.awscloud.com/rs/112-TZM-766/images/aws-marketplace-continuous-quality-and-testing-whitepaper.pdf

### Azure DevOps (https://dev.azure.com/)
 - Boards
   - Issue management
 - Repos
 - Pipelines
 - Test Plans
 - Artifacts, Stages, and Gates
 - Jobs and Tasks
 - Continuous Deployment Trigger

### Key Points for Monitoring Chain Applications
 - Monitoring Dashboard to view applications
 - Runtime
 - Running processes
 - Traceability of each request by Business process, date, id etc for Unique params
 - UniqueID / UID to easily recognize the each call of API
 - Retention of the data
   - Functional - No limit
   - Technical - purge data depending on need, size
 - Central storage of Logs (ELK)
 - Chatbot (Skype alerts)
 - On Any component failure or other avoid to push duplicate logs, to not increasing the Elastic index size.

#### Azure
  - ARM Templates (export from resource groups / from resource)

#### Package Managers
  - Chocolate (choco)
    - choco list
    - choco install pgadmin4

