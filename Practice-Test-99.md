----------------------------------------------------------------
AZ-400 Microsoft DevOps Engineer REAL Exam Dumps : Part-1
https://www.youtube.com/watch?v=eHlPZipHQco&list=PLyABYqulvUwYlrqboc1FgrLM4lN-8OAd7
AZ-400 Microsoft DevOps Engineer REAL Exam Dumps : Part-2
https://www.youtube.com/watch?v=TuM2xEc68dg

----------------------------------------------------------------

-------------------------------------------------------------------------
PT99-Q0X: 
question text..
Which of the following is the option you would choose?

MY ANSWER TO PT99-Q0X
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q0X
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

-------------------------------------------------------------------------
PT99-Q15: 

MY ANSWER TO PT99-Q15
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q15
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

-------------------------------------------------------------------------
PT99-Q14: 

MY ANSWER TO PT99-Q14
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q14
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

-------------------------------------------------------------------------
PT99-Q13: 

You need to configure YAML startegy value for each app while Designing
YAML-based Azure pipelines.
**The solution should minimize app downtime.**
Which value should you configurefor each app?

https://www.examtopics.com/discussions/microsoft/view/49157-exam-az-400-topic-7-question-19-discussion/
You are designing YAML-based Azure pipelines for the apps shown in the following table.


| Name  | Platform    | Release Requirements     |
| :---  |:----:       |---: |
| App1  | Azure VM    | Replace a fixed set of existing instances of the previous version of App1 with instances of the new version of the app in each itereation   |
| App2  | AKS Cluster | Roll out a limited deployment of the new version of App2 to validate the functionality of the app. Once testiong is successful, expand the rollout.     |

You need to configure the YAML strategy value for each app. 
**The solution must minimize app downtime.**
Which value should you configure for each app? 
To answer, select the appropriate options in the answer area.

NOTE: Each correct selection is worth one point.

----------
Hot Area:
----------

App1:
 -1A: CANARY
 -1B: ROLLING
 -1C: RUNONCE

App2:
 -2A: CANARY
 -2B: ROLLING
 -2C: RUNONCE

MY ANSWER TO PT99-Q13
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q13
--------------------------------------------------------------------------
App1: rolling
App2: canary
--------------------------------------------------------------------------


REFS:
https://docs.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs

-------------
App1: rolling 
-------------
A rolling deployment replaces instances of the previous version of an 
application with instances of the new version of the application 
**on a fixed set of virtual machines (rolling set) in each iteration**.


-------------
App2: canary 
-------------
Canary deployment strategy is an advanced deployment strategy that helps
**mitigate the risk involved in rolling out new versions of applications**.
By using this strategy, you can **roll out the changes to a small subset of servers first**. 
As you gain more confidence in the new version, you can release it to
more servers in your infrastructure and **route more traffic to it**.

--------------------------
Incorrect Answers:
--------------------------
runonce:
runOnce is the simplest deployment strategy wherein all the lifecycle hooks,
namely preDeploy deploy, routeTraffic, and postRouteTraffic, are executed once.
Then, either on: success or on: failure is executed.

--------------------------
[Deployment strategies](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops#deployment-strategies)  
--------------------------

When you're deploying application updates, it's important that the technique you use to deliver the update will:

- Enable initialization.
- Deploy the update.
- Route traffic to the updated version.
- Test the updated version after routing traffic.
- In case of failure, run steps to restore to the last known good version.

We achieve this by using **lifecycle hooks** that can run steps during deployment.
Each of the lifecycle hooks resolves into an **agent job** or a **server job** 
(or a container or validation job in the future), depending on the pool attribute.
By default, the lifecycle hooks will inherit the pool specified by the deployment
job.

[Descriptions of lifecycle hooks](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops#descriptions-of-lifecycle-hooks)  

**preDeploy:**
Used to run steps that initialize resources before application deployment starts.

**deploy:** 
Used to run steps that deploy your application. 
**Download artifact task will be auto injected only in the deploy hook** 
for deployment jobs. 
To stop downloading artifacts, use : `- download: none` 
or choose specific artifacts to download by specifying Download Pipeline Artifact task.

**routeTraffic:** 
Used to run steps that serve the traffic to the updated version.

**postRouteTraffic:** 
Used to run the steps after the traffic is routed. Typically, these tasks 
monitor the health of the updated version for defined interval.

**on: failure or on: success:** 
Used to run steps for rollback actions or clean-up.


[RunOnce deployment strategy](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops#runonce-deployment-strategy)  
runOnce is the simplest deployment strategy wherein all the lifecycle hooks, namely: 

- preDeploy 
- deploy 
- routeTraffic
- postRouteTraffic

are executed once. Then, either **on: success or on: failure** is executed.

```
strategy: 
    runOnce:
      preDeploy:        
        pool: [ server | pool ] # See pool schema.        
        steps:
        - script: [ script | bash | pwsh | powershell | checkout | task | templateReference ]
      deploy:          
        pool: [ server | pool ] # See pool schema.        
        steps:
        ...
      routeTraffic:         
        pool: [ server | pool ]         
        steps:
        ...        
      postRouteTraffic:          
        pool: [ server | pool ]        
        steps:
        ...
      on:
        failure:         
          pool: [ server | pool ]           
          steps:
          ...
        success:          
          pool: [ server | pool ]           
          steps:
          ...
```

[Rolling deployment strategy](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-jobs?view=azure-devops#rolling-deployment-strategy)  

**We currently only support the rolling strategy to VM resources.**

A rolling deployment typically waits for deployments on each set of virtual machines to complete before proceeding to the next set of deployments. You could do a health check after each iteration and if a significant issue occurs, the rolling deployment can be stopped.

-------------------------------------------------------------------------
PT99-Q12: 

As a DevOps Engineer, you need to automate the build process for a Java
application by using Azure DevOps.
You need to add test coverage and publish the outcome to the pipeline.
What should you use?

https://www.examtopics.com/discussions/microsoft/view/6755-exam-az-400-topic-14-question-47-discussion/
https://www.examtopics.com/discussions/microsoft/view/23322-exam-az-400-topic-6-question-13-discussion/
You are automating the build process for a Java-based application by using Azure DevOps.
You need to add code coverage testing and publish the outcomes to the pipeline.
What should you use?

A. Cobertura
B. Bullseye Coverage
C. MSTest
D. Coverlet
E. MS SQL
F. JaCoCo <<
G. NUnit
H. Coverage.py

MY ANSWER TO PT99-Q12
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q12
--------------------------------------------------------------------------
Cobertura or JaCoCo format

Incorrect Answers:
F: Coverage.py is used for Python, not for Java.
B: Bullseye Coverage is used for C++ code, and not for Java.
D: 
If you're building on Linux or macOS, you can use Coverlet or a similar
tool to collect code coverage metrics. Code coverage results can be published
to the server by using the Publish Code Coverage Results task. 

To leverage this functionality, the coverage tool must be configured to 
generate results in Cobertura or JaCoCo coverage format.

PublishCodeCoverageResults@1
https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-code-coverage-results-v1?view=azure-pipelines
--------------------------------------------------------------------------

REFS:

-------------------------------------------------------------------------
PT99-Q11: 

A company has stored source code in a Git Repository in Azure Repo.
The company uses third-party CI tools to control the builds.
What should you use in Azure DevOps to authenticate with the tool?

https://www.examtopics.com/discussions/microsoft/view/35805-exam-az-400-topic-7-question-5-discussion/
You store source code in a Git repository in Azure Repos. 
You use a third-party continuous integration (CI) tool to control builds.
What will Azure DevOps use to authenticate with the tool?

A. certificate authentication
B. a personal access token (PAT)
C. a Shared Access Signature (SAS) token
D. NTLM authentication
E. Azure Key Vault 
F. Vistual Machine

MY ANSWER TO PT99-Q11
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q11
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

Personal access tokens (PATs) give you access to Azure DevOps and 
Team Foundation Server (TFS), without using your username and password 
directly.

Azure devops will not use anything!
The third party CI tool will use a PAT to access Azure DevOps repos.

---------------------------------------------------------
PATs are short-lived, limited-privilege tokens.
**** Provided by Azure DevOps! *****
PAT can be used to authenticate/authorize API requests 
*** to Azure DevOps services. *** 
*** Do not share your Azure DevOps username and password. ***
---------------------------------------------------------

Shared Access Signature (SAS) token, grant access to Azure resources, 
such as Azure Storage, Azure Service Bus, blob and files


-------------------------------------------------------------------------
PT99-Q10: 

A company uses open source libraries. You need to make sure that all the
open source libraries comply with the the company's licencing standards.
Which service should you use?

A. Ansible
B. Maven
C. WhiteSource Bolt
D. Helm
E. Gradle

MY ANSWER TO PT99-Q10
--------------------------------------------------------------------------
C. WhiteSource Bolt
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q10
--------------------------------------------------------------------------
C. WhiteSource Bolt
--------------------------------------------------------------------------

REFS:   Obvious

-------------------------------------------------------------------------
PT99-Q09:

You want to compile an Internet Information Services (IIS) web application
which runs on docker.
What should you use as a default build agent pool?

https://www.examtopics.com/discussions/microsoft/view/58286-exam-az-400-topic-8-question-11-discussion/
You need to consider the underlined segment to establish whether it is accurate.
To compile an Internet Information Services (IIS) web application that runs
docker, you should use a Default build agent pool.
Select `No adjustment required` if the underlined segment is accurate. 
If the underlined segment is inaccurate, select the accurate option.

A. No adjustment required. = Default build agent pool = this is correct as the Default pool is Hosted! 
B. Hosted Windows Container < this is not even an option in Azure DevOps!
C. Hosted                   < this is correct!
D. Hosted macOS

MY ANSWER TO PT99-Q09
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q09
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

------------------------
Microsoft-hosted agents
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&viewFallbackFrom=vsts&tabs=yaml
------------------------
Azure Virtual Machine Scale Set agents
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/scale-set-agents?view=azure-devops
------------------------
**Define container jobs (YAML)
https://learn.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops
------------------------

----------------------- 
1-Microsoft-hosted agents 
----------------------- 
can run jobs directly on the VM or in a container**.
Azure Pipelines provides a predefined agent pool named Azure Pipelines with 
Microsoft-hosted agents.
For many teams this is the simplest way to run your jobs. 
You can try it first and see if it works for your build or deployment. 
If not, you can use:
----------------------- 
2-scale set agents or 
3-a self-hosted agent.
----------------------- 

DEFAULTS:
The default agent image for classic build pipelines is windows-2019. 
Tthe default agent image for YAML build pipelines is ubuntu-latest.

YAML:
In YAML pipelines, if you do not specify a pool, pipelines default to 
the Azure Pipelines agent pool. You simply need to specify which 
virtual machine image you want to use.

----------
Hardware
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&tabs=yaml#hardware
----------
Microsoft-hosted agents that run Windows and Linux images are provisioned
on Azure general purpose virtual machines with: 
-------------------------------------------------------
2 core CPU, 7 GB of RAM, and 14 GB of SSD disk space. 
These virtual machines are co-located in the same geography 
as your Azure DevOps organization.
-------------------------------------------------------
Agents that run macOS images are provisioned on:
Mac pros with a 3 core CPU, 14 GB of RAM, and 14 GB of SSD disk space.
These agents always run in the US irrespective of the 
location of your Azure DevOps organization.

If data sovereignty is important to you and if your 
organization is not in the US, then you should not use 
macOS images!
-------------------------------------------------------

-------------------------------------------------------
USE CASE
Run a self-hosted agent in Docker
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops
-------------------------------------------------------

This article provides instructions for running your Azure Pipelines 
agent in Docker. 

1-Both Windows and Linux are supported as container hosts.
2-you customize the container to suit your needs.
3-Tasks and scripts might depend on specific tools being available 
on the container's PATH, and it's your responsibility to ensure that
these tools are available. 

You can set up a self-hosted agent in Azure Pipelines to run inside a: 
-Windows Server Core (for Windows hosts) 
or 
-Ubuntu container (for Linux hosts) with Docker.
*********************************************************************
This is useful when you want to run agents with outer orchestration, 
such as Azure Container Instances
*********************************************************************

------------------------------------------------------------------------
USE CASE
Quickstart: Build a container image to deploy apps using Azure Pipelines
https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/containers/build-image?view=azure-devops
------------------------------------------------------------------------
How to build a container image for app deployment using Azure Pipelines. 
To build this image, all you need is a Dockerfile in your repository. 
You can build Linux or Windows containers, based on the agent that you use 
in your pipeline.

-------------------------------------------------------------------------
PT99-Q08: 

As a DevOps Engineer, you need to configure project metrics for the 
dashboard in Azure DevOps. Which of the following charts should you use 
to measure:
the elapsed time from the **creation** of work items to their completion?

A. Cycle Time
B. Lead Time
C. Burndown
D. Burnup

MY ANSWER TO PT99-Q08
--------------------------------------------------------------------------
B. Lead Time
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q08
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

----------------------------------------------------
Cumulative flow, lead time, and cycle time guidance
https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops&source=docs
----------------------------------------------------

The Continuous flow CFD provides the chart most favored by teams that follow 
a lean process. However, many teams have begun combining lean practices with 
Scrum or other methodologies which means they practice lean within the span 
of an iteration or sprint. 

-------------
Burnup Chart
-------------
The top line represents the scope set for the sprint. And, because the work 
must be completed by the last day of the sprint, the slope of the Closed 
state indicates whether or not a team is on track to complete the sprint. 
The easiest way to think of this view is as a burnup chart.

-------------
Chart Metrics
https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops&source=docs#chart-metrics
-------------

-------------
1- Cycle Time
-------------
Measures the time it takes to move work through a single process or workflow state.
Calculation is from the start of one process to the start of the next process.

-------------
2- Lead Time
-------------
2A- For a continuous flow process: 
-------------------------------------
Measures the amount of time it takes from when a request is **made** 
(such as adding a proposed user story) until that request is completed (closed).

-------------------------------------
2B- For a sprint or fixed period process: 
-------------------------------------
Measures the time from when work on a request **begins** 
until the work is completed (i.e. the time from Active to Closed).

--------------------
3-Work in Progress
--------------------
Measures the amount of work or number of work items that are actively being worked.

--------------------
Scope
--------------------
Represents the amount of work committed for the given period of time. 
Only applies to fixed period processes. [Scrum]

------------
CORRELATION 
------------
There's a well-defined correlation between Lead Time / Cycle Time and 
Work in Progress (WIP). 
The more WIP, the longer the cycle time, which also leads to longer 
lead times. 
The opposite is also true—the less WIP, the shorter the cycle and 
lead time. 
When the development team focuses on fewer items, they reduce the 
cycle and lead times. 
This correlation is a key reason why you can and should set Work In 
Progress limits on the Kanban board.
----------------------------
Set Work in Progress limits
https://learn.microsoft.com/en-us/azure/devops/boards/boards/wip-limits?view=azure-devops
----------------------------

-----------------------------------------------
Identify issues, take appropriate actions
-----------------------------------------------
The CFD answers several specific questions and based on the answer, 
actions can be taken to adjust the process to move work through the system.

-----------------------------------------------
Will the team complete work on time?
https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops&source=docs#will-the-team-complete-work-on-time
-----------------------------------------------
This question applies to fixed period CFDs only. [Scrum]

-----------------------------------------------
How is the flow of work progressing?
https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops&source=docs#how-is-the-flow-of-work-progressing
-----------------------------------------------
Is the team completing work at a steady pace? 
One way to tell is to look at the spacing between the different columns on the chart. 
Are they of a similar or uniform distance from each other from beginning to end?
Does a column appear to flat-line over a period of multiple days?
Does it seem to "bulge"?
Any unevenness in the system will cause bulges to appear in the CFD.
Monitoring the CFD for flat lines and bulges supports a key part of the 
**Theory of Constraints** project management process. 

Protecting the slowest area of the system is referred to as the 
**drum-buffer-rope** process and is part of how work is planned.

-------------------------------------------------------------------------
PT99-Q07: 

You want to create a release pipeline which uses Azure SQL Database
deployment task to update the Azure SQL database.

Which artifact should you deploy?

You have an Azure DevOps project named Project1 and an Azure subscription named Sub1.
Sub1 contains an Azure SQL database named DB1.
You need to create a release pipeline that uses 
the Azure SQL Database Deployment task to update DB1.

Which artifact should you deploy?

A. a BACPAC
B. a DACPAC
C. an LDF file
D. an MDF file

MY ANSWER TO PT99-Q07
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q07
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:
https://www.examtopics.com/discussions/microsoft/view/20475-exam-az-400-topic-8-question-36-discussion/

Suggested Answer: B. a DACPAC 
Use Azure SQL Database Deployment task in a build or release pipeline to 
deploy to Azure SQL DB using a DACPAC or run scripts using SQLCMD.

Reference:
https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/deploy/sql-azure-dacpac-deployment

Correct

DACPAC and BACPAC are similar but they target different scenarios. 
---------------------------------------
-DACPAC: = schemas + other SQL objects
---------------------------------------
is focused on capturing and deploying schema, including upgrading an existing database.
The primary use case for a DACPAC is to deploy a tightly defined schema to:
development, test, and then to production environments. 
And also the reverse: capturing production's schema and applying it back to
test and development environments.

----------------------
-BACPAC: DACPAC + data
----------------------
is focused on capturing schema and data supporting two main operations:
EXPORT- The user can export the schema and the data of a database to a BACPAC.
IMPORT- The user can import the schema and the data into a new database in the host server.

-------------------------------------------------------------------------
PT99-Q06: 

You have a free tier of an Azure DevOps organization named Contoso. 
Contoso contains 10 private projects. 
Each project has multiple jobs with no dependencies.

You frequently run the jobs on five self-hosted agents but experience 
long build times and frequently queued builds.

You need to minimize the number of queued builds and the time it takes to
run the builds.

What should you do?
What should you recommend?

A. Configure the pipelines to use the Microsoft-hosted agents.
B. Register additional self-hosted agents.
C. Purchase self-hosted parallel jobs.              << this is correct
D. Purchase Microsoft-hosted parallel jobs. << this looks right but it's wrong!

MY ANSWER TO PT99-Q06
--------------------------------------------------------------------------
C. Purchase self-hosted parallel jobs. 
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q06
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

https://www.examtopics.com/discussions/microsoft/view/35935-exam-az-400-topic-14-question-90-discussion/

If you want to run your jobs on machines that Microsoft manages, 
use Microsoft-hosted parallel jobs.
Your jobs run on our pool of Microsoft-hosted agents.
We provide a free tier of service by default in every organization.

https://docs.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=self-hosted
C. Purchase self-hosted parallel jobs

It should be C- as the it talks about jobs running on a self-hosted pool in question.
Answer is C :

1]
As the number of queued builds and releases exceeds the number of parallel 
jobs you have, your build and release queues will grow longer. 
When you find the queue delays are too long, you can purchase additional 
parallel jobs as needed.

2]
D. Purchase Microsoft-hosted parallel jobs. << this looks right but it's wrong!

The reason is that in the question you have 
" you experience 
-long build times and 
-frequently queued builds."

**********************************************************************************
The LONG BUILD time may not be resolved by option D. because the  Microsoft-hosted
agents have a time limit instead on self-hostet Jobs there are no time limits.
This is also ONE OF the reasons why you may wish to use self-hosted agents
rather than Microsoft hosted agents! 

------------
TIME LIMITS:
------------
Microsoft-hosted for public projects 360 mins
Microsoft-hosted for private projects 60 mins !!!!!!
self-hosted agents NO TIME LIMITS !!!

**********************************************************************************

---------------------------
Agreed. https://docs.microsoft.com/en-us/azure/devops/organizations/billing/buy-more-build-vs?view=azure-devops#self-hosted-cicd
Self-hosted private projects
---------------------------
---------------------------
PARALLEL JOBS LIMITS
---------------------------
The free tier is one parallel job. 
You also get one free parallel job for each Visual Studio Enterprise subscriber
who's a member of your organization. 
You can get more using **paid self-hosted parallel jobs**.

-------------------------------------------------------------------------
PT99-Q05: 

Arrange the actions in the correct order if you need to associate an automated
test to a test case in an Azure DevOps Project.

In which sequence shouuld you run the following three commands?

 - Debug the Project
 - Create a test Project
 - Create a work Item
 - Check in the project to an Azure DevOps repository
 - Add automated test to pipeline


MY ANSWER TO PT99-Q05
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q05
--------------------------------------------------------------------------
 - Create a test Project
 - Check in the project to an Azure DevOps repository
 - Add automated test to pipeline
--------------------------------------------------------------------------

REFS:

EXAMTOPICS
https://www.examtopics.com/discussions/microsoft/view/50322-exam-az-400-topic-8-question-26-discussion/

The process to associate an automated test with a test case is:

1. Create a test project containing your automated test. 
   What types of tests are supported?

2. Check your test project into an Azure DevOps or Team Foundation Server (TFS) repository.

3. Create a build pipeline for your project, ensuring that it contains the automated test.
   What are the differences if I am still using a XAML build?

4. Use Visual Studio Enterprise or Professional 2017 or a later version to associate the
   automated test with a test case as shown below. 
   The test case must have been added to a test plan that uses the build you just defined.

Reference:
https://docs.microsoft.com/en-us/azure/devops/test/associate-automated-test-with-test-case

-------------------------------------------------
Azure Test Plans

Azure Test Plans - Toronto Enterprise Usergroup
https://www.youtube.com/watch?v=hho2rFQqbfc 

-1 Create a test case
-2 Associate the test case to the Test Plan

-1 Create a test case
-On the Azure DevOps Board select a Work Item WI
-Add Link to with: 
  Link Type      = Tested By
  Work Item Type = Test Case
-One WI can have multiple Tested By Links, these are all its related Test cases
-By clinging on the Test Case Link you can now fill in its specific details
 i.e. the steps to perform to carry out the test.  

-------------------------------------------------


Running Tests with Azure Pipelines (9 of 12) | Automated Software Testing
https://www.youtube.com/watch?v=Ja034np9KhU&t=205s


-------------------------------------------------------------------------
PT99-Q04: 

A Company has a ** Azure Resource Group deployment Project in Visual Studio **
which is checked in to Azure DevOps project.

As a DevOps Engineer, you need to create a release pipeline which will deploy
resources using ARM templates.

Which task type should you include which can minimize the administrative
effort for the solution?

Select TWO correct answwers.

-Azure Sentinel
-Use Azure PowerShell 
-Add multiple DevOps services build steps, each one performing a stage task
-Use Azure Firewall


MY ANSWER TO PT99-Q04
--------------------------------------------------------------------------
-Use Azure PowerShell 
-Add multiple DevOps services build steps, each one performing a stage task
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q04
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

REFS:

Integrate ARM templates with Azure Pipelines
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/add-template-to-azure-pipelines

consider the different options for deploying an ARM template from a pipeline.

-------------------------------------
-1 Use ARM template deployment task.
-------------------------------------
This option is the easiest option.
This approach works when you want to deploy a template directly from a repository.
----------------------------------------------------------------------
Tutorial: Continuous integration of ARM templates with Azure Pipelines
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deployment-tutorial-pipeline
It shows how to use the ARM template deployment task to deploy a template from your GitHub repo.
----------------------------------------------------------------------

-------------------------------------
-2 Add task that runs an Azure PowerShell script.
-------------------------------------
This option has the advantage of providing consistency throughout the development life cycle.
This is because you can use the same script that you used when running local tests. 
Your script deploys the template but can also perform other operations such as getting values to use as parameters.

--------------------------------------------
Integrate ARM templates with Azure Pipelines - Powershell Task
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/add-template-to-azure-pipelines#azure-powershell-task

azure-quickstart-templates/Deploy-AzTemplate.ps1
https://github.com/Azure/azure-quickstart-templates/blob/master/Deploy-AzTemplate.ps1

azure-quickstart-templates/Deploy-AzureResourceGroup.ps1
https://github.com/Azure/azure-quickstart-templates/blob/master/Deploy-AzureResourceGroup.ps1
--------------------------------------------

-------------------------------------------------------------
** Visual Studio provides the Azure Resource Group project **
-------------------------------------------------------------
This includes a PowerShell script.
The script stages artifacts from your project to a storage account that Resource Manager can access. 
Artifacts are items in your project such as linked templates, scripts, and application binaries.

-------------------------------------
-3 Add tasks to copy and deploy tasks. 
-------------------------------------
This option offers a convenient alternative to the project script.
You configure two tasks in the pipeline.
One task stages the artifacts to an accessible location. 
The other task deploys the template from that location.

--------------------------------------------
Integrate ARM templates with Azure Pipelines - Copy and deploy tasks
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/add-template-to-azure-pipelines#copy-and-deploy-tasks

------------------
Part-1: The Copy File Task
------------------
Copy the Artefacts to the SA.
AzureFileCopy@4 - Azure file copy v4 task
https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v4?view=azure-pipelines

------------------
Part-2: The task to deploy the staged template.
------------------
Azure Resource Manager (ARM) Template Deployment Task
https://github.com/microsoft/azure-pipelines-tasks/blob/master/Tasks/AzureResourceManagerTemplateDeploymentV3/README.md

This task is used to deploy Azure Resource Manager templates at 
 - resource group deployment scope
 - subscription deployment scope 
 - management group deployment scopes. 
 
The task is also used to create or update a resource group in Azure.

------------------
Deployment scope
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-rest#deployment-scope
------------------

You can target your deployment to a 
 - a resource group 
 - a Azure subscription 
 - a management group 
 - a tenant
 - multiple RGs 
 
 Depending on the scope of the deployment, you use different commands.

-----------------------------------------------
Resource group deployments with ARM templates
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-cli
-----------------------------------------------
This article describes how to scope your deployment to a resource group.
The article also shows how to expand the scope beyond the resource group in the deployment operation.

Azure CLI
```
az deployment group create \
  --name demoRGDeployment \
  --resource-group ExampleGroup \
  --template-uri "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.storage/storage-account-create/azuredeploy.json" \
  --parameters storageAccountType=Standard_GRS
```

Powershell
```
New-AzResourceGroupDeployment `
  -Name demoRGDeployment `
  -ResourceGroupName ExampleGroup `
  -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.storage/storage-account-create/azuredeploy.json `
  -storageAccountType Standard_GRS
```

When deploying to a resource group, you can deploy resources to:

 - the target resource group from the operation
   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#deploy-to-target-resource-group
   Deploy to target resource group.
   To deploy resources in the target resource group, define those resources in the resources section of the template. 

 - other resource groups in the same subscription ** or other subscriptions **
   
   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#scope-to-resource-group-in-same-subscription
   Scope to resource group in same subscription
   To deploy resources to a different resource group in the same subscription.
   Add a nested deployment and include the resourceGroup property. 

   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#scope-to-resource-group-in-different-subscription
   Scope to resource group in different subscription
   To deploy resources to a resource group in a different subscription.
   Add a nested deployment and include the subscriptionId and resourceGroup properties

 - any subscription in the tenant
   Scope to subscription
   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#scope-to-subscription
   To deploy resources to a subscription, add a nested deployment and include the subscriptionId property. 

 - the tenant for the resource group
   Scope to tenant
   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#scope-to-tenant
   To create resources at the tenant, set the scope to /. 
   Or, you can set the scope to / for some resource types, like management groups.
   The user deploying the template must have the required access to deploy at the tenant.

 - Deploy to multiple resource groups
   Target a resource group that is different than the one for parent template
   https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-to-resource-group?tabs=azure-powershell#deploy-to-multiple-resource-groups 
   You can deploy to more than one resource group in a single ARM template. 
   Use a nested or linked template.
   Within the deployment resource type, specify values for the subscription ID and resource group that you want the nested template to deploy to.
   You can deploy to 800 resource groups in a single deployment. 

** In all cases the user deploying the template must have access to the specified scope.

--------------------------------------------

To copy files to a storage account, the service principal for the service connection 
must be assigned either the following roles:

 - Storage Blob Data Contributor 
 - Storage Blob Data Owner


-------------------------------------------------------------------------
PT99-Q03: 

Arrange the actions in the correct order if you need to configure Helm and  
Tiller on the Azure Kubernetes Services (AKS) cluster which has RBAC enabled
and install the chart.

What is the correct sequence of the three commands below?

helm init
kubectl create
helm install


MY ANSWER TO PT99-Q03
--------------------------------------------------------------------------
(By ChatGPT)
heml init       << Initialize Helm and install Tiller on the AKS cluster
kubectl create  << Set up RBAC permissions for Tiller on the AKS cluster
helm install    << install the Helm chart on your AKS cluster
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q03
--------------------------------------------------------------------------
The author of the Video maintyains tha the correct sequnce is:

kubectl create
helm init
helm install
--------------------------------------------------------------------------

refs:

--------------
Install existing applications with Helm in Azure Kubernetes Service (AKS)
https://learn.microsoft.com/en-us/azure/aks/kubernetes-helm
--------------

Helm is an open-source packaging tool that helps you install and manage 
the lifecycle of Kubernetes applications. Similar to Linux package managers, 
such as APT and Yum, you can use Helm to manage Kubernetes charts, which are
packages of preconfigured Kubernetes resources.

This article shows you how to configure and use Helm in a Kubernetes cluster
on Azure Kubernetes Service (AKS).

--------------
Quickstart: Develop on Azure Kubernetes Service (AKS) with Helm
https://learn.microsoft.com/en-us/azure/aks/quickstart-helm?tabs=azure-cli
--------------

------------
ChatGPT
------------

To configure Helm and Tiller on an Azure Kubernetes Service (AKS) cluster
with RBAC enabled and then install a Helm chart, you should follow these 
steps in the correct order:

Initialize Helm and install Tiller on the AKS cluster: 
(This command initializes Helm on your local system and installs Tiller in the AKS cluster.)

> heml init

Set up RBAC permissions for Tiller on the AKS cluster:

```
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
```

These commands 
-1 create a service account for Tiller
-2 grant it cluster-admin privileges 
-3 patch the Tiller deployment to use the new service account.

Finally, you can use helm install to install the Helm chart on your AKS cluster.
Make sure you provide the appropriate chart name and values file if needed:

helm install <RELEASE_NAME> <CHART_NAME> [flags]

Therefore the correct sequence is:

heml init
kubectl create
helm install

-------------------------------------------------------------------------
PT99-Q01: 

A company has an ongoing issue for its code quality.
The code quality deteriorates because of the time constraints during 
developemnt of the code.
As a DevOp Engineer you need implement static code analysis.

During which phase should you implement static code analysis?

A01-1: Build
A01-2: Production Release
A01-3: Integration Testing
A01-4: Staging

MY ANSWER TO PT99-Q01
--------------------------------------------------------------------------
A01-1: Build
--------------------------------------------------------------------------

CORRECT ANSWER TO PT99-Q01
--------------------------------------------------------------------------
A01-1: Build
--------------------------------------------------------------------------

refs:

Microsoft Security Development Lifecycle (SDL)
https://learn.microsoft.com/en-us/compliance/assurance/assurance-microsoft-security-development-lifecycle

Various automated checks are also required and are built into the commit pipeline
to analyze code during check-in and when builds are compiled. 

The security checks used at Microsoft fall into the following categories:

**
1-Static code analysis: 
Analyzes source code for potential security flaws, including the presence of credentials in code.

Other Security Checks.

2-Binary analysis: 
Assesses vulnerabilities at the binary code level to confirm code is production ready.

3-Credential and secret scanner: 
Identify possible instances of credential and secret exposure in source code and configuration files.

4-Encryption scanning: 
Validates encryption best practices in source code and code execution.

5-Fuzz testing: 
Use malformed and unexpected data to exercise APIs and parsers to check for vulnerabilities and validate error handling.

6-Configuration validation: 
Analyzes the configuration of production systems against security standards and best practices.

7-Component Governance (CG): 
Open-source software detection and checking of version, vulnerability, and legal obligations.

--------------------------------------------------------------------------