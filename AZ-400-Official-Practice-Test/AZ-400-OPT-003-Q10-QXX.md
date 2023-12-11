# PT00-Q10 to Q??: 

### Question 10:

You are a developer at a softare development company.
Your company uses Azure Boards to manage the development backlog and it uses Azure Repos to 
store the codebase. Every code change in the main branch must be auditable, requiring a user 
story associated with the commits.

You need to implement a branch policy in the main branch for the audit policy.

Which policy should you implement?

- Check for comment resolution
- Limit merge types
- Require a minimum number of reviewers
- Check for linked work items

---

### Answer:
 - Check for linked work items

---

### Explanation:

You should implement the **Check for linked work items policy**.

This policy adds a warning in the PR status overview when it is not associated with any
work items from the project board. If this policy is set, developers are unable to merge
the PR when it is not associated with a WI.

This complies with the **company audit policy**.

You **should not** implement:

ThESE policies do not satisfy the **company audit policy** in realation to the linked WI to every PR. 

- Require a minimum number of reviewers:
This policy specifies the min number of reviewers on a PR under certain conditions.

- Check for comment resolution:
This policy ensures that comment on a PR are addressed before merging.

- Limit merge types:
This policy enables specific merge strategies for a branch i.e. fast forward, rebase, etc.


---

### References:

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)   

---

### Question 11:

Your company uses Azure Boards to support as part of an Azure DevOps Service project:

 - tracking features
 - user stories
 - tasks

As part of the **continuos flow process (CFP)**, you need to monitor how long it takes to 
complete a request to add a proposed user story.

Which **out-of-the-box (OOB) widget** should you add to the dashboard?

- Velocity
- Cycle Time
- Lead Time
- Burndown

---

### Answer:
 - Lead Time

---

### Explanation:

You should add the **Laed Time widget** to teh Azure Board.

This widget displays work items that have been closed in a specific timeframe for a single team.
The **lead time of a WI** is the time taken to close the WI after it was created.

- For a **CFP**, the **Laed Time** meausures how long a request takes from **creation** to **closure**.

- For a  **Sprint/Fixed period process** teh **LT** measures how long the work on a request takes from
  when it **begins** to when it is **completed**, that is from **active** to **closed**.

You **should not** use the widgets below.

- Cycle Time:
**This is not quite clear!**
it measure how long it takes to complete WIs from when the team begings to actively work on them.
The time is calculated from the start of one process to the start of the next process.

- Burndown:
The **Burndown chart** focusses on the remaining work within a specific period of time.

- Velocity:
The **velocity chart** helps to determine how much work a team can do **sprint-over-sprint**.

---

### References:

[Add widgets to a dashboard](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/add-widget-to-dashboard?view=azure-devops)  

[Out Of Box widget catalog](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/widget-catalog?view=azure-devops)   

[Lead Time and Cycle Time widgets](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cycle-time-and-lead-time?view=azure-devops)

[View and configure team velocity](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/team-velocity?view=azure-devops&tabs=in-context)  

[Configure a burndown or burnup widget](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/configure-burndown-burnup-widgets?view=azure-devops)  

---

### Question12:

Your organization uses the **Cumulative Flow Diagram (CFD)** widget to monitor 
the flow of work through a system as part of an Azure DevOps Services Project.

There is a large amount of **Work in Progress (WIP)**, which shows up as a 
bulge on the **CFD** in the exhibit. 

The project has four members.

You need to **decrese the WIP metric** following the best practices guidelines.

How many items should be in progress per each team member at any given time?

- four items
- five items
- one item
- no more than two items

---

### Answer:
- no more than two items

---

### Explanation:

The **WIP metric** meausres the amount fo work or the number of WI that are
actively being worked on. A large WIP exhibits usualkly as a vertical bulge 
on the CFD.

The best practices guidelines recommend **no more than two items in progress per team memeber**.
In this case: `4 * 2 = 8` is the revommended max number of WI.

However, **each member should not have only one item at any given time** 
as there is a possibility that the owrk on a WI may have to be stopped
and restarted intermittently. 

More than two WI per developer is not recommented as it would be more
sifficult to keep focus on any of them.

---

### References:

[Cumulative flow, lead time, and cycle time guidance](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/cumulative-flow-cycle-lead-time-guidance?view=azure-devops)  

---

### Question 13:

Your use Azure Boars as part of Azure DevOps Services to track work.

You use **Agile process** to create multiple WI including 

- user stories
- tasks
- bugs

You need to connect your Azure Board work items with **GitHub.com** so 
that you can **link GitHub commits and PRs** wit the WI on the Azure Board.

Which **two** authentication methods should you recommend to meet the 
requirements above?

- FIDO2 security key
- GitHub.com user account credentials
- Personal Access Token (PAT)
- OAuth
- user name and password

---

### Answer:

- GitHub.com user account credentials
- Personal Access Token (PAT)

---

### Explanation:

Different authentication methods are used depending on the type of GitHub.com
platform you want to connect to. In this scenario, you need to connect 
**to** the **GitHub.com platform which support two authetnication methods**. 
This means that the **Azure Boards App** must be authenticated to the 
**GitHub platofrm** in order for the **Azure Boards App** to have access to
the commit history of the corresponding repos!

- Personal Access Token (PAT):
You need to use the URL for your GitHub.com and the **PAT credentials from Azure Boards**
**which are recognized by GitHub.com**. This means that you create the PAT credentials
from the Azure DevOps Azure Boards portal with the URL to the repos on **GitHub.com**.
Then **GitHub.com** will trust the PAT provided by it to Azure Boards when the latter
tries to perform operations on GitHub.com such as, for example, reading the commit history
on a branch.

- GitHub.com user account credentials:
This authentication method may be used when yo want to connet to GitHub.com.
This is also **the preferred method to connect Azure Boards to GitHub.com!**

You **should not** use the following authentication methods.

- OAuth:
This method **would be the preferred authentication method of you wanted to connect**.
Azure Boards to **GitHub Enterprise Server**. 

How does this work? Not sure..
In this case you **register** the application **Azure Boards** on **GtiHub.com** as a **OAuth app**. 
Then your Azure Boards would have to provide the **ClientID** and **ServerSecret** for your registered 
OAuth app when it wants to perform oeration on your **GitHub Enterprise Server**. 

- FIDO2 security key:
The **Fast IDentity Online (FIDO) Alliance** helps to promote authentication standards
and reduce the use pf passwords as a form of authentication. **FIDO2** is the latest
standard that incorporates the web authentication **(WebAutthn)** standard. 
However, it is not an option in this scenario in order 
**to Authenticate Azure Boards with the GitHub platforms, either GitHub.com or GitHub Enterprise Server**.

- user name and password: 
do not use this method to authenticate applications

---

### Question 14:

Your organization uses Azure DevOps services to build and release 
modern, cloud-native applications.

You implement **Requirement Traceability Matrix (RTM)** in order to provide
end-to-end traceability by linking various objects, such as WI, branchen, builds
and releases.

You need to anlyse the code changes to identify the potentioan root cause of a 
test failure.

Which **requirement traceability type** should you use to meet the requirement?

- Bug traceability
- Source traceability
- Quality traceability
- Test failures

---

### Answer:
- Source traceability

---

### Explanation:

You should use **Source traceability** to analyze code changes in order to identify the 
potential root cause of a test failure. 

Based on the build or release pipeline, you can choose either of the following
views to see which code changes were committed.

- the timeline view
- the pipeline view

When you are trouble shooting test failures that occur consistently over a period of time,
it is important to trace it back to the original set of changes where the failure originated.
**Source traceability provide this information effetively**.

A **Requirement Traceability Matrix (RTM)** is a **document** which captures the technical 
details of the requirements for a given test scenario and its current state. It helps the
**testing team** to understand the level of testing that is performed for a given product.
It provides the tema with insight into **indicators** such as **the quality requirements**
or **readiness to ship** requirement.

You **should not** use:

- Bug traceability: 
[ it is not very clear what the following means..]
This provides **a way to track test failures and drive accountability within the team** so that 
**you can take remedial actions**. If you want to **associate bugs with test results**, you 
should visit the test report in a build or a release.

- Quality traceability:
This is to **ensure that user requirements meet the quality goals in the project**.
**Quality traceability** capures **requirements query** and **quality data**.
**Requirements query** captures the requirements, for example user stories in a current
iteration. **Qauality data** specifies the stage of the pipeline for which the requirement
is being traced.

- Test failures:
**Test analytics** provides test analytics for the following areas. 
 - builds 
 - releases 
 - test failures.
The **test failures report** provides a granula view of the top failing tests in the pipeline
along with the failure details.

---

### References:

[End-to-end traceability](https://learn.microsoft.com/en-us/azure/devops/cross-service/end-to-end-traceability?view=azure-devops)  

[Requirements traceability](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/requirements-traceability?view=azure-devops)  

[What Is a Requirements Traceability Matrix (RTM)?](https://www.wrike.com/blog/what-is-requirements-traceability-matrix/)  


---

### Question 15:

You use Azure Boards app for GitHub to integrate Azure Boards to your GitHub repos.
You use `#AB` mention to link from GitHub to Azure Board work items so that `#AB129`
should link to WI iwth ID=129.

After completing the proccess, you observe that the `#AB129` mention links to the 
correct work item. However, a few `#AB` mentions produce unexpected or insonsistent
results.

- The following do not link to the ocrrect WI: `#AB130`, `#AB131`, `#AB132`
- The following link to the ocrrect WI: `#AB133`, `#AB134`

You need to troubleshoot this issue.
What is the cause of the issue?

- GitHub might be unavailable owning to a infrastructure/network outage.
- Connectivity between GitHub and Azure Boards has been revoked or it has failed.
- Hosted XML definitions for the WI tyeps are old and need updating. 
- The GitHub Repo is connected to 2 or more projects in more than one Azure DevOps Organization.

---

### Answer:
The GitHub Repo is connected to 2 or more projects in mode than one Azure DevOps Organization.

---

### Explanation:

The GitHub Repo is connected to 2 or more projects in more than one Azure DevOps Organization.
When this happens there may be inconsistencies in the `#AB` **mentions** that **link from GitHub**
**to Azure Boards WIs**.

Assume that **the same GitHub Repo** is connected to the following Azure DevOp Organization/Boards:

- `dev.azure.com\OrgA`
- `dev.azure.com\OrgB`

Each project within its corresponding organization maintain their WIs and the teams 
of each organization can link their WI IDs to commits of the same GitHub Repo.
In this case it is possible that teams working in the two organizations may see liniked WIs that 
were created by the other team and therefore do not match the expected WI IDs in their own
Azure Board.

**There is not known workaround for this problem** and the **recommended solution** is to
connect a single GitHub Repo to a single Azure DevOps Organization/Board.

**The following cannot be causes for this particular issue.**

- GitHub might be unavailable owning to a infrastructure/network outage.
This may be the case only when you get the following message:
`Yor credentials are invalid, please remove the connection and create` 
`a new one with OAth to establish the connection`. 
To resolve this issue you should follow the instructions given in the message.

- Hosted XML definitions for the WI tyeps are old and need updating.  
If an Azure DevOps organization uses **Hosted XML process model** 
**to customize the work tracking experience** and you want to link to and view the 
GitHub link types from the Development section in the work item forms, then you 
will need to update the XML definitions for the Work Item Types.

- Connectivity between GitHub and Azure Boards has been revoked or it has failed.
If a connection that uses OAuth or PAT is broken the reources that should be exposed
through it will not be available. In order to resolve connection issues it may be 
required to recreate the connection.

---

### References:

[Install the Azure Boards app for GitHub](https://learn.microsoft.com/en-us/azure/devops/boards/github/install-github-app?view=azure-devops)  

[Connect Azure Boards to GitHub - Resolve connection issues](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops#resolve-connection-issues)  

[Link GitHub commits, pull requests, and issues to work items in Azure Boards](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)  

---

### Question 16:

Your company uses Azure DevOps Services. 
You are using GitHub Actions to trigger a run in Azure Pipelines.

You need to check out multiple repos in Azure Pipelines.
The YAML exhibit below has three checkout steps.

```
resources:
  repositories:
  - repository: MyRepo
    type: github
    endpoint: MyServiceConnection
    name: MyOrgOrUser/MyGitHubRepo
``- repository: MyBitbucketRepo
    type: bitbucket
    endpoint: MyBitbucketServiceConnection
    name: MyBitbucketOrgOrUser/MyBitbucketRepo

trigger:
- main

pool:
vmImage: 'ubuntu-latest'

steps:
- checkout: self
- checkout: MyRepo
- checkout: MyBitbucketRepo

-scirpt: dir $(Build.SourcesDirectory)

```

For each of the following statements.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | type: github represents teh GitHub Enterprise Server repository type |
| Yes | No  | checkout: self represents the repository that contains the pipeline YAML |
| Yes | No  | The source code will be checked out into a directory called s located in a subfolder of (Agent.BuildDirrectory) |

---

### Answer:

| Answer | Statement |
| ------ | ------------------------------------------------- |
| No     | type: github represents teh GitHub Enterprise Server repository type |
| Yes    | checkout: self represents the repository that contains the pipeline YAML |
| No     | The source code will be checked out into a directory called s located in a subfolder of (Agent.BuildDirrectory) |

---

### Explanation:

In Git terminology the term **checkout** refers to the act of **switching** betwenn different 
versions of a target entity. 

The **git checkout** command operates on three distinct entities:
- files
- commits 
- branches

**type: github**

represents the **GitHub.com** repository type and **not** the GitHub Enterprise Server repository type.
There are four possible types of repos in Azure DevOps Services:
 - Azure Repo Git ?
 - GitHub (type: github)
 - GitHub Enterprise (type: githubeinterprise)
 - Bitbucket Cloud ?

**checkout: self**
represents the repository that contains the pipeline YAML and this step causes the repo to be checked out.
If no other steps are specified, this is the default step of a YAM pipeline.
However, with **multiple steps** as it is in this scenario the `checkout: self` must be specified
in order to check out the repo where the YAML file is contained.

**The source code will be checked out into a directory called s located in a subfolder of (Agent.BuildDirrectory)**
Given that in this case multiple repositories are going to be checked out within the same YAML pipeline,
these will each be ckecked out into subfolders named after each repo in the `(Agent.BuildDirrectory)/s`
directory.

The source code is checked out in `(Agent.BuildDirrectory)/s` only when no **cheout** steps are specified
in the YAML Pipeline.

---

### References:

[Check out multiple repositories in your pipeline](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/multi-repo-checkout?view=azure-devops)   

[Use GitHub Actions to trigger a run in Azure Pipelines - Sprint 161 Update](https://learn.microsoft.com/en-us/azure/devops/release-notes/2019/sprint-161-update)  

[Git Checkout](https://www.javatpoint.com/git-checkout)  

---

### Question 17:

You r company uses Azure DevOps. 
You are using GitHub Actions with Azure Pipeliens.
You are trying to execute a workflow every time a Git commit gets pushed to main or
when a pull request is initiated.

You need to implement a solution.

How should you complete the given YAML code?
To answer selct the appropriate values from the drop down menus.

```
name: CI

# Run this workflow every time a commit gest pushed to main or a PR is opened on main.
on:
  push:
    branches:    
      OPTION-1 >> main <<
      OPTION-2 >> feature/* <<
    pull_request:
      OPTION-3 >> main <<
      OPTION-4 >> feature/* <<

jobs:
  build:
    name: Call Azure Pipeline
    runs-on: OPTION-5 >>Azurepipelines@v1<< | OPTION-6 >>ubuntu-latest<<
    steps:
    - name: Azure Pipeline Action
      uses: OPTION-7 >>Azurepipelines@v1<< | OPTION-8 >>ubuntu-latest<<
      with:
        azure-devops-project-url: https://dev.azure.com/organization/project-name
        azure-pipeline-name: 'First Pipeline'
        OPTION-9A >>azureSubscriptionEndpoint<< : OPTION-10A >>'$(System.DefaultWorkingDirectory)\TFC\$(ProjectName)'<<
        OPTION-9B >>azure-devops-token<< : OPTION-10B >>'${{secrets.AZURE_DEVOPS_TOKEN}}<<

```

---

### Answer:

```
name: CI

# Run this workflow every time a commit gest pushed to main or a PR is opened on main.
on:
  push:
    branches:    
      main
      
    pull_request:
      main 

jobs:
  build:
    name: Call Azure Pipeline
    runs-on: ubuntu-latest
    steps:
    - name: Azure Pipeline Action
      uses: Azurepipelines@v1
      with:
        azure-devops-project-url: https://dev.azure.com/organization/project-name
        azure-pipeline-name: 'First Pipeline'
        azure-devops-token : ${{secrets.AZURE_DEVOPS_TOKEN}}

```

---

### Explanation:

1. Use the **main** branch for both triggers `push` and `pull_request`. 
   This satisy the requirement that this pipeline should run when commits are pushed on the emain branch
   or when a PR is opened against the main branch.

2. `runs-on: ubuntu-latest` specifies that this pipeline should execute on the latest available 
    Ubuntu based VM on Azure DevOps infrastructure. This is one of the options available when 
    a pipeline is run from GitHub Actions.
    The other option `runs-on: Azurepipelines@v1` does not make any sense!

3. in the steps of the build job for this pipeline use the pipeline task **Azure/pipelines@v1** by specifying 
   `uses: Azure/pipelines@v1`. The deatis of **Azure/pipelines@v1** are found in the references to this 
   question.

  ```
  steps:
      - name: Azure Pipeline Action
        uses: Azurepipelines@v1
  ```

4. Use `azure-devops-token : ${{secrets.AZURE_DEVOPS_TOKEN}}` to provide a PAT token to the pipeline
   action **Azure/pipelines@v1** so that it can operate on Azure DevOps on the project and pipeline 
   specified as follows:
   
   ```
   azure-devops-project-url: https://dev.azure.com/organization/project-name
        azure-pipeline-name: 'First Pipeline'
   ``` 

   You will need to create the PAT value on Azure DevOps for GitHub Actions and store it as a secret
   on GitHub. Create the token on Azure DevOps so that it specifies the permnissions that the 
   GitHub Action  **Azure/pipelines@v1** in this pipeline needs.
   Then you take the token that has been crafted on Azure DevOps for your organizsation/project/pipeline
   and store it as a secret on GitHub.
   When the GitHub Action Workflow execute the pipeline on Azure DevOps the value  
   ` ${{secrets.AZURE_DEVOPS_TOKEN}}` is provided by GitHub to Azure DevOps so that the 
   GitHub Action Workflow is authenticated to Azure DevOps for the purpuse of running this
   action worflow.

The remaining wrong options.

5. The value `feature/*` would set the wrong branches. The requirement says that the pipeline 
   must trigger for pushes or PR on the main branch and not feature branches.

```
branches:    
      feature/*
    pull_request:      
      feature/* 
```

6. `azureSubscriptionEndpoint` is not an option of **Azure/pipelines@v1**. 
    Instead `$(azureSubscriptionEndpoint)` is the value of a custom pipeline variable named `azureSubscriptionEndpoint`.
    However, it is not required to create or use the value of such a variabnle in this scenario.

7. `$(System.DefaultWorkingDirectory)\TFC\$(ProjectName)` is also a value built in the pipeline
  from the values of `System.DefaultWorkingDirectory` and `ProjectName`. This is not required in
  this scenario.

```
with:
  azure-devops-project-url: https://dev.azure.com/organization/project-name
  azure-pipeline-name: 'First Pipeline'
  azureSubscriptionEndpoint : '$(System.DefaultWorkingDirectory)\TFC\$(ProjectName)'
```


---

[GitHub Action for Azure Pipelines](https://github.com/Azure/pipelines/releases)  
[Azure/pipelines@v1](https://github.com/marketplace/actions/azure-pipelines-action)  
This action enables you to trigger an Azure pipeline run right from inside an Action workflow.

[Use personal access tokens](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows)
A personal access token contains your security credentials for Azure DevOps. 
A PAT identifies you, your accessible organizations, and scopes of access. 
As such, they're as critical as passwords, so you should treat them the same way.
if you're working with third-party tools that don't support Microsoft or Microsoft Entra accounts
or you don't want to provide your primary credentials to the tool – use PATs to limit your risk.

[Azure and GitHub integration](https://learn.microsoft.com/en-us/azure/developer/github/?view=azure-devops)  
[Use GitHub Actions to trigger a run in Azure Pipelines - Sprint 161 Update](https://learn.microsoft.com/en-us/azure/devops/release-notes/2019/sprint-161-update)

---

### Question 18:

You have a GitHub private Repo for a library used by your organization.
This Repo is integrated with an Azure Boards project which is used to mage the project backlog.
You adopt a pull request and commit guidelines to automatically generate release notes.
Every two weeks you create a new git tag for this library followuing semantic versioning.

You need to define the best place to communicate with the library users to communicate the
changes in any specific version of teh library.

Where should you store the releas notes?

- GitHub releases
- Pull request description
- Work Item description
- Work Item acceptance criteria

---

### Explanation:

You should store the release notes in **GitHub releases**.
This makes it easy for the library users to see the changes in any specific version that is published 
under the related git tag. You can include also links to the library binary files and source code.

The remaining options do not apply.

The **Work Item acceptance criteria** specifies the requirements to fulfill in order to consider the 
WI **completed**.

The **Pull request description** or the **Work Item description** are for the details related to each
and not for the release notes as they would lack the required visibility to the target audience that 
si the consumers of the library. Istead you **could and should** include in the release notes 
**links to the WIs &/OR PRs** that contrubute to each release.

---

### References:

[About Releases - GitHub Docs](https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases)  

[About PRs - GitHub Docs](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)  

[Field descriptions for default and work item fields used in process templates](https://learn.microsoft.com/en-us/azure/devops/boards/work-items/guidance/work-item-field?view=azure-devops)  

---

### Question 19:

You work as a product owner for a project in Azure DevOps.
The project follows the Scrum process and Azure Repos, Azure Boards 
and Azure Puipelines are used for the project lifecycle.
The stakeholders want to receive reports about the project's progress.

You need to create a custom dashboard in Azure DevOps for the stakeholders.

Which chart widgets should you use for each requirement?
To answer drag the appropriate widget ot each requirement.
A widget may be used once, more than once or not at all.

- Lead Time widget
- Sprint Capacity widget
- Deplyment status widget
- Cycle Time widget
- Releae Pipeline Overview widget

| Widget  |  Statement |
| ------- | ------------------------------------------------- |
|  ?      |  Determine how long a WI takes from creation to completion |
|  ?      |  Estimate the team capacity in a given sprint |
|  ?      |  Show a consolidated view of the success rate of a deployment pipeline |



---

### Answer:

| Widget  |  Statement |
| ------- | ------------------------------------------------- |
|  Lead Time widget |  Determine how long a WI takes from creation to completion |
|  Sprint Capacity widget |  Estimate the team capacity in a given sprint |
|  Deplyment status widget |  Show a consolidated view of the success rate of a deployment pipeline |

---

### Explanation:

- Lead Time widget
This gives the stakeholders an estimation of how long it may take for a 
recently requested feature to be completed.
This means from **created** to **completed**.

- Sprint Capacity widget
This alloes the stakeholders to determine whether the team is currently caopable 
of working on all the user stories in the sprint.


- Deplyment status widget
It shows the status of the deployment and the test pass rate accross multuiple 
environments for a recent set of builds on a deployment pipeline.

The following two widget are not applicable to this question.

- Cycle Time widget
It shows how long a WI takes from **active** to **completed**.

- Releae Pipeline Overview widget
It shows the statuis of a release pipeline and its environment when the pipeline was executed.
It does not show teh success rate but only the current status.

---

### References:

[About dashboards, charts, reports, & widgets](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/overview?view=azure-devops)  

---

### Question 20:

Your organization wants to create a custom dashboard widget.
The proposed widget will use a combination of HTML, JavaScript and CSS.
You create a **extension's manifets vss-extension.json** in the home directory as shown below.

```
{
"manifestVersion": 1,
    "id": "tools",
    "version": "0.1.0",
    "name": "Fabrikam Tools",
    "publisher": "fabrikam",
    "description": "Awesome tools to help you and your team do great things everyday.",
    "targets": [
        {
            "id": "Microsoft.VisualStudio.Services"
        }
    ],

    ...
}
```

You need to add the follwoing information to the manifest.

- The extension uses version 3.0 APIs
- The extension does not support older versions

Which property should you add to the file **vss-extension.json**?

- dadges
- scopes
- baseUri
- demands

---

### Answer:
- demands

---

### Explanation:

The **optional Runtime property: demands**:

An array of demands (strings) listing the capabilities required by your extension.

For example, **api-version/3.0** indicates that your extension uses version 3.0 APIs,
and so can't run in older products that don't support this version. 

For more information, see the full list of demands.

[Extension manifest reference > Demands](https://learn.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#demands)  

Demands let you specify capabilities and other features required by your extension. 
You can use these demands to limit where your extension can be published or installed.
Demands get used by the Visual Studio Marketplace to list the products and environments 
your extension is compatible with.
This helps customers understand whether your extension works with their version of Azure DevOps.

The following options are nopt applicable to this question.

**Runtime properties**

- scopes
An array of authorization scopes (strings) listing permissions required by your extension.

For example, **vso.work** and **vs.code_write** indicates your extension needs read-only access
to work items and read/write access to source code (and related resource). 
Scopes are presented to the user when installing your extension. 
For more information, see the full list of [scopes](https://learn.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#scopes)  

Your extension can specify one or more scopes. 
Scopes control what resources can be accessed by your extension and what operations 
your extension is allowed to do with those resources.
The scopes you specify in your extension manifest are the scopes set on access tokens issued to your extension. 
If no scopes are specified, extensions are only provided access to user profile and extension data.

- baseUri
(Optional) base URL for all relative URLs specified by the extension's contributions.
For example: https://myapp.com/{{account.name}}/. 
This property should be left empty if your extension's contents are packaged with your extension.


[**Discovery attributes**](https://learn.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#discovery-attributes)

- dadges
Array of links to external metadata badges like TravisCI, Appveyor, and so on, from the approved badges sites.
[Supported Badge Services](https://learn.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#approvedbadges)  

Valid keys: 
`href`: Link the user navigates to when selecting the badge. 
`uri`: The absolute URL of the badge image to be displayed. 
`description`: Description of the badge, to be displayed on hover.


---

### References:

[Extension manifest reference](https://learn.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops)
Every extension has a JSON manifest file that defines basic information about the extension.
The file also defines how it can extend and enhance the experience.

[Add a dashboard widget](https://learn.microsoft.com/en-us/azure/devops/extend/develop/add-dashboard-widget?view=azure-devops)  

[Adventures with Azure DevOps: Create a Custom Dashboard Widget](https://mattruma.com/adventures-with-azure-devops-create-a-custom-dashboard-widget/)    

---

### Question 21:

Your organization uses Azure DevOps Services team projec tWikis to enhance developer communication.
You need to assign default permissions to a user named UserA so that they can edit the team project 
page.

Which security groups should you add UserA to as a team member?

- Project administrator
- Team administrator
- Readers
- Contributors

---

### Answer:
- Project administrator

---

### Explanation:
In Azure DevOps assign users to Security Groups in order to assgn to those
users the permissions of the Security Groups.

>The security group **Project administrator**: 
 provides the permissions to edit the Project Wikis **among others permissions**.
 For example, it provides the permission to **set the project-level notifications and alerts**
 and **creation of pages on the project Wikis**.

The following are not applicable in this case.

>The security group **Team administrator**: 
 Members of this SG **cannot edit the project Wiki pages**.
 They can perform action such as 
 **setting personal notifications / alerts**,
 **setting teams notifications / alerts**, 
 **viewing project Wikis**, 
 **viewing code wikis**, 
 **publishing code as wiki**, 
 **viewing the project page**,
 **navigating using the project pages**, 
 **request / provide feedback**, 
 **perform code search and work tracking**.

>The security group **Contributors**:
 **View project Wikis / Wikis code**, 
 **publish code wikis**, 
 **view project page**,
 **navigate from project page**,
 **request / provide feedback**, 
 **perform code search and work tracking**.

>The security group **Readers**:
**View project Wikis / Wikis code**, 
 **view project page**,
 **navigate from project page**,
 **request / provide feedback**, 
 **perform code search and work tracking**.

---

### References:

[About wikis, READMEs, and Markdown](https://learn.microsoft.com/en-us/azure/devops/project/wiki/about-readme-wiki?view=azure-devops)  

[Default permissions and access set for collaboration tools](https://learn.microsoft.com/en-us/azure/devops/project/wiki/wiki-readme-permissions?view=azure-devops)    

---

### Question 22:

Your company uses Azure DevOps services to manage development projects internally.

The company has drawn up an internal policy for creation of new projects 
in Azure DevOps services and it has established the following requirements.

1. Formal project methods which require a framework for process improvement should be used.
2. All records of decisions for change management should be audited anuualy by the company.

You need to choose a process model that allows you to plan and track Work Item Types (WITs)

Which process model should you use?

- Agile
- Scrum
- CMMI
- Basic

---

### Answer:
- CMMI

---

### Explanation:

**Capability Maturity Model Integration (CMMI) process model** is one of the 4 prpcess models
supported by **Azure DevOps services** or **Azure DevOps Server**.

**Azure DevOps services** refers to the online platform where organizations can manage multiple 
projects while **Azure DevOps Server** - more on this distinction si found below in the **References**.

The **Work Item Types (WITs)** to be used for **tracking** and **planning** work determine which
model process should be used within the organization as a default. In this scenario, given that 
the company has **strick guidelines in regard to compliance policies**, it is recommended that 
the *Capability Maturity Model Integration (CMMI) process model** is used.

The **Capability Maturity Model Integration (CMMI) process model** the following WITs are used to track work:

 - tests
 - feedback
 - code reviews
  - requirements
 - chage requests
 - tasks
 - bugs
 - risks

 The **purpose of the CMMI process model** is :
 
 1. to **assess the maturity** of a company's processes. 
 2. **provide guidance** on ways in which the company can improve processes and products. 
 3. **measure and manage risks**.


The remaining options do not apply to this question.

- Basic:
This process model is **suitable for a team to get started with**. 

It employes the following artifacts in order **to track work**:  
  - issues
  - tasks
  - epics


In the Bsic model: 
  - there are **not formal project methods** 
  - **it does not provide auditing** for records and decisions.

- Agile:
With the **Agile** and also with **Scrum** process model for projects 
**development and test activities are tracked separately**.

It employes the following WITs in order **to track work**:  
  - user stories 
  - bug (optionally)
  - tasks
  - a Kanban board
  - a Taskboard (optional)

In the Agile model:
  - **does not demand formal project methods**
  -  **it does not provide auditing** for records and decisions.

- Scrum:
The **Scrum process model** should be employed in the following two scenarios:
  - Your company is already using Scrum to manage projects.
  - Produck Backlog Items **(PBIs) and Bugs** are required to be tracked on a **Kanban board**.
  - PBIs may also be broken down into **tasks** on a **Taskboard**.

In the Scrum model:
  - **does not demand formal project methods**
  -  **it does not provide auditing** for records and decisions.

---

### References:

[Compare Azure DevOps Services with Azure DevOps Server](https://learn.microsoft.com/en-us/azure/devops/user-guide/about-azure-devops-services-tfs?view=azure-devops)  

 > **Azure DevOps services**
   The cloud offering, Azure DevOps Services, provides a scalable, reliable, and globally available hosted service. 
   It's backed by a 99.9% SLA, monitored by our 24/7 operations team, and available in local data centers around 
   the world.

> **Azure DevOps Server**
  The on-premises offering, Azure DevOps Server, is built on a **SQL Server back end**. 
  Customers usually choose the on-premises version when they need their data to stay 
  within their network. Or, when they want **access to SQL Server reporting services** 
  that integrate with Azure DevOps Server data and tools.

  Both offerings provide the same essential features and services, but Azure DevOps Services 
  offers the following added benefits:

  - Simplified server management
  - Immediate access to the latest and greatest features
  - Improved connectivity with remote sites
  - A transition from capital expenditures (servers and the like) to operational expenditures (subscriptions)

[About default processes and process templates](https://learn.microsoft.com/en-us/azure/devops/boards/work-items/guidance/choose-process?view=azure-devops&tabs=agile-process)    

[Understand CMMI process template artifacts](https://learn.microsoft.com/en-us/azure/devops/boards/work-items/guidance/cmmi-process?view=azure-devops)  

[Background to Capability Maturity Model Integration (CMMI)](https://learn.microsoft.com/en-us/azure/devops/boards/work-items/guidance/cmmi/guidance-background-to-cmmi?view=azure-devops)  

[Agile Essentials](https://www.agilealliance.org/agile-essentials/)  

---

### Question 23:

Your company uses Azure DevOps Services tp build and release cloud-native modern applications on Azure.

You wamt to use **Azure DevOps Release Notes Generator** to create Release Notes for Azure DevOps.
**Release Notes Generator** is **deployed as a Functiion App in App Service** and requires 
authentication to access the endpoint.

You need to set up a Webhook function to send the event to Azure DevOopa Release Notes Generator
function endpoint.

Which action setting should you configure to invoke the endpoint securely?

- HTTP header
- URL with HTTPS endpoint
- URL with HTTP endpoint
- Basic Authentication

---

### Answer:
- URL with HTTPS endpoint

---

### Explanation:

A **Webhook** provides a way to send the data that describes an event in the form of a JSON representation
to any service. In this case the service that needs to receive the event data is the 
**Azure DevOps Release Notes Generator** and it is required that this data is sent to this endpoint securely.

The  **endpoint** in this case uses **authentication** that is it is an authenticated endpoint. 
The **URL with HTTPS endpoint** employs **encryption** of the payload **to protect the authentication details**.

The remaining options do not apply in this question.

- URL with HTTP endpoint:
If the Webhook used this option the data would be sent **unecrypted** to the **service endpoint**.

- Basic Authentication:
With **Basic Authentication** it is required to provide authentication details in order to access 
a **service endpoint**. 
However, **Basic Authentication** by itself requires **no encryption** in transit of the 
authentication details. With Webhooks it is possible to use **Basic Authentication** with which the 
**payload contains the data related to the event and the authetication credentials** to authenticate
to the endpoint. 
When a **Webhook with Basic Authentication** is setup **HTTPS is required!** as it is discussed in the 
reference. The reason is to make sure that even if the **service endpoint requires BA** then the 
authetication details will always be **encrypted in transit** and never as plain text.

- HTTP header:
These are used in a HTTP requests to send to the endpoint additional data that should not be in the payload.
There are **authentication headers** which may be used to supply authetication credentials sucuh as, for example,
**Bearer Tokens**.

---

### References:

[Azure DevOps Release Notes Generator](https://github.com/azure-samples/azure-devops-release-notes/tree/master/)  

The generator is a function app containing a HTTP triggered function that creates a Markdown file whenever a new release is created in Azure DevOps, using Azure Blob Storage.

[Webhooks](https://learn.microsoft.com/en-us/azure/devops/service-hooks/services/webhooks?view=azure-devops)  
Webhooks provide a way to send a JSON representation of an event to any service. 
All that is required is a public endpoint (HTTP or HTTPS).
Only organization Owners or Project Collection Administrators can manage webhooks for an organization.
In **Azure DevOps Services** webhooks are managed in the tab **Project Settings > Service hooks**.

[Q: Can I send webhooks to non HTTPS endpoints?](https://learn.microsoft.com/en-us/azure/devops/service-hooks/services/webhooks?view=azure-devops#q-can-i-send-webhooks-to-non-https-endpoints)   

A: Yes. However, it's recommended that you only use HTTPS endpoints for your webhooks. Using HTTP means there is a the potential for private data being sent unencrypted. **This includes any authentication headers in your webhook**.

[Q: Can I use basic authentication when setting up a webhook that isn't HTTPS?](https://learn.microsoft.com/en-us/azure/devops/service-hooks/services/webhooks?view=azure-devops#q-can-i-use-basic-authentication-when-setting-up-a-webhook-that-isnt-https) 
A: No. You must use HTTPS when utilizing basic authentication on a webhook.

---

### Question 24:

Your company used Azure DevOps projects to build and release commercial cloud-native 
software applications. The team uses GitHub for software development and it uses 
Azure Boards to plan and track the work.

You want to use **automatically generated Release Notes** for your GitHub releases
instead of having to write them manually.

On **GitHub.com** you have created the **/release.yml** file in the **.github**
directory as shown below:

```
# .github/release.yml

changelog:
  exclude:
    labels:
      - ignore-for-release
    authors:
      - sarah
  categories:
    - title: Breaking Changes, v2
      labels:
        - Major-changes
        - breaking-change
    - title: New Features
      labels:
        - Minor-changes
        - enhancement
    - title: Other Changes
      labels:
        - "*"
```

You need to diagnose the output.
For each of the following statements, select Yes or No according to whether the 
statement is true or false.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | The **ignore-for-release label** excludes a PR from appearing in the automatically generated Release Notes |
| Yes | No  | The yml file specifies that PRs from all authors except Sarah are to be excluded from automatically generated release notes. |
| Yes | No  |  The **enhancement labels** will be considered for a PR and will be included in the automatically generated release notes.|


---

### Answer:

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | The **ignore-for-release label** excludes a PR from appearing in the automatically generated Release Notes. |
| No  | The yml file specifies that PRs from all authors except Sarah are to be excluded from automatically generated release notes. |
| Yes |  The **enhancement labels** will be considered for a PR and will be included in the automatically generated release notes.|

---

### Explanation:

```
changelog:
  exclude:
    labels:
      - ignore-for-release
    authors:
      - sarah

```

The excerpt of **.github/release.yml** above specifies that 

**exclide:/labels:/ ignore-for-release label1, lable2, label3**:
Excludes a PR that has the specified lable value from appearing in the auomatically generated RNs.

**exclide:/authors:/ sarah, otherAuthor1, otherAuthor2**:
Excludes a PR that has the specified author value from appearing in the auomatically generated RNs.
The second statement is false becase the given YAML causes only the PRs with author Sarah to be excluded
which is the opposite of what is specified in the second statement.

The label `- enhancement` causes PRs that are labeled with `enhancement` to be included 
in the automatically generated RNs.

You can also customize your automated release notes, using labels to create custom 
categories to organize pull requests you want to include, and exclude certain labels
and users from appearing in the output. You can also **create new categories** and list
the the PR lables that must be included in the automatically generated RNs.

---

### References:

[GitHub - Automatically generated release notes](https://docs.github.com/en/repositories/releasing-projects-on-github/automatically-generated-release-notes)   

[How to automate your release notes](https://cloudblogs.microsoft.com/opensource/2018/09/06/how-to-automate-software-release-notes/)  

---

### Question 25:

You are using the **Azure DevOps Service REST API 6.0 Service Hooks Services** to create 
a notification.

The code exhibit is the following:

```
 POST https://dev.azure.com/{organization}/_apis/hooks/testnotifications?useRealData={useRealData}&api-version=6.0
```

You check the status of the above request after some time.
It shows that the notification has been **dequeued**.

What is the current status of the notification?

- completed
- processing
- queued
- requestInProgress

---

### Answer:
- processing

---

### Explanation:

If the notification has been **dequeued**, it means that its **status** is **processing**.
The **consumer action** has not yet finished processing the notification.

The other options do not apply:

[NotificationStatus](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/notifications/create?view=azure-devops-rest-6.0&viewFallbackFrom=azure-devops-rest-6.0s#notificationstatus)   

### Note:


---

### References:

[Service hooks](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/?view=azure-devops-rest-6.0)  
The service hook publishers define a set of events. 
You create **subscriptions** based on an event and select the **service hook consumer and action to take** 
in response to that event from the publisher.

[Subscriptions - Create](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/subscriptions/create?view=azure-devops-rest-6.0&tabs=HTTP)  
`POST https://dev.azure.com/{organization}/_apis/hooks/subscriptions?api-version=6.0`

> [Notifications - Create](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/notifications/create?view=azure-devops-rest-6.0)
  Sends a test notification. 
  **This is useful for verifying the configuration of an updated or new service hooks subscription.**
  This means that this API can be use to generate artificial notifications in order to check 
  whether the subscriptions that have been set with any number of consumer work properly and
  process the event as planned.

  ```
  POST https://dev.azure.com/{organization}/_apis/hooks/testnotifications?api-version=6.0
  POST https://dev.azure.com/{organization}/_apis/hooks/testnotifications?useRealData={useRealData}&api-version=6.0
  ```

[NotificationStatus](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/notifications/create?view=azure-devops-rest-6.0&viewFallbackFrom=azure-devops-rest-6.0s#notificationstatus)   

**NotificationStatus**:

completed	        string  The request completed
processing	      string  The notification has been **dequeued** and has begun processing.
queued	          string  The notification has been queued
requestInProgress	string  The consumer action has processed the notification. The request is in progress.

**NotificationResult**:

filtered	        string The notification was filtered by the Delivery Job
pending	          string The notification has not yet completed

---

### Question 26:

An organization plans to integrate Azure DevOps with a wide variety of applications.

A developer uses **Service Hooks** for a specific consumer service on successful 
completion of a build process. The developer wants to track the diagnostics settings 
for troubleshooting event matching using the  **Azure DevOps Service REST API 6.0**
**Diagnostics API version 6.0**.

You need to implement a solution to meet the requirement.

Which **SubscriptionDiagnostics** diagnostic settings should you use?

- deliveryTracing
- evaluationTracing
- deliveryResults

---

### Answer:
- evaluationTracing

---

### Explanation:

The **Azure DevOps Service REST API 6.0** **Diagnostics API version 6.0** has two operations.

[Service Hooks > Diagnostics](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/diagnostics?view=azure-devops-rest-6.0)

- [Get](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/diagnostics/get?view=azure-devops-rest-6.0&tabs=HTTP)  
- [Update](https://learn.microsoft.com/en-us/rest/api/azure/devops/hooks/diagnostics/update?view=azure-devops-rest-6.0&tabs=HTTP)  


SubscriptionDiagnostics


Name	                  Type	                Description

deliveryResults	        SubscriptionTracing   Diagnostics settings for retaining delivery results. Used for Service Hooks subscriptions.
deliveryTracing   	    SubscriptionTracing   Diagnostics settings for troubleshooting notification delivery.
**evaluationTracing**	  SubscriptionTracing   **Diagnostics settings for troubleshooting event matching.**


---

### References:

[Service hooks events](https://learn.microsoft.com/en-us/azure/devops/service-hooks/events?view=azure-devops)

[Exercise - set up service hooks to monitor the pipeline](https://learn.microsoft.com/en-us/training/modules/automate-inspection-health/5-exercise-set-up-service-hooks-to-monitor-pipeline)  

In this exercise, you'll investigate Service Hooks.
This exercise is about how a release pipeline can communicate with other services by using **service hooks**.
By using service hooks, we can notify other applications that an event has occurred within Azure DevOps. 
We could also send a message to a team in Microsoft Teams or Slack.
We could also trigger an action in Bamboo or Jenkins.

Suppose the application that you want to communicate with isn't in the list of available **application hooks.**
In that case, you can almost always use the **Web Hooks** option as a generic way to communicate. 
**It allows you to make an HTTP POST when an event occurs.**
**So, if, for example, you wanted to call an Azure Function or an Azure Logic App, you could use this option.**



---

### Question 27:

Your company decides to integrate the **GitHub Enterprise Server** into their Azure DevOps Server CI/CD
pipeline.

You need to make sure that the connection bewteen **GitHub Enterprise Server** and the 
**Azure DevOps Server** is protected.

What should you choose?

- OAuth
- Windows Authentication
- A secured username & password
- Personal Access Tokens (PATs)

---

### Answer:
- OAuth

---

### Explanation:

**OAuth** is the **preferred authentication method between GitHub Enterprise Server and Azure DevOps**.
**OAuth** allows **unrelated servers and services** to safely allow authenticated access to their 
resources.

The other options cannot be applied to this question.

- Personal Access Tokens (PATs):

PATs are a better alternative to passwords that may be used to authenticate to Azure DevOps.
Hiowever, in this specific case this is not the preferred method.
With PATs the admin of teh Azure DevOps organization / project create a PAT from the 
Azure DevOps portal. In the process of creation of the PAT the admin provides the details
of the service/server that will make use of the PAT to call into Azure DevOps.
This process ivolves a manual authetication to this service / server and the specification
of the permission to associate with the PAT.
Finally, the Azure DevOps portal produces the PAT code that **should be treated as a secure code**
**to be stored safely on the server / service that calls into Azure DevOps**.
PAT usually have also a **expiration date**.

- Windows Authentication:
This is specific to **user authentication on the same AD Domain**.
It is **not appropriate to server to server authentication over the internet**.

- A secured username & password:
This kind of credential is only meant for human interaction and it is not particualrly secure.
It is **not appropriate to server to server authentication**.


---

### References:

[Connect Azure Boards to GitHub (cloud)](https://learn.microsoft.com/en-us/azure/devops/boards/github/connect-to-github?view=azure-devops)  

[About Azure Boards-GitHub integration](https://learn.microsoft.com/en-us/azure/devops/boards/github/?view=azure-devops)  

---

### Question 28:

Your Team uses a GitHub Repo to build a project. As part of the development process
UX designers need to **manage and version** screen mockups and Photoshops Documents 
(PSD) files in the same repository.

You need to recomment a solution to store the PSD files.
The solution must not have an impact on the rpository fetch and cloning performance or
change the current Git Workflow.

Whcih solution should you recommend?

- Azure Artifacts
- Git Large File Storage (LFS)
- Azure Blob sTORAGE
- OneDrive

---

### Answer:
- Git Large File Storage (LFS)

---

### Explanation:

**Git Large File Storage (LFS)** can be used to store large files such as PSDs, audio and video,
large datasets, large images and graphics into a Git Repo. The Git Repo actually stores only 
**references to teh files and not the files themselves**. The large files are stored on a
service that is more suitable to store large files while the Git Repo provides the functinality
to version them.

The other options are not suitable in this scenario.

- Azure Blob Storage
- OneDrive
These can bes used as **Storage** for teh large files. However, these are not directly integrated
with the git workflow or versioning.

- Azure Artifacts
This is used **to manage code packages repositories** such as private feeds from Npm, NuGet or Python 
packages.

---

### References:

[Git Large File Storage](https://git-lfs.com/)  


[Introduction to Azure Blob Storage](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)  

[Azure Artifacts overview](https://learn.microsoft.com/en-us/azure/devops/artifacts/start-using-azure-artifacts?view=azure-devops&tabs=nugettfs%2Cnuget%2Corgstorage)  

Azure Artifacts enables developers to share their code efficiently and manage all their packages from one place. With Azure Artifacts, developers can publish packages to their feeds and share it within the same team, across organizations, and even publicly. Developers can also consume packages from different feeds and public registries such as NuGet.org or npmjs.com. Azure Artifacts supports multiple package types such as NuGet, npm, Python, Maven, Cargo, and Universal Packages.

[Plan for SharePoint and OneDrive in Microsoft 365](https://learn.microsoft.com/en-us/sharepoint/plan-for-sharepoint-onedrive)  

---

### Question 29:

You are a DevOps consultant and you are helping a software development company to
migrate their codebase to Azure DevOps Repos. The company has remote development 
teams that work on different projects and with different features at the same time.
Some developer have limited internet connectivity, which requires them to work
offiline occasionally.

Which source control system should you recommend?

- Team Foundation Vesrion Control (TFVC)
- Git
- Subversion (SVN)
- Mercurial

---

### Answer:
- Git

---

### Explanation:

**Git allows developers to keep a local copy of the source code repo** and work on different 
features uisng branches. Being the repo local to their machines this would laso work well
in all cases with limited connectivity to the cenral Git Repo as it is the case in this scenario.
**Developers can work on their branches completely offline and need to be online only when they**
**need to synch their changes with thiose on the remote repos**.

The other options are not suitable in this scenario.

- Team Foundation Vesrion Control (TFVC):
This is a **cenralized version control system**. Its use case is for Repos that are 
**very large!**. In this cases it might be an alternative for Giot Repos as it allows 
the developer to only check out to their development machines the files they need to work 
on and not the whole repository as it is the case with Git Repos.
**This is not suitable in all cases whth limited connectivity to the TFVS server**.

- Subversion (SVN)
- Mercurial
These source control systems **are not supported by Azure Repos**.
In these case the source control system ought ot be changed to Git / TFVC before it 
is possible to migrate it to Azure Repos.


---

### References:

[Choosing the right version control for your project](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/comparison-git-tfvc?view=azure-devops)  

[Azure Repos Git Documentation](https://learn.microsoft.com/en-us/azure/devops/repos/git/?view=azure-devops)  

[What is Team Foundation Version Control?](https://learn.microsoft.com/en-us/azure/devops/repos/tfvc/what-is-tfvc?view=azure-devops)  

---

### Question 30:

You use **GitHub Desktop** to manage your GitHub puill request workflow effectively.
You are trying to authenticate your account from GitHub Desktop so that you can 
access your already existing resources on **GitHub.com**.

However, you receive the following error message:

```
info: [ui] [AppStore.withAuthenticatingUser] account found for repository: node - USERNAME (empty token)
```

What is causing the problem?

- You do not have a valid SSH key setup.
- You do not have adequate permissions to access the source code repository.
- You want to clone a source code repository which has existing submodules that you do not have access to.
- You cannot find the access token that GitHub.com created in the system keychain.

---

### Answer:
- You cannot find the access token that GitHub.com created in the system keychain.

---

### Explanation:

- You cannot find the access token that GitHub.com created in the system keychain.
`info: [ui] [AppStore.withAuthenticatingUser] account found for repository: node - USERNAME (empty token)`

In this scenario there is an **empty token** `USERNAME (empty token)`. This means that **GitHub Desktop**
**cannot find the relevant access token that it previously created in the system keychain**.
In order to correct this error you must **sign out of your GitHub Desktop, clear the cache and then**
**sign in again**.

The other options do not apply in this case.

- You do not have adequate permissions to access the source code repository.

[GitHub Desktop - Repository Not Found](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop#repository-not-found)  

This would be the cause of the problem if the error message was the following:
```
fatal: repository 'https://github.com/<user>/<repo>.git' not found
(The error was parsed as 8: The repository does not seem to exist anymore. 
You may not have access, or it may have been deleted or renamed.)
```
To troubleshoot, contact the person in your organization who administers permissions.

- You do not have a valid SSH key setup.
[GitHub Desktop - Could not read from remote repository](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop#could-not-read-from-remote-repository)
```
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
Please make sure you have the correct access rights and the repository exists.
```
This error means that you do not have a valid SSH key set up.
To troubleshoot, see:
[Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  

- You want to clone a source code repository which has existing submodules that you do not have access to.
[GitHub Desktop - Failed to clone](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop#failed-to-clone)  
```
fatal: clone of 'git@github.com:<user>/<repo>' into submodule path '<path>' failed
Failed to clone 'src/github.com/<user>/<repo>'. Retry scheduled
Cloning into '<path>'...
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
Please make sure you have the correct access rights
and the repository exists.
```
This error means that either the repository that you are trying to clone has submodules 
that you do not have access to or you do not have a valid SSH key set up.
If you do not have access to the submodules, troubleshoot by contacting the person who
administers permissions for the repository.

---

### References:

[Authenticating to GitHub in GitHub Desktop](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop)   

You can securely access your account's resources on GitHub Desktop by authenticating to GitHub.

---

### Question 31:

**This is the same as Q30 but the error message in one of the other options**.

You want to use **GitHGub Desktop 3.0 to manage GitHub Pull Request workflow effectively**.
You are trying to authenticate your account from GitHub Desktop in order to be able to access 
the existing resources on GitHub.com.

You receive the following error message:

```
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
Please make sure you have the correct access rights and the repository exists.
```

---

### Answer:

- You do not have a valid SSH key setup.
[GitHub Desktop - Could not read from remote repository](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github-in-github-desktop#could-not-read-from-remote-repository)
```
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.
Please make sure you have the correct access rights and the repository exists.
```
This error means that you do not have a valid SSH key set up.
To troubleshoot, see:
[Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  

---

### Explanation: 
refer to the **Explanation for Q30**.

---

### Question 32:

**Refer to Q28.**

Your company uses **Git Large File Storage (LFS) extension** for versioning large files.

Your team is working with large assest such as videos.
Concurrent edits of different files in Git repositories lead often to merge conflicts.

You need to solve this issue.
What should you do?

- Use the `git lfs unlock --force` command
- Use the `git lfs track --lockable` command
- Use the `git lfs fetch --include` command
- Use the `git lfs fetch --exclude` command

---

### Answer:
- Use the `git lfs track --lockable` command

---

### Explanation:

- Use the `git lfs track --lockable` command

In particular the argument: `--lockable` `-l`
Makes the paths 'lockable' meaning **they should be locked to edit them** 
and will be made read-only **in the working copy when not locked**.

This command allows developers to **lock their files when they are updating them** and as 
long as one develioper holds the lock other developers will not be able to edit those large
files.

**This solves the problem of concurrent edits and therefore the merge conflich that may arise.**

The other options do not apply in this case.

- Use the `git lfs unlock --force` command
With this command a developer can force out the lock on a file held by another developer.
This  might  be necessary when someone has forgotten to release their lock on a file.

- Use the `git lfs fetch --exclude` command (also -X)
**This command is typically used when you are configuring the CI/ build or tio run unit tests**
**and you want to exclude large files which are not necessary to the build or the test run**.
You can exclude a directory or a path pattern.

- Use the `git lfs fetch --include` command (also -I)
This allows to explicetely include a specifies path pattern.

---

### References:

[Manage and store large files in Git](https://learn.microsoft.com/en-us/azure/devops/repos/git/manage-large-files?view=azure-devops)   

[Git LFS Documentation](https://github.com/git-lfs/git-lfs/blob/main/docs/README.md)

#### Git LFS Unlock:
[docs/man/git-lfs-unlock.adoc](https://github.com/git-lfs/git-lfs/blob/main/docs/man/git-lfs-unlock.adoc)  
Removes the given file path as "locked" on the Git LFS server. 
Files must exist and have a clean git status before they can be unlocked. 
The `--force` flag will skip these checks.

`r <name>` `--remote=<name>`
Specify the Git LFS server to use. Ignored if the lfs.url config key is set.

`-f` `--force`
Tells the server to remove the lock, even if it’s owned by another user.

`-i <id>` `--id=<id>`
Specifies a lock by its ID instead of path.

`--json` 
Writes lock info as JSON to STDOUT if the command exits successfully. 
Intended for interoperation with external tools. 
If the command returns with a non-zero exit code, plain text messages will be sent to STDERR.

#### Git LFS Track:
[docs/man/git-lfs-track.adoc](https://github.com/git-lfs/git-lfs/blob/main/docs/man/git-lfs-track.adoc)  
Start tracking the given **patterns(s)** through Git LFS. 
The argument is **written to .gitattributes**. 
If no paths are provided, simply list the currently-tracked paths.

The gitattributes documentation states that patterns **use the gitignore pattern rules to match paths**. 
This means that patterns which contain asterisk (*), question mark (?), and the bracket characters 
([ and ]) are treated specially. 
To disable this behavior and treat them literally instead, use `--filename` or 
**escape the character with a backslash**.

`--lockable` `-l`
Make the paths 'lockable', meaning they should be locked to edit them, and will be made read-only
**in the working copy when not locked**.

`--not-lockable`
Remove the lockable flag from the paths so they are no longer read-only unless locked.

`--verbose` `-v`
If enabled, have git lfs track log files which it will touch. Disabled by default.

`--dry-run` `-d` **Disabled by default.**
If enabled, have git lfs track log all actions it would normally take 
(adding entries to .gitattributes, touching files on disk, etc) without performing any mutative
operations to the disk.

`git lfs track --dry-run [files]` 
also implicitly mocks the behavior of passing the `--verbose`, and will log in greater detail
what it is doing.

`--filename`
Treat the arguments as literal filenames, not as patterns. 
Any special glob characters in the filename will be escaped when writing the .gitattributes file.

#### Git LFS Fetch:
[docs/man/git-lfs-fetch.adoc](https://github.com/git-lfs/git-lfs/blob/main/docs/man/git-lfs-fetch.adoc)  

Download Git LFS objects at the given refs from the specified remote. 
See [_default_remote] and [_default_refs] for what happens if you don’t specify.

`--all:`
Download all objects that are referenced by any commit reachable from the refs provided as arguments. 
If no refs are provided, then all refs are fetched. This is primarily for backup and migration purposes.
Cannot be combined with --recent or --include/--exclude. 
Ignores any globally configured include and exclude paths to ensure that all objects are downloaded.

`--prune:`
Prune old and unreferenced objects after fetching, equivalent to running git lfs prune afterwards.

`--recent:`
Download objects referenced by recent branches & commits in addition to those that would otherwise be downloaded. 

`--include=<paths>` & `--exclude=<paths>`
[Include and Exclede](https://github.com/git-lfs/git-lfs/blob/main/docs/man/git-lfs-fetch.adoc#include-and-exclude)  

You can configure Git LFS to only fetch objects to satisfy references in certain paths of the repo
and/or to exclude certain paths of the repo, to reduce the time you spend downloading things you 
do not use.

In your Git configuration or in a .lfsconfig file, you may set either or both of 
lfs.fetchinclude and lfs.fetchexclude to comma-separated lists of paths. 
If lfs.fetchinclude is defined, Git LFS objects will only be fetched if their path matches one in that list.
if lfs.fetchexclude is defined, Git LFS objects will only be fetched if their path does not match one in that list. Paths are matched using wildcard matching as per gitignore(5).

Note that using the command-line options -I and -X override the respective configuration settings. 
Setting either option to an empty string clears the value.

---

### Question 33:

Your company uses Git source code versioning as part fo an Azure DevOps services project
to build and release mobile applications. Ypu have noticed that during teh execution of 
simple commands, such as `git commit`, `git fetch` the commands remain stuck for several 
minutes.

You decide to use **Scalar**.

Which four actionsa should you perform?
Each correct answer presents part of the solution.

- Enable `status.aheadBehind=true` to calculate how far ahead or behind
  your branch is compared to the remote-tracking branch

- Disable `status.aheadBehind=false` to remove the calculation of 
  how far ahead or behind your branch is compared to the remote-tracking branch

- Use the `git-repack` command

- Use the `core.fsmonitor` command hook to Watchman

- Use the `git gc --aggressive` command

- Disable autio-GC by setting `gc.auto=0`

- Disable writing the commit-graph during fetch vby setting `fetch.writeCommitGraph=false`

---

### Answer:

- Disable `status.aheadBehind=false` to remove the calculation of 
  how far ahead or behind your branch is compared to the remote-tracking branch
- Use the `core.fsmonitor` command hook to Watchman
- Disable autio-GC by setting `gc.auto=0`
- Disable writing the commit-graph during fetch vby setting `fetch.writeCommitGraph=false`

---

### Explanation:

With **Scalar** it is possible to **accelerate the Git Workflow** 
**irrespective of the size and shape of your Git Repo**.
It allows Git Config Settings to be modified in order to overcome performance issues
and bottlenecks.

- Disable autio-GC by setting `gc.auto=0`
This prevents Git commands from being blocked by **maintenance**, that is
the **Garbage Collection** that is built into Git.
he background maintenance keeps your Git object database clean.

- Disable writing the commit-graph during fetch vby setting `fetch.writeCommitGraph=false`
**Scalar ensures that the fetch step is run once about every 1h, which saves precious time**
**and makes sure that new objects are not downloaded while your git commands are executed**.

**Fetch in the background**
The fetch step runs git fetch about once an hour. This allows your local repository to keep
its object database close to that of your remotes. This means that the time-consuming part
of git fetch that downloads the new objects happens when you are not waiting for your command
to complete.

We intentionally do not change your local branches, including the ones in refs/remotes.
You still need to run git fetch in the foreground when you want ref updates from your remotes.
We run git fetch with a custom refspec to put all remote refs into a new 
ref namespace: refs/scalar/hidden/<remote>/<branch>. 
This allows us to have starting points when writing the commit-graph

- Disable `status.aheadBehind=false` to remove the calculation of 
  how far ahead or behind your branch is compared to the remote-tracking branch
This removes the calculation of how far ahead or behind your branch is compared to the 
remote-tracking branch. This message is frequently ignored, but can cost precious 
seconds when you just want to see your unstaged changes.

- Use the `core.fsmonitor` command hook to **Watchman**
If you are using the [GitHub Watchman](https://github.com/facebook/watchman)  
The **Watchman** watches files and records for changes and can also trigger actions such
as the rebuild of assets when matching files have changed.
The **hooks folder** in **.git** that is **.git/hooks** holds a few **Git Hooks** scripts.
These are executed **before of after Git Events**. 

In other words, by installong **Watchman** in your repo and by using `core.fsmonitor`
within Scalar: 

[Improve Git Repo performance with File System NMonitor](https://github.blog/2022-06-29-improve-git-monorepo-performance-with-a-file-system-monitor/)  
The Git file system monitor (FSMonitor) feature can speed up these commands by 
**reducing the size of the search**, and this can greatly reduce the pain of working
in large worktrees. 
For example, this chart shows status times dropping to under a second on three 
different large worktrees when FSMonitor is enabled!

---

The following options do not apply in this case.

- Enable `status.aheadBehind=true` to calculate how far ahead or behind
  your branch is compared to the remote-tracking branch
This would add additional time to the overall process and slow down your Git Workflow!

- Use the `git gc --aggressive` command
Cause the **Git Garbage Collector** to run more often and therefore it will 
slow down your Git Workflow!

- Use the `git-repack` command
[git gc --aggressive vs git repack](https://stackoverflow.com/questions/28720151/git-gc-aggressive-vs-git-repack)  
[git-repack](https://git-scm.com/docs/git-repack/2.8.6)
This command is used to combine all objects that do not currently reside in a "pack", into a pack. 
It can also be used to re-organize existing packs into a single, more efficient pack.
A pack is a collection of objects, individually compressed, with delta compression applied, stored
in a single file, with an associated index file.

***Packs are used to reduce the load on mirror systems, backup engines, disk storage, etc.** 
In this case it would not help with the issue of a developer who waits for minutes following the commands:
`git commit`, `git fetch`

---

### References:

[Introducing Scalar: Git at scale for everyone](https://devblogs.microsoft.com/devops/introducing-scalar/)  

[Git at Scale: Scalar! | Derrick Stolee's virtual talk at the Git London user group, July 2021.](https://www.youtube.com/watch?v=8iZqagosc5w)  

[Scalar Documentation](https://github.com/microsoft/git/blob/HEAD/contrib/scalar/docs/index.md)  

[Scalar](https://github.com/microsoft/scalar)  
Scalar is a tool that helps Git scale to some of the largest Git repositories. 
It achieves this by **enabling some advanced Git features**, such as:

- Partial clone: 
reduces time to get a working repository by not downloading all Git objects right away.

- Background prefetch: 
downloads Git object data from all remotes every hour, reducing the amount of time
for foreground git fetch calls.

- Sparse-checkout: 
limits the size of your working directory.

- File system monitor: 
tracks the recently modified files and eliminates the need for Git to scan the entire worktree.

- Commit-graph: 
accelerates commit walks and reachability calculations, speeding up commands like git log.

- Multi-pack-index: 
enables fast object lookups across many pack-files.

- Incremental repack: 
Repacks the packed Git data into fewer pack-file without disrupting concurrent 
commands by using the multi-pack-index. 

---

### Question 34:

You manage project in Azure DevOps Repos. The Developemnt team requires that at least
three team members (including the pull requester) review pull requests. 
All team members must approve the code changes on pull requests before it is merged
with teh master.

Which three actions should you perform?

- Set the minimum number of reviewer to three
- Set the minimum number of reviewer to two
- Enable the Reset all code reviwer votes option when new changes are pushed
- Enable the Allow requestors to approve their own changes options
- Enable Require a minimum nuner of reviewers options

---

### Answer:
### Explanation:

- Enable Require a minimum nuner of reviewers options
- Set the minimum number of reviewer to three
- Enable the Allow requestors to approve their own changes options

The reasons are pretty obvous just by looking at the requirements in the 
question.

The following options do not applyu in this case.

- Set the minimum number of reviewer to two
This is the dfault number when the `nable Require a minimum nuner of reviewers`
option is enabled.

- Enable the Reset all code reviwer votes option when new changes are pushed
This options enusre that new changes ot a PR are reviwed by already approved
reviewers.

---

### Question 35:

Your company is working with an **external team** to develp a checkout module
for your e-commenrce platform.

Your company uses **Azure Boards** to manage the platform backlog and 
**the external team** uses **Trello**.

You need to add new cards to the external team board when 
**your product team** creates new backlog items in Azure Boards.

This process should be as automatic as possible.

Which two actions should you perform?

- Grant access to Azure Devops in the Trello account
- Import CSV cards into Trello with Import2 Widzard
- Configure a Service Hook Subscription in Azure DevOps
- Install Trello integration from Visual Studio Marketplace
- Create a quey in Azure Board and export the work items as a CSV file.

---

### Answer:
- Grant access to Azure Devops in the Trello account
- Configure a Service Hook Subscription in Azure DevOps

---

### Explanation:

- Grant access to Azure Devops in the Trello account
This allows the Trello Account to subscribe to Azure Boards events that is to 
listen to/receive them from Azure Boards and Azure Boards to perform some 
actions on the Trello Board.
Then Azure Board will be able to create new Cards and lists on the Trello Board 
used by the external team.

- Configure a Service Hook Subscription in Azure DevOps
The service hook should be set up such that when the event of the creation 
of a new Backlog Item occurs in Azure Boards then a task is run such that 
it creates a new Card on the Trello Board.
In order to do so Azure Boards needs some kind of token to be used by this 
service hook. This token is created in Trello at the step above and will be
used by Azure Boards when the hook runs.

The remaining options do not apply in this case.

- Install Trello integration from Visual Studio Marketplace
This page conatains only a link to Micorsoft Docs that describe stet by step
how to configure Trello integration with Azure Boards.
There is no extension for Trello that can be installed into Azure Boards!

- Create a quey in Azure Board and export the work items as a CSV file.
This would work only for one-off jobs and would not be automatic!

- Import CSV cards into Trello with Import2 Widzard
This **Import2 Widzard** ios a 3rd-oparty tool that performs the import of 
CSV cards into Trello. It is a manual process therefore not suitable to this 
scenario.

---

### References:
 
[Create a service hook for Azure DevOps Services and TFS with Trello](https://learn.microsoft.com/en-us/azure/devops/service-hooks/services/trello?view=azure-devops)   

[Trello Integration](https://marketplace.visualstudio.com/items?itemName=ms-vsts.services-trello)  

[Send an email with work items](https://learn.microsoft.com/en-us/azure/devops/boards/work-items/email-work-items?view=azure-devops&tabs=browser)    

[Integrate with service hooks](https://learn.microsoft.com/en-us/azure/devops/service-hooks/overview?view=azure-devops)  

---

### Question 36:

A company decides to use a Git Repo as part of their DevOps solution.
You need to adopt a branching model for the main branch policy.

Which two options should you choose?

- Require automatic merging of the feature branches when a pull request is made
- Require automatic reviews when a pull request is created
- Require a stakeholder feedback to complete a pull request 
- Require a pull requerst to merge code

---

### Answer:

- Require a pull requerst to merge code
- Require automatic reviews when a pull request is created

---

### Explanation:

- Require a pull requerst to merge code
This prevents code from being merged into **main** by direct git push.
In order to merge code a PR is reaquired which promotes code review and discussion.

- Require automatic reviews when a pull request is created
This option makes usre that **reviews are performed in a timely fashion**.

The following options are not suitable in this scenario.

- Require automatic merging of the feature branches when a pull request is made

- Require a stakeholder feedback to complete a pull request 
Gathering feedback from a stakeholder is more appropriate **after building and testing**.

---

### References:

[Adopt a Git branching strategy](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)  

---

### Question 37:

A development team decides to replace their centralized version control system with Git.

As the concept of branching is new to teh team, you need to develop
a branching strategy that is easy to adopt and causes minimal disruption.

Which action should you perform to define a branching strategy?

- Keep long-running feature branches
- Commit changes to the main branch
- Use feature branches for features and bug fixes
- Keeps all features and bug fixes local until they are ready to merge in the main branch

---

### Answer:
- Use feature branches for features and bug fixes

---

### Explanation:

Use feature branches for features and bug fixes **to isolate work that is in progress**
**from a potentially releasable code**.

The other options do not apply in this case.

- Keeps all features and bug fixes local until they are ready to merge in the main branch
This defeats the purpose of moving to a decentralized version control system and will cause
problems on merging.

- Commit changes to the main branch
Commits are performed on **local repositories and not on the main branch**.
New code flows into teh main branch through the process of merging. 

- Keep long-running feature branches
This has always negative effects and normally results in many merge conflicts.
It is a bad branching strategy.

---

### References:

[Adopt a Git branching strategy](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)  

---

### Question 38:

A company decides to use Azure DevOps together with a Git repository.
The copany wants to use Git with a **trunk-based branching strategy**.

You need to ensure that code is delivered ot production safely.

Which four action should you perform and in which order?

- merge changes to the main branch
- create a build agent
- create a feature branch
- generate a pull request
- commit changes to the main branch
- commit and push the changes to the feature branch

---

### Answer:

1. create a feature branch
2. commit and push the changes to the feature branch
3. generate a pull request
4. merge changes to the main branch

---
 
### Explanation:

The essence of a **trunk-based branching strategy** is summarized in the \
sequence of these four actions.

1. create a feature branch
2. commit and push the changes to the feature branch
3. generate a pull request
4. merge changes to the main branch

The remaining options do not apply.

- commit changes to the main branch
Commits are performed on **local repositories and not on the main branch**.
New code flows into teh main branch through the process of merging. 

- create a build agent
Build agents are created as part of a CI pipeline and have nothing ot do with 
the definition of a **branching strategy**.

---

### References:

[Trunk Based Development](https://trunkbaseddevelopment.com/)   

[https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops](https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops)  

[Adopt a Git branching strategy](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-branching-guidance?view=azure-devops)  

---

### Question 39:

You are creating a **pull request policy** as part of Azure DevOps services in which a 
specified number of reviewers are required to approve tyhe code in your project with no 
rejections.

The following additional contitions must be met:

- PRs can complete successfully even if some of the code reviewers do not approve 
  as long as the minimum number of upvotes required is met
- Push request to the source branch will not reset votes.

How should you complete the **Azure CLI** command?

Select the appropriate options.

```
az policy approver-count create >> OPTION-1A | 2A | 3A << true \
--blocking true \
--branch main \
--creator-vote-counts true \
--repository-id SOME-GUID
>> OPTION-2A | 2B | 2C << false \
--output table
--

OPTION-1A: --allow-downvotes
OPTION-1B: --creator-vote-counts
OPTION-1C: --reset-on-source-push

OPTION-2A: --creator-vote-counts
OPTION-2B: --allow-downvotes
OPTION-2C: --reset-on-source-push

```

---

### Answer:

OPTION-1A: --allow-downvotes
OPTION-2C: --reset-on-source-push

```
az policy approver-count create --allow-downvotes true \
--blocking true \
--branch main \
--creator-vote-counts true \
--repository-id SOME-GUID
--reset-on-source-push false \
--output table
```


---

### Explanation:

`--allow-downvotes`:
 This policy allows downvotes. PRs can complete successfully even if some of the code reviewers 
 do not approve as long as the minimum number of upvotes required is met.

`--reset-on-source-push`:
Push request to the source branch will not reset votes.

---

### References:

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)  

[az repos policy approver-count](https://learn.microsoft.com/en-us/cli/azure/repos/policy/approver-count?view=azure-cli-latest) 

```
az repos policy approver-count create --allow-downvotes {false, true}
                                      --blocking {false, true}
                                      --branch
                                      --creator-vote-counts {false, true}
                                      --enabled {false, true}
                                      --minimum-approver-count
                                      --repository-id
                                      --reset-on-source-push {false, true}
                                      [--branch-match-type {exact, prefix}]
                                      [--detect {false, true}]
                                      [--org]
                                      [--project]
```

---

### Question 40:

You are creating **Azure DevOps CLI** to **create a merge strategy policy** for PRs.

You need to create a **semi-linear history** by replacing the source branch commits
onto the target branch and then create a merge commit.

How should you complete the code?
Select the appropriate option.

```
az repos policy merge-strategy create --blocking true \
--branch main \ 
--enabled >> OPTION-1A | 1B << \
--repository-id SOME-GUID \
--output table \
-->> OPTION-2A | 2B | 2C << true
```

OPTION-1A/1B: true / false

OPTION-2A: --allow-rebase
OPTION-2B: --allow-rebase-merge
OPTION-2C: --allow-no-fast-forward

---

### Answer:

OPTION-1A: true 
OPTION-2B: --allow-rebase-merge

```
az repos policy merge-strategy create --blocking true \
--branch main --enabled true \
--repository-id SOME-GUID \
--output table \
--allow-rebase-merge true
```

---

### Explanation:

`--branch main --enabled true`:
This applies the policy to the branch **main** and  **enables it**.

`--allow-rebase-merge true`:
This makes it possible to rebase the merge commits on top of the target branch 
and add a merge commit afterwards which creates a **semi-linear history**.

The remaining options do not apply to this case.

OPTION-2A: `--allow-rebase`
This allows **rebase and fast-forward** and **creates a linear history** on the target branch.
There will be no merge commits and the commits from a merged branch are replayed on top of the
target branch.

OPTION-2C: `--allow-no-fast-forward`
This allows for **basic merge without fast-forward**. 
It allows **to preserve the whole history from the feature and bug branches** onto the main branch.
It creates a **non linear history** but it is faithfull to the work that was done on the feature or
bug branches.

---

### References:

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)  

[az repos policy merge-strategy](https://learn.microsoft.com/en-us/cli/azure/repos/policy/merge-strategy?view=azure-cli-latest)  

```
az repos policy merge-strategy create --blocking {false, true}
                                      --branch
                                      --enabled {false, true}
                                      --repository-id
                                      [--allow-no-fast-forward {false, true}]
                                      [--allow-rebase {false, true}]
                                      [--allow-rebase-merge {false, true}]
                                      [--allow-squash {false, true}]
                                      [--branch-match-type {exact, prefix}]
                                      [--detect {false, true}]
                                      [--org]
                                      [--project]
```

---

### Question 41:

You manage a Azure Subscription which has appplications that were specifically
developed for different teams in youur company.

You made to be sure that every resource in this subscription contains a tag
that identifies the team that is responsible for each resource.

Which tool should you use to meet this **compliancerequirement**?

- a Chef server
- a resource group
- Azure Policy
- Role-Based Access Control (RBAC)

---

### Answer:
- Azure Policy

---

### Explanation:

**Azure Policy is a set of rules that rea used to ensure that the resources in a**
**subscription comply with these rules** and adhere to a specified configuration.
It is possible to create an Azure Policy that has a rule by which all resources
in the subscription or a specific resource group have a specific tag from a chosen
set.

The other options do not apply in this case.

- a Chef server
Chef is an **infrastructure automation tool** that can guarantee that 
reosurces are **in a desired state**. This may include the presence of a tag.

- a resource group
This is only a logical grouping and **tags** are not hinhereted down from the RG
to the resources in it.

- Role-Based Access Control (RBAC)
**RBAC** is only an access control strategy to access Azure Resources based on
the roles assigned to the agent that needs to access them.

---

### References:

[What is Azure Policy?](https://learn.microsoft.com/en-us/azure/governance/policy/overview)  
[Azure Policy Samples](https://learn.microsoft.com/en-us/azure/governance/policy/samples/)  

[Azure Marketplace - Chef](https://docs.chef.io/azure_marketplace/) 
[RBAC](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)  
[What is Azure Resource Manager?](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)  

---

### Question 42:

Your team has decided to make all projects private due to security concerns.
You were involved in developing sa project which now you must make private.

Which actions should you perform in Azure DevOps to make your project private?

- change the external guest access setting under security policies
- change the SSH authentication setting under application policies
- change the project visibility under the project overview tab
- change the allow public project settings under security policies

---

### Answer:
- change the project visibility under the project overview tab

---

### Explanation:

By **changing the project visibility under the project overview tab** to private the project 
will no longer publicly available.

The other options do not apply tio this case.

- change the allow public project settings under security policies

[Enable anonymous access to projects](https://learn.microsoft.com/en-us/azure/devops/organizations/projects/make-project-public?view=azure-devops#1-enable-anonymous-access-to-projects)

Before you can change a private project to a public project, 
you must enable anonymous access for your organization.

[Set the project visibility](https://learn.microsoft.com/en-us/azure/devops/organizations/projects/make-project-public?view=azure-devops#2-set-project-visibility)  

---

- change the external guest access setting under security policies
This setting is for **external users** who **do not have Azure AD indentities**.

[Add external users to your organization](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/add-external-user?view=azure-devops)  

Invite external users to your organization. 
If you access Azure DevOps via Microsoft Entra ID, you must add the identities
of those users to your Microsoft Entra ID. Doing so also grants the users more
privileges. 

---

- change the SSH authentication setting under application policies

This setting is a **network protocol** that is used **to connect to your code repository**.

[Use SSH key authentication](https://learn.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops)

You can connect to your Git repos through SSH on macOS, Linux, or Windows 
to securely connect with HTTPS authentication.
SSH public key authentication works with an asymmetric pair of generated encryption keys. 
The public key is shared with Azure DevOps and used to verify the initial ssh connection.
The private key is kept safe and secure on your system.

You must be a member of the either of the following two security groups: 
**Project Collection Administrators**  
**Project Administrators**  

for the organization that you want to invite external users to.

---

### References:

[Change project visibility to public or private](https://learn.microsoft.com/en-us/azure/devops/organizations/projects/make-project-public?view=azure-devops)  

---

### Question 43:

You use Git Repos to store source code and manage features as part of
an Azure DevOps services project in your company.

You need to set permissions for a user UserA so that they can perform
the following operations:

- create branches
- create tags
- mamange notes

Which **three security groups** cpould tou add UserA to?

- Contributors
- Project Administrators
- Release Administrators
- Build Administrators
- Readers

---

### Answer:

- Contributors
- Project Administrators
- Build Administrators

---

### Explanation:

You may add UserA to any of the following  security groups:
- Contributors
- Project Administrators
- Build Administrators

UserA would then be able to 
- create branches
- create tags
- mamange notes

The following do not apply.\

- Readers
This security group **lacks the permissions** to:
Contribute, Create branches, Create tags, and Manage notes.

[Default repository permissions](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops#default-repository-permissions)

- Release Administrators
[](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops&tabs=preview-page)  

[Security groups, service accounts, and permissions in Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops&tabs=preview-page)  
Release Administrators
Has permissions to manage all release operations.
Assign to users who define and manage release pipelines.

---

### References:

[Security groups, service accounts, and permissions in Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops&tabs=preview-page)  

[Set Git repository permissions](https://learn.microsoft.com/en-us/azure/devops/repos/git/set-git-repository-permissions?view=azure-devops)  

[Get started with permissions and access](https://learn.microsoft.com/en-us/azure/devops/organizations/security/about-permissions?view=azure-devops&tabs=preview-page)  

---

### Question Q44:

You use **Git repositories to store source code and manage features** as part of an 
Azure DevOps services project in your company.

You are a member of teh **Contributors** security group.

You need to **create git tags**.

Which**three name convenctions** should you consider?

- a name without ASCII control characters such as spaces and colons
- a name length which does not exceed 250 ACII characters
- a name length which does not exceed 40 hexadecimal characters
- a name without hyphens
- a name length which does not exceed 300 ACII characters

---

### Answer:
### Explanation:

- a name without ASCII control characters such as spaces and colons
- a name length which does not exceed 250 ACII characters
- a name length which does not exceed 40 hexadecimal characters

The convensions for Git tags are the following:
- a name without ASCII control characters such as spaces and colons, **tilde**
- a name length which does not exceed 250 ACII characters
- a name length which does not exceed 40 hexadecimal characters
However:
- lowercase chars and hyphens can be used

---

### References:

[Use Git Tags](https://learn.microsoft.com/en-us/azure/devops/repos/git/git-tags?view=azure-devops&tabs=browser)  

---

### Question 45:

You use Git for source code versioning for all yourprojects.

You need to **undo the changes made by a shared commit for one of the projects**
**and ensure that the original commit is not deleted**.

- git revert
- git reset
- git switch
- git checkout

---

### Answer:
### Explanation:

- git revert #commitID
This **undoes / reverses** the changes of `commitID` by **adding a new commit** and  
**without deleting teh original commit**.

The other options do not apply to this case.

---

- git checkout
You can use this command to **quickly discard the changes you have made on you local repo**.
This returns the source code to the last committed version.

--- 

- git switch
This **gets your commit out of Git into your working tree**.

[What's the difference between git switch and git checkout <branch>](https://stackoverflow.com/questions/57265785/whats-the-difference-between-git-switch-and-git-checkout-branch)  

the **switch** and **restore** commands were introduced to split the 
**checkout** command into two separate pieces:

1. "checking out a branch to work on advancing its history"
2. "checking out paths out of the index and/or a tree-ish to work on advancing the current history"

In other words, **checkout** does two different things and this release split each of those different
things into its own focused command.

```
git-checkout - Switch branches or restore working tree files
```

switch has some limitations: at the moment you can switch from any commit to <branch name>, 
however it's impossible to switch from <branch name> to a particular commit with a status 
of detached HEAD. 
So you need to use git **checkout 5efb** 
(where 5efb is an example of a hash reference to arbitrary commit)

--

- git reset

**Reverst a branch to its state in a previous commit**.
**It affetcs all files in the branch!**.
This command can be used with multiple flags.

`git reset #id --hard`:
This resets the branch to the commit #id **nd discards all changes made to the branch following this commit**.
That is these changes will no longer be in teh working tree and are lost!

`git reset #id --mixed`:
It does the same as with `--hard` **but it preserves the subsequent changes as unstaged**.
This is the **deafult** option!

`git reset #id --soft`:
It does the same as with `--mixed` **but it preserves the subsequent changes as staged & unstaged**.

---

### References:

[Azure Repos - Undo changes](https://learn.microsoft.com/en-us/azure/devops/repos/git/undo?view=azure-devops&tabs=visual-studio-2022)  

[What is the `git restore` command and what is the difference between `git restore` and `git reset`?](https://stackoverflow.com/questions/58003030/what-is-the-git-restore-command-and-what-is-the-difference-between-git-restor)  

---

### Question 46:

You use **Git Repos to store source code and mamage features** as part of a project
on Azure DevOps Services.

A user has added a **large binary file** into teh repository.
You need to remove the file in order to keep the rpository clean and lightweight.

Which **two commands** should you use?

- git push --force
- git revert
- git checkout
- git rebase

---

### Answer:
### Explanation:

- git rebase
- git push --force

To solve this problem:

1. ask your team to **stop pushing to the repo** that is freeze the history until the problem is solved.
2. **rebase** wirh `git rebase #SHA` where `#SHA` is the hash value of the commit you want to go back to.
   You can use `git log` to find the **SHA values** of recent commits.
3. Once you have been able to remove the offending file(s) use  `git push --force`.
   This forces your repository to **override the history on the origin**.

The offending commits and files will be permanenlty lost on the remote!


The following do not apply to this case.

- git revert
This does not remove commits and their contents from a repository.

- git checkout
This is only to restore the repo to a particular branch or files to a particolar versions.

---

### References:

[Learn how to remove a large binary from your Git history to manage the size of cloned repositories](https://learn.microsoft.com/en-us/azure/devops/repos/git/remove-binaries?view=azure-devops)  

[Git command reference](https://learn.microsoft.com/en-us/azure/devops/repos/git/command-prompt?view=azure-devops)   

---

### Question 47:

Company2 is a software company which has branch offices around teh world.

Each office can choose which source control system or service they use in their projects.
You have been hired to integrate these projects with Azure Pipelines.

You need to determine which source control services Company2 can use wirh Azure Pipelines.

Which **three source control services** can they use?


- CSV
- GitHub
- GitHub Enterprise
- Bitbucket
- Mercurial

---

### Answer:

- GitHub
- GitHub Enterprise
- Bitbucket

The following are the only source control systems supported by Azure DevOps Services Azure Pipelines:

- GitHub
- GitHub Enterprise
- Bitbucket **Cloud**
- **Azure DevOps Repos Git**

The following is only supported in **Azure Pipelines Classic**!

- **Azure DevOps Repos TFVC**
- Subversions (CSV)

The following options do nopt apply as are not supported by Azure DevOps Services.

- CSV
- Mercurial
- Bitbucket Server

---

### References:

[Supported source repositories](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/?view=azure-devops)  

[What is Azure Pipelines?](https://learn.microsoft.com/en-us/azure/devops/pipelines/get-started/what-is-azure-pipelines?view=azure-devops)  

---

### Question 48:

You are building an **automated test pipeline for a Java application** using **Azure Pipelines**.
Yoou create a task to run **code coverage** tests. 
However the results are not available in the test summary.

Which **two** actions should you perform?

- include a Publish code coverage task
- enable the code coverage tool in Visual Studio test task
- enable the code ocverage tool in a Maven task
- include a Shell script task to publish to **Coveralls**


---

### Answer:
### Explanation:

- include a Publish code coverage task
- enable the code ocverage tool in a Maven task

The **Publish code coverage task** publishes test a coverage summary generated in 
**Cobertura or JaCoCo** formats to Azure Pipelines. These are the code coverage 
summary formats supported by Azure Pipelines.

**Alternatively** by **enabling the code ocverage tool in a Maven task** you can achieve 
teh same result from within Maven, whcich can publish test cover results in the supported
formats.

The remaining options do not apply in this case.

- enable the code coverage tool in Visual Studio test task
This task can indeed publish code cover results to Azure Pipelines but only for **.Net**
not for Java applications as it is the case.

- include a Shell script task to publish to **Coveralls**
This is another service [COVERALLS](https://coveralls.io/)

---

### References:

[PublishCodeCoverageResults@1](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-code-coverage-results-v1?view=azure-pipelines)   

[](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/maven-v3?view=azure-pipelines&viewFallbackFrom=azure-devops)  

[ShellScript@2](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/shell-script-v2?view=azure-pipelines&viewFallbackFrom=azure-devops)  

[MSBuild@1 - MSBuild v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/msbuild-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

[COVERALLAS - API](https://docs.coveralls.io/api-introduction)  

---

### Question 49:

You use Azure DevOps services to build amd release software.
You need to **implement Dynamic Security Scanning** against a running web applicatiions
as part of the **CD pipeline**.

Which tool should you intergate with your CD pipeline?

- OSWAP ZAP
- SonarQube
- MendBold (formerly Whitesource)
- FindBugs

---

### Answer:
- OSWAP ZAP

---

### Explanation:

[Azure DevOps Pipelines: Leveraging OWASP ZAP in the Release Pipeline](https://devblogs.microsoft.com/premier-developer/azure-devops-pipelines-leveraging-owasp-zap-in-the-release-pipeline/)  

**OSWAP ZAP stands for Zed Attack Proxy by OSWAP**, **Open Worldwide Application Security Project**.
**ZAP** is an **extension** that allows to perform **Dynamic Security Scanning** against a running
application. It **requires a CD Pipeline** to be in place.
The extension **pretends** to be an attacker and it fiddles the web app with requests in  order to
identify possible vulerabilities.

The other options do not apply in this case.

- [MendBold (formerly Whitesource)](https://marketplace.visualstudio.com/items?itemName=whitesource.whiteSource-bolt-v2)  
This is a **Deopendency Scanner** and provides information on the dependencies that are consumed 
in your project. It provides details about their **vulerabilities and licencing issues**.
Azure DevOp Services integrates with MendBold, it **detects open source components used by your** 
**software without scannign your code**.
It **provides real-time allerts** on **vulnerabilities and licencing uissues** realted to 
**open source component**.

- SonarQube
[SonarQube extension for Azure DevOps](https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarqube-extension-for-azure-devops/)  
[SonarQube Extension for Azure DevOps Pipelines](https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarqube)
This is a **static code analysis** tool for applications written in any of the supported languages.
**Java, .Net C#, Kotlin, etc.**

- [FindBugs](https://findbugs.sourceforge.net/)  
This is a **static code analysis** tool for Java applications.

---

### Question 50:

Your company uses Azure DevOps Services to build and release **enterprise software**.
You use **Pull Requests code coverage** to measure the percentage of your code that 
si tested.

You create the following YAML file:

```
coverage:
  status:
    comments: on
    diff:
      target: 50%
```

You need to ensure that the YAML file will achieve the desired outcome.

For each of the following statements select Yeas or No.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | The details about coverage for each changed file will be posted as a PR comment |
| Yes | No  | The file provides code coverage only for the lines changed in a PR|
| Yes | No  | 50% represents the threshold value for a sucessful full coverage status to be posted |


---

### Answer:

| Yes | Statement |
| --- | ------------------------------------------------- |
| Yes | The details about coverage for each changed file will be posted as a PR comment |
| Yes | The file provides code coverage only for the lines changed in a PR|
| No  | 50% represents the threshold value for a sucessful full coverage status to be posted |

---

### Explanation:

```
diff:
  target: 50%
```

`diff:`
There are **two types of code coverager**:

1. **Full coverage**: for the entire code base.
2. **Diff coverage**: in the context of a Pull Request.
  Measures the test coverage of the code **added or changed** by the PR.

`comments: on`: 
**details about coverage for each file** will be posted as **PR comments**. 

`target: 50%`
It rerpesents the target threshold value for **diff coverage and not dull coverage** 
in order for a success status for the PR to be posted.

---

### References:

[Code coverage for pull requests](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/codecoverage-for-pullrequests?view=azure-devops)  

[codecoverage-yaml-samples](https://github.com/MicrosoftDocs/codecoverage-yaml-samples)  

---

### Question 51:

Your company uses Azure DevOps Services to build and release enterprise software.
You use **manual validation** to pause an Azure Pipelien Task and validate 
configuration settings before starting a computation-intensive task.

You have crerated the following YAML code:
You meed 5to ensure that the YAML file will achieve the desired outcome.

```
 pool:
   vmImage: 'ubuntu-latest'

jobs:
- job: WaitForValidation
  displayName: Wait For Validation
  pool: server
  timeoutInMinutes: 4320
  steps:
  - task: ManualValidation@0
    timeoutInMinutes: 2880
    inputs:
      notifyUsers: |
        jdoe@mycompany.com
      instructions: 'Please validate the build configuration and resume the build'
      onTimeout: 'resume' 
```

For each of the following statements select Yeas or No.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | jdoe@mycompany.com will be able to approve or deny the pipeline run. |
| Yes | No  | Users with teh View builds, Queue builds and Stop builds permissions can act on a manual validation |
| Yes | No  | The job will time out in 48 hours |


---

### Answer:

| Yes | Statement |
| --- | ------------------------------------------------- |
| Yes | jdoe@mycompany.com will be able to approve or deny the pipeline run. |
| No  | Users with the View builds, Queue builds and Stop builds permissions can act on a manual validation |
| No  | The job will time out in 48 hours |

---

### Explanation:

`notifyUsers: jdoe@mycompany.com`
This user will be able to approve or deny the pipeline run.
The **optional parameter** `notifyUsers` denotes the list of email addresses of users that will be notified
when the task runs. They will be able to approve or deny the pipeline run.

However, only users with **Queue builds permission** can act on a manula validation.
Users with **Stop builds and View builds permissions** **cannot perform** manual validation.

` timeoutInMinutes: 2880`
The **job** times out in 72 h and not 48 h.
The **2880** is the timeout in minutes for the **task**. 

- 1 h = 60 min
- 24 h = 1440min
- 48h = 2880 min
- 72h = 4320 min

---

### References:

[Use gates and approvals to control your deployment](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deploy-using-approvals?view=azure-devops)  

[ManualValidation@0 Task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/manual-validation-v0?view=azure-pipelines&viewFallbackFrom=azure-devops&tabs=yaml)  

[Security groups, service accounts, and permissions in Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions?view=azure-devops&tabs=preview-page)  

---

### Question 52:

Your company uses Azure DevOps Services to build and release software.
Your team uses **Azure Test Plans** to integrate automated test cases in its test plans
and run them as part of an Azure DevOps project.

UserA receices the error:
`You do not have sufficient permissio to trigger a release`.

You needd to troubleshoot this issue.

Which **four** permissions could you assign to UserA in the **Security menu**
of the release pipeline?

- create release
- edit release stage
- edit build quality
- queue builds
- manage deployments
- manage releases


---

### Answer:

- create release
- edit release stage
- manage deployments
- manage releases

---

### Explanation:

Pipeline permissions are permissions associated with pipelines in a Azure DevOps project. 
For a user to be able **to run automated tests fro Azure Test Plans**, the user can
either:

1. be assigned to teh security group **Project Contributor**
2. be assigned the **four permissions above**.

The remaining options do not apply.

- edit build quality
This permission enables users to add tags to a build.

- queue builds
This permission enables users to queue new builds.

---

### References:

[Run automated tests from test plans](https://learn.microsoft.com/en-us/azure/devops/test/run-automated-tests-from-test-hub?view=azure-devops)  

[Set pipeline permissions](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/permissions?view=azure-devops)  

---

### Question 53:

You are implementing **GitHub Actions** to **automate the development workflow** 
from withing GitHub. Your team si trying to use **Azure Command Line Interface**
**Azure CLI** in a GitHub Action Workflow.

You need to **establish an authentication method** that enables you to use the 
Azure CLI in a GitHub Action Workflow to be used.

Which **two** authetication methods could you use to 
**authenticate your login action** with Azure?

- Azure login action with OpenID conncet (OIDC)
- Azure login action with a srvice principal secret
- Azure login action with SAML 2.0
- Azure login action with Micorsoft Authentication Library (MSAL)

---

### Answer:
### Explanation:

- The 1st option: Azure login action with a srvice principal secret

In this case you **create a Service Pincipal in Azure AD** i.e. from the Azure Portal.
This **Service Pincipal** is an identity that is created to represent an application
in your Azure AD tenant. 

During the process of creation of this identity some tokens such as **Application ID**
and **application secret** are provided by Azure AD and are meant to be used by the 
application to authenticate to Azure AD as the Service Principal Identity above.

In this case the application that makes use of these credentials would be the Azure CLI
task used in the GitHub Action Workflow. The GitHub Action Workflow **provides means**
**to store the credentials** **Application ID** and **application secret** as secrets
and therefore to keep them safe from accidental leaks.

An user with permission to create secrets on the GitHub Workflow i.e. can store the 
**Application ID** and **application secret** in a one-off operation in that this user
will be the only one to actually know the values of these secrets. The other users such
as developers may make use of them in their Workflow referrenging to them through the 
labels givent to these secrects and therefore only indirectly. These users have therefore
no access to the values of this secrets and moreover these are never witten as such to 
any of teh Workflow logs.

- The 2nd option:  Azure login action with OpenID connect (OIDC)

**OpenID Connect (OIDC) with an Azure Service Principla using a Federated Identity Credential**.
 **OIDC** is an **authentication & authorization layer** build on top of **OAuth 2.0**.

 In this scenario, you require:
 
  1. a **Service Principal in Azure AD** withy the **Contributor role** on the Azure subscription.
  2. **this same Azure AD application** must be configured with **federated credentials** to trust
      tokens issued by GHitHub Actions to your GitHub Repo.
  3. a GitHub Action Workflow that requests GitHub to issue tokens to it and use them in its
     Login Action.  

In the GitHub Action of the Workflow the action with the **Azure Command Line Interface (Azure CLI)**
will then request an authetication token from GitHub and present this token together with the identity
of the Azure AD application of  **STEP-1** above to autheticate on Azure AD as this **Service Pricipal**.
**Azure AD** will trust the token issued by GitHub because of the **federation** to GitHub that was 
set up in **STEP-2**. At this point the login can succeed and the action will run under an identity that
has **Contributor role** on the Azure subscription.  

---

The remaining options do not apply.

- Azure login action with SAML 2.0 (Security Assertion Markup Language)
This authentication method is **not supported** by Azure.

- Azure login action with Micorsoft Authentication Library (MSAL)
 
 **MSAL** is **not a supported** as authentication method on Azure AD.
 It is not possible to use **MASL** in a GitHub Action with the **Azure Command Line Interface (Azure CLI)**
 in order to log in to an Azure AD tenant and thereofre gain access as a valid identity on a subscription
 under that tenant.

**MSAL** makes it posiible for code to interact with the **Micorsoft Identity Platform** and allows developers
to write simple code to: 

1. **authenticate users** 
2. **access secured Micorsoft Web APIs** such as **Micorsoft APIS** i.e. **Microsoft Graph** 
2. **access secured 3rd-party APIs** 

---

### Explanation:

[Azure and GitHub integration](https://learn.microsoft.com/en-us/azure/developer/github/?view=azure-devops)  

[What is GitHub Actions for Azure](https://learn.microsoft.com/en-us/azure/developer/github/github-actions)  

[Use GitHub Actions to connect to Azure](https://learn.microsoft.com/en-us/azure/developer/github/connect-from-azure?tabs=azure-portal%2Cwindows)  

---

### Question 54:

You use Azure DevOps to manage complex software development projects.

You want to **perform statistical analysis** and 
**visualize results into a chart to identify trends**.

You need to author **advanced queries with Kusto Query Language**.

What should you integrate with your DevOps pipelines?

- Azure Monitor Container Instances
- Azure Log Analytics
- Azure Data Explorer
- Azure Monitor Application Insignts

---

### Answer:
### Explanation:
- Azure Data Explorer

You can integrate **Azure Data Explorer** with Azure DevOps Pipelines!

[Azure Data Explorer - Pipeline Tools](https://marketplace.visualstudio.com/items?itemName=Azure-Kusto.PublishToADX)  

Azure Pipelines task facilitates an integration between Azure DevOps Pipeline 
(Build / Release) and Azure Data Explorer (ADX) databases. 

This extension includes 3 basic tasks:

1. Azure Data Explorer Command - Run Admin Commands against ADX cluster
2. Azure Data Explorer Query - Run Queries against ADX cluster and parse the results
3. Azure Data Explorer Query Server Gate - Agentless task to Gate releases depending on the query outcome

The content and functionality of the tasks can be taken from either:

- a git source control 
- build sources 
- build artifacts 
- inline the task. 

The tasks **authenticates with AAD App details (ID / Key)** 
either from variabes or an Azure DevOps Service endpoint.

---

The remaining options do not apply in this case.

- Azure Monitor Application Insignts

This step would be required if you wanted:
**to implement a mechanism that allows the continuous monitoring** 
**of your Azure DevOps release pipelines** throughout the complete
development lifecycle. 
The intergation of **Azure DevOps Release Pipelines** with 
**Azure Monitor Application Insights** allows you to create:

- alerts
- gates
- rollback deployments

--- 

- Azure Monitor Container Instances

[Container insights overview](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview)  
[Monitor container resources in Azure Container Instances](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-monitor)  

**Container insights** is a **feature of Azure Monitor** that monitors 
the **performance and health** of container workloads deployed to Azure 
or that are **managed by Azure Arc-enabled Kubernetes**. 

It collects **memory and processor metrics** and **logs** from :
- controllers 
- nodes
- containers 
- gathers container logs

You can **analyze** the collected data for the different components in your cluster
with a collection of views and **pre-built workbooks**.

---

- Azure Log Analytics

With **Azure Log Analytics** you can edit and run log queries from data collected by
**Azure Monitor** as logs.

---

### References:

[Azure DevOps Task for Azure Data Explorer](https://learn.microsoft.com/en-us/azure/data-explorer/devops)  
[Azure Data Explorer - Pipeline Tools](https://marketplace.visualstudio.com/items?itemName=Azure-Kusto.PublishToADX)  


[Overview of Log Analytics in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-overview)  
[Application Insights overview](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)  
[Azure Monitor overview](https://learn.microsoft.com/en-us/azure/azure-monitor/overview)  

---

### Question 55:

Your company uses Azure DevOps. 
You **integrate** a **cloud-hosted Jenkins Server** and a new Azure DevOps deployment.
The DevOps project is named Project1.

You need to perform **end-to-end load testing** under the following conditions:

1. Support multiple operating systems that run Java i.e. Windows, Linux, Mac, etc. 
2. Integration with Jenkins
3. No licencing costs

What should you use?

- PSScriptAnalyzer
- Pester
- JMeter
- WebLOAD

---

### Answer:
- JMeter

---

### Explanation:

Use **JMeter to run end-to-end load testing** for your Azure DevOps project.

**JMeter** satisfies the three conditions:

1. Support multiple operating systems that run Java i.e. Windows, Linux, Mac, etc. 
2. Integration with Jenkins
3. No licencing costs

It also support integration with several popular **Application Lifecycle Management Tools (ALM)**
such as:

- Visual Studio Team Foundation Services (VSTS)
- Jenkins

The remaining options do not apply in this case.
The details are inthe references.
However, in summary:

- PSScriptAnalyzer:
**PSScriptAnalyzer is a static code checker for PowerShell modules and scripts**. 
**It is not meant to run end-to-end load testing**.

- Pester
Pester is a testing and mocking framework for **PowerShell**.
**It integrates with Jenkins** but **it is not meant to run end-to-end load testing**.

- WebLOAD
**WebLoad is a full-featured enterprise-level load testing tool by RadView**. 
It is a licensed product therefore not free like JMeter!
---

### References:

[Customize a load test with Apache JMeter plugins and Azure Load Testing](https://learn.microsoft.com/en-us/azure/load-testing/how-to-use-jmeter-plugins?tabs=portal)  

[JMeter implementation for a load testing pipeline](https://learn.microsoft.com/en-us/azure/architecture/example-scenario/banking/jmeter-load-testing-pipeline-implementation-reference)  

[What are the best Performance Testing Tools?](https://techcommunity.microsoft.com/t5/testingspot-blog/what-are-the-best-performance-testing-tools/ba-p/367774)   

---

[Pester](https://gaunacode.com/pester-test-results-on-azure-devops)
[What is Pester?](https://pester.dev/docs/quick-start)   
Pester is a testing and mocking framework for **PowerShell**.
Pester provides a framework for writing and running tests. 
Pester is most commonly **used for writing unit and integration tests**, but
**it is not limited to just that**. 

**It is also a base for tools that validate whole**: 

- environments
- computer 
- deployments
- database configurations 
- and so on..

You can publish test results from common unit test frameworks to Azure DevOps so that they’re associated with a build.

[Azure DevIOps - Pester](https://pester.dev/docs/usage/test-results/#azure-devops)  
[Increase the success rate of Azure DevOps pipelines using Pester](https://www.logitblog.com/increase-the-success-rate-of-azure-devops-pipelines-using-pester/)  

---

[Cloud Load Testing - WebLOAD SaaS – Fully Managed Cloud Load Testing](https://www.radview.com/solution/cloud-load-testing/?gad_source=1&gclid=Cj0KCQiA4NWrBhD-ARIsAFCKwWtEn6HJU1B-CzRJXQq8ZeGeEL0UgCj3g0EGlCrEDX8qIxlAdXywH5waAowmEALw_wcB)  

[WebLOAD - Microsoft’s Visual Studio And Azure DevOps: Load Testing Replacement](https://www.softwaretestinghelp.com/webload-for-visual-studio-and-azure-devops-replacement/)  

Web Performance and Load Tests via Visual Studio Enterprise and Azure DevOps used to be a good option.
However, since Microsoft recently published that **Visual Studio 2019 will be the last version** 
**of Visual Studio with load testing functionality**.

**WebLoad is a full-featured enterprise-level load testing tool by RadView**. 
It has many similar features compared to LoadRunner or Visual Studio Load Tests while
it has a lower cost than LoadRunner. It is a pretty popular LoadRunner competitor and
has been gaining market in the last years.

---

[GitHub-PowerShell/PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer)  

[A Fundamental Tutorial of PSScriptAnalyzer](https://www.devopsschool.com/blog/a-fundamental-tutorial-of-psscriptanalyzer/)  

**PSScriptAnalyzer is a static code checker for PowerShell modules and scripts**. 
PSScriptAnalyzer checks the quality of PowerShell code by running a set of rules.
The **rules are based on PowerShell best practices** identified by the 
**PowerShell Team and the community**. 

It **generates DiagnosticResults (errors and warnings)** to inform users about
potential code defects and suggests possible solutions for improvements.

PSScriptAnalyzer ships with a collection of built-in rules that check various 
aspects of PowerShell code such as:

- The presence of uninitialized variables
- Use of PSCredential type
- Use of Invoke-Expression
- And many more


---

### Question 56:

Your company uses Azure DevOps.

You have a .Net Application written in C# an you use NUnit for unit testing.
The following are forur tests in your code:

```
namespace MyCompany.SomeNamespace
{
    
    public class TestClass
    {
        [Test]
        public void TestA()  {  ...   }

        [Test, Order(1)]
        public void TestB()  {  ...   }

        [Test, Order(2)]
        public void TestC()  {  ...   }
        
        [Test]
        public void TestD()  {  ...   }
    }
}
```

You need to make usre that the tests run in a specific order.
For each statement select Yes or No.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | TestB & TectC execute before TestA & TestD |
| Yes | No  | TestC always executes before TestB |
| Yes | No  | TestA always executes before TestD  |

---

### Answer:

| Answer | Statement |
| ------ | ------------------------------------------------- |
| Yes | TestB & TectC execute before TestA & TestD |
| No  | TestC always executes before TestB |
| No  | TestA always executes before TestD  |

---

### Explanation:

**In NUnit** the **Order attribute** specifies the **exact execution order** of the tests.
**The tests with the Order attribute (TestB and TectC) are run first!**
Among those with the Order attribute tests are run in **ascending order** thetrefore 
**TestB always before TestC**.
The tests **that do not specify a Order attribute** are run after those that do so.
However, those that do not specify an order are run randomly.

---

### References:

[Unit testing C# with NUnit and .NET Core](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-with-nunit)  

[Order unit tests](https://learn.microsoft.com/en-us/dotnet/core/testing/order-unit-tests?pivots=nunit)  
- Nunit
- XUnit
- MSTest

[NUnit -Order](https://docs.nunit.org/articles/nunit/writing-tests/attributes/order.html)

---

### Question 57:

Your company uses Azure DevOps. You are **automating the UI testing process**
for  your company. You have chosen **Selenium** to do so.

You have decided to **deply a Microsoft Hostet Agent in Azure to run the**
**tests on Selenium** for a Web App.

You need to implement a soulition using **Headless** mode.

What should you do?

- Configure Windows Agents to run as interactive process with auto-logon enabled
- Configure Windows Agents to run as interactive process with auto-logon disabled
- Enable Selenium to use popular browser and matching web-driver version to run the tests
- Create a Batch File with `%windir%\System32\tscon.exe 1 /dest:console` on  the remote computer
  to disconnect from the Remote Desktop


---

### Answer:
- Enable Selenium to use popular browser and matching web-driver version to run the tests

---

### Explanation:

In this scenario you have decided to **deply a Microsoft Hostet Agent in Azure to run the**
**tests on Selenium** for a Web App on Azure DevOps pipelines.

There are **two ways you can deploy your Web App with Selenium** on an Agent in a Azure DevOps pipeline.

1. Microsoft Hostet Agent 
2. Self-Hosted (Windows) Hostet Agent 

1. Microsoft Hostet Agent: 
In this case you can enable Selenium to use popular browser and matching web-driver version to run the tests.
This is **referred as running headless mode** as teh browsers will run without their UI.
This is ideal when you want to run UI **unattenmded UI tests** in CI/CD pipelines.
This way of testing UI is much faster when compared with the interactive alternative where the UI of 
the browser is used.

**Important**:

The following browsers **can run in headless mode**:
- **Microsoft Internet Explorer**
- **Chrome**
- **Firefox**

The following browsers **cannot run in headless mode**:
- Micorsoft Edge

---

The other optios do nto apply in this case:

- Configure Windows Agents to run as interactive process with auto-logon disabled
This does not enable Selenium to run in headless mode, which is a requirement in this scenario.

- Configure Windows Agents to run as interactive process with auto-logon enabled
**The interactive process with auto-log on** is used when UI tests are run for:
- Desktop Apps
- test that do not use a headless browser

- Create a Batch File with `%windir%\System32\tscon.exe 1 /dest:console` on  the remote computer
  to disconnect from the Remote Desktop

**This is not very clear > refer to the docs & refs for more..**  
You should perform this action when Selenium runs with a visible UI on a self-hosted Windows agent.
This **batch file prevents any UI tests that run on a remote computer to access the computer on which the**
**agent is running with auto-logon** (when using Remote Desktop). 


---

### References:

[UI test with Selenium](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/continuous-test-selenium?view=azure-devops)  

[Using Azure DevOps for UI Testing](https://learn.microsoft.com/en-us/appcenter/test-cloud/vsts-plugin)  

[UI testing considerations](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/ui-testing-considerations?view=azure-devops&tabs=mstest)  

[Microsoft-hosted agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&tabs=yaml)  

[Self-hosted Windows agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/windows-agent?view=azure-devops)  

---

### Question 58:

Your company uses Azure DevOps. 
You are running automated tests in the CI/CD pipeline.
You have decided to **use Visual Studio test task** to run tests.

**This enables you to automatically capture teh video of teh tests!**
**This video is then available as an attachment to the test results**.

You need to isolate a problematic test that casuses the host to crash.

How should you complete the XML code in teh given `*.runnsettings` file?

Select the appropriate options.

https://github.com/microsoft/vstest/issues/2375
```
<RunSettings>
  <RunConfiguration>
    <MaxCpuCount>4</MaxCpuCount>
  </RunConfiguration>
  <DataCollectionRunSettings>
    <DataCollectors>
      <DataCollector friendlyName="blame" enabled="True">
        <Configuration>
          <ResultsDirectory>...\build</ResultsDirectory>
      	  <CollectDump DumpType="**?????**" />
            <CollectDumpOnTestSessionHang TestTimeout="120000" HangDumpType="**?????**"/>
      	  <CollectDump>
        </Configuration>
      </DataCollector>
    </DataCollectors>
  </DataCollectionRunSettings>    
</RunSettings>
```

**The options**:

**??** : "full | mini | none"

---

### Answer: 
### Explanation:
**full** should be used in both places.

```
<DataCollectors>
      <DataCollector friendlyName="blame" enabled="True">
        <Configuration>    
          <ResultsDirectory>...\build</ResultsDirectory>
                    <CollectDump DumpType="full" />
                      <CollectDumpOnTestSessionHang TestTimeout="120000" HangDumpType="full"/>
                    <CollectDump>          

```

In `.runnsettings` the element **DataCollector** speciies the **settings of the diagnostic data adapterr**.
Since you want to **isolate a problematic test that causes the host to crash** you need to use
the `blame` **data collector feature**.

```
<DataCollector friendlyName="blame" enabled="True">
```

Running **this collector creates a output file: Sequence.xml in TestResults** and in this file
the oorder of execution of teh  test is captured up to the crash.

**There are three differnt ways to execute the blame data collector:**

1. Simply enable the Sequence.xml file but do not collect the dump
2. enable the Crash Dump when the Host crashes
3. enable the Hang Dump when the Host hangs and does not finish running teh test before its timeout

Moreover

`<CollectDump DumpType="full" />`: with full | mini
**enables the Crash Dump** with either the Full or the Mini Dump type.
**Full** ensures that the files contain the containts of teh **Vitual Memory** for a proccess.
**Mini** do not do the same but are far smaller files.
The recommendation is to use **full**.

`<CollectDumpOnTestSessionHang TestTimeout="120000" HangDumpType="full"/>`
The value `TestTimeout="120000"` is millisencods but it could also be something like 
`TestTimeout="10min"` and it sets the threshold for a test to be considered hanging.
Then the meaning of the attribute `DumpType="full | mini"` is a s described above.

**You should not use Mini in this case for the follwoing reason:**
You might not be able ot extract the necessary information and therefore debug teh problem.

**Do not use the value none** as this does not capture anything and simply **kills the processes on  the host**!
This would prevent any debugging at all.

---

### References:

[docs/extensions/blame-datacollector.md](https://github.com/Microsoft/vstest-docs/blob/main/docs/extensions/blame-datacollector.md)  

Certain execution sequences can crash the testhost process spawned by the vstest runner. However there is no easy way to diagnose such an aborted test run since there is no way to know what specific test case was running at the time. The "blame" mode in vstest tracks the tests as they are executing and, in the case of the testhost process crashing, emits the tests names in their sequence of execution up to and including the specific test that was running at the time of the crash. This makes it easier to isolate the offending test and diagnose further.

[VSTest](https://github.com/microsoft/vstest)
The Visual Studio Test Platform is an open and extensible test platform that enables running tests, collect diagnostics data and report results. The Test Platform supports running tests written in various test frameworks, and using a pluggable adapter model. Based on user-choice, the desired test framework and its corresponding adapter can be acquired as a vsix or as NuGet package as the case may be. Adapters can be written in terms of a public API exposed by the Test Platform.

The Test Platform currently ships as part Visual Studio 2019, and in the .NET Core Tools Preview 3.

[VSTest - Configure a test run](https://github.com/Microsoft/vstest-docs/blob/main/docs/configure.md)  

[Visual Studio Testing - Configure unit tests by using a .runsettings file](https://learn.microsoft.com/en-us/visualstudio/test/configure-unit-tests-by-using-a-dot-runsettings-file?view=vs-2022)  

[UI testing considerations](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/ui-testing-considerations?view=azure-devops&tabs=mstest)  

[GiotHub - vstests -CollectDumpOnTestSessionHang doesn't produce a dump file #2375](https://github.com/microsoft/vstest/issues/2375)  

---

### Question 59:

Your team intends to **release** a project following **semantic versioning**.  

The developer are not sure when to increment the **Major, Minor or Patch** versions.

You need to **help the developers to decide** which version they should increase
in any given situation.

Which version should a developer increase for each of the following?


| Major | Minor | Patch | Statement |
| ----- | ----- | ------| ------------------------------------------- |
| Major | Minor | Patch |  To introduce a new backward compatible feature |
| Major | Minor | Patch |  To deprecate a feature |
| Major | Minor | Patch |  To remove a deprecated feature |
| Major | Minor | Patch |  To release a bug fix |

---

### Answer:
### Explanation:

| XXXXX |  Statement |
| ----- | ------------------------------------------- |
| Minor |  To introduce a new backward compatible feature |
| Minor |  To deprecate a feature |
| Major |  To remove a deprecated feature |
| Patch |  To release a bug fix |

**Semantic Versioning (SemVer)**: read the references. 

The answer is self-explanatory.

To introduce a new backward compatible feature: no breaking change + new funtionality
To deprecate a feature: no breaking change bu the feature is still present
To remove a deprecated feature: breaking change
To release a bug fix: all safe

---

### References:

[Semantic Versioning 2.0.0](https://semver.org/)  
[npm SemVer Calculator](https://semver.npmjs.com/)  
[About semantic versioning](https://docs.npmjs.com/about-semantic-versioning)  

---

### Question 60:

Your team developed a **Python Library** and uses Azure DevOps Pilelines for its CI/CD.
The team uses a **Git Repo** and follows a **formalized commit message convention**.

You need to implement a solution that will **automatically generate** a **version number**
in the **realease pipeline** based on the commit history!
The version number **must follow the Semantic Versioning (SemVer)**.

Which **two** solutions would meet the requirements?

- GitVersion
- Release It
- GitKraken
- Semantic release
- Git version number bumper

---

### Answer:
### Explanation:
- GitVersion
- Semantic release

The **Semantic release** use the **AngularJS** commit message convenction as its default
but this can be changed through configuration. 

**Both tools can be set up so that they understandthe teams's message convention.**
Thy both intergate with Azure DevOps.

The remaining options do not apply in this case.

- Git version number bumper
- Release It
These do not satisfy teh requirement because are both **command line tools** that 
operate **interactively and not automatically** within a Azure DevOps Release pipeline.

- GitKraken
**This is a graphical Git client** with lost of features to make it easier for developer to 
interact with Git. It is not a tool that is meant to be integrated with Azure DevOps release
pipelines.

---

### References:

---

[GitTools/GitVersion](https://github.com/GitTools/GitVersion)
[GitTools](https://marketplace.visualstudio.com/items?itemName=gittools.gittools)  

Versioning when using Git, solved. GitVersion looks at your Git history and works
out the semantic version of the commit being built.

It works with most branching strategies but has been designed mainly around 
- GitFlow
- GitHubFlow (pull request workflow). 

The calculated version numbers can then be accessed through variables such as 
`$(GitVersion.NuGetVersion)` and `$(GitVersion.SemVer)`. 
It is also very configurable to allow it to work with most release workflows!

---

[git-version-bumper](https://github.com/AmmarCodes/git-version-bumper)

Do you go to check your git tags list, then search for the latest (larger) tag
before you create new bumped tag?
This cli tool will help you bumping the version by just selecting which part of
the version you want to increase.

---

[release-it](https://github.com/release-it/release-it)  

Use release-it for version management and publish to anywhere with 
its versatile configuration, a powerful plugin system, and hooks to execute 
any command you need to test, build, and/or publish your project.

Generic CLI tool to automate versioning and package publishing-related tasks:

- Bump version (in e.g. package.json)
- Git commit, tag, push
- Execute any (test or build) commands using hooks
- Create release at GitHub or GitLab
- Generate changelog
- Publish to npm
- Manage pre-releases
- Extend with plugins
- Release from any CI/CD environment

---

[semantic release](https://semantic-release.gitbook.io/semantic-release/)

semantic-release automates the whole package release workflow including: 
determining the next version number, generating the release notes, and 
publishing the package.

This removes the immediate connection between human emotions and version numbers,
strictly following the Semantic Versioning specification and communicating the
impact of changes to consumers.

---

[semantic-release-ado](https://github.com/lluchmk/semantic-release-ado)   

Semantic release plugin for automatic builds on Azure DevOps pipelines.

---

[GitKraken](https://help.gitkraken.com/)  

---

### Question 61:

Your company manages a Java library to integrate an e-commerce platform with
an **Enterprise Resource Planning (ERP)** solution.

The company wants to **improve the distribution of the library** 
**to allow their customers developers to download and update the library using Maven**.
The library **shoul not** be publicly accessible.

Which **three** solutions should you recommend?

- Azure Artifacts
- Nexus Repositories
- Maven Central Repository
- Packagist
- Artifactory

---

### Answer:

- Azure Artifacts
- Nexus Repositories
- Artifactory

- **Azure Artifacts**: 
It is a service to store and distributes software packages.
It supports all packages types and dependency management tools for all languages including Java and Maven.
You can create private feeds and grant access only to specific developers.
This is a requirement in this case.

- **Nexus Repositories**:
is a **self-hosted repository** solution for software packages.
It supports java and Maven packages formats.
It can manage tokens to grant access to private developers.

- **Artifactory**:
it is available as **self-hosted** and/or **as service** **universal repository manager for**:
- application apckages
- Linux Packages
- Docker images
It can manage tokens to grant access to private developers.

---

The remaining options do not apply to this case.

- Maven Central Repository: 
thisis the central repository for Maven packages and it is not private

- Packagist:
This is a Dependency Manager for PHP

---

### References:

[Get started with Maven packages and Azure Artifacts](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-maven?view=azure-devops)  


This quickstart will guide you through setting up your Maven project to connect to
Azure Artifacts feeds and publish and download your Maven packages.

---

[JFrog - Artifactory - Maven Repo](https://jfrog.com/help/r/jfrog-artifactory-documentation/maven-repository)

As a Maven repository, Artifactory is both  

- **source for artifacts needed for a build** and 
- **a target to deploy artifacts generated in the build process**

Maven is configured using a **settings.xml** file located under your Maven home directory 
(typically, this will be /user.home/.m2/settings.xml). 

---

[sonatype nexus repository oss](https://www.sonatype.com/products/sonatype-nexus-oss?topnav=true)   

- Universal repository support
- Billions of components served to developers weekly

Build and Distribute Software Fast:
- Build quickly and reliably: Publish and cache components in a central repository that connects natively to all popular package managers.
- Manage storage space efficiently: Automatically clean up old or unused artifacts from your repositories

Secure Your Software Supply Chain:
...

---

[packagist](https://packagist.org/)  
A Dependency Manager for PHP
 
---

---

### Question 62:

You manage a NuGet feed with a C# library in Azure Artifacts.

Users report that NuGet restore takes too long to run.

You investigate and siscover that there are too many package versions
in Azure Artifacts.

You need to **choose a solution that will remove old package versions**
in order to improve NuGet client performance.
**Your solution should minimize administrative overhead**.

Which solution should you choose?

- Unlist old packages versions
- add a retention policy
- set up a `nuget.org` as an upstream source
- delete old package versions

---

### Answer:
### Explanation:
- add a retention policy

By adding a **retention policy** to Azure Artifacts you can choose the max number of versions
to retain and for how long a version should be retained from the time it was last downloaded.
**This improves performance**.

The remainign options do not apply in this case.

- Unlist old packages versions
**This would only modify how packages are displayed to clients** i.e. to prevent the installation 
of certain package versions. For example, in order to prevent braking changes to reach consumers.
This is a manual process.

- delete old package versions
This would work but it is a manual process.

- set up a `nuget.org` as an upstream source
This is done only to make available one or more upstream sources through a single private feed
on Azure Artifatcs. This also store a copy of each packages that is downloaded from any upstream
locally to Azure Artifacts therefore eliminating the dependency on the upstream sources.

---

### References:

[Delete packages automatically with retention policies](https://learn.microsoft.com/en-us/azure/devops/artifacts/how-to/delete-and-recover-packages?view=azure-devops&tabs=nuget#delete-packages-automatically-with-retention-policies)  

The number of versions for each package hosted in your feed can grow quickly. 
To free up storage space, you can set up retention policies to automatically delete old packages.
If you want to retain a package indefinitely, you can promote it to a view. 
Packages promoted to a view are exempt from retention policies and will not be subject to deletion.
 To configure retention policies for your feed, please follow the steps below:


[Delete and recover packages](https://learn.microsoft.com/en-us/azure/devops/artifacts/how-to/delete-and-recover-packages?view=azure-devops&tabs=nuget)  

[Azure Artifacts Upstream Sources](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/upstream-sources?view=azure-devops)  

Using upstream sources, you can conveniently store packages from various sources in a single feed. 
This includes packages you publish and those you consume from external feeds and public registries
like NuGet.org, npmjs.com, Maven Central, and PyPI. 
Once you've enabled upstream sources, any package installed from these upstream sources, 
a copy will be automatically saved to your feed.

---

### Question Q63:

You have a **release pipeline for a Maven project** in Azure Pipelines.
You **use Maven to build and publish** the package.
The package source code is in a Git Repo hosted in Azure Repos.

You need to: 
**integrate the release pipeline with Azure Artifatcts feed managed by another team**.

The other team send you the feed repository configuration and **settings.xml** file
with the Maven credentials.

Which **four** action should you perform?
Arrange the actions in any orther.

- Upload the `settings.xml` file in Azure Pipelines library
- Copy the `settings.xml` file to the `~/.m2` directory in the pipeline
- include the feed repository configuration in the package `pom.xml` file
- commit the `settings.xml` in the package repository
- add a **download secure file task** in the pipeline
- add the credential in the package `pom.xml` file
- include the feed repository configuration in the pipeline build variables

---

### Answer:

- Upload the `settings.xml` file in Azure Pipelines library
- include the feed repository configuration in the package `pom.xml` file
- add a **download secure file task** in the pipeline
- Copy the `settings.xml` file to the `~/.m2` directory in the pipeline

The remaining options do not apply in this case.

- commit the `settings.xml` in the package repository
- add the credential in the package `pom.xml` file
- include the feed repository configuration in the pipeline build variables

---

### Explanation:

- Upload the `settings.xml` file in Azure Pipelines library

The **Azure DevOps Pipelines** allow you to securely store **secret files** that can be used in 
build or release pipelines.

- include the feed repository configuration in the package `pom.xml` file

This configure Maven to publish the package to the feed.

- add a **download secure file task** in the pipeline
This goes hand in hand with the first step and allows the release pipeline to consume the 
`settings.xml` with the secrets.

- Copy the `settings.xml` file to the `~/.m2` directory in the pipeline

In order to publish the package to the feed Maven needs to access the credentials that are
in the file `settings.xml` and this is possible when it is in the `~/.m2` directory.

---

The remaining options do not apply in this case.

- add the credential in the package `pom.xml` file
- commit the `settings.xml` in the package repository
Sensitive information should never be committed to a repository it is a security flaw.
Nor should be copied ot the file `pom.xml` for the package.

- include the feed repository configuration in the pipeline build variables
Maven uses the `pom.xml` file to **build and publish** a package you do not need to use the 
Azure Pipeline Variables for the build.  

---

### References:

[Get started with Maven packages and Azure Artifacts](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-maven?view=azure-devops)  

[DownloadSecureFile@1 ](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-secure-file-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

---

### Question 64:

You are the Tech Lead of a developemt team.
You plan to open-source modules of the .NET application as NuGet packages.

You need to **communicate ot the possible users of this package what is new**
**for each package release**. You **must diffentiate between releases that contain**
**breaking changes** and those that contain only security patches.

Which **two** actions should you perform?

- Use a Git Wprkflow based on feature branches
- Implement automated tests
- Generate a Changelog
- Follow Semantic Vesrioning (SemVer)


---

### Answer:
### Explanation:

- Generate a Changelog
- Follow Semantic Vesrioning (SemVer)

The remaining options do not apply to this case.

- Use a Git Wprkflow based on feature branches
- Implement automated tests

---

- Generate a Changelog:
This is a means to communicate changes to the consumers of a library.
This can be used in combination with a tool sucha as [release-changelog-builder-action](https://github.com/marketplace/actions/release-changelog-builder) to automate teh process of generating the changelog
entries from the commit messages.  

- Follow Semantic Vesrioning (SemVer)
This topic has already been discussed in depth by preceding questions and references.

---

The remaining options do not apply to this case.

- Implement automated tests
This is obviously off-topic in this question and would only guarantee some
quality to the library.

- Use a Git Wprkflow based on feature branches
This is only a common way library projects can try to promote the contribution
from the community by allowing them to create PRs and discuss the feature in 
a collaborative fashion which is suitable for open-source projects.
**A Git Workflow that implements this idea is indeed the GitHub flow**.

---

### References:

[.Net Architecture - Library guidance](https://learn.microsoft.com/en-us/dotnet/standard/library-guidance/)  
[NuGet - Package versioning](https://learn.microsoft.com/en-us/nuget/concepts/package-versioning)

[release-changelog-builder-action](https://github.com/marketplace/actions/release-changelog-builder)   

---

### Question 65:

**Your company maintains a Node.js SDK to integrate developers with its service**.
**Newer versions of this SDK are deployed manually to a File Transfer Protocol (FTP) Server**. 

The developers that use the SDK provided by the company **rarely update the SDK**
**because it is not integrated with npm or yarn**, which are the **dependency nanagement tools**
that they use.

You need to **publish the SDK in a Node.js package registry** to enable the developers
to install it from their dependency nanagement tools.
The SDK package **must be private and available only to these developers**.

Which **three** actions should you perform?

- configure a `.npmrc` file in the root of your Git repo
- run `npm ci` during the build pipeline
- create a new feed in **Azure Artifacts** to store the builds
- store the build packages in **Azure Storage**
- commit the `npm-shrinkmap.json` file in the root of your project
- run `npm publish` during the build pipeline

---

### Answer:

- configure a `.npmrc` file in the root of your Git repo
- create a new feed in **Azure Artifacts** to store the builds
- run `npm publish` during the build pipeline

---

### Explanation:

1. create a new feed in **Azure Artifacts** to store the builds
2. configure a `.npmrc` file in the root of your Git repo
3. run `npm publish` during the build pipeline

---

1. create a new feed in **Azure Artifacts** to store the builds
[Create a feed](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-npm?view=azure-devops&tabs=Windows#create-a-feed)    

This feed must be **compatible with Node.js package registry** in the sense that 
instead of publishing the Node.js SDK used by the company developers to a public
Node.js registry you will publish to this Azure Artifact feed.
This must be a **private feed** as requested. 

---

2. configure a `.npmrc` file in the root of your Git repo

[Set up your .npmrc files](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-npm?view=azure-devops&tabs=Windows#set-up-your-npmrc-files)  

We recommend using two .npmrc files. 
The first one should be located in the same directory as your package.json file. 
The second should be placed in the $home directory (Linux/macOS) or $env.HOME (Windows) to securely store your credentials. 
The npm client will then be able to look up this file and fetch your credentials for authentication. 
This enables you to share your config file while keeping your credentials secure.

[Setup credentials](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-npm?view=azure-devops&tabs=Windows#setup-credentials)

npm supports a single registry in your .npmrc file. Multiple registries are possible with scopes and upstream sources.

(**This was not well explained in the question**)
The file `.npmrc` is used to **store feed URLs and credentials fo registries**.
This file will contain the registry configuration to the feed.

---

3. run `npm publish` during the build pipeline

[Publish packages](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-npm?view=azure-devops&tabs=Windows#publish-packages)  

To publish your npm package, run the following command in your project directory: `npm publish`

When the command `npm publish` ececutes **it will read the resistry= property** in the file
`.npmrc` and publish the build to the right place.

---

The remaining options do not apply in this case.

- commit the `npm-shrinkmap.json` file in the root of your project

This file is used **published lockfile** to keep the same dependency versions for an immutable build.
It does not configure the `npm publish` to send teh build to the right registry.

- run `npm ci` during the build pipeline

This command coyuld be used to **download npm dependencies**, that are necessary to build 
your project, **more quikly** than the command `npm install` does.
However, this command **does not publish the build artifacts**.

- store the build packages in **Azure Storage**
This is obviously the worng solution.

---

### References:

[Get started with npm packages in Azure Artifacts](https://learn.microsoft.com/en-us/azure/devops/artifacts/get-started-npm?view=azure-devops&tabs=Windows)  

Using Azure Artifacts, you can **publish and download npm packages** from 
**feeds and public registries** like **npmjs.com**. 

This quickstart will walk you through the process of 

- creating your feed 
- configuring your project 
- publishing and downloading npm packages to and from your Azure Artifacts feed.

---

[npm-install](https://docs.npmjs.com/cli/v7/commands/npm-install)  

Install a package.

**Description**
This command **installs a package and any packages that it depends on**. 
If the package has 
- a `package-lock` 
- or an npm `shrinkwrap` file 
- or a yarn lock file 

the installation of dependencies will be driven by that, 
respecting the following order of precedence:

1. npm-shrinkwrap.json
2. package-lock.json
3. yarn.lock

---

[npm-ci](https://docs.npmjs.com/cli/v7/commands/npm-ci)  

This command is similar to `npm install`, except it's meant to be used in 
**automated environments** such as 

- test platforms 
- continuous integration & deployment 
- any situation where you want to make sure you're doing a clean install of your dependencies

npm ci will be significantly faster when:

1. There is a `package-lock.json` or `npm-shrinkwrap.json` file.
2. The node_modules folder is missing or empty.

In short, the main differences between using `npm install` and `npm ci` are:

1. The project must have an existing `package-lock.json` or `npm-shrinkwrap.json`.

2. If dependencies in the **package lock** do not match those in `package.json` 
   **npm ci will exit with an error instead of updating the package lock**.

3. **npm ci** can only install entire projects at a time: 
  **individual dependencies cannot be added with this command**.

4. If a `node_modules` is already present 
   it will be **automatically removed** before `npm ci` begins its install.

5. It will **never write** to `package.json` or any of the `package-locks`: 
   installs are essentially frozen.

---

[npm-shrinkwrap.json](https://docs.npmjs.com/cli/v7/configuring-npm/npm-shrinkwrap-json)  

**Description**

`npm-shrinkwrap.json` is a file created by **npm shrinkwrap**. 
It is **identical to** `package-lock.json` **with one major caveat**: 
Unlike `package-lock.json`, `npm-shrinkwrap.json` may be included when publishing a package.

The **recommended use-case** for `npm-shrinkwrap.json` is applications deployed through
the publishing process on the registry: for example, **daemons and command-line tools** 
intended as global installs or devDependencies. 

**It's strongly discouraged for library authors to publish this file**, 
since that would prevent end users from having control over transitive dependency updates.

If both `package-lock.json` and `npm-shrinkwrap.json` are present in a package root, 
`npm-shrinkwrap.json` **will be preferred** over the `package-lock.json` file.

For full details and description of the npm-shrinkwrap.json file format, 
refer to the manual page for package-lock.json.

---

### Question 66:

You have a **release pipeline** for an Azure DevOps project **with three stages**.

1. Development
2. QA
3. Production

<img src="./Q66-exhibit.png">

Which type of **pre-deployment trigger** is used to each stage?

1. Development : `After Release | After Stage | Manual Only`
2. QA          : `After Release | After Stage | Manual Only` 
3. Production  : `After Release | After Stage | Manual Only`

--

### Answer:

1. Development : `Manual Only`
2. QA          : `After Release` 
3. Production  : `After Stage`

---

### Explanation:

The **Development stage** is isolated in the sense that there is no other stage 
preceeding it **and it is not linked to any artifatcs** that is the cannot be any
releases that can be used to trigger deployment to the Development stage to. 
Ttherefore deploing to this stage (environment) can only be done with a `Manual Only` trigger.

The Artficats of a build preceed a QA stage and this preceedes the the Production stage.
This chain can be used to chain the corresponding deployments with **pre-deployment triggers**.

2. QA : `After Release` 

Will deploy teh artifacts to a QA Environment by running the QA stange when new artifacts 
are available in the Artifacts feed follwing a new build and release pipeline.

3. Production  : `After Stage`

This means that the samne artifacts are goimng to be deplyed to the Environment Production
only after the deployment stage to QA has run successfully.

---

### References:

[Release Triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/triggers?view=azure-devops)

This topic covers **classic release pipelines**. 

To understand triggers in YAML pipelines, see pipeline triggers.
[Specify events that trigger pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops)

Release triggers are an **automation tool to deploy your application**. 
When the trigger conditions are met, the pipeline will deploy your artifacts to
the **environment/stages** you already specified.

There exist different kinds of triggers.

1. Continuous integration (CI) triggers 
vary based on the type of repository you build in your pipeline.

- CI triggers in Azure Repos Git
- CI triggers in GitHub
- CI triggers in Bitbucket Cloud
- CI triggers in TFVC
- Pull request validation (PR) triggers also vary based on the type of repository.

2. Pull request validation (PR) triggers also vary based on the type of repository.

- PR triggers in Azure Repos Git
- PR triggers in GitHub
- PR triggers in Bitbucket Cloud

There are also special triggers.

- [Gated check-in](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/tfvc?view=azure-devops#gated)  
  is supported for TFVC repositories.

- [Comment triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml#comment-triggers)  
  are supported only for GitHub repositories

- [Configure schedules for pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/scheduled-triggers?view=azure-devops&tabs=yaml)  
  are independent of the repository and allow you to run a pipeline according to a schedule.

---

[Trigger one pipeline after another (classic)](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers-classic?view=azure-devops)  

Large products have several components that are dependent on each other. These components are often independently built. When an upstream component (a library, for example) changes, the downstream dependencies have to be rebuilt and revalidated.

In situations like these, add a pipeline trigger to run your pipeline upon the successful completion of the triggering pipeline.

---

There are also triggers that are specific to build pipelines that are **not classic**
therefore those entirely written in YAML.

[Specify events that trigger pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops)  

[Trigger one pipeline after another](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops)  

Previously, you may have navigated to the classic editor for your YAML pipeline and configured build completion triggers in the UI. While that model still works, **it is no longer recommended**. 

**The recommended approach is to specify pipeline triggers directly within the YAML file**.

**Build completion triggers** as defined in the classic editor have various drawbacks, 
which have now been addressed in pipeline triggers. 

**Important Limitation of Triggers in Classic Pipelines**:
For instance, there is no way to trigger a pipeline on the same branch as that of the 
triggering pipeline using build completion triggers.

---

[Define your Classic pipeline](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/define-multistage-release-process?view=azure-devops)  

---

### Question 67:

Your company has a **release process in Azure Pipelines** that contains a
**manual approval step** that **must occur two hours before deployment**.

The approval step notifies users inside the Azure DevOps portal.

The project stakeholder reports that deployments in which the approval takes
longer than two hours do not fail automatically.

You must ensure that if the approval takes longer than 2h the deployment fails.

What should you do?

- invoke a Azure function task for a pre-deployment gate
- set a timeout for the pre-deployment approval
- set the timeout after which gates fail
- update the pre-deployment trigger

---

### Answer:
### Explanation:
- set a timeout for the pre-deployment approval

**In Azure DevOps you can define three types of pre-deployment conditions**:

1. Triggers
2. Gates
3. Pre-deployment approvals

These **conditions** are evaluated and executed **before** a pipeline task is executed.

---

1. Triggers

are used to define either: 

- **when** a deployment stage should start when it is a manual deployment
- **when** a deployment stage should start **according to a schedule**
- to start a  deployment after an artifact has been release and published

---

2. Gates

are used to **check the state of exteranl services** or **Azure Monitor** alerts or health signals.
On the basis  of the outcome of these checks it is determined whether the stage tasks should be 
executed or not.

---

3. Pre-deployment approvals

these are **notifications to Azure DevOps users** in order to get them to check and approve or reject
the execution of a deployment stage.

---

In this specific case there is a **manual approval step** that is a **Pre-deployment approvals step**.
It is possible to **set a timeout** for a **pre-deployment approvals step**.
If the approval is not given by the people that are notified by the **pre-deployment approvals step**
it is also possible to specify that the condition is failed and the following step will not be 
executed as it is requeted.

--- 

The remaining options do not apply to this case.

- set the timeout after which gates fail

this does not apply because **gates are used to check the state of exteranl services** 
or **Azure Monitor** alerts or health signals.On the basis  of the outcome of these 
checks it is determined whether the stage tasks should be executed or not.
In this case there is not a gate but rather a **pre-deployment approval** that is a 
**manual approval process** that implies the notifi9cation of people and not the 
querying of the state of services or Azure Monitor.

**Gates and pre-deployment approvals are independent** in that you can have both
and each can also be set up with its own timeout.

- invoke a Azure function task for a pre-deployment gate
This can be done as a programmatic way to check a condition to determine whether a 
stage shoulod be executed. However, it doesn not apply to this case.

- update the pre-deployment trigger
?

---

### References:

[Use gates and approvals to control your deployment](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deploy-using-approvals?view=azure-devops)  

[Deployment control using approvals](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/approvals?view=azure-devops)  

[Deployment gates](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/gates?view=azure-devops)    

[AzureFunction@1 - Invoke Azure Function v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

---

### Question 68:

**Your company maintains a Node.js SDK in an Azure DevOps project**.

Your team uses **Azure Boards** to register the work items for the SDK.
You **automate the release pipeline** to **build and publish a Linux Node.js binary**
using an agent.

When the new SDK version is released, your team is asked to include a 
**release notes document** that contain a summary of the work items that are present
in this new release.

You need to **automate the release notes generation** process 
**using the least amount of administrative effort**.

Whcich **two** action should you perform?

- create a **managed query in Azure Boards**
- add a generate release notes task to the release pipeline
- install the Generate Release Notes **cross-platform extension** from the Visual Studio Marketplace
- install the Generate Release Notes extension from the Visual Studio Marketplace
- use an Azure Function task to the release pipeline

---

### Answer:
### Explanation:

- install the Generate Release Notes **cross-platform extension** from the Visual Studio Marketplace
- add a generate release notes task to the release pipeline

The details for the **Generate Release Notes cross-platform extension** are below in the references.
However, in summary this tool is used to make a diff of the work doen in a release by using the
same Azure Boards API that is used by Azure Boards.
**You can use a template to retrieve the related WIs and customize the release notes summary**

There is also an alternative to this:
- add a generate release notes task to the release pipeline  
[Generate Release Notes](https://marketplace.visualstudio.com/items?itemName=SpeedTechSolutions.GenerateReleaseNotes)  

This Extension is used to Generate Release Notes based on difference in Commits and WorkItems between two BuildId's

---

The remaining options do not apply in this case.

- install the Generate Release Notes extension from the Visual Studio Marketplace
This this referers tio the **Powershell** version in the reference below and it is **deprecated**.
This **would only work on Windows agents and not in Linux agents** as it is required in this case.

- create a **managed query in Azure Boards**
You may as well create the query in Azure Board that filters the WIs in the release.
However, it does not by itself create the RNs and therefore it requires additional 
administrative effort.
This option therefore vilolates one of the requitments of this question. 

- use an Azure Function task to the release pipeline
The same as the item above. You can do it but it requires far more administrative effort.

---

### References:

[Generate Release Notes (Crossplatform)](https://marketplace.visualstudio.com/items?itemName=richardfennellBM.BM-VSTS-XplatGenerateReleaseNotes)  

This task generates a release notes file based on a user defined Handlbars template. 
**It can be using inside any Azure DevOps Classic Build, Classic Release or Multistage YAML Pipeline**.

The data source for the generated Release Notes is the Azure DevOps REST API's comparison calls that are also used by the Azure DevOps UI to show the associated Work items and commit/changesets between two builds/releases. Hence this task should generate the same list of work items and commits/changesets as the Azure DevOps UI, though it attempts to enrich this core data with extra information where possible.

---

[(deprecated) Generate Release Notes Build Task (PowerShell)](https://marketplace.visualstudio.com/items?itemName=richardfennellBM.BM-VSTS-GenerateReleaseNotes-Task)  

---

[Generate Release Notes](https://marketplace.visualstudio.com/items?itemName=SpeedTechSolutions.GenerateReleaseNotes)  
This Extension is used to Generate Release Notes based on difference in Commits and WorkItems between two BuildId's


---

[Define a work item query in Azure Boards](https://learn.microsoft.com/en-us/azure/devops/boards/queries/using-queries?view=azure-devops&tabs=browser)  

[AzureFunction@1 - Invoke Azure Function v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-function-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

---

### Question 69:


Your company moves to development to Azure DevOps.
**The build jobs rely on external devices**.

You need to **build a secure pipeline by monitoring the health signals from external devices**.

What should you do?

- enable pre- and post- deployment release gate
- use Azure REST API to send emnail alerts
- use qustomized queries with Azure Monitor
- add build pipeline devices to an availability set

---

### Answer:
- enable pre- and post- deployment release gate

This option allows the build process to monitor the health of external devices
that may be needed before or after the build is finished.

Gates are used to **check the state of exteranl services** or **Azure Monitor** alerts or health signals.
On the basis  of the outcome of these checks it is determined whether the stage tasks should be 
executed or not.

---

The remaining options do not apply in this case.

- add build pipeline devices to an availability set
**Availability set** are used to ensure that **downtime is minimized**. 

- use Azure REST API to send emnail alerts
This is a set of CRUD service endpoints and does not apply here.

- use qustomized queries with Azure Monitor
Azure monitor may be used to quuery **application data and logs** but also **performance metrics**
from infrastructure within Azure. The **nable pre- and post- deployment release gate** above has 
this built into it. 

---

### References:

[Deployment gates](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/gates?view=azure-devops)

Gates allow automatic collection of health signals from external services and then promote the release when all the signals are successful or stop the deployment on timeout. Typically, gates are used in connection with incident management, problem management, change management, monitoring, and external approval systems.

Some common use cases for deployment gates are:

- Incident management
- Quality validation
- Security scan
- User experience relative to baseline
- Change management
- Infrastructure health

---

[Availability sets overview](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview)  
[Availability options for Azure Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/availability)  

[What is an availability set?](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview#what-is-an-availability-set) 

Availability sets are logical groupings of VMs that reduce the chance of correlated failures bringing down related VMs at the same time. Availability sets place **VMs in different fault domains** for better reliability, 
**especially beneficial if a region doesn't support availability zones**. 

**When using availability sets, create two or more VMs within an availability set**.
Using two or more VMs in an availability set helps highly available applications and meets the 99.95% Azure SLA. **There's no extra cost for using availability sets**, you only pay for each VM instance you create.

**Availability sets offer improved VM to VM latencies compared to availability zones**, since VMs in an availability set are allocated in closer proximity. 
**Availability sets have fault isolation for many possible failures**, minimizing single points of failure, and offering high availability. 
**Availability sets are still susceptible to certain shared infrastructure failures**, like datacenter network failures, which **can affect multiple fault domains**.

**For more reliability than availability sets offer, use availability zones**. 
Availability zones offer the highest reliability since each VM is deployed in multiple datacenters, 
protecting you from loss of either power, networking, or cooling in an individual datacenter. 
**If your highest priority is the best reliability for your workload, replicate your VMs across** 
**multiple availability zones**.
---

### Question 70:

Your team decides to use Azure DevOps as their development platform.

You need to **create a build pipeline that contains task that require**
**a human interaction before a deployment can be approved**.

What should you do?

- create a Azure Logic App that sends out a notification when the interaction is required
- create a release gates that update the Kanban board when manual interaction is required
- create build scripts that replace manual interaction with automation 
- create a manual intervention task in the build pipeline

---

### Answer:
- create a manual intervention task in the build pipeline

Manual intervention tasks are used when automation is not possible.

---

The remaining options do not apply in this case.

- create a Azure Logic App that sends out a notification when the interaction is required
**Azure Logic Apps** cannot handle manual interaction from within Azure DFevOps pipelines.

- create a release gates that update the Kanban board when manual interaction is required
This would not guarantee that the maibnual interaction occurs.

- create build scripts that replace manual interaction with automation 
?

---

### References:

[Use gates and approvals to control your deployment](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deploy-using-approvals?view=azure-devops)

---

### Question 71:

You work as a project manager and you want to use a Microsoft-hosted angent in your
dvelopment team's CI/CD pipelien. There are both advantages and disadvantages to using 
a Microsoft-hosted angent instead of a Self-Hosted agent.

Which **two** features would you sacrifise if you chose a Micorsoft-Hosted agent
over a Self-Hosted agent?

- the ability to run more that one agent simultaneoulsy
- the ability to pre-load custom software
- the ability to do maintenance and upgrades
- the ability to run the agent in a VM
- Velocity

---

### Answer:

- the ability to pre-load custom software
- Velocity (?)

With **Microsoft-hosted angent** you cannot pre-load custom software.
Whena a **Microsoft-hosted angent** is instantiated to run a pipelien a **fresh VM**
is started and there is **no caching** and **no saved configuration** therefore if you
then need to do any of this it is going to be slower than using a **Self-Hosted agent**.


The other opptions do not apply in this case.

- the ability to do maintenance and upgrades
Upgrades and maintenance of **VMs for Microsoft-hosted angent** is managed automatiacll for you by Micosoft.
However, they still happen therefore you do not give up these!

- the ability to run the agent in a VM
This is obviosly not the case as a **Microsoft-hosted angent**  runs indeed in a VM on 
Azure infrastructure.

- the ability to run more that one agent simultaneoulsy
*Microsoft-hosted angent** can indeed run in parallel if required.

---

### References:

[Azure Pipelines agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops&tabs=yaml%2Cbrowser)  

[Microsoft-hosted agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/hosted?view=azure-devops&tabs=yaml)  

[Self-hosted Windows agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/windows-agent?view=azure-devops)  

---

### Question 72:

A company creates a Azure DevOops pipeline.
The company has a large amount of test scripts that perform a sereis of 
regression tests which takes a lot of time.

You need to reduce the amount of time that is required to complete a test run.

What should you do?

- divide the pipeline into multiple pipeliens that can run in a queue
- create multiple pipelines with a single agent to be run simultaneously
- combine the test scripts
- configure multiple agents and run the test in parallel

---

### Answer:
### Explanation:
- configure multiple agents and run the test in parallel

This will reduce the amount of time required to run teh tests.
**You must also change the build pipeline in order to slice the tests suite into**
**parts that are goinf to be run each on its agent**.

### References:
[Run tests in parallel for any test runner](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/parallel-testing-any-test-runner?view=azure-devops)

Running tests to validate changes to code is key to maintaining quality. For continuous integration practice to be successful, it is essential you have a good test suite that is run with every build. However, as the codebase grows, the regression test suite tends to grow as well and running a full regression test can take a long time. Sometimes, tests themselves may be long running - this is typically the case if you write end-to-end tests. 

**This reduces the speed with which customer value can be delivered as pipelines cannot process builds quickly enough**.
**Running tests in parallel is a great way to improve the efficiency of CI/CD pipelines**. 

This can be done easily by employing the additional capacity offered by the cloud. 
This article discusses how you can parallelize tests by using multiple agents to process jobs.

---

The other opptions do not apply in this case.

- divide the pipeline into multiple pipeliens that can run in a queue
This would not achieve the objective, of course.

- create multiple pipelines with a single agent to be run simultaneously
**Azure DevOps recommendation is to collate all realted jobs of a build pipeline in a single pipeline**.

- combine the test scripts
This is unncesessary.

---

### Question 73:

a company has several IT development departments which constantly work on new features.

You need to specify which branches should trigger a CI pipeline when new code is pushed.
The pipeline should run even if the branch does not have an open PR.

Which action should you perform to accomplish this task?

- create a CI trigger and specify which branches should be proccessed
- create a PR trigger and specify which branches should be proccessed
- create a Scheduled trigger that contains only the feature branches and set this trigger to run every hour
- create a Release trigger and specify which branches should be proccessed


---

### Answer:
- create a CI trigger and specify which branches should be proccessed
When new code is pushed to these branches the trigger starts the build of the corresponding branch.

The other opptions do not apply in this case.

- create a PR trigger and specify which branches should be proccessed
This runs a CI pipline only when a PR against the specified branches is open 
**OR** 
when changes are pushed to the PR.
This would not build the branch if code is pushed directly to the branch which is a requirement in the question.

- create a Scheduled trigger that contains only the feature branches and set this trigger to run every hour
The same as above it misses that it does not build the branch on pushing code to it.

- create a Release trigger and specify which branches should be proccessed
**Release triggers** are used to **trigger a deplyment and not a build**.
A set of assets are deployed to a target Environment.

---

### References:

[Specify events that trigger pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops)  

[Configure schedules for pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/scheduled-triggers?view=azure-devops&tabs=classic)  

[Build Azure Repos Git or TFS Git repositories](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=yaml)

[Release triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/triggers?view=azure-devops)   

---

### Question 74:

Your company's Azure DevOps team has several developers that use a single pipeline.
The push changes constantly which triggers frequent build runs.
**You turn the trigger setting for batch** paramater to **true**.

How does this improve build runs?

- it reduces the number of builds by allowing you to schedule a time for the pipeline run
- it reduces the number of builds by allowing the system to wait until a build is finished and then
  a new build is queued to handle any changes that were not included in the last build run.
- it reduces the number of builds by automatically creating feature branch batches that run simultaneously
- it reduces the number of builds by creating and running simultaneous batch runs

---

### Answer:

- it reduces the number of builds by allowing the system to wait until a build is finished and then
  a new build is queued to handle any changes that were not included in the last build run.

[Specify events that trigger pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops&tabs=yaml)    

[trigger definition](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines)   

The other opptions do not apply in this case.

- it reduces the number of builds by allowing you to schedule a time for the pipeline run
- it reduces the number of builds by automatically creating feature branch batches that run simultaneously
- it reduces the number of builds by creating and running simultaneous batch runs

---

### Question 75:

You are building a new **GitHub Actiosn pipeline**.
This pipeline automates your software development workflowa from within GitHub.
You decide to use `Azure\pipelines@v1` and you need to set the ncecessary params.

Which **three** parameters should you define?

- the Azure Pipeline name
- Container Registry Credentiala
- Azure Credentials
- a personal access token (PAT)
- the Azure DevOps project URL

---

### Answer:

- the Azure DevOps project URL
- a personal access token (PAT)
- the Azure Pipeline name

Refer to the documentation in the reference for the details.

The other opptions do not apply in this case.

- Container Registry Credentiala
- Azure Credentials

---

### References:

[Azure/actions-workflow-samples](https://github.com/Azure/actions-workflow-samples/blob/master/AzurePipelines/trigger-azure-pipelines.yml)  
[Azure/pipelines](https://github.com/Azure/pipelines)  
[GitHub Action for Azure Pipelines](https://github.com/Azure/pipelines/releases)  
[GitHub Action to trigger a run in Azure pipelines](https://github.com/marketplace/actions/azure-pipelines-action)  

---

### Question 76:

Ypu are standardizing some pipelines accross your organization.

You find three pipelines with similar tasks:

- Pipeline A: a classic build pipeline that builds and deploys a helm chart
- Pipeline B: a YAML build pipeline that builds a helm chart
- Pipeline C: a classic RELEASE pipeline that deploys a helm chart

You create a **task grouop** in order to combine similar tasks used by these pipelines.

You need to evaluate which pipelines the task group can use.
Selct Yes if you can replace the similar atsk with the task group.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | You can replace the similar task in PipelineA with the task group |
| Yes | No  | You can replace the similar task in PipelineB with the task group |
| Yes | No  | You can replace the similar task in PipelineC with the task group |


---

### Answer:

- Pipeline A: a classic build pipeline that builds and deploys a helm chart
- Pipeline B: a YAML build pipeline that builds a helm chart
- Pipeline C: a classic RELEASE pipeline that deploys a helm chart

| xxx | Statement |
| --- | ------------------------------------------------- |
| Yes | You can replace the similar task in PipelineA with the task group |
| No  | You can replace the similar task in PipelineB with the task group |
| Yes | You can replace the similar task in PipelineC with the task group |

**You can use task groups in classic build and deployment pipelines**.
This is why **PipelineB** cannot make use of task groups.
With **YAML** pipelines **Templates** are used to replace similar tasks.

---

### References:

[Task groups for builds and releases (classic)](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/task-groups?view=azure-devops)  

A task group allows you to **encapsulate a sequence of tasks, already defined in a build or a release pipeline**, 
into a single reusable task that can be added to a build or release pipeline, just like any other task. You can 
choose to extract the parameters from the encapsulated tasks as configuration variables, and abstract the rest of the task information.

The new task group is automatically added to the task catalog, ready to be added to other release and build pipelines. **Task groups are stored at the project level, and are not accessible outside the project scope**.

**Task groups are a way to standardize and centrally manage deployment steps for all your applications**. 
When you include a task group in your definitions, and then make a change centrally to the task group, 
the change is automatically reflected in all the definitions that use the task group. 
There is no need to change each one individually.

---

[Template usage reference](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops&pivots=templates-includes)    


---

### Question Q77:

You are bulding an Azure Pipeliene for a new project.
The pipeline requires a **Linux Self-Holsted Agent**.
The pipeline must run twice a day and should take about 15 minutes to complete.

You need to use a compute service that runs this self-hosted agent and minimize costs.

Which should you choose?

- Azure Kubernetes Services (AKS)
- Azure Vistual Machine Scale Set
- Azure Vistual Machine VM
- Azure Container Instances (ACI)

---

### Answer:

- Azure Container Instances (ACI)
This is the most cost-effective solution to run Self-Hosted Linux Agent inside a Docker container.
This service is charged by teh seconds of execution time.

The other opptions do not apply in this case.

- Azure Kubernetes Services (AKS)
This **requires much greater administrative effort** and larger costs due to the necessary controller node.

- Azure Vistual Machine Scale Set
- Azure Vistual Machine VM
The same as with AKS. They could be used but is overkill in cost andadmin complexity.

---

### References:

[Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)  

[Self-hosted Linux agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/linux-agent?view=azure-devops)  

[Azure Virtual Machine Scale Set agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/scale-set-agents?view=azure-devops)  


---

### Question:

---


### Question:
### Answer:
### Explanation:
### References:

---







