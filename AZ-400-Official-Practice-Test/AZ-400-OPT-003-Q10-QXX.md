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

### Question 78:

You use Azure DevOps to develop an open-source project.
You create a build pipeline to update the project documentation.
The documentation is sotred in the same Azure Repos Git of you project source code inside the
`/docs` folder.

You need to trigger this pipeline only when the docimentation changes in the main branch.

Which **two filters** dhould you configure to trigger this pipeline?

- set **path filter** to exclude `/docs`
- set **branch filter** to include `/docs`
- set **branch filter** to include `main`
- set **branch filter** to include `*`
- set **path filter** to exclude `/.`
- set **path filter** to include `/docs`

---

### Answer:

- set **branch filter** to include `main`
- set **path filter** to include `/docs`

This is equivalent to say that the trigger for this main branch build whatches only changes
in the `/docs` folder.

The other opptions do not apply in this case.

---

### References:

[Build Azure Repos Git or TFS Git repositories](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=classic)  

---

### Question 79:

You are a frontend engineer on an AngualJS app.
Azure Pipeline is used to build the app and test it as a single job.
The pipelines takes about 7 mins every time it runs in order to download and install
the app dependencies with npm.

Yoyu want to reduce the pipeline execution time.
 
Which solution should results in the greatest reduction of build time?

- include a step to upgrade npm befre installing the app dependencies
- implement pipeline cahcing
- use a self-hosted agaent
- enable parallel jobs for the puipeline

---

### Answer:
- implement pipeline cahcing

Include a cach task in your pipeline and configure a `node_modules` path to be reused later.
You should use the `package-lock.json` as **cache key** to invalidate the cache every time 
the app dependencies have changed.

The other opptions do not apply in this case.

- use a self-hosted agaent
This could also work but its benefits would not match those possible with the **caching task**.

- include a step to upgrade npm befre installing the app dependencies
Tis would acually increase the build time

- enable parallel jobs for the puipeline
Thisi is something else alltogether, of course.

---

### References:

[Pipeline caching](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)  

Pipeline caching can **help reduce build time by allowing the outputs or downloaded dependencies from one run** 
**to be reused in later runs**, thereby reducing or avoiding the cost to recreate or redownload the same files again. **Caching is especially useful in scenarios where the same dependencies are downloaded over and over** 
**at the start of each run**. 
This is often a time consuming process involving hundreds or thousands of network calls.

Caching can be effective at improving build time **provided the time to restore and save the cache is less** 
**than the time to produce the output again from scratch**. 
**Because of this, caching may not be effective in all scenarios and may actually have a negative impact on build time**.

Caching is currently supported in **CI and deployment jobs, but not classic release jobs**.

[Configure and pay for parallel jobs](https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=ms-hosted)  

[Azure Pipelines agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops&tabs=yaml%2Cbrowser)  

[Azure Virtual Machine Scale Set agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/scale-set-agents?view=azure-devops)  

[npm-update](https://docs.npmjs.com/cli/v7/commands/npm-update)  


---

### Question 80:

You work as a DevOps Engineer for a gaming company.
They use a **Self-Hosted Ubuntu based Build Agent** run in a **Azure VM Scale Set (VMSS)**.

You need to regularly update the tooling installed on the Agent VMs to support
new projects and security patches by creating a new VM image.

You need to automate the process of building the VM image.

What should you use?

- Azure Automation State Configuration
- Terraform
- Azure Resource Manager Template (ARM)
- Packer

---

### Answer:
- Packer

The other opptions do not apply in this case.

---

### References:

[Introduction to Packer](https://developer.hashicorp.com/packer/docs/intro)

What is Packer?
Packer is an open source tool for creating identical machine images for multiple platforms from a single source configuration. Packer is lightweight, runs on every major operating system, and is highly performant, creating machine images for multiple platforms in parallel. 
**Packer does not replace configuration management like Chef or Puppet**. 
**In fact, when building images, Packer is able to use tools like Chef or Puppet to install software onto the image**.

A machine image is a single static unit that contains a pre-configured operating system and installed software which is used to quickly create new running machines. Machine image formats change for each platform. Some examples include AMIs for EC2, VMDK/VMX files for VMware, OVF exports for VirtualBox, etc.

---

[Choose a Microsoft-hosted or self-hosted build agent](https://learn.microsoft.com/en-us/training/modules/host-build-agent/2-choose-a-build-agent)  

[Azure Virtual Machine Scale Set agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/scale-set-agents?view=azure-devops)  

---

[Terraform](https://developer.hashicorp.com/terraform/intro)

HashiCorp Terraform is an infrastructure as code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share. You can then use a consistent workflow to provision and manage all of your infrastructure throughout its lifecycle. Terraform can manage low-level components like compute, storage, and networking resources, as well as high-level components like DNS entries and SaaS features.

---

[Azure Automation State Configuration overview](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-overview)  

[What are ARM templates?](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/overview)

---

### Question 81:

You are responsible for maintaining the build pipelines in Azure Pipelines in your company.
The developers reported that during working hours some of the pipelines are queued for over 15 minutes.
This slows down their development work.
This issue does not happen with pipelines that run on self-hosted agents.

You need to reduce the queue waiting time during working hours.

What should you do?

- add an extra self-hosted agent pool
- increase the number fo parallel jobs for Miscrosoft-Hosted agents
- decrease the number of parallel jobs  for Miscrosoft-Hosted agents
- scale up the current self-hosted agent pool

---

### Answer:
- increase the number fo parallel jobs for Miscrosoft-Hosted agents

This will increase the throughput of the pipelines, consequently reducing the queueing time.

The other options do not apply in this case.

- decrease the number of parallel jobs  for Miscrosoft-Hosted agents
obvious

- add an extra self-hosted agent pool
- scale up the current self-hosted agent pool
this would also increase the throughput of the pipelines, consequently reducing the queueing time.
However, the problem here is with the Microsoft-Hosted agent you must address it there.

---

### References:

[Azure Pipelines agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops&tabs=yaml%2Cbrowser)  

[Create and manage agent pools](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops&tabs=yaml%2Cbrowser)  

[Troubleshoot pipeline runs](https://learn.microsoft.com/en-us/azure/devops/pipelines/troubleshooting/troubleshooting?view=azure-devops)  

[Configure and pay for parallel jobs
Article
04/27/2](https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=ms-hosted)  

---

### Question 82:

You are updating an application **release pipeline** to support **canary deployment**.
The app is hosted in **Azure App Services**.

The deployment has three stages as shown in the exhibit.
<img src="./Q82-exhibit.png">

- Ring 0: released to 5% of the user
- Ring 1: released to 30% of the user
- Public: released to all users

You must recommend solutions that support the gradual availability of each stage to users.

Which **two** solutions should you recomment?

- Azure Load Balancer
- Azure DNS
- Traffic Manager
- Deployment Slots 

---

### Answer:
- Traffic Manager
- Deployment Slots 

With **Azure App Services Deployment Slots** you can define a **route traffic percentage for the deployment slot**!
You can gradually move the traffic from one deplyment slot to another for each deployment stage.

With **Traffic Manager** you can set **weighted traffing routing** to gradually route traffic from older apps version
to new ones **on each deployment stage**.

---

The other options do not apply in this case.
- Azure Load Balancer
- Azure DNS

Both of these solutions move traffic from the current app version to the new one
**but not gradually**! If you modify the DNS record or the load balancer pools all
traffic will be moved to the new version.

---

### References:

[Tutorial: Configure the weighted traffic routing method in Traffic Manager](https://learn.microsoft.com/en-us/azure/traffic-manager/traffic-manager-configure-weighted-routing-method)  

[Set up staging environments in Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots?tabs=portal)  

[What is Azure Load Balancer?](https://learn.microsoft.com/en-us/azure/load-balancer/load-balancer-overview)  

[What is Azure DNS?](https://learn.microsoft.com/en-us/azure/dns/dns-overview)  

[Blue-Green deployments using Azure Traffic Manager](https://azure.microsoft.com/en-us/blog/blue-green-deployments-using-azure-traffic-manager/)  
---

### Question 83:

You are developing the release pipeline for an application.
You plan to deploy the application using **progressive exposure deployments**.

Which **two** techniques could you use?

- gradual deployment
- Feature flags
- Blue/Green deployment
- Deployment rings

---

### Answer:
- Feature flags
- Deployment rings

**Progressive exposure deployment** is a technique that has:

- a limited impact on end users 
- gradually deploys and validates changes in production

The **impact is evaluated through**: 

- observation
- testing
- analysis of telemetry
- user feedback

---

You could use **Deployment Rings aka Canary Deployment**.
It allows to **gradually expose** a new version of an application to some but not all users.
This provides a **controlled exposure of user to the new versions of an app**.
The **control** is normally achived by means of a:

- **load balancying layer** (in Azure use the Traffic Manager) 
- **application settings** 
- **runtime settings**

---

You could use **Feature Flags**.

**Feature Flags** are used to turn features on and off. 
**Feature Flags** are usually used to: 

1. test experimental features with a limited number 
2. disable application features 

**without requiring a new deployment**!

The activation / deactivation of features are controlled with either:

- application configuration: at application level
- opt-in feature: at individual user level

---

The other options do not apply in this case.
- gradual deployment
- Blue/Green deployment

- gradual deployment
It replaces an existing deployment with newer versions and therefore the old version and the
new versions are both in production at the same time. With this technique alone 
**it is not possible to control how the new version is rolled out to users.**

- Blue/Green deployment
This techinque **duplicates your production workload** as follows:
- blue : old version
- green: new version

Onnce the **green** is deplyed you would run all possible test on it that is automated and manual
and decide whether the **green** is ready to be promoted to **blue** that is production.
Then in a **single event** you would simply switch all users to the new versions.

---

### References:

[Use deployment rings with extension releases](https://learn.microsoft.com/en-us/azure/devops/migrate/phase-rollout-with-rings?view=azure-devops)  

With deployment rings, you can gradually deploy and validate changes to your extension in production, while limiting the affect on your users.
We don't recommend deploying to all production environments at the same time, which exposes all users to the changes. A gradual rollout exposes
users to the changes over time, validating the changes in production with fewer users.

[Progressive experimentation with feature flags](https://learn.microsoft.com/en-us/devops/operate/progressive-experimentation-feature-flags)  

---

[Deployment Strategies Defined](https://blog.itaysk.com/2017/11/20/deployment-strategies-defined)  

[How Microsoft plans with DevOps](https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops)  

---

### Question 84:

An application runs **20 VMs instances** that are managed by **Azure as a Scale Set (VMSS)**.

You need to configure a **release pipeline to deploy** this app through a **deployment group**
while **minimizing administrative effort**.

Which **three actions** should you perform and in which sequence?

- configure the agent extension with a personal access token (PAT)
- configure the agent extension with a credential
- create a deployment group in Azure DevOps
- install the deployment group agent extension in the VMSS
- create a deployment group in the Azure Portal
- install the deployment group agent extension in each instance of the VMSS

---

### Answer:

1. create a deployment group in Azure DevOps
2. install the deployment group agent extension in the VMSS
3. configure the agent extension with a personal access token (PAT)

There are several ways to set up the agent on the instances of a VMSS.
Howver, **the most effective** is to install the **Azure Pipelines agent in the extensions blade of the VMSS**.
This installs the agent automatically on each instance of the VMSS.

**To configure the agent extension in the Azure Portal you need first to generate a PAT**
**in Azure DevOps and use it to configure the script that will then be run on each VM of the VSMM**.
The PAT should be generated to have the permissions:
- Deployment Group Read
- Deployment Group Manage

---

The other options do not apply in this case.

- create a deployment group in the Azure Portal
Deployment group is a concept that belongs to Azure DevOps and not the Azure Portal!

- install the deployment group agent extension in each instance of the VMSS
This is obviously not the way to minimize admin effort and it is prone to error!

- configure the agent extension with a credential
Ti configure the Azure Pipelines agent in the extensions a PAT is required

---

### References:

[Provision deployment groups](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deployment-groups/?view=azure-devops)  

A deployment group is a **logical set of deployment target machines that have agents installed on each one**. 
**Deployment groups represent the physical environments**, for example: "Dev", "Test", or "Production" environment. 

In effect, a deployment group is just another grouping of agents, much like an agent pool.

Deployment groups are **only available with Classic release pipelines** and **are different from deployment jobs**. 
**A deployment job** is a collection of deployment-related steps defined in a YAML file to accomplish a specific task.

With deployment groups you can:

1. Specify the security context and runtime targets for the agents. 
   As you create a deployment group, you add users and give them appropriate permissions to 
   administer, manage, view, and use the group.

2. Let you view live logs for each server as a deployment takes place, and download logs for all servers to track
   your deployments down to individual machines.

3. Enable you to use machine tags to limit deployment to specific sets of target servers.

---

[Provision agents for deployment groups](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/deployment-groups/howto-provision-deployment-group-agents?view=azure-devops)  

Deployment groups make it easy to **define logical groups of target machines for deployment** and 
**install the required agent on each machine**. 

This topic explains how to create a deployment group, and how to install and provision the agent on each virtual or 
physical machine in your deployment group.

You can install the agent in any one of these ways:

1. Run the script that is generated automatically when you create a deployment group.
2. Install the Azure Pipelines Agent Azure VM extension on each of the VMs.
3. Use the ARM Template deployment task in your release pipeline.

---

[Azure virtual machine extensions and features](https://learn.microsoft.com/en-us/azure/virtual-machines/extensions/overview)  

[What are Virtual Machine Scale Sets?](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview)  

[Use personal access tokens](https://learn.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops&tabs=Windows)   

[Blue-Green deployments using Azure Traffic Manager](https://azure.microsoft.com/en-us/blog/blue-green-deployments-using-azure-traffic-manager/)  

---

### Question 85:

You manage a Azure Web App.

You need to implement a **release pipeline** for a **blue/green deployment** using **deplyment slots**.
Your solution **must minimize administrative effort and application downtime** during the deployment.

Which **five actions**  should you perform?
Arrange the actions in any order.

- create a task to deploy the app to the staging slot
- create an Azure CLI task to swap the staging slot to the production slot
- add a production stage in the release pipeline
- create a new deployment slot named staging in the Azure App Service
- create an App Service Manage task to swap the production slot to staging
- add a staging stage in the release pipeline
- create a task to deploy the application to the production slot
- create an App Service Manage task to swap the staging slot to production

---

### Answer:

- create a new deployment slot named staging in the Azure App Service
- add a staging stage in the release pipeline
- create a task to deploy the app to the staging slot
- add a production stage in the release pipeline
- create an App Service Manage task to swap the staging slot to production


The other options do not apply in this case.

- create an Azure CLI task to swap the staging slot to the production slot
- create an App Service Manage task to swap the production slot to staging
- create a task to deploy the application to the production slot

---

### References:

[Set up staging environments in Azure App Service](https://learn.microsoft.com/en-us/azure/app-service/deploy-staging-slots?tabs=portal)  

[Azure App Service Management: ARM](https://github.com/microsoft/azure-pipelines-tasks/blob/master/Tasks/AzureAppServiceManageV0/README.md)  

[Azure App Service Deployment: ARM](https://github.com/microsoft/azure-pipelines-tasks/blob/master/Tasks/AzureRmWebAppDeploymentV4/README.md)  

[What is the Azure CLI?](https://learn.microsoft.com/en-us/cli/azure/what-is-azure-cli)  

[Blue-Green deployments using Azure Traffic Manager](https://azure.microsoft.com/en-us/blog/blue-green-deployments-using-azure-traffic-manager/)  

---

### Question 86:

You have a Web App developed in **Django** running in **Azure App Service**.

You need to implement **feature toggles** to test **canary features** with a
specific group of users.

The features should be available to the users **as fast as possible** with 
**minimal changes in the application code**. 
**Administrative effort should also be kept to a minimum**.

Which solution should you recommend?

- set an application settin in Azure App Service
- include the users to test the features using an admin site
- deploy a new version of the Web App for the canary users
- use LauchDarkly to manage feature toggles


---

### Answer:
- use LauchDarkly to manage feature toggles

[LauchDarkly](https://launchdarkly.com/demo/)
LaunchDarkly unites feature flags, context-aware targeting, and experimentation in one powerful software delivery platform.

This is a solution that manages feature toggles in your application.
You can integrate it with **Python** apps via a SDK **and instantly denable the feature toggles to a specific group of users**.
This is doen through the **LauchDarkly Portal**.

---

The other options do not apply in this case.

- set an application settin in Azure App Service
This could alos be done to implement a **general feature toggle** in any app.
However, with this method you cannot select a specific group of canary users
as required in this scenario.

- deploy a new version of the Web App for the canary users
Thsi would require a duplication of the app and larger admin effort.
You would need a **reverse Proxy**.

- include the users to test the features using an admin site
This would require the development of the admin site and therefore this options 
does not meet the requirement of minimum effort.

---

### References:

[LauchDarkly](https://launchdarkly.com/demo/)
LaunchDarkly unites feature flags, context-aware targeting, and experimentation in one powerful software delivery platform.

[LauchDarkly - Targeting with flags](https://docs.launchdarkly.com/home/targeting-flags)

[Configure an App Service app](https://learn.microsoft.com/en-us/azure/app-service/configure-common?tabs=portal)  

[The Django admin site](https://docs.djangoproject.com/en/4.1/ref/contrib/admin/)  

---

### Question 87:

A deployment team uses a Azure DevOps CI/CD pipeline.
The developers finish their work at different times.

You need to ensure that the software only allows the features that are fully functional.

What startegy should you use?

- the developers should store code changes locally and 
  merge changes with the main source code branch after completing their work

- the developers should create a log-running feature branch 
  and merge changes after the feature is complete

- the developers should use features flags

- the developes should merge their code to the main code branch
  daily with unfinished features commented out

### Note:  
this question is not particularly clear, therefore a bit of clarification
is added here in forme of an appended note.
The problem here is about **the management of unfinished features**.
How would one manage the possibility of features not been yet completed
in the contest of a CI/CD pipeline?


---

### Answer:
- the developers should use features flags

With **feature flags** a developer can turn a feature off until it is ready 
(for production / QA testing or just functional). This also ensures that code
that is merged does not break the build.
**Feature flags** provides a way to **avoid long-standing** feature branches
and at the same time allows developers of new features to merge their changes
as early and as often as possible so that these can be verified by the 
CI/CD pipeline as part of the **main** branch evebn when these features are
not yet finished and are therefore switched off.


The other options do not apply in this case.
 
- the developers should create a log-running feature branch 
  and merge changes after the feature is complete
Thi is possible and does indeed happen in some projects but is is obviously 
not a good practice or the best option because a **log-running feature branch**
tend to **diverge significanlty from the main branch** over time if developer
do not take care of **merging in the main** branch often.
There is obviously overhead to this practice.
Remember that a CI/CD pipeline has among others the objektive of increasing
the velocity of a development team, therefore diffult merges imply the 
exact opposite.

- the developers should store code changes locally and 
  merge changes with the main source code branch after completing their work
This suffers from teh same problems that affect the option above but it is 
even worse because the changes are only kept locally.

- the developes should merge their code to the main code branch
  daily with unfinished features commented out
This is obviously not a good practice and it is prone to human error.

---

### References:

[How to implement feature flags and A|B testing](https://learn.microsoft.com/en-gb/archive/blogs/visualstudioalmrangers/how-to-implement-feature-flags-and-ab-testing)  

[How Microsoft plans with DevOps](https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops)  

---

### Question 88:

Your development team is constantly implementig features.
You need to **implement a delivery strategy to use feature flags**.

Which **five actions** should you perform and **in which order**?

- design the feature's functionality 
- create a release strategy
- test the feature
- release the feature
- build the feature
- create a push request
- create a pull request

---

### Answer:

1. design the feature's functionality 
2. create a release strategy
3. build the feature
4. test the feature
5. release the feature

---

### Explanation:

1. design the feature's functionality:

  - consider the target audience
  - create use cases
  - develop a timeline

2. create a release strategy:

You need to determine whether f which ones.eature flags are used and if
so which ones. You also need to know how to incorporate user feedback
and acceptance.

3. build the feature:
This includes:
  - coding
  - integration
  - feature flag management 

4. test the feature:
This includes:
  - QA environment testing
  - Staging environment testing

5. release the feature:
The release of the feature can be **incremental** or **full a release**.
It may target the entire user pool or just one or more specific groups of users.

---

The remaining options do not apply in this case.

- create a pull request:
PRs should be part of the build strategy. PRs are used to notify others about changes
that you want ot make to a branch in a repository. 

- create a push request:
Push of changes are not part of a delivery strategy. They transfer changes from
one local branch to a remote branch.

---

### References:

[How to implement feature flags and A|B testing](https://learn.microsoft.com/en-gb/archive/blogs/visualstudioalmrangers/how-to-implement-feature-flags-and-ab-testing)  

[How Microsoft plans with DevOps](https://learn.microsoft.com/en-us/devops/plan/how-microsoft-plans-devops)  

---

### Question 89:

Your company is evaluating using an **Infrastructure as Code (IaC)** solution
to manage resources in Azure.

This solution must ensure that **Infrastructure as Service (IaaS)** resources
have a specific configuration, such as which services are installed in VMs.
The solution **must minimize configuration drift**.

You need to recommend an IaC solution to meet these requirements.

Which **two** solutions should you recomment?

- Chef Infra
- Terraform
- Azure Automation Runbook
- PowerShell Desired State Configuration (DSC)
- Ansible

---

### Answer:

- Chef Infra
- PowerShell Desired State Configuration (DSC)

---

### Explanation:

- Chef Infra

[Chef Infra Overview](https://docs.chef.io/chef_overview/)  
Chef Infra is a powerful automation platform that transforms infrastructure into code. Whether you’re operating in the cloud, on-premises, or in a hybrid environment, Chef Infra automates how infrastructure is configured, deployed, and managed across your network, no matter its size.

Chef uses **cookbooks** to sotre **IaC** Each node managed by Chef has a **Chef Client** agent installed on it.
The **Chef Client** communicate with a **Chef Server** and reports its state to it nad if the Server detects 
any drift it then instructs the **Chef Client** to perform actions to remove the drift. The desired configuration
for each managed node is store on teh Chef Server.

- PowerShell Desired State Configuration (DSC)

In this case the configuration of resources is held in configuration files.
DSC works according to a **Push & Pull models**. Both modes create a **local configuration state**
**in the target machines** called **Local Configuration Manager (LCM)** that determines which 
configurations should be applied to the node.

- **In the Pull mode** the LCM is configured to regularly check a pull service for newer 
  configurations and uensure that the target is in line with the IaC code.
  It is recommended to use **Azure Automation** as a **managed pull service**.

---

The remaining options do not apply in this case.

- Azure Automation Runbook:
A Runbook is an automation script written in either PowersShell or Python.
A Runbook could be used in operations like starting or stopping a VM during specified hours.
However, **Runbooks are not designed to define the configuration of a machine (VM) as IaC**.
For this **Desired State Configuration (DSC)** should be used instead.

- Terraform:
Terraform connectes to Azure via the Azure Resource Manager API. It can create and update 
infrastructure from IaC files. However, it **cannot maintain the state of what has been**
**deplyed** the same way Chef or DSC do, thus it cannot work against configuration drift,
which is one of the requirements in this case.

- Ansible:
Using **Ansible Palybooks** yoi can **apply resource configurations** to targets.
However, Ansible **uses only a Push model** therefore it cannot guard against configuration drift.

---

### References:

[Desired State Configuration overview for decision makers](https://learn.microsoft.com/en-us/powershell/dsc/overview/decisionmaker?view=dsc-1.1)  

This document describes the business benefits of using PowerShell Desired State Configuration (DSC) 
and isn't a technical guide.

#### What Is DSC?

PowerShell DSC is a configuration management platform **built into Windows** that is based 
on open standards. DSC is flexible enough to function reliably and consistently 
**in each stage of the deployment lifecycle** (development, test, pre-production, production)
and during scale-out.

**DSC centers around configurations**. 
**A configuration is PowerShell script that describes an environment made up of computers or nodes**
**with specific characteristics**. 

These characteristics can be as simple as ensuring a specific Windows feature is enabled or 
as complex as deploying SharePoint.

DSC has monitoring and reporting built-in. If a system is no longer compliant, 
**DSC can raise an alert and act to correct the system**.

####  Benefits of using DSC

The configuration's design simplifies how they're read, stored, and updated. 
**Configurations declare the state of target devices, rather than writing instructions** 
**for how to place devices in that state**. 
**These factors reduce the costs to learn, adopt, implement, and maintain configuration** 
through DSC.

#### DSC and DevOps

**DSC was designed with DevOps in mind**.

A combination of people, processes, and tools that allow for rapid deployment and iteration focused on delivering value to end users whether internal or external. A single configuration that defines an environment means that developers can encode their requirements into a configuration and check that configuration into source control. Operations teams can then deploy code without going through error-prone manual processes.

---

DSC is applicable to VMs that run Windows, Linux and Nano Server.

[Get started with Desired State Configuration (DSC) for Windows](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/wingettingstarted?view=dsc-1.1&viewFallbackFrom=powershell-7)  

[Get started with Desired State Configuration (DSC) for Linux](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/lnxgettingstarted?view=dsc-1.1)  

Desired State Configuration for Linux requires the Open Management Infrastructure (OMI) CIM server, version 1.0.8.1 or later. OMI can be downloaded from The Open Group: Open Management Infrastructure (OMI).

[Using DSC on Nano Server](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/nanodsc?view=dsc-1.1)  

---

[Get started with Azure Automation State Configuration](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-getting-started?view=dsc-1.1)  

Azure Automation State Configuration is an Azure configuration management service that allows you to write, manage, and compile PowerShell Desired State Configuration (DSC) configurations for nodes in any cloud or on-premises datacenter. The service also imports DSC Resources, and assigns configurations to target nodes, all in the cloud. You can access Azure Automation State Configuration in the Azure portal by selecting State configuration (DSC) under Configuration Management.

You can use Azure Automation State Configuration to manage a variety of machines:

- Azure virtual machines
- Azure virtual machines (classic)
- Physical/virtual Windows machines on-premises, or in a cloud other than Azure (including AWS EC2 instances)
- Physical/virtual Linux machines on-premises, in Azure, or in a cloud other than Azure

If you aren't ready to manage machine configuration from the cloud, you can use Azure Automation State Configuration as a report-only endpoint. This feature allows you to set (push) configurations through DSC and view reporting details in Azure Automation.

####  Why use Azure Automation State Configuration 

The Azure Automation State Configuration service is to DSC what Azure Automation runbooks are to PowerShell scripting.  In other words, in the same way that Azure Automation helps you manage PowerShell scripts, it also helps you manage DSC configurations.

Azure Automation State Configuration provides several advantages over the use of DSC outside of Azure. This service enables scalability across thousands of machines quickly and easily from a central, secure location. You can easily enable machines, assign them declarative configurations, and view reports showing each machine's compliance with the desired state you specify.

---

[Understand the machine configuration feature of Azure Automanage](https://learn.microsoft.com/en-us/azure/governance/machine-configuration/overview)   

```
Before you enable Automation State Configuration, we would like you to know that 
a newer version of DSC is now generally available, managed by a feature of 
Azure Policy named guest configuration. 
```

Azure Policy's machine configuration feature provides native capability to audit or configure operating system settings as code for machines running in Azure and hybrid Arc-enabled machines. You can use the feature directly per-machine, or orchestrate it at scale by using Azure Policy.

---

[Chef Infra Overview](https://docs.chef.io/chef_overview/)  
Chef Infra is a powerful automation platform that transforms infrastructure into code. 
Whether you’re operating in the cloud, on-premises, or in a hybrid environment, Chef Infra 
automates how infrastructure is configured, deployed, and managed across your network, 
no matter its size.

---

[What is Azure Automation?](https://learn.microsoft.com/en-us/azure/automation/overview)  

Automation is needed in three broad areas of cloud operations:

1. Deploy and manage - Deliver repeatable and consistent infrastructure as code.
2. Response - Create event-based automation to diagnose and resolve issues.
3. Orchestrate - Orchestrate and integrate your automation with other Azure or third party services and products.

---

[How Terraform Works With Plugins](https://developer.hashicorp.com/terraform/plugin/how-terraform-works)  

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform is built on a plugin-based architecture, enabling developers to extend Terraform by writing new plugins or compiling modified versions of existing plugin

---

[How Ansible works](https://www.ansible.com/overview/how-ansible-works)  

Ansible® is an open source, command-line IT automation software application written in Python. It can configure systems, deploy software, and orchestrate advanced workflows to support application deployment, system updates, and more.

---

[Azure Automation runbook types](https://learn.microsoft.com/en-us/azure/automation/automation-runbook-types?tabs=lps72%2Cpy27)  

- PowerShell runbooks
- PowerShell Workflow runbooks
- Python runbooks
- Graphical runbooks

---

### Question 90:

You have a Windows Server 2016 VM named server02 in Azure.
The VM will be used as a Web Server and a SMPT server.

You need to configure the VM using **PowerShell Desired State Configuration (DSC)**.

How should you complete the PowerShell DSC configuration?
Select the appropriate options.

```
Node OPTION-1
{
  OPTION-2 ConfigureVmServices
  {
    Name = OPTION-3
    Ensure = OPTION-4
    IncludeAllSubFeature = $true
  }
}
```

OPTION-1: localhost | server01 | server02
OPTION-2: WindowsFeature | WindowsFeatureSet | WindowsOptionalFeature | WindowsFeatureSet
OPTION-3: @("SMTP-Server","WebServer") | "SMTP-Server" | "WebServer"
OPTION-4: "Absent" | "Enable" | "Present"

 
---

### Answer:

```
Node server02
{
  WindowsFeatureSet ConfigureVmServices
  {
    Name = @("SMTP-Server","WebServer")
    Ensure = "Present"
    IncludeAllSubFeature = $true
  }
}
```
The remaining options do no apply to this case.

OPTION-4: "Absent"
ensures tha the features in the sets are not installled

OPTION-4: "Enable"
this option is only valid for individual features resources and not a features sets.

[Ensure](https://learn.microsoft.com/en-us/powershell/dsc/reference/resources/windows/windowsfeatureresource?view=dsc-1.1):	
Indicates if the role or feature is added. To ensure that the role or feature is added,
set this property to Present. To ensure that the role or feature is removed, set the 
property to Absent. 
The default value is Present.



---

### References:

[DSC Configurations](https://learn.microsoft.com/en-us/powershell/dsc/configurations/configurations?view=dsc-1.1&viewFallbackFrom=powershell-7)  

---

[DSC WindowsFeature Resource](https://learn.microsoft.com/en-us/powershell/dsc/reference/resources/windows/windowsfeatureresource?view=dsc-1.1)   
provides a mechanism to ensure that roles and features are added or removed on a target node.

[DSC WindowsFeatureSet Resource](https://learn.microsoft.com/en-us/powershell/dsc/reference/resources/windows/windowsfeaturesetresource?view=dsc-1.1)  
provides a mechanism to ensure that roles and features are added or removed on a target node. This resource is a composite resource that calls the WindowsFeature resource for each feature specified in the Name property.

---

[DSC WindowsOptionalFeature Resource](https://learn.microsoft.com/en-us/powershell/dsc/reference/resources/windows/windowsoptionalfeatureresource?view=dsc-1.1)   
provides a mechanism to ensure that optional features are enabled on a target node.

[DSC WindowsOptionalFeatureSet Resource](https://learn.microsoft.com/en-us/powershell/dsc/reference/resources/windows/windowsoptionalfeaturesetresource?view=dsc-1.1)  
This resource is a composite resource that calls the WindowsOptionalFeature resource for each feature specified in the Name property.

---

### Question 91:

You manage an Azure VM that runs as a worker for the job workload a web application.
The application shares the same code for the worker and the web workroles.

Developers report that they can accesss the web application through the worker VM.
You discover that a web server was incorectly installer on the worker, 
causing configuration drift.

You need to **ensure that the worker server does not respond to web requets and**
**minimize configuration drift** in the future.

What should you do?

- enable the Change tracking and Inventory feature in Azure Automation
- block internet access to the VM with a security group
- schedule a runbook to remove the web server
- create a Deisered State Configuration (DSC) in Azure Automation to 
  ensure that the web server (role) is not installed on the VM (of the worker role)

---

### Answer:

- create a Deisered State Configuration (DSC) in Azure Automation to 
  ensure that the web server (role) is not installed on the VM (of the worker role)
---

The remaining options do not apply to this case.

- enable the Change tracking and Inventory feature in Azure Automation
**Change tracking and Inventory feature in Azure Automation** creates **alerts**
when a specified service is installed on a node. Hoever, it does not prevent
the web server from running on the worker role VM and any other configuration
drift.

[Change Tracking and Inventory overview](https://learn.microsoft.com/en-us/azure/automation/change-tracking/overview?tabs=python-2)  
This feature tracks changes in virtual machines hosted in Azure, on-premises, and other cloud environments to help you pinpoint operational and environmental issues with software managed by the Distribution Package Manager. Items that are tracked by Change Tracking and Inventory include:

- Windows software
- Linux software (packages)
- Windows and Linux files
- Windows registry keys
- Windows services
- Linux daemons

- schedule a runbook to remove the web server
To schedule a runbook in Azure Automation to start at a specified time, you link it to one or more schedules. 
This solution is not suitable in this case beacause there might be times when the web server is running
on the worker role machine bwteen two consecutive runs of the runbook. The solution based on DSC is 
superior and more suitable.

- block internet access to the VM with a security group
This wouod prevent teh worker role VM from respo0nding to web requets but does not remove the 
cause of this misconfiguration.

---

### References:

[Azuire Automation - Configure machines to a desired state](https://learn.microsoft.com/en-us/azure/automation/tutorial-configure-servers-desired-state)  

Azure Automation State Configuration allows you to specify configurations for your servers and ensure that those servers are in the specified state over time.

- Onboard a VM to be managed by Azure Automation DSC
- Upload a configuration to Azure Automation
- Compile a configuration into a node configuration
- Assign a node configuration to a managed node
- Check the compliance status of a managed node

For this tutorial, we use a simple DSC configuration that ensures that IIS is installed on the VM.

---

[Discover what software is installed on your VMs](https://learn.microsoft.com/en-us/azure/automation/automation-tutorial-installed-software)  

Learn how to use the Azure Automation Change Tracking and Inventory feature to find out what software is installed in your environment. You can collect and view inventory for software, files, Linux daemons, Windows services, and Windows Registry keys on your computers. Tracking the configurations of your machines can help you pinpoint operational issues across your environment and better understand the state of your machines.

- Enable Change Tracking and Inventory
- Enable an Azure VM
- Enable a non-Azure VM
- View installed software
- Search inventory logs for installed software

---

[Manage schedules in Azure Automation](https://learn.microsoft.com/en-us/azure/automation/shared-resources/schedules)  
To schedule a runbook in Azure Automation to start at a specified time, you link it to one or more schedules. 

---

### Question 92:

Your company monitors resource compliance through security scans.
Your development team must make sure that all resources stay compliant.

You need to create a list of all non-comliant resources based on
existing policies using PowerShell in Azure DevOps.

What should you use?

- Get-AzPolicyState
- Start-AzPolicyRemediation
- Get-AzPolicyRemediation
- Get-AzPolicyEvent

---

### Answer:
- Get-AzPolicyState

[Get-AzPolicyState](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/get-azpolicystate?view=azps-11.0.0)   

Gets policy compliance states for resources. Policy state records can be queried at various scopes. 
Based on the time interval specified (defaults to last day), either latest policy states or 
all policy state transitions can be queried. 
Results can be filtered, grouped, and group aggregations can be computed.

There is also a similar command:
[Get-AzPolicyStateSummary](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/get-azpolicystatesummary?view=azps-11.0.0)  
Gets latest policy compliance states summary for resources.

Gets a summary view of latest policy compliance state numbers at various scopes, broken down into policy assignments and policy definitions. It includes only non-compliant policy states.

---

The remaining options do not apply to this case.

- Get-AzPolicyEvent
[Get-AzPolicyEvent](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/get-azpolicyevent?view=azps-10.4.1)   

Gets policy evaluation events generated as resources are created or updated. 
Policy event records can be queried at various scopes based on the time interval specified 
(defaults to last day). Results can be filtered, grouped, and group aggregations can be computed.

---

#### Remediation:

[Remediate non-compliant resources with Azure Policy](https://learn.microsoft.com/en-us/azure/governance/policy/how-to/remediate-resources?tabs=azure-portal)  

Resources that are non-compliant to policies with: 
 - deployIfNotExists or 
 - modify effects 

 can be put into a compliant state through Remediation. Remediation is accomplished through 
 **remediation tasks** that deploy the **deployIfNotExists template** or the 
 **modify operations** of the assigned policy on your existing resources and subscriptions, 
 whether that assignment is on a management group, subscription, resource group, or 
 individual resource. 
 
 This article shows the steps needed to understand and accomplish remediation with Azure Policy.

---

- Start-AzPolicyRemediation   

[Start-AzPolicyRemediation](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/start-azpolicyremediation?view=azps-11.1.0&viewFallbackFrom=azps-10.1.0)

creates a policy remediation for a particular policy assignment. All non-compliant resources 
at or below the remediation's scope will be remediated. Remediation is only supported for
policies with the **'deployIfNotExists'** effect.

- Get-AzPolicyRemediation  

[Get-AzPolicyRemediation](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/get-azpolicyremediation?view=azps-11.0.0)  

gets all policy remediations in a scope or a particular remediation.

---

### References:

[Quickstart: Create a policy assignment to identify non-compliant resources using Azure PowerShell](https://learn.microsoft.com/en-us/azure/governance/policy/assign-policy-powershell)    

[Az.PolicyInsights](https://learn.microsoft.com/en-us/powershell/module/az.policyinsights/?view=azps-11.1.0&viewFallbackFrom=azps-2.4.0)  

---

### Question 93:

You are the infrastructure engineer of your team.
You use **Automation State Configuration** to ensure the configuration of the 
application server.

When a **new** application server is deployed, it is configured correctly.
However, **the servers** experience **configuration drift** over time.

You use the following PowerShell command to register the server nodes:

```
Register-AzAutomationDscNode `
-ResourceGroupName "myResourceGroup" `
-AutomationAccountName "automationAccount" `
-ConfigurationMode "ApplyOnly"
-ConfigurationModeFrequencyMins 60
-AzureVMName $vmName `
```

You need to fix the PowerShell to **avid configuration drift**.

What should you do?

- add the -RebootNodeIfNeeded parameter as true
- replace the ConfigurationModeFrequencyMins withe the RefreshFrequencyMins 
- decrese the ConfigurationModeFrequencyMins to 20
- change the ConfigurationMode param

---

### Answer:
- change the ConfigurationMode param

ConfigurationMode:
Specifies the DSC configuration mode. Valid values are:
- ApplyAndMonitor
- ApplyAndAutocorrect
- ApplyOnly

You should set this parameter to **ApplySAndAutocorrect** in order to eliminate the configuration drift.
The **ApplyOnly** updates the server configuration only the first time and neither detects not correct
any configuration drift afetrwards. \

**ApplyAndMonitor**:

ApplyAndMonitor: This is the default value. The LCM applies any new configurations. 
After initial application of a new configuration, if the target node drifts from the
desired state, **DSC reports the discrepancy in logs**. 
Note that DSC will attempt to apply the configuration until it is successful before
ApplyAndMonitor takes effect.

---

The following options do not apply.

- RebootNodeIfNeeded
Specifies whether to restart the virtual machine, if needed.

- ConfigurationModeFrequencyMins
Specifies the frequency, in minutes, at which the background application of DSC attempts to implement the current configuration on the target node.

- RefreshFrequencyMins
Specifies the frequency, in minutes, at which the local Configuration Manager 
contacts the Azure Automation DSC pull server to download the latest node configuration.

---

### References:

[Register-AzAutomationDscNode](https://learn.microsoft.com/en-us/powershell/module/az.automation/register-azautomationdscnode?view=azps-11.0.0)  
Registers an Azure virtual machine running Windows OS as a DSC node for an Automation account.

ConfigurationMode:
Specifies the DSC configuration mode. Valid values are:
- ApplyAndMonitor
- ApplyAndAutocorrect
- ApplyOnly

---

### Question 94:

You work for a financial company. 
You maintain an application that runs in a group of Azure VMs with Red Had Enterprise 
as OS. You plan to maintain therse VMs desired configuration by using a configuration 
management tool. 

Due to compliance policies the VMs should not have agents installed or any background
jobs running on them.

Which is the configuration management tool that you should recommend?

- Chef
- Ansible
- Terraform
- Puppet

---

### Answer:
- Ansible
Ansible is a configuration tool based on Python that is capable of configuring VMs.
Ansible **does not require an agent** on the target machine.
It only **needs Python to be installed on both machines and access to SSH**.


- Ansible:
Using **Ansible Palybooks** yoi can **apply resource configurations** to targets.
However, Ansible **uses only a Push model** therefore it cannot guard against 
configuration drift.

The remaining options do not apply in this case.

- Terraform:
Terraform is provider-agnostic a IaC deployment tool and not a configuration management tool.

- Chef & Puppet:
These require an agent to be installed on the target machine.

---

### References:

[Ansible - How does it work?](https://www.ansible.com/overview/how-ansible-works)
[Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html)  

Ansible provides open-source automation that reduces complexity and runs everywhere. 
Using Ansible lets you automate virtually any task. 
Here are some common use cases for Ansible:

- Eliminate repetition and simplify workflows
- Manage and maintain system configuration
- Continuously deploy complex software
- Perform zero-downtime rolling updates

As automation technology, Ansible is designed around the following principles:

- Agent-less architecture:
Low maintenance overhead by avoiding the installation of additional software across IT infrastructure.

- Simplicity
Automation playbooks use straightforward YAML syntax for code that reads like documentation. 
Ansible is also decentralized, using SSH existing OS credentials to access to remote machines.

- Scalability and flexibility
Easily and quickly scale the systems you automate through a modular design that supports a large
range of operating systems, cloud platforms, and network devices.

- Idempotence and predictability
When the system is in the state your playbook describes Ansible does not change anything, 
even if the playbook runs multiple times.

---

[What is Puppet?](https://www.puppet.com/docs/puppet/7/what_is_puppet)  

Puppet is a tool that helps you manage and automate the configuration of servers.
When you use Puppet, you define the desired state of the systems in your infrastructure that 
you want to manage.
You do this by writing infrastructure code in Puppet's Domain-Specific Language (DSL) 
which you can use with a wide array of devices and operating systems. 
Puppet code is declarative, which means that you describe the desired state of your systems, 
not the steps needed to get there. 
**Puppet then automates the process of getting these systems into that state and keeping them there**.
**Puppet does this through Puppet primary server and a Puppet agent**.
The Puppet primary server is the server that stores the code that defines your desired state.
The Puppet agent translates your code into commands and then executes it on the systems you specify, 
in what is called a Puppet run.

---

[What is Terraform?](https://developer.hashicorp.com/terraform/intro) 

Terraform is provider-agnostic a IaC deployment tool and not a configuration management tool.

---

### Question 95:

You plan to **automate the desired state configuration of an application that runs in Azure VMs**.
Each Azure VM corresponds to a different environment of the application and requires a different
configuration managed by **PowerShell Desired State Configuration (DSC)** configurations.

You are configuring a **proof of concept** to **compile the DSC configuration** using 
**Azure Automate runbooks**. 

You write the runbook script as shown in the exhibit.
You need to run this runbook in your Azure subscription.

<img src="./Q95-exhibit.png">

Which **three actions** and in which order should you perform?

- Import the necessary submodules from the modules gallery
- create a PowerShell runbook and execute it
- create a PowerShell Workflow runbook and execute it
- create a PowerShell graphical runbook and execute it
- create an Azure Automation Account

---

### Answer:

1. create an Azure Automation Account
2. Import the necessary submodules from the modules gallery
3. create a PowerShell runbook and execute it

You need an **Azure Automation Account** to :

  - manage runbooks 
  - configuration management
  - compiling DSC configurations

In this case you need to import into into the **Azure Automation Account** the
PowerShell modules that provide the functions that are used in the runbook:

 - Az.Accounts      > Connect-AzAccount & Disable-AzContextAutosave
 - Az.Automation    > Get-AzAutomationConnection & Start-AzAutomationDscCompilationJob

---

The remaining options do not apply in this case:

- create a PowerShell Workflow runbook and execute it

**PowerShell Workflow runbooks** support additional features, 
like **checkpoints, parallel execution and runspaces**.
Their syntax is slightly different form plain PowerShell runbooks.

- create a PowerShell graphical runbook and execute it

This type of runbook is created a GUI in Azure Automate.
You cannot use the current script in this GUI as it is.

---

### References:

[Start-AzAutomationDscCompilationJob](https://learn.microsoft.com/en-us/powershell/module/az.automation/start-azautomationdsccompilationjob?view=azps-11.0.0)  
compiles an APS Desired State Configuration (DSC) configuration in Azure Automation.

[Get-AzAutomationConnection](https://learn.microsoft.com/en-us/powershell/module/az.automation/get-azautomationconnection?view=azps-11.0.0)  
gets one or more Azure Automation connections. By default, this cmdlet retrieves all connections. Specify the name of a connection to get a specific connection. Specify the connection type name to get all connections of a specific type.

[Connect-AzAccount](https://learn.microsoft.com/en-us/powershell/module/az.accounts/connect-azaccount?view=azps-11.1.0)   
Connect to Azure with an authenticated account for use with cmdlets from the Az PowerShell modules.

[Disable-AzContextAutosave](https://learn.microsoft.com/en-us/powershell/module/az.accounts/disable-azcontextautosave?view=azps-11.1.0)  
Turn off autosaving Azure credentials. Your login information will be forgotten the next time you open a PowerShell window

---

[Tutorial: Create Automation PowerShell runbook using managed identity](https://learn.microsoft.com/en-us/azure/automation/learn/powershell-runbook-managed-identity)  

[Create a standalone Azure Automation account](https://learn.microsoft.com/en-us/azure/automation/automation-create-standalone-account?tabs=azureportal)  

[Azure Automation runbook types](https://learn.microsoft.com/en-us/azure/automation/automation-runbook-types?tabs=lps72%2Cpy27)  


---

### Question 96:

You manage a CI pipeline in Azure Pipelines. 
The development team reports that some builds fail in the unit tests phase.
You need to recommend to the development team **a solution to find out which tests** 
**fail intermittenlty** and fix these tests.

Which solution should you recommend?

- check the test summary for the last failed build
- check the pipeline failures analytics report
- check the test failures analytics report
- check the test failures analytics metric
- check the pipeline failures analytics metric


---

### Answer:
- check the test failures analytics report

This report is available in the **build tests analytics tab** and includes metrics on how many
tests are executed in the pipeline and their outcome and some metrics for each test.
You can sort the tests by pass rate and identify the tests that fail intermittently as they will 
have the lowest passing rate.

---

The remaining options do not apply in thuis case.

- check the test summary for the last failed build
From a test summary it would not be possible to identify tests that fail intermittently.

- check the pipeline failures analytics report
This reports focusses on the failires of the tasks in CI pipeline which might include
**static code analysis, code standard checks, unit / feature / integration tests**.
In this case the development team is interested in the unit tests.

- the **analytics metric**
The Azure Pipelines build analytics tab has trhree summary metrics:

- pipeline failurea
- test failures
- pipeline duration

Each of this tabs take you to **more detailed reports**.
However, none of these would make it possible to identify tests that fail intermittently.



---

### References:

[Azure DevOps - Test Analytics](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops)
Tracking test quality over time and improving test collateral is key to maintaining a healthy DevOps pipeline.
**Test analytics** provides near real-time visibility into your test data for builds and releases. 
It helps improve the efficiency of your pipeline by identifying repetitive, high impact quality issues.

[Azure DevOps - Review test results](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/review-continuous-test-results-after-build?view=azure-devops)  

[Manage flaky tests](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/flaky-test-management?view=azure-devops&source=recommendations)  

Flaky tests present a barrier to finding real problems, since the failures often don't relate to the changes being tested. 
A flaky test is a test that provides different outcomes, such as pass or fail, even when there are no changes in the source
code or execution environment. Flaky tests also impact the quality of shipped code


---

### Question 97:

You manage a **GitHub organization with two open-source projects**.
You plan to **integrate these projects with Azurre Pipeline**.

**Project1**: 
- is a very popular project. 
- It receives an average of **15 contributions per hour**
- the **build pipeline runs in 20 minutes**
- The **release pipeline is composed of 12 multiple stages to support cross-platform operating systems**.

**Project2**: 
- it is a simpler project
- It receives an average of **5 contributions per day**
- the **build pipeline runs in 3 minutes**
- it is a single stage release pipeline

You have a sponsor that covers the project infrastructure costs in necessary.

You need to **recommend an appropriate agent** to run the projects pipelines.
You need to **minimize the in-queue build time for both projects and the administrative effort to maintain the host agents**.

Which agent should you recommend for each project?

Project1: ?
Project2: ?

OPTIONS
1. Microsoft-Hosted Agent
2. Self-Hosted Agent

---
### Answer:

Project1: Self-Hosted Agent
Project2: Microsoft-Hosted Agent

---

### Explanation:

Project1: Self-Hosted Agent

Microsoft offers a free self-hosted tier: [Azure DevOps Services](https://azure.microsoft.com/en-us/pricing/details/devops/azure-devops-services/)
With the **free self-hosted tier** you get an **unlimited bild time per month**.
However, you will have to pay for the infrastructure that your self-hosted agent runs on.
In this specific case there is a sponsor that pays for these costs.
Moreover, you are required to **minimize the in-queue build time** and a way to achieve this goal is 
obviously to parallelize the builds over as many agents as possible, thus you will have to provision 
as many hosted server as required  in order to keep the **in-queue build time** for **Project1** within
acceptable limits i.e. for eaxample the current **20 minutes** with **15 contributions per hour**.
Should **Project1** become more complex and more popular and therefore the contribution rate increase
from its present value of **15 contributions per hour**, you could then provision additional self-hosted
agents to keep the performance within acceptable limits.

Project2: Microsoft-Hosted Agent

For **public & open-source projects** Micorsoft offers a **free tear ofr Azure Pipelines of 10 parallel builds**
**on Microsoft-Hosted Agents and unlimited build time per month!** This is plenty co cover the requiremnts for 
Project2. This choice **minimize not only the costs but also the administrative effort** which is a requirement.


---

#### Azure Pipelines:

- 1 Free Microsoft-hosted CI/CD
1 Microsoft-hosted job with 1,800 minutes per month for CI/CD 

and 
- 1 Free Self-Hosted CI/CD
1 self-hosted job with unlimited minutes per month

€36.43 per extra Microsoft-hosted CI/CD parallel job 
and 
€13.66 per extra self-hosted CI/CD parallel job with unlimited minutes

---

#### Azure Artifacts:
2 GiB free, then starting at €1.83 per GiB

---

### References:

[Configure and pay for parallel jobs](https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=ms-hosted)  

---

### Question 98:

Your company uses Azure DevOps Services to build and release commercial software.
Teams track the health and efficiency of their Azure pipelines to ensure continuous 
deliver (CD) to their customers.

You use **Azure Pipeline Anaystics** to gain insights into the Azure Pipeline health.

You obeserve that a large number of tasks fail. 
You need to analyse the appropriate report in order to understand the reason for the 
top failing tests.

Whato should you analyse?

- The pipeline pass rate
- a report with filters applied to it
- the test failures report
- the pipeline duration report


---

### Answer:
- The pipeline pass rate

This report provides an **in-depth view** of the pipeline pass rate and its trend over time.
It provides insights into which tasks have failed and have contributed to failures.

The **pipeline pass rate report consist of three sections**:

1. Summary:
this provides a summary of the key rare metrics for the pipeline over a specific time range.

2. Failure trend:
this provides the number of pipeline failures per day.

3. Top failing tasks and their failed runs:
this section **lists the top failing tasks and their trends over time and provides insight into their failed runs**.
This is the section of the report that is most relevant to this question.

---

The remaining options do not apply in this case.

- the pipeline duration report
This report shows how long the pipeline takes to complete successfully.

- the test failures report
This report gives a **granular view of the top failing tests in the pipeline along the test details**.
It also provides a summary of the key metrics for the tests that are run in the pipeline and also the
trends i.e. the average pass rate on each day over a period of time.

- a report with filters applied to it
Filters can be applied to all pipeline reports.


---

### References:

[Pipeline reports](https://learn.microsoft.com/en-us/azure/devops/pipelines/reports/pipelinereport?view=azure-devops)  
[Azure Pipelines-Test Analytics](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-analytics?view=azure-devops)  

---

### Question 99:

Your company uses Azure DevOps Services to build, release an manage large customer software projects.

You manage a team of developers and you aim at increasing their productivity by helping them to find
**real problems** in the code under development.

YOU need to use a pipeline test to test different outcomes such as pass of fail.
The data should be available for all pipelines for a given branch.

Which pepeline test should you use?

- UI testing
- Parallel testing
- Test Impact Analysis (TIA)
- Flaky Testing

---

### Answer:
- Flaky Testing

By using **Flaky Testing development effort is reduced** bevause this feature **automatically detects thiose tests**
**that fail intermittently** and therefore are not caused by systematic errors in the code base.
Once a test is marked as flaky the corresponding data is made available for all Azure Pipelimnes for a given branch.
You can also use other features such as tags for troubleshooting purposes, manual bug creation, marking and unmarking
a test as flaky based on your analysis and close a lloop by resetting a falkty test. 

The remaining options do not apply in this case.

- Parallel testing
This only aims at reducing the build time and improving the CI feedback time.
One technique is **test slicing** that was discussed in a prior question. 
When there are too many tests and this cause the build time to become too long then it is possible to 
split the test runs on parallel pipelines to improve the situation.

- Test Impact Analysis (TIA)
This is discessed in the references below.

- UI testing
obvious

---

### References:


[Manage flaky tests](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/flaky-test-management?view=azure-devops&source=recommendations)  

Flaky tests present a barrier to finding real problems, since the failures often don't relate to the changes being tested. 
A flaky test is a test that provides different outcomes, such as pass or fail, even when there are no changes in the source
code or execution environment. Flaky tests also impact the quality of shipped code

[Speed up testing by using Test Impact Analysis (TIA)](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/test-impact-analysis?view=azure-devops)  

As the codebase grows and matures, its regression test suite tends to grow as well - to the extent that running a full regression test might require hours.
This slows down the frequency of integrations, and ultimately defeats the purpose of continuous integration. 
In order to have a CI pipeline that completes quickly, some teams defer the execution of their longer running tests to a separate stage in the pipeline.
However, this only serves to further defeat continuous integration.

Instead, enable Test Impact Analysis (TIA) when using the **Visual Studio Test task in a build pipeline**. 
**TIA performs incremental validation by automatic test selection**. 
**It will automatically select only the subset of tests required to validate the code being committed**. 
For a given code commit entering the CI/CD pipeline, TIA will select and run only the relevant tests required to validate that commit. 
Therefore, that test run will complete more quickly, if there is a failure you will get to know about it sooner, and because it is all
scoped by relevance, analysis will be faster as well.

---

[Run tests in parallel using the Visual Studio Test task](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/parallel-testing-vstest?view=azure-devops)  
#### Test Slicing:
The **Visual Studio Test task (version 2)** is designed to work seamlessly with **parallel job settings**. 
When a pipeline job that contains the Visual Studio Test task (referred to as the "VSTest task" for simplicity) is configured 
to run on multiple agents in parallel, it **automatically detects that multiple agents are involved** and **creates test slices** 
that can be run in parallel across these agents.

The task can be configured to create test slices to suit different requirements such as batching based on the number of tests 
and agents, the previous test running times, or the location of tests in assemblies.

---

[Requirements traceability - Agile teams running automated tests](https://learn.microsoft.com/en-us/azure/devops/pipelines/test/requirements-traceability?view=azure-devops)  

---

### Question 100:

Your company uses Azure DevOps Services to build AND release software.
Your project downloads the same set of dependencies at the start of every run.

Your team needs to reduce the build time and cost associated with creating or
re-downloading dependencies from earlies runs.

What should you implement?

- Pipeline caching
- Parallel Jobs
- Pipeline Artifacts
- Cross-platform scripts

---

### Answer:
- Pipeline caching

---

### References:

[Pipeline caching](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)  

---

[Configure and pay for parallel jobs](https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=ms-hosted)  

---

[Artifacts in Azure Pipelines - overview](https://learn.microsoft.com/en-us/azure/devops/pipelines/artifacts/artifacts-overview?view=azure-devops&tabs=nuget%2Cnugetserver%2Cnugettfs)  

Azure Artifacts allow developers to publish and consume various types of packages from feeds and public registries
like PyPI, Maven Central, and NuGet.org. You can combine Azure Artifacts with Azure Pipelines to publish build and
pipeline artifacts, deploy packages, or integrate files across different stages of your pipeline for building, 
testing, or deploying your application.

---

[Run cross-platform scripts](https://learn.microsoft.com/en-us/azure/devops/pipelines/scripts/cross-platform-scripting?view=azure-devops&tabs=yaml)  
With Azure Pipelines, you can run your builds on macOS, Linux, and Windows machines. 
If you develop on cross-platform technologies such as .NET Core, Node.js and Python, these capabilities bring both benefits and challenges.
For example, most pipelines include one or more scripts that you want to run during the build process. 
But scripts often don't run the same way on different platforms. 
You can use the script keyword shortcut to make writing scripts easier and also can use conditions to target specific platforms with your scripts.

[Consider Bash or pwsh](https://learn.microsoft.com/en-us/azure/devops/pipelines/scripts/cross-platform-scripting?view=azure-devops&tabs=yaml)  

If you have more complex scripting needs than the examples shown above, then consider writing them in Bash. 
Most macOS and Linux agents have Bash as an available shell, and Windows agents include Git Bash or 
Windows Subsystem for Linux Bash.

**For Azure Pipelines, the Microsoft-hosted agents always have Bash available!**

[Switch based on platform](https://learn.microsoft.com/en-us/azure/devops/pipelines/scripts/cross-platform-scripting?view=azure-devops&tabs=yaml#switch-based-on-platform)  
In general, we recommend that you avoid platform-specific scripts to avoid problems such as duplication of your pipeline logic. 
However, if there's no way to avoid platform-specific scripting, then you can use a condition to detect what platform you're on.

For example, suppose that for some reason you need the IP address of the build agent. 

- On Windows, ipconfig gets that information 
- On macOS, it's ifconfig
- on Ubuntu Linux, it's ip addr

```
steps:
# Linux
- bash: |
    export IPADDR=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')
    echo "##vso[task.setvariable variable=IP_ADDR]$IPADDR"
  condition: eq( variables['Agent.OS'], 'Linux' )
  displayName: Get IP on Linux
# macOS
- bash: |
    export IPADDR=$(ifconfig | grep 'en0' -A3 | grep inet | tail -n1 | awk '{print $2}')
    echo "##vso[task.setvariable variable=IP_ADDR]$IPADDR"
  condition: eq( variables['Agent.OS'], 'Darwin' )
  displayName: Get IP on macOS
# Windows
- powershell: |
    Set-Variable -Name IPADDR -Value ((Get-NetIPAddress | ?{ $_.AddressFamily -eq "IPv4" -and !($_.IPAddress -match "169") -and !($_.IPaddress -match "127") } | Select-Object -First 1).IPAddress)
    Write-Host "##vso[task.setvariable variable=IP_ADDR]$IPADDR"
  condition: eq( variables['Agent.OS'], 'Windows_NT' )
  displayName: Get IP on Windows

# now we use the value, no matter where we got it
- script: |
    echo The IP address is $(IP_ADDR)

```

---

### Question 101:

Your company uses Azure DevOps Services to MANAGE the development AND release of large software projects.

According to cusotmer compliance policy, it is required to store runs, releases and tests stored in the
system.

You need to **set automatic retention leases on Azure Pipeline runs**, allowing retrivial of any leases
owned by a specific entry and optionally being scoped to a single Azure pipeline definition.

Which **retention lease operation** should you perform?

- Gete Retentionl Lease By User Id
- Gete Retentionl Lease By Owner Id
- Gete Retentionl Lease By Minimal Retention Leases

---

### Answer:

- Gete Retentionl Lease By Owner Id
Returns any leases owned by the specified entity, optionally scoped to a single pipeline definition and run.

---

### References:

[Set retention policies for builds, releases, and tests](https://learn.microsoft.com/en-us/azure/devops/pipelines/policies/retention?view=azure-devops&tabs=yaml)  

Retention policies let you set how long to keep runs, releases, and tests stored in the system. 
To save storage space, you want to delete older runs, tests, and releases.

The following retention policies are available in Azure DevOps in your Project settings:

1. Pipeline - Set how long to keep artifacts, symbols, attachments, runs, and pull request runs.
2. Release (classic) - Set whether to save builds and view the default and maximum retention settings.
3. Test - Set how long to keep automated and manual test runs, results, and attachments.

By default, members of the **Contributors, Build Admins, Project Admins, and Release Admins** 
groups can manage retention policies.

---

[Azure Pipelines - Leases](https://learn.microsoft.com/en-us/rest/api/azure/devops/build/leases?view=azure-devops-rest-6.0)  

Retention leases are used to manage the lifetime of pipeline runs beyond the configured retention periods.

| Operation | Description |
| --------- | ------------------------------------------------- |
| Add  |  Adds new leases for pipeline runs. |
| Delete  |  Removes specific retention leases. |
| Get  |  Returns the details of the retention lease given a lease id. |
| Get Retention Leases By Minimal Retention Leases  |  Returns any leases matching the specified MinimalRetentionLeases |
| Get Retention Leases By Owner Id  | Returns any leases owned by the specified entity, optionally scoped to a single pipeline definition and run. |
| Get Retention Leases By User Id | Returns any leases owned by the specified user, optionally scoped to a single pipeline definition and run. |


---

### Question 102:

Your company uses Azure DevOps Services to OPTIMIZE the BUILD and RELEASE cycle of commercial software.
You want to understand hoe to run parallel jobs as part of a pipeline.

You need to **identify shich scenarios are appropriate for running parallel jobs on Microsoft-Hosted infrastructure**.

Which **two scenarios** should you identify?

- if you have multiple teams and each requires CI
- if you have multiple teams and each DOES NOT require CI
- if you develop multiple applications using one organization or server
- if your CI trigger applies to a single branch

---

### Answer:

You should opt for **parallel jobs to optimize your pipelines** in the following scenarios:

- if you have multiple teams and each requires CI
allocate to each team its own pipeline

- if you develop multiple applications using one organization or server
use a job for each application in order to deply each app concurrently 

The following do not apply.

- if you have multiple teams and each DOES NOT require CI
- if your CI trigger applies to a single branch

If there are multiple teams and multiple branches then use parallen jobs.

---

### References:

[Configure and pay for parallel jobs](https://learn.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops&tabs=ms-hosted)  


---

### Question 103:

You manage a release pipeline in Azure Pipeline.
**During the release phase you need to use a private SSH key stored in a file**.
You need to **store the ket securely and use it without exposing it**.

Which **two actions** sould you perform?

- use the Dowwnload Secure File task to download the SSH key
- Create a pipeline variable with the SSH key
- upload the SSH key in the Azure Pipeline Library as a secure file
- add the SSH key to the code repository
- read the SSH key from an Environment Variable

---

### Answer:
- upload the SSH key in the Azure Pipeline Library as a secure file
- use the Dowwnload Secure File task to download the SSH key

With Azure Pipilines you can create variable groups and store secure files 
to be shared in all your build and release pipelines. 
Then you can use **the Download Secure File task** to download the SSH key
and use in tasks of the pipeline on an agent.
`$(Agent.TempDirectory)` is the default folder to which the task downloads
files. The following tasks may access this fiolder and use the files within.

The following do not apply:

- add the SSH key to the code repository
not a good practice, obviously!

- Create a pipeline variable with the SSH key
**pipeline variables are used to store simple values and not complex secrets such as a SSH key or files**.

- read the SSH key from an Environment Variable
**Environement Variable** can be access in a pipeline but these are **not encrypted**.
You must make use of **secret variables** instead which are not saved to Environment Variables.
In this case though you need a file therefore use use **the Download Secure File task** 
to download the SSH key. This task and all task set **Environement Variable** i.e.
**the Download Secure File task** sets a EV to the path of the files that are downloaded. 

---

### References:

[Use secure files](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops)  

[DownloadSecureFile@1 - Download secure file v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-secure-file-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

---

[Azure Pipeline - Library of assets](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/?view=azure-devops)   

**A library is a collection of build and release assets** for an Azure DevOps project. 
Assets defined in a library can be used in multiple build and release pipelines of the project. 
The Library tab can be accessed directly in Azure Pipelines.

---

[Azure Pipeline - Define variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch)  

---

### Question 104:

You are the Tech Lead of a development team. Your team maintains an open-source project
hosted in a public GitHub repository.

You receive a notificatuion from the security team that a sensitive API key was commited 
in a configuration file.

You **must remove the sensitive data from the repository**.

What should you do?

- run the **BFG Repo-Cleaner** tool and push force the changes to GitHub
- cherry-pick the commit that adds the sensitive data to the main branch
- create a new commit removing the sensitive data
- revert the PR that changes thsi configuration file

---

### Answer:
- run the **BFG Repo-Cleaner** tool and push force the changes to GitHub

---

### References:

[Removing sensitive data from a repository](*https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)  

If you commit sensitive data, such as a password or SSH key into a Git repository, 
you can remove it from the history. To entirely remove unwanted files from a 
repository's history you can use either 

- the git filter-repo tool or 
- the [BFG Repo-Cleaner open source tool](https://rtyley.github.io/bfg-repo-cleaner/)  

```
$ bfg --strip-blobs-bigger-than 100M --replace-text banned.txt repo.git
```

an alternative to `git-filter-branch`

The BFG is a simpler, faster alternative to `git-filter-branch` for cleansing 
bad data out of your Git repository history:

- Removing Crazy Big Files
- Removing Passwords, Credentials & other Private data

The `git-filter-branch` command is enormously powerful and can do things that the BFG can't
but the BFG is much better for the tasks above, because:

- Faster : 10 - 720x faster
- Simpler : The BFG isn't particularily clever, but is focused on making the above tasks easy
- Beautiful : If you need to, you can use the beautiful Scala language to customise the BFG. Which has got to be better   than Bash scripting at least some of the time.

---

[Git cherry pick](https://www.atlassian.com/git/tutorials/cherry-pick)  
When to use git cherry pick:
git cherry-pick is a useful tool but not always a best practice. 
Cherry picking can cause duplicate commits and many scenarios where cherry picking would work, 
traditional merges are preferred instead. With that said git cherry-pick is a handy tool for 
a few scenarios:

- Team collaboration
- Bug hotfixes
- Undoing changes and restoring lost commits

---

### Question 105:

You are building a pipeline for three projects:

- ProjectA:
uses Azure Pipelines to deploy Azure Resources using a Azure Resource Manager (ARM)
template with a secure parameter value.

- ProjectB:
uses GitHub Actions to publis a Node.js package to a nepm registru unisn a secret npm token.

- ProjectC:
uses Azure Pipelines to notify a 3rd-party monitoring system about successful deployments
using a secret API key.

You need to **implement the appropriate secret storage for each project** 
**with minimal changes to the pipeline tasks**.

Which secret storage should you use for each project?

- Azure Key Vault secret
- GitHub Action secret
- Azure Pipeline secret variable
- Predefined variables
- Runtime parameters

---

### Answer:

- ProjectA:
Azure Key Vault secret
This is a special case because in ARM templates a secure param is a reference to a secret 
held in an Azure Key Vault.

- ProjectB:
GitHub Action secret
You can store secrets for a GitHub repository under the **Envirnmoent secret settings**.
You can then use these secrets directly from GitHub Actions using the syntax `${{secrets.SECRETE_NAME}}`.
There is no need for extra steps.

- ProjectC:
Azure Pipeline secret variable
In Azure Pipelines use **secret variables** which are **encrypted at rest**.
The pipeline can then access these values through the variabkle names without requiring extra steps.

---

The following do not apply to this case.

- Predefined variables
in Azure Pipelines these are  regual variables accessible by name in the pipelines.

- Runtime parameters
---

### References:

[Use Azure Key Vault to pass secure parameter value during deployment](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/key-vault-parameter?tabs=azure-cli)  

---

[GitHub Actions - Using secrets in GitHub Actions](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)  
Secrets allow you to store sensitive information in your organization, repository, or repository environments.

[GitHub Actions - Publishing Node.js packages](https://docs.github.com/en/actions/publishing-packages/publishing-nodejs-packages)   

---

[Azure Pipeline-Define variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch)  

[Azure Pipeline-Runtime parameters](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/runtime-parameters?view=azure-devops&tabs=script)  

[Azure Pipeline-use predefined variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml)  

---

### Question 106:

You are migrating an on-premise web application to Azure.
You decide to lift and shift to  Azure Virtual Machines (Azure VMs).

You plan to use Azure Resource Manager (ARM) templates to create a Azure VM via a build pipeline.
**These templates will need to reference secrets stored in Azure Key Vayult during deployment**.

How should you complete the ARM template?

```
"resources": [
  {
    "apiVersion": "2018-05-01",
    "name": "dynamicSecret",
    "type": OPTION-1,
    "properties": {
        "mode": "Incremental",
        "templateLink": {
                "contentVersion": "1.0.0.0",
                "uri":"some-template-link-uri"                 
            },
        "parameters": {
          "adminPassword": {
            "reference": {
              "OPTION-2": {
                "id": "[parameters('id')]"
              },
             "secretName": "[parameters('secretName')]"
          }
        }
      },
    }
  }
]
```
---

OPTION-1: 
Microsoft.Comnpute/virtualMachines
Microsoft.KeyVault/vaults
Microsoft.Resources/deployments

OPTION-2:
keyVault
secret
value


### Answer:

OPTION-1: 
Microsoft.Resources/deployments

OPTION-2:
keyVault

```
"resources": [
  {
    "apiVersion": "2018-05-01",
    "name": "dynamicSecret",
    "type": "Microsoft.Resources/deployments",
    "properties": {
        "mode": "Incremental",
        "templateLink": {
                "contentVersion": "1.0.0.0",
                "uri":"some-template-link-uri"                 
            },
        "parameters": {
          "adminPassword": {
            "reference": {
              "keyVaultId": {
                "id": "[parameters('id')]"
              },
             "secretName": "[parameters('secretName')]"
          }
        }
      },
    }
  }
]
```

OPTION-1: 

`"type": "Microsoft.Resources/deployments"`:
this resource type can retrieve values from Azure Key Vault during deployment.
In this way secrets do not appear in ARM templates.

The following does not apply:

`"type": "Microsoft.KeyVault/vaults"`:
This is wrong in this case and would be used to deploy a Key Vault resource.
In this case the task is to read a secret from the Key Vault in order to use this secret to create the VM.

`"type": "Microsoft.Comnpute/virtualMachines"`:
likewise this is to deploy the VM but the exerpt refers to ` "name": "dynamicSecret",` which obviously 
indicates that this part of teh template is to read a secret from a Key Vault.

OPTION-2: 

```
"adminPassword": {
            "reference": {
              "keyVaultId": {
                "id": "[parameters('id')]"
              },
             "secretName": "[parameters('secretName')]"
          }
        }
```

It is pretty obvoius here that you need `"keyVaultId":` to refetrence the KV by its id.
---

### References:

[Use Azure Key Vault to pass secure parameter value during deployment](https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/key-vault-parameter?tabs=azure-cli)   

[Microsoft.KeyVault vaults 2018-02-14](https://learn.microsoft.com/en-us/azure/templates/microsoft.keyvault/2018-02-14/vaults?tabs=json&pivots=deployment-language-arm-template)   

---

https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/syntax
https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/parameters

---

### Question 107:

You are building a delivery pipeline in Azure DevOps.
This pipeline will deploy to an Azure App Service that is in a 3rd-party Azure subscription
that your credential does not have access to.

You need to configure this pipeline to deply the application in the 3rd-party subscription.

What should you use?

- a service hook subscription
- a service connection with automatic subscription detection
- a service connection with manual subscription pipeline
- a service endpoint

---

### Answer:
- a service connection with manual subscription pipeline

A **Service Connection** in this case allows to connect the Azure DevOps Pipeline 
to the Azure Resource Manager and other serices in order to execute tasks such as
deploying to App Services.

Since in this case your credential does not have access to the 3rd-party Azure 
subscription, you shluod use a manual subscription pipeline and set a different 
account that has permission to deploy the app.

The option below does not apply in this case: 
- a service connection with automatic subscription detection
**Automatic subscription detection** can detect the Azure subscription your credential has access to.
This iS not the case here.


---

### References:

[Manage service connections](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml)    

You can create a connection from Azure Pipelines to external and remote services 
for executing tasks in a job. Once you establish a connection, you can view, edit, 
and add security to the service connection.

For example, you might want to connect to one of the following categories and their services.


- Your Microsoft Azure subscription: 
Create a service connection with your Microsoft Azure subscription and use the name 
of the service connection in an Azure Web Site Deployment task in a release pipeline.

- A different build server or file server: 
Create a standard GitHub Enterprise Server service connection to a GitHub repository.

- An online continuous integration environment: 
Create a Jenkins service connection for continuous integration of Git repositories.

- Services installed on remote computers: 
Create an Azure Resource Manager service connection to a VM with a managed service identity.

---

[Integrate with service hooks](https://learn.microsoft.com/en-us/azure/devops/service-hooks/overview?view=azure-devops)  

Service hooks let you run tasks on other services when events happen in your project in Azure DevOps.

For example, you can: 

- create a card in Trello when a work item gets created or
- send a push notification to your team's mobile devices when a build fails 

You can also use service hooks in custom apps and services as a more efficient way to drive activities
when events happen in your projects.

How do service hooks work?
Service hook publishers define a set of events that you can subscribe to. 
Subscriptions listen for these events and define actions to take based on the event.

---

[Create a service endpoint](https://learn.microsoft.com/en-us/azure/devops/extend/develop/service-endpoints?view=azure-devops)  
Service endpoints are a way for Azure DevOps to connect to external systems or services. 
They're a bundle of properties securely stored by Azure DevOps, which includes but isn't 
limited to the following properties:

- Service name
- Description
- Server URL
- Certificates or tokens
- User names and passwords

---

### Question 108:

You are creating a deployment pipeline in Azure DevOps.
The pipeline needs to access a secret stored in Azure Key Vault.
The KV is provisioned in a subscription namend company1.

The secret is referenced with thsi URI:
`https://acme.vault.azure.net/secrets/apiKey/THE-API-KEY-ID`

You need to configure the AKV task in the pipelien to read this secret.
Select the appropriate options.

Azure Subscription: apiKey | company1 | acme | THE-API-KEY-ID
Key vault: apiKey | company1 | acme | THE-API-KEY-ID
Secret filter: apiKey | company1 | acme | THE-API-KEY-ID

---

### Answer:

Azure Subscription: company1 
Key vault: acme
Secret filter: apiKey

### Explanation:

`https://{key Vault Name}.vault.azure.net/secrets/{secret name}/{secret version}`

---

### References:

[Use Azure Key Vault secrets in Azure Pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/azure-key-vault?view=azure-devops&tabs=yaml)  

[Azure Key Vault keys, secrets and certificates overview](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates)  

---

### Question 109:

You manage an Azure SQL DB in your company subscription.
The DB password is stored as a secret in AKV with an expiration of 14 days.
The expiration of the secret may vary according to the new security policies.
An Azure Wb App connects to thsi DB using this secret.

You need to **automate the secret rotation** for this DB while keeping the password available.

Which **three actions** and in which sequence should you perform?

- create an Azure function that is triggered on an every 2 weeks schedule
- create a new password and set a new secret version in the KV
- create a new password and set a new secret in the KV
- update the DB with the new password
- create an Azure function that is triggered by the Key Vauklt Near Expiry event

---

### Answer:

1. create an Azure function that is triggered by the Key Vauklt Near Expiry event
2. create a new password and set a new secret version in the KV
3. update the DB with the new password

Step 2. allows the web app to access the new value of the password without code changes.
Step 3. is the rotation of the passowrd value to the latest version.

The other option do not apply, obviously.

---

### References:

[Automate the rotation of a secret for resources that use one set of authentication credentials](https://learn.microsoft.com/en-us/azure/key-vault/secrets/tutorial-rotation)  

---

### Question 110:

You worj at a large consulting company with projects in multiple languages integrated 
in Azure Devosp. The **legal team** is concerned about the ise of open-source software 
without  proper licencing model.

You need to use an automated ptocess to detect when common oprn-source libraries are 
added to the projects.

What should you ise?

- Sourcetree
- Dependabox
- OWASP ZAP
- Mend Bolt

---

### Answer:
- Mend Bolt

Mn bolt can scann all your projects and detect open-source component and report on their
licencing models and known vulnerabilities. It integrates with Azure DevOps.

The following does not apply here:
- Dependabox
**is a native tool in GitHub** that perform analysis on software package dependencies.
**It creates PRs** or **automatically merging updates** when new versions of a package 
is detected.

The remaining options obviously do nto apply here and heave been discussed in prior questions.

---

### Question 111:

You have been asked to create a project in a new Azure DevOps organization.
This project will be integrated with **SonarQube**.
The infrastructure team creates teh SonarQube server and gives you the admin credentials to acces the SonarQube portal.

You need to integrate this nes project with the SonareQube server.

Which **three actions** and in which sequence should you perform?

- install the SQ extension in your project
- generate a new account in SQ
- create a service endpoint in Azure DevOps
- create a deployment group im Azure DevOps
- install the SQ extension in your organization
- generate an authentication token in SQ

---

### Answer:

1. generate an authentication token in SQ
using the admin credentials that were given to you by the infrastructure team create an 
authetication token to the SQ server in the SQ portal. Azure DevOps will use this token 
to autenticate to the server.

2. create a service endpoint in Azure DevOps
Create a SE in Azure DevOps with the token above.
This SE represents the authenticated connection to the SQ Server that can be used in the pipelines.

3. install the SQ extension in your project
From the Azure DevOps Marketplace install the extension **to your organization**.
This allows to use **SQ tasks** in your pipeline that will consume the SE above.

The remaining optins do not apply.

---

### References:

[SQ-Generating and using tokens](https://docs.sonarsource.com/sonarqube/latest/user-guide/user-account/generating-and-using-tokens/)  

[SQ-extension for Azure DevOps](https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarqube-extension-for-azure-devops/)  

[SQ-Azure DevOps Integration](https://docs.sonarsource.com/sonarqube/latest/devops-platform-integration/azure-devops-integration/)    

---

### Question 112:

Your company wants to increase the security of your team development process.

Your identify three main stages tha need security improvements:

1. during a PR
2. in the CI checks 
3. in the CD release

You need to recommend a technique to improves security for each stage of the development process.
The technique should have little impact on the team productivity during each stage and
on the time necessary to run CI checks.

Which technique should you recommend for each of the three stages?

- Satic Code Analysis
- Package Vulnerability
- Penetration test

---

### Answer:

1. during a PR
Satic Code Analysis

2. in the CI checks
*Satic Code Analysis + 
Package Vulnerability

3. in the CD release
Penetration test

Keep in mind that this question is about improving security and not improving code quality!

With **Satic Code Analysis** performed in Pull Requests it is possible to ensure that new code
does not introduce vulnerabilities as the SA can warn against these types of issues and does 
so without executing any code.

In the **CI stange**  both **Satic Code Analysis AND Package Vulnerability** are useful.
With **Satic Code Analysis** the benefit is the same as it has been discussed for PRs and
a **Package Vulnerability** scan makes sure that security issues are not introduced by means 
of 3rd-party software packages. **Mend Bolt (formerly WhiteSource)** can report on these 
kinds of vulnerabilities **before code is merged from a feature branch into the main branch**.

**In the CD release** yopu may use something like **[OWASP ZAP](https://www.zaproxy.org/)**
that is a **dynamic scanner** to perform **penetration tests** 
in the **development and/or QA environments**.

---

### References:

[Securing Azure Pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/security/overview?view=azure-devops)  

---

### Question 113:

Your team maintains a **Java application** that is integrated with Azure Pipelines.

During the **code review process**, developers find **code quality problems** like unused
variables and empty try/catch blocks. 
These **code quality problems significantly reduce performance by increasing the time required**
**to complte code reviews**.

You need to **recommend a solution to improve code quality in the CI pipeline**.

Which **two solutions** do you recommend?

- enable Run SonarQube Analysis in a Maven task
- enable Use xcpretty in a Xcode task
- enable Run Checkstyle Analysis in a Gradle task
- enable Run PMD Analysis in a Maven task

---

### Answer:

Being the question about improving the quality of the code by automatic means for a Java app
in the CI pipeline the only tasks that can be used are the **Maven tasks**.

- enable Run SonarQube Analysis in a Maven task
- enable Run PMD Analysis in a Maven task

**SonarQube Analysis and PMD Analysis** are both suitable tools in this case.

[PMD - An extensible cross-language static code analyzer](https://pmd.github.io/)
PMD is a source code analyzer. It finds common programming flaws like unused variables, 
empty catch blocks, unnecessary object creation, and so forth. 
It supports **Java, JavaScript, Salesforce.com Apex and Visualforce, PLSQL, Apache Velocity, XML, XSL**.

Additionally it includes **CPD, the copy-paste-detector**. CPD finds duplicated code in 
**Java, C, C++, C#, Groovy, PHP, Ruby, Fortran, JavaScript, PLSQL, Apache Velocity, Scala,** 
**Objective C, Matlab, Python, Go, Swift and Salesforce.com Apex and Visualforce**.

The remaining options do not apply in this case:

- enable Use xcpretty in a Xcode task
- enable Run Checkstyle Analysis in a Gradle task

[xcpretty](https://github.com/xcpretty/xcpretty)

xcpretty is a fast and flexible formatter for xcodebuild. 
It does one thing, and it should do it well.

[Gradle - The Checkstyle Plugin](https://docs.gradle.org/current/userguide/checkstyle_plugin.html)  

The Checkstyle plugin performs **quality checks on your project’s Java source files** 
using Checkstyle and generates reports from these checks.


---

### Question 114:

You manage the release pipeline of an e-commerce platform for a large retail store on Azure Pipelines.
The **security** team wants you to run **web app scanning** before deployment **to prevent security**
**breaches**.

You need to recommend an **open-source web app scanning tool** that integrates easily with Azure Pipelines.

Which tool should you recomment?

- Probely
- Whitesource
- OWASP ZAP
- Azure Policy

---

### Answer:
- OWASP ZAP

**[OWASP ZAP](https://www.zaproxy.org/)** can find security vulnerabilities in a web application
such as a e-commerce platform for a large retail store. It can be **easily intergated with Azure**
**DevIOps Pipelines** and it is a **open-source tool**.

The remaining options do not apply in this case:

[Probely](https://probely.com/?utm_source=google&utm_medium=cpc&utm_campaign=RP+-+Brand+-+Exact&utm_term=probely&hsa_ad=654489877632&hsa_net=adwords&hsa_grp=147353173825&hsa_tgt=kwd-804841504705&hsa_acc=6027994897&hsa_kw=probely&hsa_cam=19958547983&hsa_mt=p&hsa_src=g&hsa_ver=3&gad_source=1&gclid=Cj0KCQiAsvWrBhC0ARIsAO4E6f-6lMXtRMUs0hTXNabf5tbwFGq2yP205D2nZuPjyV6EwFZyRCHZAh4aAlULEALw_wcB)  


is similar to OWASP ZAP but is not open-source and it is not integrated with Azure DevOps Pipelines as easily
as OWASP ZAP.

---

### Question 115:

A company uses several open source libraries in their Azure Pipeline.
These libraries have their own terms and conditions.

You need to make sure the company is using software with approved terms and conditions.
To meet this requirement, you decide to use Mend Bolt.

Which **two actions** should you perform to achieve this goal?

- DEFINE A WHITE LIST OF LICENCES TO APPROVE
- DEFINE A BLACK LIST OF LICENCES TO REJECT
- create scripts that run before adding any open-source components
- let Mend automatically detect licences any time an open-source component is added

---

### Answer:
- DEFINE A WHITE LIST OF LICENCES TO APPROVE
- DEFINE A BLACK LIST OF LICENCES TO REJECT

---

### References:

[med.io - Open Source License Compliance](https://www.mend.io/open-source-license-compliance/)   

Every open source dependency in your code base has a license with its own set of terms and conditions. 
How can you make sure all the open source licenses are compatible and compliant?

With Mend.io, it’s all automatic. Whenever a new open source component is added to the build, 
Mend identifies its license and any licenses attached to any of its dependencies.

Which open source licenses are you using?
With more than 200 different open source licenses out there, each with its own terms and conditions, 
some copy-left (viral), some permissive, some permissive with strings, and others with no open source 
license at all (for which default copyright laws apply), it’s tough to keep track of and fulfill all 
the legal requirements.

**Failing to accurately track licenses is risky business**, and can result in some unfortunate surprises. 
At best it could be just the headache entails in replacing a component; at worst, it could mean 
jeopardizing exclusive ownership over your proprietary code.

---

### Question 116:

You manage an Azure DveOps project in your organization account.
The project has three different teams as shown in the exhibit.

<img src="./Q116A-exhibit.png">
<img src="./Q116B-exhibit.png">

Initially TeamB and TeamC have default permissions.

You configure a new team dashboard named **dashboard1** for TeamA and 
configure the team dashboard permissions as shown in exhibit B.

You need to indicate tha access and permissions the teams have to dashboard1.

For eache of teh following statements select yes or no.

| Yes | No  | Statement |
| --- | --- | ------------------------------------------------- |
| Yes | No  | the members of TeamA can delete dashboard1 |
| Yes | No  | the members of TeamB can view dashboard1 |
| Yes | No  | the members of TeamC can edit dashboard1 |


---

### Answer:

| XXX | Statement |
| --- | ------------------------------------------------- |
| No  | the members of TeamA can delete dashboard1 |
| Yes | the members of TeamB can view dashboard1 |
| No  | the members of TeamC can edit dashboard1 |

TeamA **cannot delete dashboard1** instead they can only edit it according to exhibit B.
**The only exception in this case is when a member of the TeamA has the Team or Project Admin roles**.

The members of TeamB can view dashboard1 as **by default dashboards are viewable by all memebrs of**
**the project from any teams**.

The members of TeamC **cannot edit** dashboard1 only the members of TeamA can.

---

### References:

[Default permissions quick reference](https://learn.microsoft.com/en-us/azure/devops/organizations/security/permissions-access?view=azure-devops)  
[Set dashboard permissions](https://learn.microsoft.com/en-us/azure/devops/report/dashboards/dashboard-permissions?view=azure-devops)  

---

### Question 117:

You use Azure DevOps Services to build and release gaming software in your company.

You need to integrate a tool with your build pipelines in order to retrieve information 
on open-source licences distribution per build.

Which tool should you use?

- SomarQube
- OWASP ZAP
- FindBugs
- Mend Bolt (formerly WhiteSource)

### Answer:
- Mend Bolt (formerly WhiteSource)

---

### References:

[Test Coverage, Code Scan, Dependency Scan and Security Scan in an Azure DevOps Pipeline](https://medium.com/codex/test-coverage-code-scan-dependency-scan-and-security-scan-in-an-azure-devops-pipeline-136fa37b6b8b)  

[Azure DevOps Pipelines: Leveraging OWASP ZAP in the Release Pipeline](https://devblogs.microsoft.com/premier-developer/azure-devops-pipelines-leveraging-owasp-zap-in-the-release-pipeline/)    

---

### Question 118:

Your company has a release pipeline in Azure Pipelies to deploy an application 
to Azure App Service. 

The pipeline has two stages one for each environment:
1. staging
2. production

The imfrastructure team requires that the CPU usage metric in the staging environment 
does not increase by more than 10% after deployment. If this event occur the deployment stage to production should not start.

You need to configure the pipeline in order to meet this requirement.

Which **four action and in which sequence** should you perform?

- select the alert rule
- select the App Service resource
- add a Query Azure Monitor alerts task in the production pre-deployment gate
- add a Query Azure Monitor alerts task in the production post-deployment gate
- enable Application Insights in App Service
- configure the task with a resource filter type
- create an alert rule in Azure Monitor
- configure the task with an alert rule filter type


---

### Answer:


1. create an alert tule in Azure Monitor
2. add a Query Azure Monitor alerts task in the production post-deployment gate
3. configure the task with an alert rule filter type
4. select the alert rule

The alert rule in Azure Monitor generates the alert when the CPU usage increases by 10%.
This can be done with a **dynamic threshould**.

The **Query Azure Monitor alerts task in the production post-deployment gate** and its 
**configuriguration with an alert rule filter type** checks Azume Monitor alerts after
the deployment to the staging environment to evaluate the presence of the alert.

The other oprions do not apply in this case.

---

### References:

[Create a metric alert with dynamic thresholds](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-dynamic-thresholds)  

[AzureMonitor@1 - Query Azure Monitor alerts v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-monitor-v1?view=azure-pipelines&viewFallbackFrom=azure-devops)  

[Release gates and approvals overview](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/?view=azure-devops&tabs=yaml)    

[Application monitoring for Azure App Service overview](https://learn.microsoft.com/en-us/azure/azure-monitor/app/azure-web-apps)  

---

### Question 119:

Your company has an **Android and backend API** in Azure App Service.

The **backend API has an Application Insights account that centrlizes the application logs**.
The **Android application si configured with the App Center SDK** to report events to 
**App Center Analytics**.

You need to **centralize the stamndard analytics data from the Android app in the App Insights account**.

Which **two actions** should you perform?

- export App Center Analytics to App Insights
- link the Azure subscription with the App Center
- export App Center Analytics to Blob Storage
- generate an instrumentation key
- import Blob Storage data to Application Insights with an Azure Function
- generat a shared access signature (SAS)

---

### Answer:

- link the Azure subscription with the App Center
- export App Center Analytics to App Insights

You can **link the Azure subscription with the App Center** and allows you to use a 
**standard export to eithe App Insights or Blob Storage**. 

By exporting to **App Insights** the back end and the Android app logs are centralized
into App Insights as required.

The option to export teh Android app logs to Blod Storage could be useful to extend the
retention periods of logs over the term possible in App Center. However, this does not 
acvhieve the goal of centralizetion.

The remaining options obviously do not apply in this case.

---

### References:

[App Center- Analytics](https://learn.microsoft.com/en-us/appcenter/analytics/)
App Center Analytics will help you understand more about your app users and their behavior when using your app.

[App Center- Analytic - Export](https://learn.microsoft.com/en-us/appcenter/analytics/export)

App Center allows you to continuously export all your Analytics raw data into Azure. 
You can export Analytics data to **both** 

- Blob Storage 
- Application Insights (Azure Monitor). 

By exporting the data, you benefit from:

- Unlimited data retention
- Detailed Usage Analysis
- Unified dashboard
- Additional rich features from Application Insights such as funnels, retention

App Center continuously exports Analytics data to Application Insights from the moment you configure export along with two days of backfilled data. With the new updated dashboard in Application Insights, App Center users can get a unified view of both Application and Backend Analytics on one dashboard.

---

[Application Insights overview](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)  

---

### Question 120:

You are a Site Reliability Engineer (SRE) of an e-learning platform in Azure App Service.
The developers of teh platform work remotely and use Microsoft Teams as their main 
communication channel.

You need to send alerts to the developers whe users see erriors on the production website.
The developers should be able to debug those errors using stack traces.

Which **two services** should you recommend?

- Event Hub
- Application Insights
- Logic Apps
- App Service metrics

---

### Answer:

- Application Insights
- Logic Apps

**Application Insights is an Application Performance Monitor (APM)** service in Azure.
The website on App Service can be easily integrated with this APM service.
The configuration of the App Service with App Insights can be such that all the stack traces
are preserved and sent to teh App Insights service.

Eith **Logic Apps** it is then possible to connect App Insights to Microsoft Teams and 
**post a message on a Teams channel on running a query on App Insights**.

---

The other options do not apply in this case.

**App Service metrics** are useful to verify that the resource is healthy and the number of
the responses with 5xx codes. However, there are no stack traces in these metrics and therefore
would not be usefult ot the developers in order to perofrm debugging.

---

### References:

[Sending Your Azure Application Insights Alerts to Team Sites using Azure Logic App](https://dailydotnettips.com/sending-your-azure-application-insights-alerts-to-team-sites-using-azure-logic-app/)  

[Monitor availability with URL ping tests](https://learn.microsoft.com/en-us/previous-versions/azure/azure-monitor/app/monitor-web-app-availability)  

---

### Implementing Application Health Checks


In SRE it is necessary not only to make sure that the infrastructure on which applications run is
available but also the applications themselves.

As part of SRE we want to be able to test and measure **Availability** therefore means to cerate
**availability tests** are required. **Azure Monitor** can be used to fashion 
**availability tests at infrastrucure level** and **Application Insights** which is part of 
**Azure Monitor** is the product that can be used to create **availability test for applications**.

One way that can be used to test and measure the availabilty of an application is with 
**Application Insights URL Ping Test**. However, **Application Insights** can also provide information
over:

- availability: URL Ping Test
- performance
- request & failure rates
- page views counter and stats
- response times- user retention
- user engagement
- user info and stats
- application usage
- application exceptions and stack traces
- application dependencies map

####  Configure URL Ping Test
[AZ-400: Designing and Implementing Microsoft DevOps Solutions - URL Ping Test](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/dbf97324-0041-4fd4-a3c9-5feafcad8ab0)

- Send a HTTP request to a specific URL to test
- it returns the time that it takes to get a response and the success rate
- it is possible to **add dependent requests** in order to test the availability of specific files on a web page i.e. images, css or scripts
- **Micorsoft recommends enabling retries** as it is offen the case that a failure may come back as a success after a retry
- set the **frequency** with whcih the test is to be carried out
- can choose **where the request should come from**: you ca select a **min of 5 locations and a max of 16 locations** for each test run
- **can create alerts** on any failures

---

### Question 121:

You are a Cloud Infrastructure Engineer for your Team. 
You have configured the **alert rule** using the **All Administrative operations signal**
**for an Azure App Service Plan** named plan01 as shown in the exhibit.

Yiu need to infiorm your team what will trigger this allert.

<img src="./Q121-exhibit.png">

Which action will trigger this alret?

- a successful attempt to scale up plan01
- a failed attempt to delete a web app up plan01
- a successful attempt to delete up plan01
- a failed attempt to restart a web app in plan01


---

### Answer:
- a failed attempt to restart a web app in plan01

The **All Administrative operations signal** **for an Azure App Service Plan** named plan01
implies that an alert is generate for any operation through the **Azure Resource Manger** 
**in a specific resource**.

The **specific resource** here is the App Service Plan plan01.
The action that are considered **dministrative operations** in this case are:

- create / update /delete / join app service plan
- restart web apps

Notce that while **restating** a web app in an App Service plan is an admin activity
**deleting a web app is not**. Moreover, the **exhibit** shown that the alert is 
configured with `Status=failed` which causes the allert to be genearted only on failues.

This excludes: 
- a failed attempt to delete a web app up plan01

And leaves as only option the answer.

---

### References:

[What are Azure Monitor alerts?](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)  

---

### Question 122:

Your work as a  Site Reliability Engineer (SRE) for a retail company.
Your company main solution runs on **VMs deployed to a multicloud environment**
that includes **Azure, AWS and on-premises**.

You need to **integrate the platform monitoring tools to centralize the solution**
**operating system logs in Azure Monitor and also use VM Insights**.

What should you recommend?

- Event Grid
- Azure Monitor activity logs
- Azure Diagnostics extension
- Log Analytics Agent

---

### Answer:
- Log Analytics Agent

The **Log Analytics Agent** allows the collection of telemetry data from Windows and Linux VMs.
The data is then send to a **Log Analytics Workspace** in **Azure Monitor**.
The agent can be deplyed on VMs in the cloud and on-premise.
With the **Log Analytics Agent** you can also enable **VM Insights**.

- Azure Diagnostics extension
This extension allows the collectuion of telemetry data from Windows and Linux VMs.
However, **it cannot be used on-premise and AWS**.

- Azure Monitor activity logs
This is only the collection of logs about events that occur on Azure Resources.
This logs are scoped to a subscription.

The remaining options obviously do not apply in this case.

---

### References:

[Overview of VM insights](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-overview)  

[Log Analytics agent overview](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/log-analytics-agent)  

[Azure Diagnostics extension overview](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/diagnostics-extension-overview)  

[Azure Monitor activity log](https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/activity-log?tabs=powershell)  

---

### Question 123:

You use Azure DevOps Services to manage complex software development projects.

You need to implement a mechanism to allow continuos monitoring of your DevOps
release pipeline throughout the software development lifecycle. This is in order 
to allow you to create alerts and gates or roll back deployments until an alert 
is resolved.

What should you integrate with AzurE dEVoPS PIPELINES?

- Azure Monitor Application Insights
- Azure Monitor Log Analtics
- Azure Monitor Container Insights
- Azure Monitor Change Analysis

---

### Answer:
- Azure Monitor Application Insights
[Azure Monitor Application Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview)
This is **a required step for implementing a mechanism for continuous monitoring** 
of your DevOps release pipelines throughout the software development lifecycle.
Then you can create alerts and gates and roll back of deployments until the 
resolution of alerts.

Experiences
Application Insights provides many experiences to enhance the performance,
reliability, and quality of your applications.

- Investigate:

    - Application dashboard: 
      An at-a-glance assessment of your application's health and performance.

    - Application map: 
      A visual overview of application architecture and components' interactions.
    
    - Live metrics: 
      A real-time analytics dashboard for insight into application activity and performance.

    - Transaction search: 
      Trace and diagnose transactions to identify issues and optimize performance.

    - Availability view: 
      Proactively monitor and test the availability and responsiveness of application endpoints.
    
    - Performance view: 
      Review application performance metrics and potential bottlenecks.

    - Failures view: 
      Identify and analyze failures in your application to minimize downtime.

- Monitoring:
  - Alerts: 
    Monitor a wide range of aspects of your application and trigger various actions.

  - Metrics: 
    Dive deep into metrics data to understand usage patterns and trends.

  - Diagnostic settings: 
    Configure streaming export of platform logs and metrics to the destination of your choice.

  - Logs: 
    Retrieve, consolidate, and analyze all data collected into Azure Monitoring Logs.

  - Workbooks: 
    Create interactive reports and dashboards that visualize application monitoring data.


- Usage:
  
  - Users, sessions, and events: 
    Determine when, where, and how users interact with your web app.
  
  - Funnels: 
    Analyze conversion rates to identify where users progress or drop off in the funnel.

  - Flows: 
    Visualize user paths on your site to identify high engagement areas and exit points.

  - Cohorts: 
    Group users by shared characteristics to simplify trend identification, segmentation, and performance troubleshooting.

- Code analysis:

  - Profiler: 
    Capture, identify, and view performance traces for your application.

  - Code optimizations: 
    Harness AI to create better and more efficient applications.

  - Snapshot debugger: 
    Automatically collect debug snapshots when exceptions occur in .NET application


---

The remaining options do not apply to this case.

- Azure Monitor Log Analtics
[Overview of Log Analytics in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-overview)  
Azure Monitor Log Analtics or **Log Analytics** for short can be stareted from within 
the UI for Azure Monitor or the Log Anaytics Workspace menu. 
It is a **post mortem** log service based on **Azure Data Explorer (ADX)** and it 
allows to log queries written in **Kusto Query Language (KQL)**. It can be used to  
investigate the reasons for problems but **NOT** as a **preemptive** mechanism to
generate alerts.

Log Analytics is a tool in the Azure portal that's used to edit and run log queries 
against data in the Azure Monitor Logs store.
You might write a **simple query** that returns a set of records and then use features 
of Log Analytics to **sort, filter, and analyze** them. 
You might write a more **advanced query** to **perform statistical analysis** and 
**visualize the results in a chart** to **identify** a particular **trend**.

---

- Azure Monitor Change Analysis
[Use Change Analysis in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/change/change-analysis)  

While standard monitoring solutions might alert you to a live site issue, outage, or 
component failure, they often don't explain the cause. Let's say your site worked 
five minutes ago, and now it's broken. 
**What changed in the last five minutes?**
**Change Analysis is designed to answer that question in Azure Monitor.**

Building on the power of **Azure Resource Graph**, 
Change Analysis:

- Provides insights into your Azure application changes.
- Increases observability.
- Reduces mean time to repair (MTTR).

---

- Azure Monitor Container Insights
[Container insights overview](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview)

Container insights is a feature of Azure Monitor that monitors the performance and health 
of container workloads deployed to Azure or that are managed by Azure Arc-enabled Kubernetes.

---

### References:

[An overview of Azure Data Explorer (ADX)](https://learn.microsoft.com/en-us/shows/azure-friday/an-overview-of-azure-data-explorer-adx)  

[Release and work item insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/release-and-work-item-insights?tabs=continuous-monitoring)   

[Overview of Log Analytics in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-overview)  

[Use Change Analysis in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/change/change-analysis)  

---

### Question 124:

You have a GitHub repo connected to Azure Borads.
A product owner reports that some work items do not have traceability with GitHub commits.
You discover that only the work items developed by a specific developer do not have links 
in Azure Boards.

You need to help this specific developer to link their commit with the WIs 
in the most productive way.

What should you tell the developer to do?

- add a GitHub Pull Request link in an Azure Doards WI
- include AB# followed by the WI ID in every commit message
- include AB# followed by the WI ID in the GitHub pull request title
- add a GitHub Pull coomit link in an Azure Boards WI

---

### Answer:
- include AB# followed by the WI ID in every commit message

After you connect GitHub to Azure Boards thu pattern included in the commit
message bauses that commit ot be linked to the WI ID on Azure Boards.

---

The remainign options do not apply in this case:

- include AB# followed by the WI ID in the GitHub pull request title
This **creates a Pull Request Link in Azure Boards from the WI to the GitHub PR** .
The problem identified by the product owner in this case concenrs the traceability 
with GitHub commits and not GitHub Pull Request. 

---

### References:

[Azure Boards- Link work items to objects](https://learn.microsoft.com/en-us/azure/devops/boards/backlogs/add-link?view=azure-devops&tabs=visual-studio)  

[Link GitHub commits, pull requests, and issues to work items in Azure Boards](https://learn.microsoft.com/en-us/azure/devops/boards/github/link-to-from-github?view=azure-devops)  

---

### Question 125:

You are working as an infrastructure engineer for your company.

You plan to **monitor the compute resource utilization** of your company 
**Azure App Service Plan**.

You need to receive an alert when the CPU utilization is over 60% for more than five minutes.

How should you configure the alert?

Threshold: Dynamic | Static
Operator: Greater Than | Greater Than or equal to | Less than | Less than or equal to

---

### Answer:

Threshold: Static
Operator: Greater Than

You must use a **static threshold** and set it to 60% using the CPU utilization metric.

---

The problem with **Static Thresholds** is that these **are manually adjusted** and tuning 
it to meet the specific environment and needs of an organization is a major challenge 
for IT Operations teams. 

**Dynamic Thresholds** reduce noisy, unnecessary alerts, but there are scenarios where
they aren't always the best option.

---

### References:

[Create or edit a metric alert rule](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-create-metric-alert-rule)  

---

[Create a metric alert with dynamic thresholds](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-dynamic-thresholds)  

**Dynamic thresholds apply advanced machine learning** 
and use a set of algorithms and methods to:

1. Learn the historical behavior of metrics
2. Analyze metrics over time and identify patterns such as hourly, daily or weekly patterns
3. Recognize anomalies that indicate possible service issues
4. Calculate the most appropriate threshold for the metric

When you use dynamic thresholds, **you don't have to know the "right" threshold for each metric**,
because dynamic thresholds calculate the most appropriate thresholds for you.

We recommend configuring alert rules with dynamic thresholds on these metrics:

- Virtual machine CPU percentage
- Application Insights HTTP request execution time

---

### Question 126:

You are a **Site Reliability Engineer (SRE)** who maintains an **Azure App Service** application.
This application is instrumentwed with **Application Insights**.

You need to **create a report usning Azure Monitor query** to notify the development team
about the web page errors and number of users impacted.

How should you complete the query?
Select the correct options.

OPTION-1: pageViews | performanceCounters | requests

OPTION-2: 
operation_Name == "GET /"
resultCode != "200"
success == false

```
OPTION-1
| where OPTION-2 
| summarize failedCount=sum(itemCount), impactedUsers=dcount(user_Id)
| order by failedCount desc
```

---

### Answer:

```
requests
| where success == false
| summarize failedCount=sum(itemCount), impactedUsers=dcount(user_Id)
| order by failedCount desc
```

You use **the requests table** which contains information about the requets the 
application received, as well as the corresponding response HTTP status code.
The `success == false`is how you can filter all status **that are lower than 400**.

**Therefore 3xx HTTP response codes are successes**  this is laos why the option
`resultCode != "200"` would not be correct.

The remaining options do not apply to this case:

**pageViews**:
This **table** contains information about the page view such as 
**session duration, client browser and regional location**.

**performanceCounters**: 
This **table** contains information about performance counter such as 
**CPU occupancy, memory, disk and network usage**.

`operation_Name == "GET /"`
If this option were used the query would target only the `GET` operation at the 
address `/` therefore the **home page** pf the web app.

---

### References:

[Application Insights log-based metrics](https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/app-insights-metrics)  

[System performance counters in Application Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/performance-counters?tabs=net-core-new)  

[Application Insights telemetry data model](https://learn.microsoft.com/en-us/azure/azure-monitor/app/data-model-complete)  


---

### Question 127: 

You have configured **Application Map** to map solution components as shown in the exhibit.

You need to **implement a health check** for the frontend based on the solution components.

Which **three components** should you include for the frontend health check?

- purchases Event Hub
- authserver SQL Database
- payments
- authservice
- inventory Storage Table

---

### Answer:

- payments
- authservice
- purchases Event Hub

**To create a health check, you need to include the direct dependencies** that the component relies on.
According to **the Application Map** in the exhibit these are the three services that are **direct dependencies**
of the frontend component. This fact is evidet by inspecting the arrows that connect the component named
frontend to the three components listed in the answer.


---

The remaining options do not apply in this case:

- authserver SQL Database
- inventory Storage Table

These two component **have no direct connection to** the frontend component, therefore should not be used 
in the setup of the health check for the frontend component.

---

### References:

[Application Map: Triage distributed applications](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-map?tabs=net)  

[Health Endpoint Monitoring pattern](https://learn.microsoft.com/en-us/azure/architecture/patterns/health-endpoint-monitoring)  

---

### Question 128:

You are configuring a new freight calculator service for an e-commerce platform.

**This service guarantees a Service Level Objective (SLO) with a 99% availability**.

**What is the maximum approximate downtime per week** you should expect from this service?

- 40 mins
- 10 mins
- 1h and 40 mins
- 5 mins

---

### Answer:

(60 mins/h) * 24h/day * 7 day/week = 10.080 mins/week
10.080 mins/week * (100%-**90%**) = 100.8 mins/week = (1h 40 mins) / week

This is the maximum downtime per week that is compatible with a **SLO of 90%**.

All the otrher options corresponds to higher values of SLO.

---

### References:

### Well-Architected Framework > Pillars > Reliability:
[Recommendations for defining reliability targets](https://learn.microsoft.com/en-us/azure/well-architected/reliability/metrics)

| Terms                         | Definition
| ----------------------------- | ------------------------------------------------- |
| Service-level objective (SLO) | A **percentage target** that **represents the health of the component and the reliability** tier. The higher the tier, the more reliable the component. Composite SLO represents the aggregate target of the entire workload and accounts for the component SLOs.  |
| Service-level indicator (SLI) | A **metric emitted by a service**. SLI metrics are aggregated to quantify an SLO value. |
| Service-level agreement (SLA) | A **contractual agreement** between the service provider and the service customer. The agreement defines the SLOs. Failure to meet the agreement might have financial consequences for the service provider. |
| Mean time to recover (MTTR)   | The time taken to restore a component after a failure is detected. |
| Mean time between failure (MTBF)  | The duration for which the workload can perform the expected function without interruption, until it fails.  |
| Recovery time objective (RTO)  | The maximum acceptable time that an application can be unavailable after an incident. |
| Recovery point objective (RPO)  | The maximum acceptable duration of data loss during an incident. |

---

[AZ-400: Designing and Implementing Microsoft DevOps Solutions](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/d97bde6b-9f59-4f99-bbb6-a5cbc878e637)  

- SLA: Service Level Agreement
An agreement with the customer about a set of SLOs that are set as **goals** of the agreement.

- SLO: Service Level Objective
Any **measurable reliability target** covering the areas: **availability, performance, latency, security**.

- SLI: Service Level Indicator
Metrics and Data from the system that can be used to create the SLOs.

**SRE (Site Reliability Engineering)** focuses on production

---

[Cloud monitoring service level objectives](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/manage/monitor/service-level-objectives)  


---

#### SCOM:  System Center - Operations Manager 

[ System Center - Operations Manager](https://learn.microsoft.com/en-us/system-center/scom/welcome?view=sc-om-2022)  

Operations Manager provides infrastructure monitoring that is flexible and cost-effective, helps ensure the predictable
performance and availability of vital applications, and offers comprehensive monitoring for your datacenter 
and cloud, both private and public.

[Monitoring service level objectives by using Operations Manager](https://learn.microsoft.com/en-us/system-center/scom/manage-monitor-sla-overview?view=sc-om-2022)   
[Running a service level tracking report](https://learn.microsoft.com/en-us/system-center/scom/manage-monitor-sla-reports?view=sc-om-2022)  
[Creating a service level dashboard](https://learn.microsoft.com/en-us/system-center/scom/manage-monitor-sla-create-dashboard?view=sc-om-2022)  

---

### Question 129:

You are using Azure DevOps Services to manage complex software development projects using 
**.NET, Node.js, Python**.

You perform continuous monitoring of your DevOps **release pipeline** throughout the software development
lifecycle. 

You need to **send traces and eventually all application metrics to Azure Monitor Application Insights** 
for analysis.

What should you use?

- Azure Monitor OpenTelemetry Exporter
- Azure Monitor Log Analytics
- Azure Monitore Change Analysis
- Azure Monitor Container Insights

---

### Answer:
- Azure Monitor OpenTelemetry Exporter

The **Azure Monitor OpenTelemetry Exporter** can send **traces, metrics and logs** to **Azure Monitor Application Insights**.
It **allows distributed tracing for Azure DevOps rlease pipelines**

The remoining options do not apply to this case:

- Azure Monitor Log Analytics
- Azure Monitore Change Analysis
- Azure Monitor Container Insights

---

### References:
Refer to Question 123.

---

[Microsoft OpenTelemetry exporter for Azure Monitor](https://learn.microsoft.com/en-us/python/api/overview/azure/monitor-opentelemetry-exporter-readme?view=azure-python-preview)

The exporter for Azure Monitor allows you to export data utilizing the **OpenTelemetry SDK** 
and send telemetry data to Azure Monitor **for applications written in Python**.

---

[Enable Azure Monitor OpenTelemetry for .NET, Node.js, Python and Java applications](https://learn.microsoft.com/en-us/azure/azure-monitor/app/opentelemetry-enable?tabs=net)  

---

### References:

[What is distributed tracing and telemetry correlation?](https://learn.microsoft.com/en-us/azure/azure-monitor/app/distributed-trace-data)    

[OperationCorrelationTelemetryInitializer Class](https://learn.microsoft.com/en-us/dotnet/api/microsoft.applicationinsights.extensibility.operationcorrelationtelemetryinitializer?view=azure-dotnet)
This initializer is responsible for correlation of telemetry items within the same process

---

### Question:
### Answer:
### Explanation:
### References:

---

[SRE vs DevOps](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/a90cb7cf-ce10-4ea3-88b6-340fb1ff1041)  

These are similar concepts but there exist differences.

- SRE focuses on production and it is more of a technical engineering set of practices  
- DevOps is a **culture shift** that focusses on **bringing developers and operators together with common tools for communication, monitoring, deployment, etc**.

---

## Other important resources

[How to create a baseline](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/e35d73fa-b569-4c06-9cd9-fe5a6b554cba)

A **baseline** is a set of metrics and data that can be used to represent the present
state and level of service for any particular application and underlying infrastructure.
Wiht a **baseline** it becomes possible **to mesure the impact of implemented chages** 
and **alert on deviations** from what is coinsidered **a normal level of service**.

The following tools can be used to **create baselines** for services deployed to Azure.

- **Log Analytics** and **Metrics Explorer**

These tools are used to create **queries against the data** and also to **create charts to analyse data**.

The following are the basic parameter that can be selected when creating a chart with Azure Monitor:

- Scope
- Namespace
- Metric
- Aggregation
- Time period

- **Azure Monitor Insights**

this tool provides sets of queries **for each of the Azure Services** that have been fashioned by 
the teams responsible for the development of each service in order to collate and present those
metrics that are most relevant for each type of service. These queries can be used as a starting
point to create custom queries to meet specific needs and use these in **runbooks**.

Azure Monitor has covers the following needs:

- Visualise
- Analyse
- Alert
- Automate 

- **Application Insights**

Provides recommended **metrics and dashboards for an application** and **help to analyse** the 
causes of deviations from a known state.

---

[Application Insights Smart Detection & Dynamic Thresholds](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/a6a939d6-2651-4a37-9724-cbf3762cd548)    

### Dynamic Thresholds

As changes are implemented and intergated the baseline changes as well. This fact poses a problem
as to alert that are set up to warn about performace deviation from the baseline. 
**It is therefore desirable to have a mechanism to dynamically adjust alerts to a changing baseline**.

They present a few advantages over **Static Threshold Alerts**.

- **Dynamic Threshold alerts** can be used in this scenario. 
- DTA are based on **Machine Learning** so that the baseline can be synamically learned and therefore change over time
- DTA reduce the amiount of managment work over time and the effort to determine what the right threshold for a service/app should be

Example: 

A VM deoployed to Azure VM and used to run applications is subjected to a security scan at regular intervals
and during the scan its performance temporarely degrades. A **Static Threshold Alerts** would be generated 
every single time. However, **Dynamic Threshold alerts** would understand that this deep in performance is 
part of a regular pattern that is therefore to be included as baseline. Consequenlty, in this latter case, an 
alert would not be generated.

#### [Action Groups on Alerts](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/action-groups)  

**Action Groups are global services and a collection of notification preferences**.
Global requests from clients can be processed by action group services in any region. 

Limitis:

- You can add up to five action groups to an alert rule.
- Action groups are executed concurrently, in no specific order.
- Multiple alert rules can use the same action group.

Action groups are used by the following to notify users about the alert and take an action.

- Azure Monitor
- Azure Service Health
- Azure Advisor 

Each action is made up of:
 - Type : voice call, SMS, or email.
 - Name : unique id
 - Details : The corresponding details that vary by type.

When an Alter is created in Azure Monitor the recepient of the alert is **an abstration called Action Group**.
In an **Action Group** the actual recepients of the alertt and other details related specific to the notification
can be set such as whether the alert is to be sent to an email address, SMS, as vaice call, etc.

It is also possible to define a series of action to be taken such as:

- Automation Runbook: execute a runboob from a Automation account
- Event Hub Action: publish a notification to an EventHub
- Azure Function: Invoke an AF
- ITSM: open a ticket on a proprietry Ticketing System and provide context info
- Secure Weebhook 
- Weebhook 


---

### Application Insights Smart Detection

It applies **Machien Learning** to **telemetry data from an application** to **detect performance and failure anomalies**.
It not only provides detection but also **analysis** in that **it tries to determine the likely causeof the anomaly**.

- This feature is **built-in Application Insights** and will be **automatically configured as soon as there is enough available data!**
- It **automatically creates near real-time alerts** when it detects anomalies.
- It **automatically creates near DAILY alerts** when it detects degradation of performance i.e loger respobnse or load times, etc.
- The alerts **provide Context** that is **relevant information about the app and its dependencies** as they are at the time the failure 
  OR PERFORMANCE DEGRADATION occurs.
- For **application Failures** it evaluates the **normal rate of failure** by **also taking account other factors sich as load**.

* Minimum Requirements:

- Samrt Detection of Failures requires **a minimum of 24 hours** to start and a min amount of data
- Samrt Detection of Performance requires **a minimum of 8 days** to start and a min amount of data


---

[Deciding which dependencies to set alerst on](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/1b71ae02-eed0-47fc-a1ef-08288ded336f/84b64c44-dca5-4e63-b20e-2dd9314e7b40)  

### Application Insights Dependency Tracking

**Application Insights** characterises dependencies as follows:

- strong: 
When the unavailability of teh dependency causes the applications to become completely unavailable.

- xxx


**Application Insights** provides varius dependency tracking capabilities.

1. Track and Monitor
Helps identify **strong dedendencies** by tracking and monitoring calls.

2. Automatic Tracking with .NET & .Net Core
Tracking is configured **by default** with .NET & .Net Core SDKs for Application Insights.
The following will be automatically tracked:

 - HTTP(S) calls
 - WCF calls that use the HTTP Binding
 - SQL callcs using SqlClient
 - Azure Storage with Azure Storage Client
 - calls made through the EventHub Clinet SDK
 - calls made through the ServiceBus Client SDK
 - calls made to Azure Cosmos DB only with HTTP(S) 
   TCP calls to Azure Cosmos DB tracking must be manually configured

3. Manual Dependency Tracking
By using the **TackDependency API**

- TCP calls to Azure Cosmos DB
- calls made to Redis

3. Tracking with AJAX from Web Pages
The **Applicatuion Insights JavaScript SDK** will automatically collect AJAX calls.

#### Application Dependency Tracking Data in Application Insights

1.  Application Map

2. Transaction Diagnostics 
This tracks the transactions as they go through the different system of the monitored solution.

3. Browsers Information
This is informations such **AJAX calls from user browsers**. 

4. Log Analytics
This allows to create **custom queries against dependency data**.

#### Dependency Tracking Data in Application Insights on Virtual Machines

- you must install an Agent on the VM
- the agent shows the dependencies created by any process on the VM that holds a connection to a server
- the agent gathers in-bount & out-bound latency information
- the agent shows any TCP conneted ports

- the agent collects **connection metrics**: 

  - response times
  - number of requests
  - traffic
  - links
  - failed connections

- The **Views** of this information are **scoped** in the sense that when I access
  it a the **individual VM** the disployed info refers to the specific VM, but if 
  the VM is part of a **VM Scale Set** then the Views about this information refers
  to the scale set as a whole. 


---

[gET](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/83ab6b21-1d84-425c-ae1d-356f60a6a1bd/ba88afbb-ea2a-4ac3-acc1-6ad8616be606)  

[Git Tools - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)  

### User Case

Often while working on one project, you need to use another project from within it.
In these scenarios: **you want to be able to treat the two projects as separate** 
yet **still be able to use one from within the other**.

### Including the library as a package

The issues with including the library are: 

1. it’s difficult to customize the library in any way 
2. it is often more difficult to deploy it, because you need to make sure every client has that library available. 

### Copying the code into your own project

The issue with copying the code into your own project is that 

1. any custom changes you make are difficult to merge when upstream changes become available.

### What are Git Submodules?

Submodules allow you **to keep a Git repository as a subdirectory of another Git repository**. 
This **lets you clone another repository into your project and keep your commits separate**.

### Examples

Add an existing Git repository as a submodule of the repository that we’re working on, with the 
**absolute or relative URL of the project you would like to start tracking as a submodule**.
By default, submodules will add the subproject into a directory named the same as the repository, 
in this case “DbConnector”. You can add a different path at the end of the command if you want 
it to go elsewhere.

```
$ git submodule add https://github.com/chaconinc/DbConnector
```

At this point if you check the status of your main project you see that a **.gitmodules** has been
added. **.gitmodules** stores the mapping between the project’s URL and the local subdirectory 
you’ve pulled it into.

```
$ git status
On branch master
Your branch is up-to-date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   .gitmodules
	new file:   DbConnector
```

This is **.gitmodules**. It’s important to note that **this file is version-controlled with your other files**
ike your .gitignore file. **It’s pushed and pulled with the rest of your project**. This is how other people
who clone this project know where to get the submodule projects from.

```
[submodule "DbConnector"]
	path = DbConnector
	url = https://github.com/chaconinc/DbConnector
```

Although **DbConnector is a subdirectory in your working directory**, **Git sees it as a submodule** 
and **doesn’t track its contents when you’re not in that directory**. Instead, Git sees it as a 
particular commit from that repository.

The changes in **.gitmodules** must be commited and then pushed as any other changes.

```
$ git commit -am 'Add DbConnector module'
$ git push origin master
```

### Cloning a Project with Submodules

```
$ git clone https://github.com/chaconinc/MainProject
```

When you clone such a project, by default **you get the directories that contain submodules**, 
**but none of the files within them yet**. The DbConnector directory is there, but empty.

The DbConnector directory is there, but empty. 
You must run two commands: 

```
git submodule init
git submodule update
```

1. initialize your local configuration file, 
2. fetch all the data from that project and check out the appropriate commit listed in your superproject

**There is another way to do this which is a little simpler**. However, If you pass `--recurse-submodules` 
to the git clone command, it will automatically initialize and update each submodule in the repository, 
including nested submodules if any of the submodules in the repository have submodules themselves.

```
$ git clone --recurse-submodules https://github.com/chaconinc/MainProject
```

**If you already cloned the project and forgot** `--recurse-submodules` you can combine the 
`git submodule init` and `git submodule update` steps by running:

```
 git submodule update --init
```

To also **initialize, fetch and checkout any nested submodules**, you can use **the foolproof**:

```
 git submodule update --init --recursive
```

---

### Git Submodules in Azure Pipelines

For projects whose source code is in any Git based repository **and makes use of submodules**
there are **special requirements that must be fullfilled to be able to build the code in the**
**repository with Azure Pipelines**.

1. If the main project that must be build in Azure Pipeliens and that makes use of submodules is 
   a  public repository that is unauthenticated. The modules that are part of the project 
   **must be unauthenticated** that is they **must be publicly available**.

2. Conversely, if the main project is **private** then **the authentication method and the credentials**
   **for the authentication to the submodules projects must be the same as that employed by the**
   main project primary repository.  

3. The submodules within the primary repository can only be register with HTTO and not SSH.

---

[Discovering Scalar](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/83ab6b21-1d84-425c-ae1d-356f60a6a1bd/dd7c10bd-4691-4a91-b1ce-3ae7457b7ed8)  

Scalar is a **client side tool** targets **large GitHub Repositories** and that helps with:

1. set up
2. maintain
3. optimize

### 1. Setup a cloned local repo with **scalar clone**

`scalar clone [options] <url> [<dir>]`

1. partial clone feature
2. sparse checkout feature
3. Git Maintenance aka Background Maintenance with prefetch
4. Configure Git optimization settings

Clone a GitHub repository with the **partial clone feature**. wich greately reduces the time required to
produce a **working repository** by avoinding the download of large objects that may not be required to 
start working with the source code.

It also uses the **sparse checkout feature** which reduces the amount of tracked files. This results in
a working directory that is smaller in size.

It **sets up** the so called **Git Maintenance aka Background Maintenance** which optimizes the repo by 
**prefetching data in teh background**. 

It **configures Git optimization settings** such as:
 - multi-pack index
 - commit graph
 - incremental repack
 - file system monitoring

### 2. Use Scalar on an existing repository with **scalar register**

`scalar register [<path>]`

This automatically applies all features and settings that help with maintaning the repository.

---

### [Connecting to GitHub with Azure Active Directory](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/83ab6b21-1d84-425c-ae1d-356f60a6a1bd/f4306295-7e2e-4115-a4d5-8e0518d619ed)  

1. The identities on GitHub and AAD are separate
2. It is possible to manage only one set throuGH **SSO with AAD**
3. **GitHub Enterprise Cloud Organization Plan** is the only GitHub plan that can make use of **AAD SSO**
4. **GitHub Team Plan** **cannot** make use of **AAD SSO**


#### Permissions

1. GitHub : Administrator
2. AAD    : Any roles that have the permission **Create SSO** 
  
  - Global Admin
  - Cloud Application Administrator
  - Application Administrator 

### Outline of the configuration steps

#### Part 1: Configure SSO on the AAD side

1. On AAD add the **GitHub Enterprise Applicatiion**
2. **Configure SAML SSO** within the application with the **Git Enterprise Account**

  2a. Basic SAML Configuration
  2b. User Attributes and Claims
  2c. SAML Signing Certificate - here there are downloads that are to be used omn the HitHub side (next step)
  2d. Set up GitHub Enterprise Cloud - Enterprise Account

3. Add **AAD Users or Groups** to the **GitHub SSO** that has been just configured

#### Part 2: Configure SSO on the Git Hub Enterprise side

1. Enable SAML autrhentication

2. Configure link / connection to AAD.
In this step you will need the **public Base64 Certificate** that was downloaded from **AAD in step 2 of the ADD side above**.
Onve the certificate is pasted into the correspondig fiedl the aother field of the configuration form should be authomatically
populated.

| AAD side  |  GitHub Enterprise side |
| --------- | ----------------------- |
|  Login URL |  Sign on URL |
|  AAD Identifier |  Issuer |

3. Set Signature / Digest Method to: RSA-SHA256/SHA256

---

[Incorporating Changelogs](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/83ab6b21-1d84-425c-ae1d-356f60a6a1bd/1e33c1ff-36a5-4f3d-8f5e-1ad75a0a1d79)   

#### Examine changelogs

The **pretty** options **removes the commit id** while the `- %s` specifies a prefix `-` and the commit 
message placeholder `%s`.

```
git log
git log --oneline
git log --pretty="- %s"
git log --pretty="- %s some-other-info"
git log --pretty="- %s" > changelog.txt
```

#### Create Formatted Changelogs

The following applications are tools that can be used to create variously formatted logs
with minimal effort. However, some IDE may have their own plugins to achieve the same
goal.

[GitHub Changelog Generator](https://github.com/github-changelog-generator/github-changelog-generator)  

**What’s the point of a changelog?**

To make it easier for users and contributors to see precisely what notable changes have been made between
each release (or version) of the project.

[Generate Release Notes (Crossplatform)](https://marketplace.visualstudio.com/items?itemName=richardfennellBM.BM-VSTS-XplatGenerateReleaseNotes)  

This is the most popular Vuisual Studio Plugin for automatic changelog generation.


[Jenkins ](https://plugins.jenkins.io/git-changelog/)  

There are also Automatic Changelog Generatiin Plugins for CI/CD pipeline. 


---

[Configuring Branches](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/a112424c-bbdb-4eaa-9f94-ecbcce6ecba9/8e8e77fb-af20-4469-b90f-0aba0eb25f16)  

#### Branch Policies: Base Safeguard 

- require a Minimum number of reviewers on a pull request
- check for linked Work Items (enforce traceability)
- check for comment resolution
- limit merge types

#### Branch Restrictions: Advance Safeguard

- validate code by pre-merging and building pull request changes
- status chanchs: Require other services to post success status to complete the PR
- automatically imclude code reviewers (aka manula approval: these reviewers are always to be added to the required reviewers regardless!)
- PACKAGE_DIR
- restric who can push to the branch

#### Branch Protenstios: Minimize catastrophic actions

1. Prevent deletion 
2. Prevent overwriting the branch commit history with a force push

---

[Barnch Strategies](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/a112424c-bbdb-4eaa-9f94-ecbcce6ecba9/5947b0ee-74ca-4893-b3c8-2b5d028998eb)  

1. [Trunk-Based Branching]
This is to be used for **quick branches**. 
In this strategy any single change goes straint into the main branch (The Trunk).

| Pros                            |  Cons                      |
| ------------------------------- | -------------------------- |
| Applicable to very small teams |  Large code review process |

2. [Feature (Task) Branching]

This is **a branch per User Story** strategy.

| Pros                                            |  Cons                      |
| ----------------------------------------------- | -------------------------- |
| Enables independent and experimental innovation | **Long running feature branches may become difficult to merge back into the main branch |
| Easy to segment |  Large code review process    |   |
| It makes it easy to build CI/CD workflows       |   |

3. [Feature Flag Branching]

This is the same as **Feature (Task) Branching** but if fixes the problem ** by using flags to activate or deactivate 
the feature so that even incomplete featyures cn be safely and often merged back into the main branch without being 
active and therefore even when they are incopleted or not thorouhhly tested.

4. [Release Branching]

This strategy merges all the **User Storiy Branches** and **merges them all in a single branch**.
Branches are created **for all features per each release** from the main branch. 
At the beginning of a Release Cycle **a Release Branch is created from the main branch** then  
all **Feature Branches and Bug Fixes branches** are created starting from the feauture branch. 
The feature branches and bug fixes branches are merged back into the release branch and only 
when the Release Branch is consolidated and released as a new version of the software it is 
then **merged back into the main branch** before stating the next release cycle. 

| Pros                                            |  Cons                      |
| ----------------------------------------------- | -------------------------- |
| If you must support multiple versions       *1  | Difficult to maintain |
| If you must support multiple custumizations *2  | Cannot have many changes or contributors |
| It allows the team to focus on a specific topic | It generates more work for the team per each version |

*1, * 2:

In this cases **Release Branching** is **the only possible applicable strategy**.
This is also the case when **Feature Flag Branching** is used in conjuction with 
Release Branching.

---

[The Pull Request Workflow](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/a112424c-bbdb-4eaa-9f94-ecbcce6ecba9/e944fecb-2b72-4c93-a2e7-0dbab3f799a5)    

#### Waht are the goals of a PR?

1. reduce the introduction of bugs through transparency and verification before merging into the main branch
2. encorage communication early in the development with feedback and voting about problems, solutions, coding styles in a collaborative fashion
3. speeding up product development through early, fast, precise and useful reviews

#### What is inside a PR?

1. What
an explanation fo the changed that have been made in order to provide context.

2. Why
the business or techinical goal that the implementatuion should achieve.

3. How
an explanation of the design and the rational behind the design choices that have been made.

4. Tests
All the verification steps and results to show that the implementation is successful and achives the set goals.

5. Reference
Work items, screenshots, links, documentation and all related and relevant information that may be useful during the code review.

6. The Rest
A summary of the challenges that have been experienced during the implementation.
Any additional improvements and optimizations that could be implemented.
Any budget requirements. 

---

[Code Reviews](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/a112424c-bbdb-4eaa-9f94-ecbcce6ecba9/2ab0ccbf-1e40-4d7f-8e7e-ef3ab4117199)  

### How can Code Reviews be carried out efficiently?

#### Code Reviews Assignments

**Automatic assignments** of code reviewers is a way to icrease the efficiency of the process. 

#### Scheduled Reminders

**Messages and Reminders** on pending issues or work **especially when automatically generated**
are a way to icrease the speed of a PR process and therefore its efficency.

#### Pull Analytics

Use Metrics to help find opportunities inside a PR **including coding errors and security vulnerabilities**.
This is available on **GitHub as a apid plugin tool**.

---

## [Configuring Repositories](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/ea591c9d-0262-44f3-907d-5359eacf39fa)  

- Use of Git Tags to organize a repository  
- How to handle large repositories
- repository permissions (on Azure Repos)
- How to remove data from a repository (the right way!)
- How to recover data that has been accidentally deleted

---

[Use of Git Tags to organize a repository](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/e051382d-a905-4990-905f-6d5518b80750)  

The are **two ways to mark a specific state of a git code repository**: tags and annotations.

**Git tags** are essentially special labels that can be attached to a specific commit.
There exist **two types of git tags**: 

To view the existing tags use `git tag`.

1. Lightweight git tags: 
`git tag v1.2.3`

2. Annotated git tags
`git tag -a v1.2.3 -m "This is an annotated tag"`

| Lightweight                         |  Annotated                 |
| ----------------------------------- | -------------------------- |
| There are no notes just a tag name  | Used to add info to a plain tag |
| simple pointer to a commit          | are stored as a full object in git |


#### Git tags in Azure Repos

In Azure Repo UI there is a **Tags tab** where you can see the tags that have been pushed to the repo.

- can be created from the portal **but only as annotated tags!**
- `git tag v1.2.3` or  `git tag -a v1.2.3 -m "This is an annotated tag"`
- `git push origin <tag>` : you need always a **separate push** to send the tag to the origin.

This menas that `git push` **only oushes the local commits to the origin **not the tags!**
You **must** use the separate `git push origin <tag>` to push any local tag to the origin.

It is possible to apply a tag to any commit may this be the last commit on your local history or
**even a previous commit**, this can be used on the Azure Repo UI in the commit tab. However, this
can only be an annotated tag. The same can be done in git as illustrated by the examples below.

`git tag -a v1.2 9fceb02 -m "Message here"`
`git tag v1.2 9fceb02`
`git push origin v1.2`

---

[How to handle large repositories](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/d0402e23-740b-40d7-8a51-224fb8d1a6ea)  

- Working with **large files** with **Git Large File Storage (LFS)**
- best practices for Git Repos
- **clean up** a repo with **git gc**

#### File types that should not be part of a git repo

Git is based on **cloning** a repository whereby **the all history and all assets are copied locally**,
therefore it was never intended for any repo to become large in size by containing assets different from 
plain source code. The presense of large files that may also have a long history means that the clones
will have to download not only the large file but also **all its previous versions**.

Avoid **bloat** by avoiding chacking in files such: images, videos, binary, etc.

- **frequently updated** (large) binaries
- code output
- dempendencies: **use a package managing solution instead!**

#### Git LFS: Large File Storage

This is **an optional open-source extension feature built in Git**, it must be installed separately.
It is a matter of installing the extension **on the developer machine**, with the installer that is
avauilable for teh corresponding OS.

After the installation of the extension on the developer machine **the git repo must be initialized with it**.

`git lfs install`

Then specific large files ought ot be **tracked locally**, which results in a `.gitattributes` file being 
added to the repo.

`git lfs track "*.psd"`

On the **first push** to the origin the tacked files will be pushed to it as well. 

**The remote repository storage service must be able to support Git LFS**, most are such as Azure Repo, GitHub, etc.
Large file will be stored separately from all other assets in the code repository.

---

### Git GC: Garbage Collector

`git gc --(option)`

- remove loose files in unreferenced commits
- **dispose or compress** large binaries or filoes in a repo

#### Git GC Eamples

`git gc --aggressive`: 
This triggers a **full GC sweep and optimization cycle**, it has the downside to require time to complete.

`git gc --prune`  
`git gc --prune=<date>`:
This deletes all loose (unreferenced) objetcs and with the `<date>` options it considers only loose objects
introduced after the specified date.

`git gc --no-prune`:
This causes only the **compression** but not the deletion of any loose objects.  

---

[Repo Permissions](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/291c6cac-52eb-4b1d-913b-fd48be8f7c19)  

- Branch permissions in Azure Repos
- Branch Locks

A **Branch Lock** freezes a branch and **no new commit can be added or anything changed in its commit history**.
The branch becomes in effet **read-only** and this applies to all users that may have permissions on it
**regardless of the permissions**.

The **user case for branch locks** according to the Micorsoft Docs is **to prevent changes to the branch**
**while a PR is pending / in review**.

Removal of a branch lock can be perform only by:

- the user who set the lock
- the Project Administrator
- Any user to whome the **remove lock permissions** has been **explicitely** assigned

---

**Branch permissions in Azure Repos** are different from **Git Repo level permissions**.
The latter have been discussed earluier and rae repeted here for convenience. 

#### Branch Policies: Base Safeguard 

- require a Minimum number of reviewers on a pull request
- check for linked Work Items (enforce traceability)
- check for comment resolution
- limit merge types

#### Branch Restrictions: Advance Safeguard

- validate code by pre-merging and building pull request changes
- status chanchs: Require other services to post success status to complete the PR
- automatically imclude code reviewers (aka manula approval: these reviewers are always to be added to the required reviewers regardless!)
- PACKAGE_DIR
- restric who can push to the branch

#### Branch Protections: Minimize catastrophic actions

1. Prevent deletion 
2. Prevent overwriting the branch commit history with a force push

---

However **Branch-Level Permissions** in Azure Repos can be used ot control which
identities can perform whih oprations on specific branches of a Azure Repo.
**Branch-Level Permissions are hinerited from the Organization and Project level permissions**.
All the **branch level permissions** are managed from the tab **Branches > Branch Security**
on the Azure DevOps Portal.

- restrict access to a branch to a subset of members within an Azure DevOps Organization
- provide different permissions to those who have access

---

[Amend last commit](https://stackoverflow.com/questions/8981194/changing-git-commit-message-after-push-given-that-no-one-pulled-from-remote)  

The `git push --force` is necessary in order to override the last commit on the 
origin branch when it has already been pushed to it. If the amendment is to the 
lats commit on the local branch and it has not been pushed yet then the
`git commit --amend -m "New commit message"`  is sufficient.

```
git commit --amend -m "New commit message"
git push --force
```

---

[Remove Data from a Git Reposotory](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/8f6e3f4f-4aac-4acd-aaa0-b6aaaafc6f54)  

You may need to remove files that have been accidentally added to a code repository.

- very larg files
- sensitive data such as passwords, SSH keys or secrets

There are in general **two cases** when it comes to rmove files from a git repo:

---

#### Scenario 1

1. the file is recorded in the local history but this has not yet been pushed to the origin

In this case the **local commit** can be **either removed or amended**.

In the following the **rm** command on the OS delete the physical file and the file
is also removed from the **git cache (git index)**.

```
rm <filename>
git rm --cached <filename>
```

After this is done there are two differnt ways to proceded, according to the situation.

- no aother commit needs to be changed other the single commit in which the deleted item was (accidentally) added to the commit

`git reset HEAD^`

This places the **HEAD** pointer of the local repo to the commit prior to the last.
The last commit is left out of the commit history and it is the same as having deleted it.
This will cause all the changes in the commit that is left out to be lost.

`git commit --amend - m "comment"`

In this case teh comit is kept with all its changes but only the file that was previously removed
is left out. This will cause all the **good** changes in the commit that is left out to be retained.

Finally: `git push origin`

---

### Scenario 2

2. the file is also on the remote branch of the local branch

This situation is tackled in one of the following ways.

1. delete all the commits back to the bad commit
2. **use a special tool** to remove a specific file without changing the commit history of the origin.

The following illustrates the manual approach through git commands.
The assumption is also made that the remote repo is isolated and thereore has not yet been merged back
inot the main branch.

```
git reset --hard #commitSHA   
git push --force
```

`git reset --hard #commitSHA`:
This rolls back the **local branch** to **the last good commit** in the commit history.

`git push --force`:
this force-pushes the local commit history to the origin and overwrites it. 
At this point all the commit that followed **#commitSHA** will be deleted from both the local repo and the origin.

---

### Scenario 3: wort case scenario

The **bad commit** was not only pushed to the origin of the feature branch but also:

- other commits have been pushed on top of the bad commit on the origin of the feature branch
- other branches have been created that contains the bad commit i.e. after the feature branch was merged into the main branch

This is a complicated scenario for which there is not a sigle solution only a few possible approaches
according to the specific case, the effort that can be affordeed and the severity of the issue.


#### Approach with built-in git tools or community supported Git tools

`git filter-branch`: 
[git-filter-branch](https://git-scm.com/docs/git-filter-branch)  
This can do the job beut it is hard to use and **it is not officially recommended by the Git community**.

---

` git filter-repo --path src/ --to-subdirectory-filter my-module --tag-rename '':'my-module-'`: 
[git-filter-repo](https://github.com/newren/git-filter-repo)
A **community supported Git tool**.

git filter-repo is a tool for rewriting history. It roughly falls into the same space of tool as git filter-branch
**with much better performance and capabilities** beyond trivial rewriting cases. 
git filter-repo **is now recommended by the git project instead of git filter-branch**.
Users with specialized needs can leverage it to quickly create entirely new history rewriting tools.

---

[BFG Repo Cleaner](https://github.com/newren/git-filter-repo?tab=readme-ov-file#bfg-repo-cleaner)  

> great tool for its time, but while it makes some things simple, it is limited to a few kinds of rewrites.
> its architecture is not amenable to handling more types of rewrites.
> its architecture presents some shortcomings and bugs even for its intended usecase.
> fans of bfg may be interested in bfg-ish, a reimplementation of bfg based on filter-repo which includes several new features and bugfixes relative to bfg.
> a cheat sheet is available showing how to convert example commands from the manual of BFG Repo Cleaner into filter-repo commands.

[BFG Repo-Cleaner](https://rtyley.github.io/bfg-repo-cleaner/)
an alternative to git-filter-branch

1. Removing Crazy Big Files
2. Removing Passwords, Credentials & other Private data

```
git clone --mirror git://example.com/some-big-repo.git
$ java -jar bfg.jar --strip-blobs-bigger-than 100M some-big-repo.git
$ cd some-big-repo.git
$ git reflog expire --expire=now --all && git gc --prune=now --aggressive
$ git push
```

`git clone --mirror git://example.com/some-big-repo.git`:

First clone a fresh copy of your repo, using the `--mirror` flag.
This is a **bare repo**, which means your normal files won't be visible, 
**it is a full copy of the Git database of your repository** at this point 
you should make a backup of it to ensure you don't lose anything.

`$ java -jar bfg.jar --strip-blobs-bigger-than 100M some-big-repo.git`:

The BFG will update your commits and all branches and tags so they are clean, but 
**it doesn't physically delete the unwanted stuff**. Examine the repo to make sure your history 
has been updated, and **then use the standard git gc command to strip out the unwanted dirty data**
which Git will now recognise as surplus to requirements:

```
$ cd some-big-repo.git
$ git reflog expire --expire=now --all && git gc --prune=now --aggressive
```


Finally, once you're happy with the updated state of your repo, push it back up 
(note that because your clone command used the --mirror flag, this push will update 
all refs on your remote server):

`$ git push`

---

#### Caveats to the approach with built-in git tools or community supported Git tools

If the git repository is **in Azure Repos** even after any of any of the approaches above 
have been applied to your Git repo the **file history** as it is shown in the Web Portal 
**will retain the chached deleted files** and they will be visible. 

If the git repository is in **GitHuib** after the deletion of the bad items has been 
performed you are officially adviced to reach out to support in order for the cached
files to be removed from the GitHub portal. 

---

[Recovering Repository Data](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/5c0a284a-15c5-47b9-a555-4162c2324135/127f37cf-ecc8-43ed-9c4f-2e7e9e74103b)  

### Recovery Scenarios

### Restore a deleted branch from Azure Repos

This is simply a 2-steps process:

In Azure Repos > Branches > **Search for exact match in deleted branches**.
From the context menu of the deleted branch select **restore branch**.

### Restore a deleted repository from Azure Repos

Even though **there is a warning of permanent deletion** the delition of a branch from an Azure Repo
is still a **soft deletion** that makes it possible to recover the branch after the accidental deletion.
The process of restoring the deleted branch **requires a authenticated API call**.

[Restore a deleted Git branch from the web portal](https://learn.microsoft.com/en-us/azure/devops/repos/git/restore-deleted-branch?view=azure-devops)  
[Repositories - Restore Repository From Recycle Bin](https://learn.microsoft.com/en-us/rest/api/azure/devops/git/repositories/restore-repository-from-recycle-bin?view=azure-devops-rest-7.1)  

`PATCH https://dev.azure.com/{organization}/{project}/_apis/git/recycleBin/repositories/{repositoryId}?api-version=7.1-preview.1`


---

[Designing & Implementing Pipelines](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/737fc4b5-be05-4295-b354-489762c044c1)  

- Classing Pipelines
- Integrate Source Control with Azure DevOps Pipelines
- Build SAgents and Parallelism
- Self-Hosted Agents
- Build Triggers
- Multiple Builds - duplicated Jobs with slightly different inputs
- Rin a build agent in a Docker container

#### Continuous Integration

The process of **continuosly** and **automatically** **building & testing** the code
in oprder to **produce deployable artifacts**.

#### Continuous Delivery

The process of **continuosly** and **automatically** deploy **deployable build artifacts** to end users.

#### Eaxample: Kubernetes container deployment

The following example illustrates the steps that are to be taken for each 
change made to the image of a Docker container that is deployed to Kubernetes.
Each single change or set of changes implies the repetition of the same sequence 
of steps which makes the case for the process to be automated.

```
dockr build #build a new container image
docker push #push teh container to container registry
# updated kubernetese YAML file
kubectl apply
# check that all is till working correctly
```


#### Azure Pipelines: Stages > Jobs > Steps

A pipeline always needs a **trigger**, in other words some kind of event, 
to start its execution. Tipically this may be the push of new commits to
a repository branch or even a manual event.
A trigger is also a **watch mechanism over events** to automate the execution
of a pipeline.

In most cases there are the following foundamental stages to a pipeline: 
Build stage > Deployment stage

Within a Stage there are Jobs and **the important thing to remeber** is that 
**each Job is carried out within a Pipeline Agent&**:
Build stage: Job build backend > Job build frontend

The last organizational unit is the Step within a Job:
Job: Step-1: run a script > Step-2: Task > Step-3: deploy to something > Step-4: post message to API, etc....


---

[Create your first pipeline](https://learn.microsoft.com/en-us/azure/devops/pipelines/create-first-pipeline?view=azure-devops&tabs=java%2Ctfs-2018-2%2Cbrowser)  
[Tutorial: Create a multistage pipeline with Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/create-multistage-pipeline?view=azure-devops)  



```
trigger:
- '*'

variables:
  buildConfiguration: 'Release'
  releaseBranchName: 'release'

stages:
- stage: 'Build'
  displayName: 'Build the web application'
  jobs: 
  - job: 'Build'
    displayName: 'Build job'
    pool:
      vmImage: 'ubuntu-20.04'
      demands:
      - npm

    variables:
      wwwrootDir: 'Tailspin.SpaceGame.Web/wwwroot'
      dotnetSdkVersion: '6.x'

    steps:
    - task: UseDotNet@2
      displayName: 'Use .NET SDK $(dotnetSdkVersion)'
      inputs:
        version: '$(dotnetSdkVersion)'

    - task: Npm@1
      displayName: 'Run npm install'
      inputs:
        verbose: false

    - script: './node_modules/.bin/node-sass $(wwwrootDir) --output $(wwwrootDir)'
      displayName: 'Compile Sass assets'

    - task: gulp@1
      displayName: 'Run gulp tasks'

    - script: 'echo "$(Build.DefinitionName), $(Build.BuildId), $(Build.BuildNumber)" > buildinfo.txt'
      displayName: 'Write build info'
      workingDirectory: $(wwwrootDir)

    - task: DotNetCoreCLI@2
      displayName: 'Restore project dependencies'
      inputs:
        command: 'restore'
        projects: '**/*.csproj'

    - task: DotNetCoreCLI@2
      displayName: 'Build the project - $(buildConfiguration)'
      inputs:
        command: 'build'
        arguments: '--no-restore --configuration $(buildConfiguration)'
        projects: '**/*.csproj'

    - task: DotNetCoreCLI@2
      displayName: 'Publish the project - $(buildConfiguration)'
      inputs:
        command: 'publish'
        projects: '**/*.csproj'
        publishWebProjects: false
        arguments: '--no-build --configuration $(buildConfiguration) --output $(Build.ArtifactStagingDirectory)/$(buildConfiguration)'
        zipAfterPublish: true

    - publish: '$(Build.ArtifactStagingDirectory)'
      artifact: drop
```

---

[Classing Pipelines Editor vs YAML Editor](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/660a8944-ca7b-4eb7-9df1-4bf6a1be965f)  

- New featues are released only for the YAML based editor

---

[Source Control Integration in Azure DevOps](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/5f21d2cb-79ea-4e37-be0b-df19d6fe7c1b)  

1. Azure Repos:
Azure Repos is **natively integrated with Azure DevOps** whch means that the identities 
used to access the source code anre the same as the Azure DevOps Organization, thus there
is no need to set up and manage SSO.

2. GitHub & BitBucket: 
In this case the identies to access the source code repository and those within Azure DevOps
are different as the latter are in AAD. 
**In the specific case of GitHub Cloud Enterprise (not GitHub Team) it is possible to set up** 
**SS0 between GitHub and AAD** as explaned earlier. However, this is not the case with Bitbucket.

When SSO is not an option you then need to **create a connection** to GitHub or Bitbucket 
**to allow access to the sorce code by the Azure DevOps organization or project**.

3. Subverion (Apache): 
The typical use case is that of a **central code repository on an on-premise VM**.

---

### Connection Options Azure DevOps to GitHub or BitBucket

1. Install and configure the Azure Pipelines App in GitHub (Microsoft Preferred Method)

This is doen on the GitHub side. This is the preferred method because the connection 
is going to be associated with the repository or your organization rather than an 
individual user account.

2. Authenticate to GitHub via OAUth or a PAT for a specific User Account on GitHub

The PAT is a permission token that will be generated in GitHub for the user that 
we want to use to authenticated the Azure DevOps Organization/Projject to GitHub.
The PAT is then (securely) stored in Azure DevOps and used every time a pipeline
consumes it by a reference to it in the YAML of a pipeline.

With AOUth the mechanism is similar

The difference is more conceptual: with OAuth, you authorize an app to talk to 
Contentful on your behalf, and might not ever see the credentials that the app uses;
on the other hand, with Personal Access Tokens you are in charge of asking for the
credentials to the API, and subsequently managing them.

[What is the difference between Bearer Token & PAT Token?](https://learn.microsoft.com/en-us/answers/questions/749709/what-is-the-difference-between-bearer-token-pat-to)

You can google for the differences and when you want to choose one vs the other as it can be complex. 
But a high level summary.

PAT is a personal access token. Normally a user requests this and the system generates a complex string value. 
That string value is then used to identify the user in requests. Think of it like a key to a lock. 
PATs are generally limited to a fixed period of time such as 90 days. 

Bearer tokens are for OAuth2 authentication. 
A bearer token is an encoded value that generally contains the user ID, authenticated token and a timetamp. 
It is most commonly used in REST APIs. If the API supports OAuth2 then it'll use a bearer token. 
The user (or client app) sends credentials to the server to authenticate. 
They get back a bearer token that is good for a fixed period of time (determined by the server). 
Subsequent calls to the API pass the bearer token for authentication.

Which do you use? 
Depends on the circumstance. If you are a user trying to authenticate against and API so you can script 
something then you'll use a PAT if the API supports it (aka Azure). If you are building an application to 
consume an API and the API supports OAuth2 then you'll need to get a client ID/secret from the API provider.
Then you'll use OAuth2 to get the bearer token for your session and then use that until you're done. 
**The next time you need to contact the API you'll request a new bearer token**.

Both approaches have the same capabilities, it is just dependent upon what the API you're calling wants to use.

---

### Connection Options Azure DevOps to Subverions via Service Connection

In this case to connect an Azure DevOps Organitation/Project to a Subversion Server you need to 
set up a **Service Connection**. A **Service Connection** is a **general mechanism** used by 
Azure DEvOps to connect to **outside resources**. The process of setting up a SC always start
from the Azure DevOps UI, there you use the **New Service Connection** pane to guide the 
process and at some point it is laways required to authenticate to the service you want 
Azure DevOps to have access to. 

---

[Build Agents and Parallelism](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/a4a83936-2e29-4647-8462-9a7a52042b4a)  

- Microsoft Agents
- Self-Hosted Agents
- Parallel Jobs: How many agents are allowed to run in a single Pipeline or Organization.

### Microsoft Agents

This is the simplest and preferred option and can be applied in most cases.
It presents the advantage that is all that concern the Agent is maintained by
Microsoft. 

There are limitations you must be aware of:

- Microsoft Agents have nothing specific installed on them. If you need anything specific that must be present at build time then the Job must include astep to install this dependency on the Agent before the dependency can be used in the pipeline Job.

- Microsoft Agents have limits of size, maximum build time, available stogare size.

The **Harder Configuration is fixed**:

- Standard_DS2_v2: 2 Vcpu + 7 GB RAM
- 10 GB Storage
- No GPU

---

### Self-Hosted Agents

This can be any VM on-premise on in cloud and you manage it entirely.
Self-Hosted Agents makes it possible to use **persistent configuration** that is not possible
on Microsoft Agents.
**Self-Hoste Agents habe obviously UNLIMITED USE TIME and cost: $15/month*agent**.

---

### Parallel Jobs: 

This determines how many agents are allowed to run in a single Pipeline or Organization at the same time.
It is often required when the team grows to reduce the queue time of the builds and releases.
**Additional parallel agents past the free tier allowance are charged at a flat montly rate**
**but have UNLIMITED USE TIME: $40/month*agent**.

---

[Self-Hosted Agents](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/9050e92f-238b-40fc-99f5-093df243acbc)  

- Self-Hosted Agents Scenarios
- Communication Process
- Agent Pools

### Self-Hosted Agents Scenarios: 

- Hardware Customization: 
you need a GPU or more than available on a Microsoft Hosted Agent.

- Software Customization: 
ypu need to use some software in the build that it is difficult and time-consuming 
to install and configure /set up each time on a managed agent.

- Need to use resources that are NOT hosted on Azure:
this is aka **hybrid buid scenario** and applies also in cases in which the
non Azure resource is hosted by a different cloud provider.

- You want to retain state beween builds.
In some cases it is a requirenet to retain state between builds for example 
when some required atifacts are time-consuming to rebuild each time.

### Self-Hosted Agents Setup:

1. Install self-hosted agent on the VM or physical machine
2. Register and authenticate the agent with Azure DevOps into an Agent Pool*
3. Jobs are sent to an Agent Pool

* Jobs are assigned to Agent Pools and Agents watch the Pool for queued Jobs

### Agent Pools:

- Each Organization has a Default Pool
- An Organization can create additional Pools each for different Jobs
- Agents are registered to a corresponding Pool

### Manganed Agent YAML Example:

In this case you specify the **OS image that the Microsoft Hosted Agent** must have:

```
stages:
- stage: 'Build'
  displayName: 'Build the web application'
  jobs: 
  - job: 'Build'
    displayName: 'Build job'
    pool:
      vmImage: 'ubuntu-20.04'
      demands:
      - npm
```

### Self-Hosted Agent YAML Example:

In this case you specify the **name of the pool the agent is registered with**:

```
stages:
- stage: 'Build'
  displayName: 'Build the web application'
  jobs: 
  - job: 'Build'
    displayName: 'Build job'
    pool:
      name: 'MyPool'
```

If the agent is registered with the default pool:

```
    pool:
      name: 'default'
```

---

[Demo: Self-Hosted Agent](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/9050e92f-238b-40fc-99f5-093df243acbc)

- create a PAT for agent authentication
- install & configure a self-hosted agent on a Windows VM
- post install and view agents in the agent pool

You need to create a PAT on Azure DevOps for your organization so that it can later be used to register the self-hosted agent with a pipeline pool. The **bear minimum scope permission to assign to this PAT for the**
**self-hosted agent is: Read & manage**.

```
Azure DevOps Organization > User Settings > Peronal Access Tokens > +New Token
```

The agent pools of your organization: 

```
Azure DevOps Organization > Organization Settings > Pipelines > Agent Pools
```

There are always at least two pools:

- Azure Pipelines
- Default

Create a new pool or use the default pool > New Agent.

This step **produces a detailed guide** on how to istall the agent on a VM and the guide presents
the isntsructions for: **Windows, macOS, Linux**. There is alos a **Download** button to download
the agent to be istall on your machine.

The following is the input that is going to be required during the setup process:

> server URL: https://dev.azure.com/.../
> enter authentication type (press enter for PAT):
> enter PAT 
> enter agent pool (press enter for default):

---

[Using Build Trigger Rules](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/2288b3b1-d37a-49ea-bc4d-897f3dae6976)  

Triggers defined events a Pipeline watches for in order to start an execution.

```
trigger:
- '*'

variables:
  buildConfiguration: 'Release'
  releaseBranchName: 'release'

stages:
- stage: 'Build'
  displayName: 'Build the web application'
  jobs: 
  - job: 'Build'
    displayName: 'Build job'
    pool:
      vmImage: 'ubuntu-20.04'
      demands:
      - npm
```

- Trigger Types:

1. CI Triggers
2. Scheduled Triggers
3. Pipeline Triggers
4. PR Triggers

1. [CI Triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=yaml#ci-triggers)  
A CI Triggers when a code repo is updated or a specific branch of the repo is updated.

YAML pipelines are configured by default with a CI trigger on all branches, unless the
**Disable implied YAML CI trigger setting**, introduced in Azure DevOps sprint 227, 
is enabled. 

```
trigger:
  branches:
    include:
    - master
    - releases/*
    - refs/tags/{tagname}
    exclude:
    - releases/old*
```

2. [Scheduled Triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/scheduled-triggers?view=azure-devops&tabs=yaml)  


```
schedules:
- cron: string # cron syntax defining a schedule
  displayName: string # friendly name given to a specific schedule
  branches:
    include: [ string ] # which branches the schedule applies to
    exclude: [ string ] # which branches to exclude from the schedule
  always: boolean # whether to always run the pipeline or only if there have been source code changes since the last successful scheduled run. The default is false.
  batch: boolean # Whether to run the pipeline if the previously scheduled run is in-progress; the default is false.
  # batch is available in Azure DevOps Server 2022.1 and higher
```

---

[Pipeline Triggers - Trigger one pipeline after another](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops)   

This type of trigger covers the case when pipeline runs must be chained.

Large products have several components that are dependent on each other. 
These components are often independently built. When an upstream component 
(a library, for example) changes, the downstream dependencies have to be 
rebuilt and revalidated.

**In situations like these, add a pipeline trigger to run your pipeline upon** 
**the successful completion of the triggering pipeline.**


### Pipeline 1:

security-lib-ci - This pipeline runs first.

```
# security-lib-ci YAML pipeline
steps:
- bash: echo "The security-lib-ci pipeline runs first"
```

### Pipeline 2:

app-ci - This pipeline has a pipeline resource trigger that configures the app-ci 
pipeline to run automatically every time a run of the security-lib-ci pipeline completes.

```
# app-ci YAML pipeline
# We are setting up a pipeline resource that references the security-lib-ci
# pipeline and setting up a pipeline completion trigger so that our app-ci
# pipeline runs when a run of the security-lib-ci pipeline completes
resources:
  pipelines:
  - pipeline: securitylib # Name of the pipeline resource.
    source: security-lib-ci # The name of the pipeline referenced by this pipeline resource.
    project: FabrikamProject # Required only if the source pipeline is in another project
    trigger: true # Run app-ci pipeline when any run of security-lib-ci completes

steps:
- bash: echo "app-ci runs after security-lib-ci completes"

```

`trigger: true` :
 Use this syntax to trigger the pipeline when any version of the source pipeline completes. 
 See the following sections in this article to learn how to filter which versions of the source pipeline completing will trigger a run. 
 When filters are specified, the source pipeline run **must match  all of the filters** to trigger a run.

[Branch Filters](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops#branch-filters)  

```
# app-ci YAML pipeline
resources:
  pipelines:
  - pipeline: securitylib
    source: security-lib-ci
    trigger: 
      branches:
        include: 
        - releases/*
         - main
        exclude:
        - releases/old*
```

[Tag filters](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops#tag-filters)  

```
resources:
  pipelines:
  - pipeline: MyCIAlias
    source: Farbrikam-CI
    trigger:
      tags:        # This filter is used for triggering the pipeline run
      - Production # Tags are AND'ed
      - Signed
```

[Stage Filters](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/pipeline-triggers?view=azure-devops#stage-filters)  
```
resources:
  pipelines:
  - pipeline: MyCIAlias  
    source: Farbrikam-CI  
    trigger:    
      stages:         # This stage filter is used when evaluating conditions for 
      - PreProduction # triggering your pipeline. On successful completion of all the stages
      - Production    # provided, your pipeline will be triggered. 
```

---

[Pull request validation (PR) triggers also vary based on the type of repository](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops)  

PR triggers are special in that their configuration depends entirely on the source code 
repository provider. The following are the most notable cases.

- [PR triggers in Azure Repos Git](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=yaml#pr-triggers)  

In constrast to the PR triggers for other providers that are setup in YAML, **In Azure Repos Git**, this functionality is implemented using **branch policies**. 
To enable PR validation, **navigate to the branch policies for the desired branch**, and configure the
**Build validation policy** for that branch. 

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)  

---

- [PR triggers in GitHub](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml#pr-triggers)  

- [PR triggers in Bitbucket Cloud](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/bitbucket?view=azure-devops&tabs=yaml#pr-triggers)  


In both these cases the YAML syntax is the same as in the following examples:

```
pr:
- main
- releases/*
```

```
# specific path
pr:
  branches:
    include:
    - main
    - releases/*
  paths:
    include:
    - docs
    exclude:
    - docs/README.md
```

---

[Incorporate Multiple Builds into a single Pipeline](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/988237c8-14ba-4c7d-81d3-015215475a03)  

- Multiple Builds Scenarios
- YAML Pipeline Schema for Multiple Builds

### Multiple Builds Scenarios

You need to run multiple builds or **multiple Jobs** within a single pipeline.

- You need to run your code in different environment:

For example, you have a Python application that can be run in different version of 
Python therefore you also want that the pipeline should run the unit tests in each
of the target Python environments.

Another scenario is that of applications that target cross-platform environments.
In these cases you need your pipeline to test and deploy the app on each of the 
targets i.e. Linux, Windown, Mac.

#### How should I implement Multiple Builds Scenarios?

1. Use multiple Jobs within the same pipeline

This would work but it's not the preferred solution.

2. Abstract the Job and use it in the same pipeline with different inputs

This is the preferred way to implement this scenario.

[Azure Pipelines: jobs.job.strategy definition](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/jobs-job-strategy?view=azure-pipelines)  

Use of **a matrix to generate copies of a job**, each with different input. 
These copies are useful for testing against different configurations or platform versions.

```
strategy:
  matrix: # Matrix defining the job strategy; see the following examples.
    { string1: { string2: string3 }
  maxParallel: string # Maximum number of jobs running in parallel.

```

#### Example: build on multiple platforms.

```
strategy:
  matrix:
    linux:
      imageName: 'ubuntu-latest'
    mac:
      imageName: 'macOS-latest'
    windows:
      imageName: 'windows-latest'

pool:
  vmImage: $(imageName)

steps:
- task: NodeTool@0
  inputs:
    versionSpec: '8.x'

- script: |
    npm install
    npm test

- task: PublishTestResults@2
  inputs:
    testResultsFiles: '**/TEST-RESULTS.xml'
    testRunTitle: 'Test results for JavaScript'

- task: PublishCodeCoverageResults@1
  inputs: 
    codeCoverageTool: Cobertura
    summaryFileLocation: '$(System.DefaultWorkingDirectory)/**/*coverage.xml'
    reportDirectory: '$(System.DefaultWorkingDirectory)/**/coverage'

- task: ArchiveFiles@2
  inputs:
    rootFolderOrFile: '$(System.DefaultWorkingDirectory)'
    includeRootFolder: false

- task: PublishBuildArtifacts@1
```

---

#### [Example: build on multiple platforms using self-hosted and Microsoft-hosted agents](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/jobs-job-strategy?view=azure-pipelines#build-on-multiple-platforms-using-self-hosted-and-microsoft-hosted-agents)  

For the hosted agent, specify Azure Pipelines as the pool name, and for self-hosted agents, 
leave the vmImage blank. The blank vmImage for the self-hosted agent may result in some 
unusual entries in the logs but they won't affect the pipeline.

```
strategy:
  matrix:
    microsofthosted:
      poolName: Azure Pipelines
      vmImage: ubuntu-latest

    selfhosted:
      poolName: FabrikamPool
      vmImage:

pool:
  name: $(poolName)
  vmImage: $(vmImage)

steps:
- checkout: none
- script: echo test
```
---

[Build using different Python versions](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/jobs-job-strategy?view=azure-pipelines#build-using-different-python-versions)   

```
jobs:
- job: Build
  strategy:
    matrix:
      Python35:
        PYTHON_VERSION: '3.5'
      Python36:
        PYTHON_VERSION: '3.6'
      Python37:
        PYTHON_VERSION: '3.7'
    maxParallel: 2
```

---

[strategy: parallel](https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/jobs-job-strategy?view=azure-pipelines#strategy-parallel)   

The parallel job strategy specifies how many duplicates of a job should run.

```
strategy:
  parallel: string # Run the job this many times.
```

---

[GtHub Actions - Using a matrix for your jobs](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs)  

The following matrix has TWO variables
version with the value [10, 12, 14] 
os with the value [ubuntu-latest, windows-latest]

A job will run for each possible combination of the variables. 
In this example, the workflow will run six jobs, one for each combination of the os and version variables.

```
jobs:
  example_matrix:
    strategy:
      matrix:
        version: [10, 12, 14]
        os: [ubuntu-latest, windows-latest]
```

[Example: Using a single-dimension matrix](https://docs.github.com/en/actions/using-jobs/using-a-matrix-for-your-jobs#example-using-a-single-dimension-matrix)  

```
jobs:
  example_matrix:
    strategy:
      matrix:
        version: [10, 12, 14]
    steps:
      - uses: actions/setup-node@v3
        with:
          node-version: ${{ matrix.version }}
```

---

[Containerized Agents](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/ecc815a3-3933-4f5e-a9d6-de10833e0e8f)  

This user case is about running a **self-hosted Agent inside a Docker container**.

- illustrate the use case
- Scenario 1: Microsoft-Hosted Agent Dockerized Configuration
- Scenario 2: Self-Hosted Agent Non-Orchestration Configuration 
- Scenario 3: Self-Hosted Agent  Orchestration Configuration (with Kubernetes, AKS)

---

#### illustrate the use case: why would you need to run an agent in a Docker container?

- you need to **ISOLATE** your build environment from the uderlying host:
this means that in the container you can use all the tools, OSes and dependencies and
corresponding sepcific versions of the tools independent of the underlying host.

[Define container jobs (YAML)](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops)  

- Scenario 1: Microsoft-Hosted Agent Dockerized Configuration > Hosted agents

Only windows-2019 and ubuntu-* images support running containers. 
**The macOS image doesn't support running containers**.

```
pool:
  vmImage: 'ubuntu-latest'
container: ubuntu:18.04
steps:
- script: printenv
```

- A Windows example:

```
pool:
  vmImage: 'windows-2019'
container: mcr.microsoft.com/windows/servercore:ltsc2019
steps:
- script: set
```

---

[Multiple jobs with containers](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/container-phases?view=azure-devops#multiple-jobs)  

```
pool:
  vmImage: 'ubuntu-latest'

strategy:
  matrix:
    ubuntu16:
      containerImage: ubuntu:16.04
    ubuntu18:
      containerImage: ubuntu:18.04
    ubuntu20:
      containerImage: ubuntu:20.04

container: $[ variables['containerImage'] ]

steps:
- script: printenv
```

---

### Scenario 2: Self-Hosted Agent Non-Orchestration Configuration  
### Scenario 3: Self-Hosted Agent  Orchestration Configuration (with Kubernetes, AKS) 

In BOTH these scenarios the following must happen:

- the container is going to be installed on the (slef-)host
- the Agent is going to be installed and configured into the container
- the Agent registers itself with Azure DevOps 

[Run a self-hosted agent in Docker](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops)  

You can set up a self-hosted agent in Azure Pipelines to run inside a:

- Windows Server Core (for Windows hosts) 
- Ubuntu container (for Linux hosts) with Docker. 

In both cases to run your agent in Docker, you'll **pass a few environment variables to docker run**, 
which configures the agent to connect to Azure Pipelines or Azure DevOps Server.

[Environment variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#environment-variables)

| Environment variable | Description |
| -------------------- | ------------------------------------------------- |
|AZP_URL	             | The URL of the Azure DevOps or Azure DevOps Server instance. |
|AZP_TOKEN             | Personal Access Token (PAT) with Agent Pools (read, manage) scope, created by a user who has permission to configure agents, at AZP_URL. |
|AZP_AGENT_NAME	       | Agent name (default value: the container hostname). |
|AZP_POOL	             | Agent pool name (default value: Default). |
|AZP_WORK	             | Work directory (default value: _work). |

---

### Scenario 2: Self-Hosted Agent Non-Orchestration Configuration  

In this case **no orchestration service such as AKA is used**, you just spin up a containerized
agent in a pipeline to use it in a build job.

1. Create a Dockerfile and a script on the host machine:
these are **provided by Microsoft**.

2. build and start the container image:
at this point the container pulls is the script and runs it and with it 
performs the authentication and registration to Azure DevOps.
At this point the container is registered with a pool in Azure DevOps
and becomes available to run Jobs.

---

[Run a self-hosted agent in Docker on Windows](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#windows)  

1. Enable Hyper-V
2. Install Docker for Windows
3. Create and build the Dockerfile

```
mkdir "C:\azp-agent-in-docker\"
cd "C:\azp-agent-in-docker\"
```

`C:\azp-agent-in-docker\azp-agent-windows.dockerfile`:
```
FROM mcr.microsoft.com/windows/servercore:ltsc2022
WORKDIR /azp/
COPY ./start.ps1 ./
CMD powershell .\start.ps1
```

Notive the `CMD powershell .\start.ps1` command that **must always** be the present
at the end of the Dockerfile.

4. Save the following content to:
`C:\azp-agent-in-docker\start.ps1:`

This is the script that will be used by the docker container to download the Azure DevOp build
agent and register it. It makes use of the **env vars** that have biscussed above.

```
function Print-Header ($header) {
  Write-Host "`n${header}`n" -ForegroundColor Cyan
}

if (-not (Test-Path Env:AZP_URL)) {
  Write-Error "error: missing AZP_URL environment variable"
  exit 1
}

if (-not (Test-Path Env:AZP_TOKEN_FILE)) {
  if (-not (Test-Path Env:AZP_TOKEN)) {
    Write-Error "error: missing AZP_TOKEN environment variable"
    exit 1
  }

  $Env:AZP_TOKEN_FILE = "\azp\.token"
  $Env:AZP_TOKEN | Out-File -FilePath $Env:AZP_TOKEN_FILE
}

Remove-Item Env:AZP_TOKEN

if ((Test-Path Env:AZP_WORK) -and -not (Test-Path $Env:AZP_WORK)) {
  New-Item $Env:AZP_WORK -ItemType directory | Out-Null
}

New-Item "\azp\agent" -ItemType directory | Out-Null

# Let the agent ignore the token env variables
$Env:VSO_AGENT_IGNORE = "AZP_TOKEN,AZP_TOKEN_FILE"

Set-Location agent

Print-Header "1. Determining matching Azure Pipelines agent..."

$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":$(Get-Content ${Env:AZP_TOKEN_FILE})"))
$package = Invoke-RestMethod -Headers @{Authorization=("Basic $base64AuthInfo")} "$(${Env:AZP_URL})/_apis/distributedtask/packages/agent?platform=win-x64&`$top=1"
$packageUrl = $package[0].Value.downloadUrl

Write-Host $packageUrl

Print-Header "2. Downloading and installing Azure Pipelines agent..."

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($packageUrl, "$(Get-Location)\agent.zip")

Expand-Archive -Path "agent.zip" -DestinationPath "\azp\agent"

try {
  Print-Header "3. Configuring Azure Pipelines agent..."

  .\config.cmd --unattended `
    --agent "$(if (Test-Path Env:AZP_AGENT_NAME) { ${Env:AZP_AGENT_NAME} } else { hostname })" `
    --url "$(${Env:AZP_URL})" `
    --auth PAT `
    --token "$(Get-Content ${Env:AZP_TOKEN_FILE})" `
    --pool "$(if (Test-Path Env:AZP_POOL) { ${Env:AZP_POOL} } else { 'Default' })" `
    --work "$(if (Test-Path Env:AZP_WORK) { ${Env:AZP_WORK} } else { '_work' })" `
    --replace

  Print-Header "4. Running Azure Pipelines agent..."

  .\run.cmd
} finally {
  Print-Header "Cleanup. Removing Azure Pipelines agent..."

  .\config.cmd remove --unattended `
    --auth PAT `
    --token "$(Get-Content ${Env:AZP_TOKEN_FILE})"
}
```

5. Start the image:

Now that you have created an image, you can run a container. 
This installs the latest version of the agent, configures it, and runs the agent.
It targets the specified agent pool (the Default agent pool by default) of a specified Azure DevOps or Azure DevOps Server instance of your choice:

```
docker run -e AZP_URL="<Azure DevOps instance>" -e \
AZP_TOKEN="<Personal Access Token>" -e \ 
AZP_POOL="<Agent Pool Name>" -e \
AZP_AGENT_NAME="Docker Agent - Windows" --name "azp-agent-windows" azp-agent:windows
```

You might need to specify the `--network` parameter if you run into network issues.

`docker run --network "Default Switch" < . . . >`

---

[Run a self-hosted agent in Docker on Linux](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#linux) 

The steps are the same only the **Dockerfile** and the `start.sh` differ a bit from the case for Window.

---

The previous two examples illustrate the process of:

1. creating a container from a basic **Dockerfile** on a self-hosted machine
2. installling the agent into the container
3. registering the agent to Azure DevOps by means of a script: `start.sh` / `start.ps1` 
4. starting the container to add it to a pool on the Azure DevOps Organization ready to take jobs

The limitation here is the **2.** step as you would normally want to customize the container:

[Add tools and customize the containe](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#add-tools-and-customize-the-container)  

You can extend the Dockerfile to include additional tools and their dependencies or
build your own container by using this one as a base layer. 
Just make sure that the following are left untouched:

- The `start.sh` script is called by the Dockerfile.
- The `start.sh` script is the last command in the Dockerfile.
- Ensure that derivative containers don't remove any of the dependencies stated by the Dockerfile.

---

### Scenario 3: Self-Hosted Agent  Orchestration Configuration (with Kubernetes, AKS) 

[Run a self-hosted agent in Docker start on AKA](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#start-the-image)  

`docker run < . . . > --once`

If you want a fresh agent container for every pipeline job, pass the `--once` flag to the run command.
With the `--once` flag, you **might want to use a container orchestration system**, like Kubernetes or
Azure Container Instances, to start a new copy of the container when the job completes.

[Deploy and configure Azure Kubernetes Service](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#deploy-and-configure-azure-kubernetes-service)  

[Quickstart: Deploy an Azure Kubernetes Service (AKS) cluster using Azure portal](https://learn.microsoft.com/en-us/azure/aks/learn/quick-kubernetes-deploy-portal?tabs=azure-cli)  

[Configure secrets and deploy a replica set](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops#configure-secrets-and-deploy-a-replica-set)  

- Create the secrets on the AKS cluster:

The following command is run on an existing AKS Cluster and sets the values of the 
the environment variables below that the AKA cluster will then use to authenticate
to Azure DevOps: `AZP_URL, AZP_TOKEN, AZP_POOL`.

```
kubectl create secret generic azdevops \
  --from-literal=AZP_URL=https://dev.azure.com/yourOrg \
  --from-literal=AZP_TOKEN=YourPAT \
  --from-literal=AZP_POOL=NameOfYourPool
```

- Run this command to push your container to Container Registry:

`docker push "<acr-server>/azp-agent:<tag>"` 

- Configure Container Registry integration for existing AKS clusters:

```
az account set --subscription "<subscription id or subscription name>"
az aks update -n "<myAKSCluster>" -g "<myResourceGroup>" --attach-acr "<acr-name>"
```

- Create and deploy a Kubernetes YAML file to the cluster:

Save the following content to `~/AKS/ReplicationController.yml`.
This files will be used by the AKA cluster to handle the installation of the 
agen on the container and its registration with the Azure DevOps organization.


```
apiVersion: apps/v1
kind: Deployment
metadata:
  name: azdevops-deployment
  labels:
    app: azdevops-agent
spec:
  replicas: 1 # here is the configuration for the actual agent always running
  selector:
    matchLabels:
      app: azdevops-agent
  template:
    metadata:
      labels:
        app: azdevops-agent
    spec:
      containers:
      - name: kubepodcreation
        image: <acr-server>/azp-agent:<tag>
        env:
          - name: AZP_URL
            valueFrom:
              secretKeyRef:
                name: azdevops
                key: AZP_URL
          - name: AZP_TOKEN
            valueFrom:
              secretKeyRef:
                name: azdevops
                key: AZP_TOKEN
          - name: AZP_POOL
            valueFrom:
              secretKeyRef:
                name: azdevops
                key: AZP_POOL
        volumeMounts:
        - mountPath: /var/run/docker.sock
          name: docker-volume
      volumes:
      - name: docker-volume
        hostPath:
          path: /var/run/docker.sock
```

- Deply the container to the AKS cluster:

`kubectl apply -f ReplicationController.yml`

Now your agents will run the AKS cluster and is registered on a pool of your 
Azure DEvOps organization.

---

[Integration of GitHub with Azure DevOps](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f5f4b458-7d09-4d32-bc7f-ccf965b4b1bb/337b1560-e260-4387-a53a-a7134db34fde)  

- Install Azure Pipelies (App from Marketplace) on a GitHub repository
- Build an Azure DevOps project and pipeline
- Review interactions OF BUILD STATUS BADGE

#### [In Azure DevOps pipeline add a status badge to be posted to a GitHub repo](https://learn.microsoft.com/en-us/azure/devops/boards/github/configure-status-badges?view=azure-devops)  

Azure DevOps in an Azure Pipeline that builds code in a repository on GitHub **automatically produces markdown** 
that can be then **copied inside the README.md file of the code repo** at its very beginning, then the file
can be commited to the repository.

The status badge will now be visible on the REAME.md page on GitHub, this communicate to the contributors
and visitors of the projects that it is worked on and maintained effectively.

---

[Designing and Implementing a Package Management Strategy](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/d186067c-b598-4e56-898c-e22a39913b34/e0183b8a-568e-4392-aa44-5c3aef671452)  

- Package Management Tools
- Azure Artifacts
- Microsoft Recommendation on a Versioning Strategy for Artifacts

* Packages and Artifacts can be used interchangeavly and are synonims

#### Typical kinds of packages

A package is typically some kind of **file archive with binary code i.e. dlls or scripts together with metadata files about the contents of the package**.

#### End User Software Packages

| OS          | Package type |
| ----------- | ------------------------------------------------- |
| Android	    | APK |
| macOS  	    | DMG |
| Linux  	    | RPM |
| Debian 	    | DEB |


#### Development Reated Packages and Package Managers

These tools do not install applications for end users, they are used to simplify the 
management and deployment of software packages in development or production environments 
and workflows.

| OS          | Package type |
| ----------- | ------------------------------------------------- |
| Node.js	    | NPM |
| .Net  	    | NuGet |
| Java  	    | Maven |
| Python 	    | Pip |

---

#### In the context of a build pipeline or CI/CD setup

Artifacts are **upstream dependencies** that are to be used by and integrated into your application by a DevOps workflow. These upstream packages must be stored by a **Upstream Package Hostring Service** and **Azure Artifacts** is such a service.
**In the build** these sources are called **feeds**.

The other use case is when a CI/CD pipeline needs some storage to store, manage and maintain the packages
or artifacts that itself produces.


| Provider        | Package Hostring Service |
| --------------- | ------------------------------------------------- |
| Azure DevOps	  | Azure Artifacts |
| GitHub   	      | GitHub Packages |
| JFrog  	        | JFrog Artifactory |


---

[Azure Artifacts](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/d186067c-b598-4e56-898c-e22a39913b34/d3953f5d-440d-462f-b67c-16e385995455)  

**Azure Artifats** is the Azure DevOps built-in package management solution that is available to any 
Azure DevOps Organization. It is designed to be **perfectly integrated with Azure Pipelines**.

- Feeds:
The primary **management layer** in Azure Artifacts are **feeds**, each feed can be **scoped**
to either the project or teh organization level withing Azure DevOps. A feed is alos the place
where any Azure Pipeline can publish the artifacts it produces.

A feed determines:

- how packages are stored
- how packages are grouped
- how packages are shared with people in the organization

- private and public registries:
Azure Artifacts can support **private and public registries**. However **public registries** can only be scoped to the **project** level.

---

- Developer Workflow in Visual Studio and NuGet Packages

1. Visual Studio authenticates to a Azure Artifacts Feed with the built-in **Credential Provider**:
The advantage of the **Credential Provider** is that there is no need for API keys 
or access tokens. The **Credential Provider** uses teh **OAuth** authentication method.
You need to rpovide the **Azure Artifact Feed URL**  


In cases in which the IDE is not Visual Studio and/or packages are other than NuGet
apckages API keys or access tokens are necessary.

2. Create a feed in Azurre Artifacts
The feed may be scoped to the organization or the project level.

3. In the Azure Pipeline use a task to publish to the fee.

[NuGetCommand@2 - NuGet v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/nuget-command-v2?view=azure-pipelines)  

> Push/Publish a package to an organization scoped feed

```
# Push a project
- task: NuGetCommand@2
  inputs:
    command: 'push'
    nuGetFeedType: 'internal'
    publishVstsFeed: 'my-organization-scoped-feed'
```

> Push/Publish a package to a project scoped feed

```
# Push a project
- task: NuGetCommand@2
  inputs:
    command: 'push'
    nuGetFeedType: 'internal'
    publishVstsFeed: 'my-project/my-project-scoped-feed'
```

---

[Creating a Versiong Strategy for Atifacts](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/d186067c-b598-4e56-898c-e22a39913b34/3e749b22-6f82-414e-a9fb-11cf480e1766)  

- the purpose of versioning
- Microsoft Versioning Best Parctices and Recommendations: Semantic Versioning
- Feed Views: control and limit access upstream  packages based on readiness

### The purpose of versioning

In a large team working on interdependent projects several packages mabe be produced and integrated over time.
You need a way to differentiate not only the packages but also their versions as **packages are immutable**
in the sense that **they cannot be changed after creation** from their source code.

**Immutability of version packages** means that once a specific softawre archive is given a version label
that label must no longer be used to identified another archive otherwise the wrong archive may end up
being integrated in the wrong software.

This means that **how the version number are produced needs a strategy to avoid that the same version number**
**may be reused to identify different archives**.

---

### Microsoft Versioning Best Parctices and Recommendations: Semantic Versioning

The suggested number scheme adheres to the following pattern:

> `{major}.{minor}.{patch}-{quality_of_change_and_readiness_tag}`

`{major}.{minor}.{patch}`: 
is used to express the **nature of the change**.

`{quality_of_change_and_readiness_tag}`: 
can be any meaningful label such as **prerelease, alpha, beta, etc.** or even a **timestamp**. 

```
2.1.3-YYYYMMDDhhmmssms
2.1.3-prerelease
2.1.3
```

---

### [Feed Views- What are feed views?](https://learn.microsoft.com/en-us/azure/devops/artifacts/concepts/views?view=azure-devops)

Feed views enable developers of upstream archhives **to manage access to and share a subset** 
**of package-versions with their consumers who may belong to different groups of people**. 
Consumers who belong to a specific groups will **connect to to a specific view of a feed**.

Access to feed views within Azure DevOps Artifacts is managed by specific permissions 
to be assigned to the identities of users and groups within the Azure DevOps organization.

A common use of feed views is to share package versions that have been tested and validated 
but hold back on packages that are still under development and/or didn't meet a certain quality
bar.

All Artifacts feeds come with three preexisting views: 
`@local, @prerelease, @release`

Other views can also be created.

`@local` : 
is the default view that's commonly used in upstream sources and cannot be edited or deleted.
Wnen a developer pushes an atritfact to a feed this is the view that the artifacts will be 
available from.

**After** the package is available in the `@local` view it may be **promoted to other views**.

`@prerelease, @release` : are suggested views that you can rename or delete as desired. 

#### Access the Views in Azure Artifacts

> Arifacts > Views Tab ...

#### How to promote an artifact from the @local view to another view

> Arifacts > Overview > select the package > select the **Promote** button > select the view to promote the package to

---

[Designing Build Automation](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/7e9d9682-a0c7-4f82-8e4c-2cdba07bb4e4/8f76a739-d778-4987-b535-2f71d0636ea9)  

- Integrate External Services with Azure Pipelies
- Visual Studio Marketplace  
- Testing Startegies in your build
- Code Coverage

---

[Integrate External Services with Azure Pipelies](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/7e9d9682-a0c7-4f82-8e4c-2cdba07bb4e4/a2aed1db-7419-4366-8dee-a1531631d1b7)  

- Scenarios for Connecting External Tools
- External Tool Connection Methods
- Popular Code Scanning Tools

#### Scenarios for Connecting External Tools

The underlying reason to integrate external tools with Azure DevOps is to provide 
specializede functionality that is not present natively in Azure DevOps thereby to
extend Azure DevOps capabilities.

- use specialized code scanners to detect vulnerabilities in code and packages
- test code coverage
- monitor code dependencies 
- integration with other CI/CD tools such as: Jenkins, CircleCI, etc.

#### External Tool Connection Methods

The way Azure DevOps can connect to external integration tools depends on the tool.
The three main connections types are the following:

| Connection Method           | Details and Scenario|
| --------------------------- | ------------------------------------------------- |
| Visual Studio Marketplace	  | a place with extension apps that can be directly embedded in Azure DevOps Pipelines and other Azure DevOps Services|
| Service Hooks  	            | **Service Hooks are used to send events and related info from Azure DevOps to an external tool in order to allow  the tool to take some kind of action.** Example1: ChatOps, you send messages to a service hook in order to be shared with the rest of the team on a specific chat client. Example2: In the integration of Jenkins with Azure DevOps you may create a Service Hook that sends an event to Jenkins on a new commit event detected in Azure DevOps Repos.|
| Service Connections  	      | This is **compared to Service Hook** a deeper level fo integration between the exteranl tool and Azure Devops. It is suitable when the external tool not only needs to receive enevet and data from Azure DevOps but the tools also must oerform some specific work within Azure DevOps i.e. **a code scanning tool or using Jenkins to actually do teh CI instead of SAzure Pipelines**.|

#### External Tool Authentication with Azure DevOps


| Authentication Method     | Details and Scenario |
| ------------------------- | ------------------------------------------------------------------------ |
| PAT         	            | PAT are **used by external services** to **autheticate to Azure DevOps**. You create the PAT in Azure DevOps and then you get the integrated tool to store it and use ti when it connects to Azure DevOps. |
| API Token/ Auth Tokens    | In this cases the tokes is provided by teh external service and used by Azure DevOps to autheticate to it. These are generated in the integration tool and stored in Azure DevOps as secrets and then access by Azure DevOps pipelines or other Azure DevOps services at the time a connection to the external tool needs to be established. Example: Jenkins. |

---

#### Popular Code Scanning Tools

| Tool              | Details |
| ----------------- | ------------------------------------------------- |
| WhiteSource Bolt  | Scan the code, find and fix open source vulnerabilities. |
| Snyk              | the same as above |
| Octupus Deploy    | DevOps authomation + Dependency scanner |


---

[Demo: Integrate WhiteSource Bolt in Azure DevOps](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/7e9d9682-a0c7-4f82-8e4c-2cdba07bb4e4/c819e319-032e-4ed5-b518-8a0b63d41f8d)  

This illustrate how a tool (app) is integrated with Azure DevOps by means of the **Visual Studio Marketplace**.

---

[Testing Strategies in Azure DevOps Pipelines](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/7e9d9682-a0c7-4f82-8e4c-2cdba07bb4e4/0403c09e-b84a-4a85-9a2c-46f2054590fe)  

Testing is a **Quality Assurance Process**.

- Range in Scope Testing
- Azure Test Plans

#### Range in Scope Testing

| Test Type         | Scope |
| ----------------- | ------------------------------------------------- |
| Unit              | Individual Components i.e. function, method, class etc. |
| Integration       | Multiple component interaction |
| Functiomal/System | An entire feature or application (e2e) |
| UI                | Use a specialized UI Testimng Environemnt/Tool i.e. **Selenium** to test the interaction with the UI|


####  Azure Test Plans

- built-in Azure dEVoPS
- Browser Based Testing tool
- It is **NOT** an automated testing tool use Azure Pipeline instead
- Plan & Track testing results: 
it is a planning and tracking board for your **manual and exploratory** tests especiallty for UI UX tests.

In the tool you can define a **suite of tests to run** and track the results.

---

[Code Coverage](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/7e9d9682-a0c7-4f82-8e4c-2cdba07bb4e4/145616f5-0f57-4988-82a5-a54378dcbe7e)  

[PublishTestResults@2 - Publish Test Results v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-test-results-v2?view=azure-pipelines&tabs=trx%2Ctrxattachments%2Cyaml)  

**Publish test results to Azure Pipelines.**

```
# Publish Test Results v2
# Publish test results to Azure Pipelines.
- task: PublishTestResults@2
  inputs:
    testResultsFormat: 'JUnit' # 'JUnit' | 'NUnit' | 'VSTest' | 'XUnit' | 'CTest'. Alias: testRunner. Required. Test result format. Default: JUnit.
    testResultsFiles: '**/TEST-*.xml' # string. Required. Test results files. Default: **/TEST-*.xml.
    #searchFolder: '$(System.DefaultWorkingDirectory)' # string. Search folder. Default: $(System.DefaultWorkingDirectory).
    #mergeTestResults: false # boolean. Merge test results. Default: false.
    #failTaskOnFailedTests: false # boolean. Fail if there are test failures. Default: false.
    #failTaskOnFailureToPublishResults: false # boolean. Fail if there is failure in publishing test results. Default: false.
    #failTaskOnMissingResultsFile: false # boolean. Fail if no result files are found. Default: false.
    #testRunTitle: # string. Test run title. 
  # Advanced
    #buildPlatform: # string. Alias: platform. Build Platform. 
    #buildConfiguration: # string. Alias: configuration. Build Configuration. 
    #publishRunAttachments: true # boolean. Upload test results files. Default: true.
```

```
- task: PublishTestResults@2
  inputs:
    testRunner: VSTest
    testResultsFiles: '**/*.trx'
    failTaskOnFailedTests: true
```

```
# Build Docker image for this app to be published to Azure Container Registry
pool:
  vmImage: 'ubuntu-latest'
variables:
  buildConfiguration: 'Release'

steps:
- script: |
    docker build -f Dockerfile.build -t $(dockerId)/dotnetcore-build:$BUILD_BUILDID .
    docker run --name dotnetcoreapp --rm -d $(dockerId)/dotnetcore-build:$BUILD_BUILDID
    docker cp dotnetcoreapp:app/dotnetcore-tests/TestResults $(System.DefaultWorkingDirectory)
    docker cp dotnetcoreapp:app/dotnetcore-sample/out $(System.DefaultWorkingDirectory)
    docker stop dotnetcoreapp

- task: PublishTestResults@2
  inputs:
    testRunner: VSTest
    testResultsFiles: '**/*.trx'
    failTaskOnFailedTests: true

- script: |
    docker build -f Dockerfile -t $(dockerId).azurecr.io/dotnetcore-sample:$BUILD_BUILDID .
    docker login -u $(dockerId) -p $pswd $(dockerid).azurecr.io
    docker push $(dockerId).azurecr.io/dotnetcore-sample:$BUILD_BUILDID 
  env:
    pswd: $(dockerPassword)
```

| Language   | Typical Testing Coverage Framewokrs |
| ---------- | ------------------------------------------------- |
| Java       | JaCoCo, Cobertura*, Clover |
| C++        | Bullseye |
| Python     | Coverage.py, Cobertura |
| .Net/C#    | NCover, dotCover |

---

[PublishCodeCoverageResults@2 - Publish code coverage results v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-code-coverage-results-v2?view=azure-pipelines)  

**Use this task to get code coverage results from a build.**

```
# Publish code coverage results v2
# Publish any of the code coverage results from a build.
- task: PublishCodeCoverageResults@2
  inputs:
    summaryFileLocation: # string. Required. Path to summary files. 
    #pathToSources: # string. Path to Source files. 
    #failIfCoverageEmpty: false # boolean. Fail if code coverage results are missing. Default: false.
```

---

[PublishCodeCoverageResults@1 - Publish code coverage results v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/publish-code-coverage-results-v1?view=azure-pipelines)  

Use this task to **publish Cobertura or JaCoCo** code coverage results from a build.

```
# Publish code coverage results v1
# Publish Cobertura or JaCoCo code coverage results from a build.
- task: PublishCodeCoverageResults@1
  inputs:
    codeCoverageTool: 'JaCoCo' # 'Cobertura' | 'JaCoCo'. Required. Code coverage tool. Default: JaCoCo.
    summaryFileLocation: # string. Required. Summary file. 
    #pathToSources: # string. Path to Source files. 
    #reportDirectory: # string. Report directory. 
    #additionalCodeCoverageFiles: # string. Additional files. 
    #failIfCoverageEmpty: false # boolean. Fail when code coverage results are missing. Default: false.
```

---

After the tests results are published from within a Azure DevOps Pipelines 
the summary view will show the tab **Tetsts**

After the code coverage results are published from within a Azure DevOps Pipelines
the summary view will show the tab **Coverage**

---

[Maintaining Azure Build Pipelines](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f4f8bc9c-8999-4a48-b302-f8475f58b4f9/6e9afc8d-b7fe-4b75-a787-3e39972b0a3d)  

- Use Pipeline Health Monitoring
- Improve Performance and Cost Effinciency of a build Pipeline
- Pipeline Agent Analytics, Logs and Troubleshooting

---

[Use Pipeline Health Monitoring](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f4f8bc9c-8999-4a48-b302-f8475f58b4f9/b4e5cd69-edd0-4a09-b88d-b87902b4e9d6)

- Monitoring & Health Scenarios
- **Pipeline Reports**: duration, pipeline pass rate, tests pass rate

#### Pipeline Reports

This reports is a feature built-in Azure DevOps and gives the following breakdown.
From the Pipeline Overview select the **Analytics tab** to access the reports.

1. pipeline duration report:
detail breakdown of the duration by **step** and by **task** within the pipeline.

2. pipeline pass rate report:
isolates these stats by **step** and by **task** within the pipeline.

3. tests pass rate report:

---

[Improve Performance and Cost Effinciency of a build Pipeline](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f4f8bc9c-8999-4a48-b302-f8475f58b4f9/1ab095bb-aac6-4e68-b929-5e3ad42768af)  

- Performance / Costs relationship
- Pipeline Caching
- Self-Hosted Agents
- Agent Poool Consumption Report

#### Performance / Costs relationship

Given a pipeline and a queue time target in order to be under the queue time trarget
you will have to add **parallel jobs** which in turn cost money, therefore the slower
the pipeline the more parallel jobs you need and corresponding costs.
**Inderect costs** should also be taken in account, such as unproductive time of 
developers that have to wait the pipeline run to complete or for their pipeline run
in the wait queue.

**The more efficient and faster the build pipeline the lower the costs.**

---

[Pipeline Caching](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/caching?view=azure-devops)

Pipeline caching can help reduce build time by allowing the outputs or downloaded dependencies 
from one run to be reused in later runs reducing or avoiding the cost to recreate or redownload 
the same files again. Caching is especially useful in scenarios where the same dependencies are 
downloaded over and over at the start of each run. T

#### Proviso on the Pipeline Cache

Caching can be effective at improving build time provided the time to restore and save the cache 
is less than the time to produce the output again from scratch. 

**Caching takes the output from one job and it makles it availble to a new job.**
Jobs are executed on different agents therefore the cache storage is not on the 
agents or the underlying machine.

#### Pipeline Cache vs. Azure Artifacts


| Pipeline Cache                                | Azure Artifacts |
| -------------------------------------------- | ------------------------------------------------- |
| Used to improve Pipeline Performance         | Use to manage and access package dependencies and not a performance oriented feature |
| Cached Outtput are not required dependencies | Holds and manage **required dependencies** |

--- 

[Cache@2 - Cache v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cache-v2?view=azure-pipelines)  

```
# Cache v2
# Cache files between runs.
- task: Cache@2
  inputs:
    key: # string. Required. Key. 
    path: # string. Required. Path. 
    #cacheHitVar: # string. Cache hit variable. 
    #restoreKeys: # string. Additional restore key prefixes.
```

---

#### Improve Perfomance at lower cost with Self-Hosted Agents

- can use customized hardware and software:
Any available high-performance on-premise resource can be put to work with lower costs
when compare to Microsoft Hosted Agents. This might be because the on-premise harder 
has better specs that makes teh pipeline run faster or just because adding a parallel
job reduces the queue time of the build.

- may used as a caching mechanism:
If there are binaries that never change and are used in teh build by placing them 
on a Slef-Hosted Agent you improve pipeline performance in the same way the Caching 
mechanism described above does.

---

####  [Agent Pool Consumption Report](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pool-consumption-report?view=azure-devops)  

[[Agent Pool Consumption Report](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f4f8bc9c-8999-4a48-b302-f8475f58b4f9/1ab095bb-aac6-4e68-b929-5e3ad42768af)  

This tool is designed to answer teh question: 
**How many Parallel Agents are required at this point in time?**

It helps with figuring out whether more parallel agents have been provisioned 
than actually required or vice versa therefore by using it you may save on 
costs of underutilized resources.

The pool consumption report enables you to view jobs running in your agent pools 
graphed with agent pool job concurrency over a span of up to 30 days. 
You can use this information to help decide whether your jobs aren't running because 
of concurrency limits. If you have many jobs queued or running jobs at the concurrency 
or online agents limit, you may wish to purchase additional parallel jobs or provision 
more self-hosted agents.

---

[Pipeline Agent Analytics and Troubleshooting](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/f4f8bc9c-8999-4a48-b302-f8475f58b4f9/626828b7-fc92-48a2-9631-3b42e03b7e13)  

- Viewing Agent Logs
- Downloading Agent Logs

- Enable and Configure Verbose Agent Logs:
This is done **before a pipeline run by setting the Eanble system diagnostics check** in the
Run Pipeline menu.

---

[Designing a Process for Standardization of Builds across teh Organization](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/b17de243-116d-4647-8b01-46e923b6cda2/2a5a69dc-6b8f-426a-a57a-949524d0ad85)  

- Implement YAML Templates
- Use Variable Groups

---

#### [Implement YAML Templates](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/b17de243-116d-4647-8b01-46e923b6cda2/cdd31209-c9f6-4c38-9f6c-5a3c8fe64583)  


It is possible to create YAML for Azure DevOps Pipelines that can be used as a template for the 
`pipeline.yaml` file of pipelines accross an organization in order to achive some degree of 
standardization.

- YAML Templates Purpose
- Inserting YAML Templates
- YAML Templates Location Reference

### YAML Templates Purpose

In practice YAML Templates **is reusable Pipeline Content** as you can defile **steps and other content**
in the pipelien template and use it in others `pipeline.yaml` files. The big advantage of inserting a 
template YAML pipeline into a YAML pipeline definition is that this link is not broken that is to say 
**updates to the template will be reflected into the puipelines that refernce it**.

Notable use cases for YAML Templates are the following:

- Insert & reuse pipeline steps, jobs, stages
- Restrict allowed parameters:
which is useful from a security perspective

[Template usage reference](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops&pivots=templates-includes)  

Template files need to exist on your filesystem at the start of a pipeline run. 
**You can't reference templates in an artifact**.

---

[Reference template paths](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops&pivots=templates-includes#reference-template-paths)  

[Reference templates in other repositories](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops&pivots=templates-includes#use-other-repositories)  

When you refer to the core repo, use `@` and the name you gave it in resources

```
# Repo: Contoso/LinuxProduct
# File: azure-pipelines.yml
resources:
  repositories:
    - repository: templates
      type: github                 #use  type: git if the repository is Azure Repo
      name: Contoso/BuildTemplates #use <identity>/<repo> for GitHub #use <project>/<repo> for Azure Repo
jobs:
- template: common.yml@templates  # Template reference
```

> If your template file is **in a different Azure DevOps oragnization**

If that project is in a separate Azure DevOps organization, you'll need to configure 
a **service connection** of type Azure Repos/Team Foundation Server with access to 
the project and include that in YAML:

```
resources:
  repositories:
  - repository: templates
    name: Contoso/BuildTemplates
    endpoint: myServiceConnection # Azure DevOps service connection
jobs:
- template: common.yml@templates
```

---

[Task groups for builds and releases (classic)](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/task-groups?view=azure-devops)  

**In Azure DevOps Classic Pipelines** a task group allows you to encapsulate a sequence of tasks, 
already defined in a build or a release pipeline, into a single reusable task that can be added to
a build or release pipeline, just like any other task. 
You can choose to extract the parameters from the encapsulated tasks as configuration variables, 
and abstract the rest of the task information.

---

#### Example 1: Insert a template

```
# File: templates/include-npm-steps.yml
steps:
- script: npm install
- script: yarn install
- script: npm run compile
```

```
# File: azure-pipelines.yml

jobs:
- job: Linux
  pool:
    vmImage: 'ubuntu-latest'
  steps:
  - template: templates/include-npm-steps.yml  # Template reference
- job: Windows
  pool:
    vmImage: 'windows-latest'
  steps:
  - template: templates/include-npm-steps.yml  # Template reference
```

#### Example 2: step reuse

```
# File: templates/npm-steps.yml
steps:
- script: npm install
- script: npm test

```

```
# File: azure-pipelines.yml

jobs:
- job: Linux
  pool:
    vmImage: 'ubuntu-latest'
  steps:
  - template: templates/npm-steps.yml  # Template reference

- job: macOS
  pool:
    vmImage: 'macOS-latest'
  steps:
  - template: templates/npm-steps.yml  # Template reference

- job: Windows
  pool:
    vmImage: 'windows-latest'
  steps:
  - script: echo This script runs before the template's steps, only on Windows.
  - template: templates/npm-steps.yml  # Template reference
  - script: echo This step runs after the template's steps.
```

#### Example 3:  Job reuse

```
# File: templates/jobs.yml
jobs:
- job: Ubuntu
  pool:
    vmImage: 'ubuntu-latest'
  steps:
  - bash: echo "Hello Ubuntu"

- job: Windows
  pool:
    vmImage: 'windows-latest'
  steps:
  - bash: echo "Hello Windows"
```


```
# File: azure-pipelines.yml
jobs:
- template: templates/jobs.yml  # Template reference
```

#### Example 3:  Satge reuse

```
# File: templates/stages1.yml
stages:
- stage: Angular
  jobs:
  - job: angularinstall
    steps:
    - script: npm install angular

# File: templates/stages2.yml
stages:
- stage: Build
  jobs:
  - job: build
    steps:
    - script: npm run build
```

```
# File: azure-pipelines.yml
trigger:
- main

pool:
  vmImage: 'ubuntu-latest'

stages:
- stage: Install
  jobs: 
  - job: npminstall
    steps:
    - task: Npm@1
      inputs:
        command: 'install'
- template: templates/stages1.yml # Template reference
- template: templates/stages2.yml # Template reference
```

---

####  [Use Variable Groups](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/b17de243-116d-4647-8b01-46e923b6cda2/1b6fb0d7-b79e-41a2-a7d3-6ebda3b03e5d)  

Variable Groups allow the definition of a set of variables in a single location that can then
be used in multiple pipelines in an organization, in other words Variable Groups are sets of 
reusable variables.

- Pipeline Variables
- Creating Variable Groups
- Using Variable Groups

[Azure Pipeline Variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch)

#### Pipeline Variables with macro syntax

This example uses **macro syntax** with Bash, PowerShell, and a script task. 
There are two ways Pipeline Variables can be declared, they are equivalent.
However, **when variable goups are also declared then only the syntax with**
`- name` is valid.

```
variables:
  global_variable: value    # this is available to all jobs
```

```
variables:
 - name: projectName
   value: contoso

steps: 
- bash: echo $(projectName)
- powershell: echo $(projectName)
- script: echo $(projectName)
```

----

#### Pipeline Variables with Template expression syntax

> There is also the **Template expression syntax**: `${{ variables.var }}`
> Template variables process **at compile time, and get replaced before runtime starts**.
> **Template expressions are designed for reusing parts of YAML as templates**.
> Template variables silently coalesce to empty strings when a replacement value isn't found. 
> Template expressions, unlike macro and runtime expressions, can appear as either keys (left side) or values (right side). The following is valid: ${{ variables.key }} : ${{ variables.value }}.

---

#### Pipeline Variables with Runtime expression syntax

You can use runtime **expression syntax for variables that are expanded at runtime**: `$[variables.var]`

> Runtime expression variables silently coalesce to empty strings when a replacement value isn't found. 
> Use runtime expressions in job conditions, to support conditional execution of jobs, or whole stages.
> Runtime expression variables are only expanded when they're used for a value, not as a keyword.
> values appear on the right side of a pipeline definition. 
> The following is valid: key: $[variables.value]. 
> The following **isn't** valid: $[variables.key]: value.
> The runtime expression must take up the entire right side of a key-value pair. 
> key: $[variables.value] is valid but 
> key: $[variables.value] foo isn't.

---

#### What syntax should I use?

> Use **macro syntax** if you're providing input for a task.
> Choose a **runtime expression** if you're working with conditions and expressions. 
> don't use a runtime expression if you don't want your empty variable to print 
> If you're defining a variable in a template, use a **template expression**.

---


[Add & use variable groups](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups?view=azure-devops&tabs=yaml)  

Variable groups **store values and secrets** that you might want to be passed into a YAML pipeline
or make available across multiple pipelines. You can share and use variable groups in multiple 
pipelines in the same project.

> Pipelies > **Library** > Create a variable group

There you can define **key-value pairs** with a given value and alos read teh value off a **Key Vault**.
In particular you would use a variable in a variable group to read **an encryption key stored on a Key Vault**
and this is a **secure way** to keep secrets and supply them to a Azure DevOps Pipeline.

The following shows how to refer a **variable group in an Azure Pipeline**.

> You can reference multiple variable groups in the same pipeline.
> You can also reference a variable group in a template. 

```
variables:
- group: my-variable-group
- group: my-second-variable-group
- name: my-bare-variable
  value: 'value of my-bare-variable'

steps:
- script: echo $(myhello) # uses macro syntax
- script: echo $(my-passed-variable)
```

---

####  Authorize a variable group

To work with a variable group, you **must** authorize the group.
If you only name the variable group in YAML, then anyone who can push code to 
your repository could extract the contents of secrets in the variable group.
 To authorize the group, use one of the following techniques:

1.  authorize any pipeline to use the variable group
This might be a good option if you don't have any secrets in the group. 
> Library > Variable groups 
and then select the variable group in question and enable the setting 
**Allow access to all pipelines**. 

2. authorize a variable group for a specific pipeline
> Select the Pipeline > Edit > then queue a build manually. 
> You see a resource authorization error and an "Authorize resources" action on the error. 
>  Choose this action to explicitly add the pipeline as an authorized user of the variable group.

---

[Set secret variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch#secret-variables)  

---

[Designing & Implementing IaC - Infrastructure as Code](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/9ee7b561-925c-4762-84bd-c893ae800736)  

- Configuration Manager
- PowerShell DCS (Desired State Configuration)
- Use PowerShell DCS for App Infrastructure  
- Azure Policy for Configuration Management
- Azure Policy Guest

---

#### [Configuration Manager](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/815e3b41-f0a0-4914-a48b-41904a4cf753)  

- Assess CM Mechanisms
- Mutable Infrastructure 
- Abstraction
- Simplified Code Process
- Imperative and Declarative Code
- Centralization
- Agent-Based Management

---

### What is Configuration Management?

[Azure DevOps Configuration Management](https://learn.microsoft.com/en-us/shows/devops-fundamentals/configuration-management)  

- Mutable vs Immutable Infrastructure
- Imperative and Declarative Code
- Centralization vs Decentralized Systems
- Agent-based vs Agentless Management Systems


##### Mutable vs Immutable Infrastructure

> Mutable Infrastructure:
Infrastructure that is not replaced but just dynamic altered to reach a desired state.

The advantages of mutable are:
- in-place updates 
- keep existing servers and services
- easier to introduce change in the environemnt

> Immutable Infrastructure:
Infrastructure that is **completely replaced / reconfigured** but to reach a desired state.

The advantages of immutable are:
- **always zero configuration drift**
- easy to diagnose
- easy to scale horizontaly: 
you can rubberstamp the deployment and these will all be the same
- simple rollback and recovery:
in case of problem you can replace the last deployment entirely and restore the last known working environment

---

#### Mutable vs Immutable Infrastructure

| Centralized             | Decentralized |
| ----------------------- | ------------- |
|  Granular Management    | Reduce Resources |
|  Easy Auditing          | Reduce maintenance because there is no need for an extra centralization element |
|  Continuos emnforcement | Increase security has does not rely on a single point of failure |

---

#### Agent-based vs Agentless Management Systems

| Agent-Based MS          | Agentless MS |
| ----------------------- | ------------- |
|  Continuos emnforcement | Reduce bootstrapping as there is no required app to install |
|   -                     | Increase security ? |


---

#### What is best from a **DevOps perspective** ?

1. **Immutable Ifrastructure** choice is preferable.

2. **Declarative Code**:
> is preferable as it encourages automation and reduces maintenance overhead
> fits better together with Immutable infrastructure
> it is easier to understand and maintain than inperatve code
> it is much more scalable

3. Centralization is better than Decentralized ?
4. Agent-based vs Agentless Management Systems?

---

[PowerShell DCS (Desired State Configuration)](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/dfc2ac9e-d27c-4858-bd6c-68ee05351026)  

- it applies to **Mutable Infrastructure**:
the end effect is that it makes targeted changes to the existing infrastructure to attain a desired state.

- it is declarative code therefore easy to understand and easily scalable

- it is **decentralized by default** but **it can also be employed in a centralized configuration**

- it is Agent-Based:
The agent **must be installed on a Windows System.

#### How can DSC be used in DevOps scenarios?

- **it is used in CI/CD pipelines to maintain state**
- configuration can be applied in **Azure Automation**

- [DscBaseline](https://github.com/phbits/DscBaseline):
This PowerShell module was created to expedite the adoption of Microsoft Desired State Configuration (DSC) 
for configuration management. Building these configuration files by hand takes far too long and lacks the
benfits of a programmatic solution. DscBaseline covers common DSC modules and **creates configuration files**
based on the system where it is launched. 
**The configuration node is specified as localhost allowing it to be applied to any other systems**. 
Making it useful for: 

- backing up system configuration
- upgrading a system
- scaling out (horizontal)
- adopting Configuration As Code (CAC) methodologies
- disaster recovery documentation

---

#### Where can DSC can be used?

- Windows 
- Linux 
- [Nano Server](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/nanodsc?view=dsc-1.1)  
- [Azure](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-getting-started?view=dsc-1.1)  

---

[DSC for Windows](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/wingettingstarted?view=dsc-1.1&viewFallbackFrom=dsc-2.0)

PowerShell Desired State Configuration is included in Windows and updated through 
**Windows Management Framework**. The latest version is Windows Management Framework 5.1.  

You don't need to enable the **Windows Server feature 'DSC-Service'** to manage a machine
using DSC. That feature is only needed when building a **Windows Pull Server instance**.

--

[DSC for Linux](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/lnxgettingstarted?view=dsc-1.1&viewFallbackFrom=dsc-2.0)

You must install the **Open Management Infrastructure (OMI)** before installing DSC for Linux.
DSC for Linux is available for download from the  repository in the repository:
[PowerShell-DSC-for-Linux](https://github.com/Microsoft/PowerShell-DSC-for-Linux/releases/tag/v1.2.1-0)

---

[DSC in Azure](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-getting-started?view=dsc-1.1)   

Before you enable **Automation State Configuration**, we would like you to know that a newer version of DSC
is now generally available, managed by a feature of **Azure Policy** named **guest configuration**. 

[Azure Policy guest configuration extension](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/manage/azure-server-management/guest-configuration-policy?source=recommendations)  

You can use the Azure Policy guest configuration extension to audit the configuration settings in a virtual machine. Guest configuration supports Azure VMs natively and non-Azure physical and virtual servers through Azure Arc-enabled servers.

---

[PowerShell DSC Examples](https://github.com/Saritasa/dsc-examples)

The three main elements are:
- Configuration
- Node: the VM or machines that are going to be configures

- Resources: 
The properties of the Node that can be configured according to a fixed schema.
Resources also **contains the functions to enforce the configuration**.

[Example-1](https://github.com/Saritasa/dsc-examples/blob/master/01%20BasicConfig/BasicConfig.ps1)

```
Configuration EnvironmentConfig
{
    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node StagingServer
    {
        Environment AspNetCore
        {
            Name  = 'ASPNETCORE_ENVIRONMENT'
            Value = 'Staging'
        }
    }

    Node ProdServer
    {
        Environment AspNetCore
        {
            Name  = 'ASPNETCORE_ENVIRONMENT'
            Value = 'Production'
        }
    }
}

EnvironmentConfig -OutputPath Out
```

[Eaxample-2: Parameters](https://github.com/Saritasa/dsc-examples/blob/master/02%20Parameters/Parameters.ps1)

```
Configuration EnvironmentConfig
{
    param
    (
        [Parameter(Mandatory=$true)]
        [string[]] $Servers,
        [Parameter(Mandatory=$true)]
        [string] $Environment
    )

    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node $Servers
    {
        Environment AspNetCore
        {
            Name  = 'ASPNETCORE_ENVIRONMENT'
            Value = $Environment
        }
    }
}

EnvironmentConfig -Servers Server1, Server2 -Environment Production -OutputPath Out
```

[Example-3: Define a configuration and generate the configuration document](https://learn.microsoft.com/en-us/powershell/dsc/getting-started/wingettingstarted?view=dsc-1.1#define-a-configuration-and-generate-the-configuration-document)

```
Configuration EnvironmentVariable_Path
{
    param ()

    Import-DscResource -ModuleName 'PSDscResources'
    
    # this is a node
    Node localhost
    {
        # this is a Resource: it invokes the PS function CreatePathEnvironmentVariable to enforce a specified state on the node
        Environment CreatePathEnvironmentVariable
        {
            Name = 'TestPathEnvironmentVariable'
            Value = 'TestValue'
            Ensure = 'Present'
            Path = $true
            Target = @('Process', 'Machine')
        }
    }
}

EnvironmentVariable_Path -OutputPath:"./EnvironmentVariable_Path"
```

---

---

The two main scenarios in which PowerShell DSC should be applied are the following:

1. Governance: by means of **Azure Automation** to **enforce Governance accross the enterprise**
2. Applications: this is when DSC is applied to **Azure DevOps CI/CD Pipelines**

[Azure & Desired State Configuration Part 1/4](https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/azure-amp-desired-state-configuration-part-1-4/ba-p/2609032)

In Part 1 Azure & Desired State Configuration Part 1/4 - Microsoft Tech Community we saw 
how we could deploy a web server on a new VM in using a Desired State Configuration file 
and the Azure Portal. 

[Azure & Desired State Configuration Part 2/4: Focus on Deploying with DevOps Pipeline](https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/azure-amp-desired-state-configuration-part-2-4/ba-p/2609036)  

Now we will take this a step further and **set up the deployment in a Pipeline on Azure Devops**. 
This will be most likely one the ways you could **Automate deployments** in your organization 
and increase collaboration.

[Azure & Desired State Configuration Part 3/4: Focus on Azure Automation Account](https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/azure-amp-desired-state-configuration-part-3-4/ba-p/2609037)

The next section will describe one of the most powerful Automation tools in our arsenal, the Azure Automation Account. 


---

[DSC for Application Infrastructure](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/eb973d4c-a5cc-4169-8cf9-a5e8b2316b36)  

### Demo-1: enforce DSC on a target node by a Azure Pipeline

This demo shows how a Azure DevOps Pipeline on a reposiitory can be used to deploy 
a machine and together with DSC PowerShell scripts held in the same code repo it 
is aloso possible to enforce configuration on the node.

[Deployment group jobs](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/deployment-group-phases?view=azure-devops&tabs=yaml)  

**Deployment groups in Classic pipelines** make it easy to define groups of target servers for deployment. 
**Tasks that you define in a deployment group job** run on some or all of the target servers, depending on 
the arguments you specify for the tasks and the job itself.

Given a Virtual Machine that is **part of a Deployment Group** set up in the Azure DevOps
organization of the Pipeline define a Job and the steps below:

1. Step-1: copy files top the C:\DSC folder (of the target node)
The VM that is part of a Deployment Group has automatically an Agent installed on it at the 
time the target node is registered to the Azure DevOps Deployment Group. This **Agent** can
be used to perform DSC operation on the machine.
The PS files with the DSC instructions are copied from the code repo to teh target machine in the 
specific folder `C:\DSC`.

2. Step-2: compilation of the files in `C:\DSC` task.
In order to be executed the files in `C:\DSC` must first be compiled and thsi can be done 
in the Pipeline by means of a simple powershell task step.

[DSC - Compile the configuration](https://learn.microsoft.com/en-us/powershell/dsc/configurations/write-compile-apply-configuration?view=dsc-1.1#compile-the-configuration)  

For a DSC configuration to be applied to a node, it must first be compiled into a MOF file.
Running the configuration, like a function, will compile one .mof file for every Node defined by the Node block.
In order to run the configuration, you need to **dot source** your HelloWorld.ps1.
You may then, run your configuration by calling it like a function.  
You could also invoke the configuration function at the bottom of the script so that you don't need to dot-source.

```
cd C:\DSC
. \ThePsDscFileToCompile.ps1 # this is what is called dot source, there must be a space after the .
ThePsDscFileToCompile
```

3. Step-3: run the DSC compile file.

[Start-DscConfiguration](https://learn.microsoft.com/en-us/powershell/module/psdesiredstateconfiguration/start-dscconfiguration?view=dsc-1.1)
`Start-DscConfiguration -Path "C:\DSC\"`

This command applies the configuration settings from C:\DSC\ to every computer that has settings in that folder. 
The command returns Job objects for each target node deployed to.

`Start-DscConfiguration -Path "C:\DSC\ -Wait -Force -ComputerName localhost"`

`-ComputerName`
Specifies an array of computer names. This parameter restricts the computers that have configuration 
documents in the Path parameter to those specified in the array.

`-Wait`
Indicates that the cmdlet blocks the console until it finishes all configuration tasks.
If you specify this parameter, do not specify the JobName parameter.

`-Force`
Stops the configuration operation currently running on the target computer and begins the 
new Start-Configuration operation. If the RefreshMode property of the Local Configuration Manager 
is set to Pull, specifying this parameter changes it to Push.


---

### Demo-2: enforce DSC through Azure Automation

[Get started with Azure Automation State Configuration](https://learn.microsoft.com/en-us/azure/automation/automation-dsc-getting-started)

1. Create an Automation Resource from the Azure Portal
2. Import a configuration into Azure Automation
3. Compile a configuration in Azure Automation
4. Enable an Azure Resource Manager VM for management with State Configuration

In the **Automation Account** there is a specific tab named **Sate Configuration (DSC)**
that is specifically devoted to the set up and implementation of DSC. 

There you can perform the following steps:

- register nodes that the configurations are to be applied to
- add a number of configuration files (by simply uploading them to the AA) that define the configuratins that you want to apply accross the set of nodes that are registred on this automation account DSC
- lets you **compile the PS-DSC files into MOFs** whic will then be present from the tab **Compiled Configuration** 
- from the **Nodes** tab you can now apply compiled configurations to top the different registered target nodes: **assigned node configuration**

At this point the Automation Account takes care of applying the DSC config uration to teh selected nodes.
This all happens without having to log-on the nodes and thereofre reduces maintenance to a very minimum.
The Automation Account has also a report view on the state of the nodes and their present configuration and 
also the outcome of the enforcemnt. It is therefore a centralized point where all teh configuration of 
nodes  can be easily managed and administered.

Automation Account has also a **Gallery** with a long list of **DSC Files Templates**.

---

### [Azure Policy](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/156a061e-55f4-4ff3-94a1-c0041830707d)  

[What is Azure Policy? ](https://learn.microsoft.com/en-us/azure/governance/policy/overview)  

**Azure Policy helps to enforce organizational standards and to assess compliance at-scale**. 
It is used to **enforce rules and conventions accross your Azure Resources**.

- Naming Conventions
- Tags
- Resource sizes
- Resource settings
- Data retention
- etc.

Through its **compliance dashboard**, it provides an aggregated view to evaluate the overall 
state of the environment, with the ability to drill down to the per-resource, per-policy granularity. 

It also helps: 
- **to bring your resources to compliance through bulk remediation for existing resources**
- **automatic remediation for new resources**.

#### Scenario for Azure Policy with Azure DevOps

You typically have different target environments:

- Production
- Dev
- Test

The following is desirable:

1. Best practice dictates that the enviroment diverge the minimum possible from the Production.
2. You want **to enforce and report over a set organizatuion standars (compliance)** on all the infrastructure part of these environments

---

### How do Azure Policy integrates with Azure DevOps?

This happens in Azure DevOps Pipelines through **Pre-/Post- deployment Gates**

[Deployment gates](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/gates?view=azure-devops)  

Gates allow **automatic collection of health signals from external services** and 
**then promote the release when all the signals are successful** or stop the deployment
on timeout.

[Use Cases](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/approvals/gates?view=azure-devops#use-cases)

- incident management i.e. proceed only if all bugs in the sprint have been fixed
- seek approvals: notify specific people in order to provide manual approval to carry on the deployment
- quality validation: ryun queries i.e. code coverage, test pass rate, etc. to make usre the deployment can continue
- UX baseline must be met
- wait on the state of teh target resources
- query and validate infrastructure for health

- Security and compliance assessment:
Perform security checks such as artifacts scanning, code signing, and **policy checking**. 
A deployment gate might initiate the scan and wait for it to complete, or just check for completion. 
Assess Azure Policy compliance on resources within the scope of a given subscription and resource group, 
and optionally at a specific resource level. See Check Azure Policy compliance task for more details.

In other word you gcreate an Azure Policy and use an Azure DevOps Gate to verify that the target of a 
deployment is compliant to that policy and fails the deployment otherwise.

#### Azure Policy integration with Azure DevOps workflow

1. **Create a Policy Definition** - you may start from an existing Azure Policy as a template

2. **Assigne the Policy** by giving it a **scope**:

- Management Group
- Subscription
- Resource Group
- an individual Resource

3. [Optional] **Create an Initiative**
This is just a set of Azure Policies that can be assigned together to a scope.

4. **In the Azure Policy** define a **Check Condition** that periodically checks the compliance of the assigned targets

For example:

- does the target have ane allowed sizes?
- does the target have any of a set of specified  resorce tag?
- is the reource deployed in a compliant region?
- does the resource have compliant settings and configuration?

5. Check the condition

6. Trigger an action if the condition has not been met
In this step you can specify in the Policy what to do next:

- disallow the reosurce to be built or changed
- aufit the event and report it
- enforce then change to the resource to bring it into policy compliance

---

#### Azure Policy Demo

> Azure Portal > Azure Policy
> Definitions: a list of all Azure Policy definition that are available
> Select the policy of interest i.e.** Disk encryption should be applied to VM** 
> Adapt the **JSON** of the Policy if you need to: Azure Policy has a **declaritive Json-based implementation**
> If the policy has been adapted then you can **Export** int and then import it again as a custom policy
> or you can adapt it offline in you editor of choice and repeate the process
> **Assign the policy to a scope**: select subscription / RG / Resource, etc.
> Specify **Exclusion**

[Understand Azure Policy effects](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/effects)
> **Parameters** > Effect: `AuditifNotExists` | `Disabled` | `Modify` | `Deny` | `DenyAction`...


`Append`
Append is used to add more fields to the requested resource during creation or update. 
A common example is specifying allowed IPs for a storage resource.

`AuditIfNotExists`
AuditIfNotExists enables auditing of resources related to the resource that matches the if condition, 
but don't have the properties specified in the details of the then condition.

`DeployIfNotExists`
Similar to AuditIfNotExists, a DeployIfNotExists policy definition executes a template deployment 
when the condition is met. Policy assignments with effect set as DeployIfNotExists require a 
managed identity to do remediation.


`Deny`
Deny is used to **prevent a resource request that doesn't match defined standards through a policy definition**
and fails the request.

`DenyAction`
DenyAction is used to block requests based on intended action to resources at scale. 
The only supported action today is DELETE. This effect and action name helps 
**prevent any accidental deletion of critical resources**.

`Disabled`
This effect is useful **for testing situations** or for when the policy definition has parameterized the effect. 
This flexibility **makes it possible to disable a single assignment instead of disabling all of that policy's assignments**.

`Manual`
The new manual effect enables you **to self-attest the compliance of resources or scopes**. Unlike other policy definitions that actively scan for evaluation, the Manual effect allows for manual changes to the compliance state. To change the compliance of a resource or scope targeted by a manual policy, **you need to create an attestation**. The best practice is to design manual policies that target the scope that defines the boundary of resources whose compliance need attesting.

> **Remediation**: in the policy definition the **Remediation Tab** allows the dfinition of actions to make the scope complient to the policy. This **requires the assignment of a Managed Identity** that has the permission to perform the changes on the target scope and resources

---

#### Azure Policy - Azure DevOps Classic Pipelines integration

[AzurePolicyCheckGate@0 - Check Azure Policy compliance v0 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-policy-check-gate-v0?view=azure-pipelines)

This is the task used behind the scene in Azure Classic Pipelines.

> Could the same task also be used in a YAML Pipeline?

---

[Implement Azure Policy with Azure DevOps release pipelines](https://learn.microsoft.com/en-us/azure/governance/policy/tutorials/policy-devops-pipelines)  
[Controlling Release Pipelines with Gates and Azure Policy Compliance](https://devblogs.microsoft.com/devops/controlling-release-pipelines-with-gates-and-azure-policy-compliance/)  

In **classic pipelines** you can simply ise **Gates** to make use of an Azure Policy.
The Gate can be defined as a **pre- or post-** deployment condition.

Normally you use a **pre-deployment condition** for the gate as you want to make sure
that the application that is going to be deployed by the Azure DevOps Pipeline is going
to be deployed to a compliant environment otherwise testing may be void.

The **post-deployment condition** may also be used i.e. where you do not want to prevent deployment
but just want to be reported over the compliancy state of the target environment.

In the **Gate definition UI** you can do the fiollowing:


- Check Azure Policy Compliance *
- Invoke Azure Function
- Invoke REST API
- Query Azure Monitor alerts:
- Query Work Items > this allows you to create queries on Azure Boards

* ensure artifacts adhere to Azure Policies

---

### Azure Policy - Azure DevOps YAML Pipelines integration

[Implementing Gates in Azure YAML Pipelines](https://stackoverflow.com/questions/61656077/implementing-gates-in-azure-yaml-pipelines)  

**In YAML it works in a different way**. 
To use approvals and check **you need to define environment first**. 

This is the important bit:

```
Once you have an enviroment you can define approvals and checks.
```

[Define approvals and checks](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#evaluate-artifact)

A pipeline is made up of **stages**. 
A pipeline author can control whether a stage should run **by defining conditions on the stage**. 
Another way to control if and when a stage should run is **through approvals and checks**.

Checks can be configured on 
 - environments 
 - service connections
 - repositories
 - variable groups
 - secure files
 - agent pools.

Service connections cannot be specified by variable.


[Evaluate artifact](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#evaluate-artifact)


[Create and target an environment](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments?view=azure-devops)

An environment is a **collection of resources that you can target with deployments from a pipeline**. 
Typical examples of environment names are **Dev, Test, QA, Staging, and Production**. 
An Azure DevOps environment **represents a logical target** where your pipeline deploys software.

**Azure DevOps environments aren't available in classic pipelines.**
For classic pipelines, **deployment groups** offer similar functionality.

#### [Environments - Approvals](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#approvals)  

We support **manual approval checks on environments**.
Manually **control when a stage should run** using approval checks. 
This check is **commonly used to control deployments to production environments**.

Checks are available to the resource Owner to control when a stage in a pipeline consumes a resource. 
As the owner of a resource, such as an environment, you can define approvals and checks that must be 
satisfied before a stage consuming that resource starts.

The **Creator, Administrator, and user roles can manage approvals and checks**. 
The **Reader role** can't manage approvals and checks.

---

[Environments - Branch control](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#branch-control)

Ensure all the resources linked with the pipeline are built from the allowed branches 
and that the branches have protection enabled. 

---

[Environments - Business hours](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#business-hours)  

In case you want all deployments to your environment to happen in a specific time window only.

---

[Environments - Invoke Azure function](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#invoke-azure-function)  

Azure functions provide a great way to author your own checks. You include the logic of the check-in Azure function such that each execution is triggered on http request, has a short execution time and returns a response. While defining the check, you can parse the response body to infer if the check is successful. The evaluation can be repeated periodically using the Time between evaluations setting in control options. 

[Environments - Invoke rest api](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#invoke-rest-api)

---

[Environments - Query Azure Monitor Alerts](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#query-azure-monitor-alerts)  

Alerts are a standard means to detect issues with the health of infrastructure or application, and take corrective actions.
Query Azure Monitor Alerts helps you observe Azure Monitor and ensure no alerts are raised for the application after a deployment. 

> Canary deployments : deployment in stages

After deploying to a stage (set of customers), the application is observed for a period of time.
Health of the application after deployment is used to decide whether the update should be made to 
the next stage or not.

---

[Environments - Required template](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#required-template)  

With the required template check, you can enforce pipelines to use a specific YAML template. When this check is in place, a pipeline fails if it doesn't extend from the referenced template.
---

> This is the close that you get to have a way to check Azure Policy Compliance in YAML Pipelines.
> In other words in YAML Pipeline there is no way you can ddo what you do with Gates in Classic Pipelies with Azure Policies.
> You can however define a Deployment Environment and use it as a target of the deployment stage for a YAML Pipeline.
> An Environment at this time can only be made by VMs or Kubernetes Namespace
> VMs can be subject to Azure Policies therefore you may chack the state of the policy on them using one of the other mechanisms and use it as a condition to your stage.

[Environments - Evaluate artifact](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/approvals?view=azure-devops&tabs=check-pass#evaluate-artifact)

You can evaluate artifact(s) to be deployed to an environment against custom policies.
**Currently, this works with container image artifacts only**.

---


#### [Create and target an environment - Security](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/environments?view=azure-devops)
User permissions

Control who can create, view, use, and manage the environments with user permissions. 
There are four roles:

- Creator (scope: all environments) 
- Reader
- User 
- Administrator. 

In the specific environment's user permissions panel, you can set the permissions that are 
inherited and you can override the roles for each environment.

---

## [Azure Policy Guest Configuration](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/3fb92761-f415-4adf-b6a9-f345ca55712f/6e0b7072-c298-41c2-8bd4-58986136d7ef)  

Thisis part of **Azure Automanage**
[Manage resources from cloud to edge using Azure Automanage machine con | OD103](https://www.youtube.com/watch?v=cGWA-lW__MY)  


- Configuration as Code
- can check OS, applications, ENVIRONEMTN SETTINGS
- it all happens by deploying a VM Extension that deploys the **Guest Configuration Agent**
- the **Guest Configuration Agent** applies **Congiguration Policies**
- There are **built-in** and **custom** policies

### Azure Policy Guest Configuration from the Portal

> Azure Portal > Policy > Definitions > **Guest Configuration**
> Initiative 
> Deploy prerequisites to enable Guest Configuration Policies on VMs
> assign the policy to the desired scope: Subscription, RG, Resource, etc.
> once applied return to Policies in teh Category Guest Configuration Policies
> select the policy or policies (as part of an initiative) that you wish to apply to the scope

This is a **different way to enforce policies** wehn compared to the two described earlier:

1. Azure Policy assignement from the Portal
2. Azure Policy assignmentthrough Automation Account
3. Azure Policy assignment as Guest Configuration

The options 2+3 are in fact an **automated way to enforce Azure Polices on a scope**.

Option 3. required some prerequisite to be installed on the assigned target, it also requires a manage identity
to be in place in order to perform the enforcement.

Option 2. deos not required prerequisites installation on the target and requires a manage identity only if 
the effect of the policy or initiative is `Modify`.

The option 1 is instead a **manual** alternative.

---

[Azure Policy guest configuration extension](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/manage/azure-server-management/guest-configuration-policy?source=recommendations)  

You can use the Azure Policy guest configuration extension to audit the configuration settings in a virtual machine. Guest configuration supports Azure VMs natively and non-Azure physical and virtual servers through Azure Arc-enabled servers.

---

### Exam Tips on PowerShell DSC

- look the main DSC function and their params

- understand the steps of Azure Automation deployment of PS-DSC

- ARM Templates and **Custom Script Exention** have **lower admin effort that PS-DSC** and are more suitable options if the objective is simply the deplyment of VMs. 

---

[Development of Deployment Scripts and Templates](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/84c9e4e2-923c-4a30-9869-7ab872f4907b)  

- Deployment Solution Options
- Use IaC: ARM vs. Terraform
- Use Azure Bicep
- Powershell vs CLI
- Linting ARM Templates
- Deploy DBs
- SQL Data Movement in the contest of DB Deployments
- Visual Studio App Center 
- CDN & IoT Deployments
- Azure Stack & Sovereign Cloud Deployments
 
- LAB: Build & Distribute an App in Visual Studio App Center 
- LAb: Linting ARM Templates
- LAB: Building Infrastructure with Azure Pipeliens
- LAB: Deploy a Python App to an AKS Cluster within Azure Pipelines

---

## Deployment Solution Options

How do we move the code safely and orderly along the environments? 
> Dev > Test > Stage > Prepruction > Production

Popular deplyment options that can be used to create deployment enviroments are:

- GitHub Actions
- Azure Pipelines
- Jenkins
- CircleCI
- ARM
- Terraform
- VS App Center
- Octopus Deployment

There are thre aspects to a deployment:

- Infrastructure & Customization
- Database + Application(s)
- Process: Triggers, Timing, Unit Tests, Results

---

##  [Use IaC: ARM vs. Terraform](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/b2a50452-73e1-4924-a3a1-3792d6e13ec0)  

| ARM Templates                               | Terraform     |
| ------------------------------------------- | ------------- |
|  Azure Specific                             |  multiple cloud providers |
|  Always up-to-date                          |  it tends to lag behind with the updated resources |
|  Always up-to-date with latest reources     |  - |
|  no state file is used                      |  it uses a stae file |
|  no cean-up commands it is always a new env |  it has built-in clan-up commands |
|  JSON based declarative code very detailed  |  stramlined code |


**Terraform can use ARM Templates** therefore these can be used together!

[Demo: ARM & Terraform Integration with Azure Pipelines](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/b2a50452-73e1-4924-a3a1-3792d6e13ec0)  

- Create an Azure **Release** Pipeline
- add a ARM Template task
- Intsall Terraform on the Pipeline
- add a Terraform Task

When you create an Azure **Release** Pipeline from **Add Artifacts** you can then select a code repo
in which the ARM templates are located.

**Add an ARM Template task** to the release pipeline, you need the following data:

01. a Azure service connection to the subscription where the resources are to be deployed to
02. Specify the Action: **Create or Update a RG** / **Delete a RG**
03. Specify the details of the RG: name, location, etc.
04. **Template location**: **Linked artifact** /  **URL of the file**
05. select the **template.json** 
06. select the **parameters.json** 
07. override any of the params in **parameters.json** i.e. `-virtualMachineName "vm0078"`
08. select deployment mode: `Incremental`, `Complete`, `Validation Only`


In order to make use of a **Terrafiorm Task** add **the Terraform tasks** according to the available commands
and follow the steps:
[Azure Pipelines Terraform Tasks](https://marketplace.visualstudio.com/items?itemName=JasonBJohnson.azure-pipelines-tasks-terraform)

01. add the command `init`

initialize the working directory for teh configuration files. 
This **must** be the first Terraform step as it is used in all the following Terraform tasks.
You will have to provide the details **storage account** and **container** where the terraform 
files for this deployment are hosted, these have `*.tf` extension.
There is also a **key file** that is the **state configuration file** that will also be used by 
the following tasks.

01. add the command `validate` 

02. add the command `plan`
The plan task **reviews** the changes and identifies the changes that are going to be perform on the 
target RG based on the existing state of the RG and the target state. 

03. add the command `validate and apply`
This is the steps that performs the changes determined in the `plan` step

---

[Use Azure Bicep](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/3e128383-e2a0-49c7-9bd4-fbf3e7a78091)  

- What is Bicep?
- ARM vs Bicep
- Bicep Workfloww
- Bicep Tools

**Bicep files** is a **simpler and cleaner file format than ARM Templates to target ARG** and deploy
resources to Azure. **Bicep files** are focused on **Human Readability** while ARM Templates are 
Json files and have more quotes, brakets spaces and are therefore less human-friendly.
**Behind the scenes Bicep files are compiled into equivalent ARM templates**.

In **Bicep files and ARM Templates** you can use any of the following:

- Azure CLI  v>2.20.0
- Powershell v>5.6.0

The are also [Bicep Tools for VS COde](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)  


[Understand the structure and syntax of Bicep files](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/file)  

```
metadata <metadata-name> = ANY

targetScope = '<scope>'

type <user-defined-data-type-name> = <type-expression>

func <user-defined-function-name> (<argument-name> <data-type>, <argument-name> <data-type>, ...) <function-data-type> => <expression>

@<decorator>(<argument>)
param <parameter-name> <parameter-data-type> = <default-value>

var <variable-name> = <variable-value>

resource <resource-symbolic-name> '<resource-type>@<api-version>' = {
  <resource-properties>
}

module <module-symbolic-name> '<path-to-file>' = {
  name: '<linked-deployment-name>'
  params: {
    <parameter-names-and-values>
  }
}

output <output-name> <output-data-type> = <output-value>
```

```
metadata description = 'Creates a storage account and a web app'

@description('The prefix to use for the storage account name.')
@minLength(3)
@maxLength(11)
param storagePrefix string

param storageSKU string = 'Standard_LRS'
param location string = resourceGroup().location

var uniqueStorageName = '${storagePrefix}${uniqueString(resourceGroup().id)}'

resource stg 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: uniqueStorageName
  location: location
  sku: {
    name: storageSKU
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

module webModule './webApp.bicep' = {
  name: 'webDeploy'
  params: {
    skuName: 'S1'
    location: location
  }
}
```

---

### Powershell vs CLI for IaC deployment

Use the tool tat you and your team is most familiar with.
They can be used together in the same Azure Pipeline.

[AzurePowerShell@5 - Azure PowerShell v5 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-powershell-v5?view=azure-pipelines)

[AzureCLI@2 - Azure CLI v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-cli-v2?view=azure-pipelines)  

The AzureCLI task is more flexible as you can specify the **script type** which includes also PowerShell:
`scriptType: # 'ps' | 'pscore' | 'batch' | 'bash'. Required. Script Type. `


```
# Azure CLI v2
# Run Azure CLI commands against an Azure subscription in a PowerShell Core/Shell script when running on Linux agent or PowerShell/PowerShell Core/Batch script when running on Windows agent.
- task: AzureCLI@2
  inputs:
    azureSubscription: # string. Alias: connectedServiceNameARM. Required. Azure Resource Manager connection. 
    scriptType: # 'ps' | 'pscore' | 'batch' | 'bash'. Required. Script Type. 
    scriptLocation: 'scriptPath' # 'inlineScript' | 'scriptPath'. Required. Script Location. Default: scriptPath.
    scriptPath: # string. Required when scriptLocation = scriptPath. Script Path. 
    #inlineScript: # string. Required when scriptLocation = inlineScript. Inline Script. 
    #arguments: # string. Alias: scriptArguments. Script Arguments. 
    #powerShellErrorActionPreference: 'stop' # 'stop' | 'continue' | 'silentlyContinue'. Optional. Use when scriptType = ps || scriptType = pscore. ErrorActionPreference. Default: stop.
  # Advanced
    #addSpnToEnvironment: false # boolean. Access service principal details in script. Default: false.
    #useGlobalConfig: false # boolean. Use global Azure CLI configuration. Default: false.
    #workingDirectory: # string. Alias: cwd. Working Directory. 
    #failOnStandardError: false # boolean. Fail on Standard Error. Default: false.
    #powerShellIgnoreLASTEXITCODE: false # boolean. Optional. Use when scriptType = ps || scriptType = pscore. Ignore $LASTEXITCODE. Default: false.
```

---

### [Linting ARM Templates](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/bcd72817-58bb-471f-8483-ead50ad228fb)  

[Jsonlint.com](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/bcd72817-58bb-471f-8483-ead50ad228fb)  

In Azure DevOps Pipeline you can use the following 3-task workflow for linting ARM templates.

[Npm@1 - npm v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/npm-v1?view=azure-pipelines)  
This tool **validates** a Json from a website but in the contest of an Azure DevOp Pipelines
you can use an **npm custom task** with `install jsonlit -g` as **commad**. This installs 
**jsonlint** as a global tool on the build agent.

[CmdLine@2 - Command line v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cmd-line-v2?view=azure-pipelines)  
Add a **command line task** with script `jsonlint template.json` and the **working directory**
of the template file to validate `template.json`.

[AzureResourceGroupDeployment@2 - Azure resource group deployment v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-resource-group-deployment-v2?view=azure-pipelines)  

`deploymentMode - Deployment mode`:
**Validate mode** enables you to find problems with the template before creating actual resources.

---

### [Deploy DB](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/bf898b0b-97bd-40ae-b89b-882b9ba71767)  

In Azure DevOps the way a SQL DB is deployed is throug **DAC-Pack**. 

You can create a DAC-Pack through SSMS > Tasks: 

- **Extract** Data-tier Application: produces a DACPAC that **can be used in deployments**
- **Export** Data-tier Application: produces a DAC-Pack: produces a BACPAC that is a **backup file**

You need the former in this workflow.
Once the **DACPAC** is **extracted** you can deposit it in teh azure repo on which the Azure Release Pipeline runs.

[Data-Tier Application Package](https://learn.microsoft.com/en-us/sql/relational-databases/data-tier-applications/data-tier-applications?view=sql-server-ver16)  

This is a **container** for the following DB assets:
- objects 
- teables
- views

01. Create a Release Pipeline
02. Select the empty job template
03. Create a Stage

04. Add the atsk [SqlAzureDacpacDeployment@1](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/sql-azure-dacpac-deployment-v1?view=azure-pipelines)  

This task can deploy a SQL database to a target server from ***.sql scripts** or a **DAC-pack**:

- Sql Dacpac
- SQL Query file
- Inline SQL

Server: 
- Connecton string
- Publish Profile

Seelect the **DACPAC** file from the assets of the repository for teh pipeline.

---

#### Deploy a backup (BACPAC) database to a test environment 

[SQL Data Movement in the contest of DB Deployments](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/88e556ce-21e7-4036-8249-8da0bc510f1c)  

**BACPAC** files for a SQL DB can be **Exported** from SSMS Data-tier Application.
SSMS produces a BACPAC that is a **backup file** containing the **schema and the data** that can be used
to recreate a **production-ready database**. 

In the context of **DevOps** this process is normally used when a replica of the production DB needs to be
made available in one of the test environments.

The workflow is similar to that described in the earlier example where a new database is deployed based on 
a DACPAC via **SqlAzureDacpacDeployment@1**. In that case the action **Publish** is used and the **DACPAC**
file is selected, which holds only the schema of the DB.

In this case we want **schema and data** to be deplyed to a new database hence we must first **Export** the
production databse to a **BACPAC** and the use the action **Import** with this file in the pipeline task.

---

#### Summary: DevOps workflows with SQL DB

1. use [SqlAzureDacpacDeployment@1](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/sql-azure-dacpac-deployment-v1?view=azure-pipelines)  


| Type of deployment   | File type     | SSMS Operation | SqlAzureDacpacDeployment@1 action    |
| -------------------- | ------------- | -------------- | ------------------------------------ |
| Only schema          |  DACPAC       |  Extract       | Publish |
| schema & data        |  BACPAC       |  Export        | Import  | 

---

#### [SqlAzureDacpacDeployment@1 - Azure SQL Database deployment v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/sql-azure-dacpac-deployment-v1?view=azure-pipelines)  

Use this task to deploy an Azure SQL Database using DACPAC, or run scripts using SQLCMD.

> DeploymentAction - Action string. 
Required when TaskNameSelector = DacpacTask. Default value: Publish.

[Allowed values](https://learn.microsoft.com/en-us/sql/tools/sqlpackage/sqlpackage?view=sql-server-ver16): 

- Publish:
Incrementally updates a database schema to match the schema of a source .dacpac file. 
If the database does not exist on the server, the publish operation creates it. 
Otherwise, an existing database is updated. 

- Script:
Creates a **Transact-SQL incremental update script** that updates the schema of a target to match the schema of a source.

- Extract:
Creates a **data-tier application (.dacpac)** file containing **the schema OR schema and user data** from a connected SQL database.

- Export:
Exports a connected SQL database - **including database schema AND user data** - to a **BACPAC file (.bacpac)**.

- Import:
Imports the **schema and table data from a BACPAC file** into a new user database.

- DriftReport (Drift Report):
Creates an XML report of the changes that have been made to a registered database since it was last registered.

- DeployReport (Deploy Report):
Creates an XML report of the changes that would be made by a publish action.

--- 

### [Visual Studio App Center](https://visualstudio.microsoft.com/app-center/)  

All in one place:

- Automate the lifecycle of your **iOS, Android, Windows, and macOS** apps. 
- Connect your repo and within minutes build in the cloud
- **test on thousands of real devices** > **Hosted Device Lab**
- distribute to beta testers and app stores
- monitor real-world usage with crash and analytics data
- **It interates with Azure DevOps Pipelines**

#### Azure DevOps - App Center Workflow

1. From **App Center** generate a **API Token**:
>Settings > **App API Tokens** > Ne API Token (Acess: Full or ReadOnly)

2. In Azure DevOps create a **release pipeline**

3. In Stage1 add the tasks: AppCenterTest@1 
> appFile
In this tasks you provide the path to a binary file to the application to test.
Other data will depend on the specific choice of the selected test framework.
> credentialsOption: serviceEndpoint
**In all cases you will need to provide the API Token to your App Center** that was created in the previous step.
> appSlug: username/app_id                       # a user for an app that will be used to perform the tests
> devices: deviceId1, deviceId2, deviceId3, etc. # the ids of the registered devices on App Center

4. In Stage1 add the tasks: AppCenterDistribute@3 
> appFile
> credentialsOption: serviceEndpoint # as described above
> appSlug: username/app_id

[AppCenterTest@1 - App Center test v1 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-test-v1?view=azure-pipelines)  

```
# App Center test v1
# Test app packages with Visual Studio App Center.
- task: AppCenterTest@1
  inputs:
    appFile: # string. Alias: app. Required. Binary application file path. 
    artifactsDirectory: '$(Build.ArtifactStagingDirectory)/AppCenterTest' # string. Alias: artifactsDir. Required. Artifacts directory. Default: $(Build.ArtifactStagingDirectory)/AppCenterTest.
  # Prepare Tests
    frameworkOption: 'appium' # 'appium' | 'espresso' | 'calabash' | 'uitest' | 'xcuitest'. Alias: framework. Required when 
    credentialsOption: 'serviceEndpoint' # 'serviceEndpoint' | 'inputs'. Alias: credsType. Required when enableRun = true.     appSlug: # string. Required when enableRun = true. App slug. 
    devices: # string. Required when enableRun = true. Devices. 
    localeOption: 'en_US' # 'da_DK' | 'nl_NL' | 'en_GB' | 'en_US' | 'fr_FR' | 'de_DE' | 'ja_JP' | 'ru_RU' | 'es_MX' | 'es_ES' | 'user'. Alias: locale. Required when enableRun = true. System language. Default: en_US.
    #userDefinedLocale: # string. Optional. Use when enableRun = true && locale = user. Other locale. 
    #loginOptions: # string. Alias: loginOpts. Optional. Use when enableRun = true && credsType = inputs. Additional options for login. 
    #runOptions: # string. Alias: runOpts. Optional. Use when enableRun = true. Additional options for run. 
    #skipWaitingForResults: false # boolean. Alias: async. Optional. Use when enableRun = true. Do not wait for test result. Default: false.
  # Advanced
    #cliFile: # string. Alias: cliLocationOverride. App Center CLI location. 
    #showDebugOutput: false # boolean. Alias: debug. Enable debug output. Default: false.
```

[AppCenterDistribute@3 - App Center distribute v3 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/app-center-distribute-v3?view=azure-pipelines)
Use this task to distribute app builds to testers and users via Visual Studio App Center.

```
- task: AppCenterDistribute@3
  inputs:
    serverEndpoint: # string. Required. App Center service connection. 
    appSlug: # string. Required. App slug. 
    appFile: # string. Alias: app. Required. Binary file path.    
    releaseNotesOption: 'input' # 'input' | 'file'. Alias: releaseNotesSelection. Required. Create release notes. Default: input.
    releaseNotesInput: # string. Required when releaseNotesSelection = input. Release notes.     
    destinationType: 'groups' # 'groups' | 'store'. Required. Release destination. Default: groups.    
```

---

[CDN & IoT Deployments with Azure DevOps](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/8a26b71a-28c1-473e-b3f7-66a739121f12)

### Deployment to CDN

[Create a Content Delivery Network for your Website with Azure CDN and Blob Services](https://learn.microsoft.com/en-us/training/modules/create-cdn-static-resources-blob-storage/)  

In this case you can use an Azure DevOp Pipeline to deploy **compressed anc cached files** to a **Azure Blob Storage**
that is configured to be used by a **Azure CDN** i.e. as static content for  Web Site that makes use of the CDN.

[AzureFileCopy@4 - Azure file copy v4 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-file-copy-v4?view=azure-pipelines)  

```
# Azure file copy v4
# Copy files to Azure Blob Storage or virtual machines.
- task: AzureFileCopy@4
  inputs:
    SourcePath: # string. Required. Source. 
    azureSubscription: # string. Alias: ConnectedServiceNameARM. Required. Azure Subscription. 
    Destination: # 'AzureBlob' | 'AzureVMs'. Required. Destination Type. 
    storage: # string. Alias: StorageAccountRM. Required. RM Storage Account. 
```
---

### Deployment to an IoT Hub

In this case you can use an Azure DevOp Pipeline to deploy to an **Azure IoT Hub**.

[IoT concepts and Azure IoT Hub](https://learn.microsoft.com/en-us/azure/iot-hub/iot-concepts-and-iot-hub)  

**Azure IoT Hub** is a managed service hosted in the cloud that acts as a central message hub for 
**communication between an IoT application and its attached devices**. You can connect millions 
of devices and their backend solutions reliably and securely. 
Almost any device can be connected to an IoT hub.

[AzureIoTEdge@2 - Azure IoT Edge v2 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/azure-iot-edge-v2?view=azure-pipelines)  

Use this task to build and deploy images quickly and efficiently to Azure IoT Edge.

```
# Azure IoT Edge v2
# Build and deploy an Azure IoT Edge image.
- task: AzureIoTEdge@2
  inputs:
    action: 'Build module images' # 'Build module images' | 'Push module images' | 'Generate deployment manifest' | 'Deploy to IoT 
```

> 'Build module images' # Build module images (you can use it to check compilation errors). **Default Action**
> 'Push module images': pushes modules to the **container registry**.
> 'Generate deployment manifest': * 
> 'Deploy to IoT Edge devices': deploys the generated deployment file **to IoT Hub**.


* [Configure a deployment manifest](https://learn.microsoft.com/en-us/azure/iot-edge/how-to-deploy-modules-portal?view=iotedge-1.4#configure-a-deployment-manifest)  
A deployment manifest is a JSON document that describes which modules to deploy, how data flows between the modules, and desired properties of the module twins.

---

###  [Azure Stack & Sovereign Cloud Deployments](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/20486a18-7a12-4bf1-8e12-f3bdd01c2eda/455e735d-f65d-4f17-adc5-fe32932afb93)  

In the context of Azure DevOps the typical workflow:
> Push code to repo > Build > Release > Deploy to Test > [Acceptance] > Deploy to Production
can have as targets:
- the Cloud
- On Premise Environments > Azure Stack
- Government Agencies > Sovereign Cloud Deployments

#### Azure Stack: 

In some scenarios you can use a hybrid approach whereby you have a Test Environment
created in Azure (or another Cloud Provider) and the Production Environment remains 
on-premise.

This kind of hybrid situation can be dealt with **Azure Stack** deployed on-premise
and in conjunction to this **Terraform** may also be used in order to have to maintain 
a single pipeline rather than having to customize the two pipeline to each of the 
environments.


#### Sovereign Cloud Deployments:


#### Create a Service Connection for Azure Stack or a Sovereign Cloud

> Organization > Project > Project Settings > Service Connections > New Azure Service Connection > Environment:
- Azure Cloud
- Azure China Cloud
- Azure US Government
- Azure German Cloud
- Azure Stack

After this selection step the remaining steps to create the SC are the same.

---

- LAB: Build & Distribute an App in Visual Studio App Center 
- LAb: Linting ARM Templates
- LAB: Building Infrastructure with Azure Pipeliens
- LAB: Deploy a Python App to an AKS Cluster within Azure Pipelines

---

### Workflows that are often assesed in the exam

[Build and deploy to Azure Kubernetes Service with Azure Pipelines](https://learn.microsoft.com/en-us/azure/aks/devops-pipeline?tabs=cli&pivots=pipelines-yaml)  

[Deploy Azure DevOps Builds with App Center](https://learn.microsoft.com/en-us/appcenter/distribution/vsts-deploy)

---

[Orchestration Automation Solutions](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/89029c70-91fe-4937-9781-0a17438c5f82/053a68d9-1e78-4805-ad6f-6e36e057558d)  

- Release Strategies
- Stages, Dependencies and Conditions
- Azure App Configuration
- Release Gates
- LAB: Mutli-stage Build in Azure Pipelines to Deploy a .NET App

### Release Strategies

#### Canary Deployment

Deploy to a smallfraction of the production infrastructure in order to validate the deployment
on the production environment with a small number of users. This strategy is based on the usage
of a **routing device** such as a **load balencer / application gateway**.

When the validation is approved the new version is rolled out ot the whole production environemnt.

#### Rolling Deployment

In Rolling Deployment the new version of the app **gradually replaces the old one**. 
This strategy **requires** that the two version can **coexist on the same infrastructure**.

#### Blue/Green Deployment (aka A/B Deployment)

In this case **there are tow distincy environments** one for the old version and one for the 
new version **identically configured**. One environemtn is idele while the other is active.
The new code is releaed to the inactive environment and **after testing and approval** the 
acive and idel environment are switched.

This can ofent be implemented wiith a **load balancing mechanism**.

---

### [Stages, Dependencies and Conditions](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/89029c70-91fe-4937-9781-0a17438c5f82/07bcb4b1-0c50-47dd-ae35-97790924e731)  


```
jobs:
- job: Foo
  steps:
  - bash: |
      echo "This is job Foo."
      echo "##vso[task.setvariable variable=doThing;isOutput=true]Yes" #set variable doThing to Yes
    name: DetermineResult
- job: Bar
  dependsOn: Foo
  condition: eq(dependencies.Foo.outputs['DetermineResult.doThing'], 'Yes') #map doThing and check the value
  steps:
  - script: echo "Job Foo ran and doThing is Yes."
```

`dependsOn: []`:" 
With this specual case syntax the Jobs Foo & Bar **would run in parallel**


By default, steps, jobs, and stages run if all direct and indirect dependencies have succeeded. 
It's as if you specified "condition: succeeded()"
Conditions are evaluated to decide whether to start a **stage, job, or step**. 
If the built-in conditions don't meet your needs, then you **can specify custom conditions**.
Conditions are written **as expressions in YAML pipelines**.

`always()`: Even if a previous dependency has failed, even if the run was canceled.
`succeededOrFailed()`: Even if a previous dependency has failed, unless the run was canceled. 
`failed()`: Only when a previous dependency has failed.
`condition: and(succeeded(), eq(variables['doThing'], 'Yes'))`

**When a build is canceled**, it doesn't mean all its stages, jobs, or steps stop running.
The decision depends on: 
- the stage, job, or step conditions you specified and 
- at what point of the pipeline's execution you canceled the build.

- case 1:
If your condition doesn't take into account the state of the parent of your stage / job / step, 
then if the condition evaluates to true, your stage, job, or step will run, even if its parent
is canceled. 

- case 2:
If its parent is skipped, then your stage, job, or step won't run.

---

### [App Configuration](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/89029c70-91fe-4937-9781-0a17438c5f82/e07c7360-a781-4e5c-bf9f-eb244fd67179)  

This is a way to hold and distribute configuration to a number of target services.

- Microservices 
- Azure Service Fabric
- Serverless Apps
- CD Pipelines

[What is Azure App Configuration?](https://learn.microsoft.com/en-us/azure/azure-app-configuration/overview)  

Azure App Configuration provides a service to centrally manage application settings and feature flags. 
Modern programs, especially programs running in a cloud, generally have many components that are distributed in nature. Spreading configuration settings across these components can lead to hard-to-troubleshoot errors during an application deployment. 

**Use App Configuration to store all the settings for your application and secure their accesses in one place**.

Main Features:

- Key-Value based
- Tagging with Labels
- Encryption of sensitive information at rest and in transit
- security through Azure-managed identities
- Point-in-time replay of settings
- Dedicated UI for feature flag management
- Native integration with popular frameworks
- Comparison of two sets of configurations on custom-defined dimensions
- App Configuration complements Azure Key Vault*

* 
There are two types of keys **Key-Value** & **Key Vault References**, the latter allow
configuration keys in the App Configuration Store to be drown from a Key Vault.

- Dynamically change application settings without the need to redeploy or restart an application
- Control feature availability in real-time
- Centralize management and distribution of hierarchical configuration data for different environments and geographies

### App Configuration Workflow

1. [Create an App Configuration Store](https://learn.microsoft.com/en-us/azure/azure-app-configuration/quickstart-azure-app-configuration-create?tabs=azure-portal)  

> Access Keys: there you find Write-Read & Read-Only keys that are to be used in your code to connect to the store
> Configuration Explorere: here you create and manage your keys

2. [Tutorial: Manage feature flags in Azure App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/manage-feature-flags)  

> Feature Manager: this is where you can control the Feature Flags. 
> On the UI for a new FF there is a **enable checkbox**.
> You can also give a LABEL and a description.

#### App Configuration Store for Feature Flags (FF)

3. [Use feature filters to enable conditional feature flags](https://learn.microsoft.com/en-us/azure/azure-app-configuration/howto-feature-filters-aspnet-core)  

> **Filters** is how you can control how the FF is made available to it audience.

A **conditional feature flag** allows the feature flag to **be enabled or disabled dynamically**.
The application may behave differently, depending on the feature flag criteria.

- The typical scenario for FFs:

Suppose you want **to show your new feature to a small subset of users at first**. 
A conditional feature flag allows you to enable the feature flag for some users while 
disabling it for others. **Feature filters** determine the state of the feature flag 
each time it's evaluated.

The **Microsoft.FeatureManagement library** includes three feature filters:

- PercentageFilter: enables the feature flag based on a percentage.
- TimeWindowFilter: enables the feature flag during a specified window of time.
- TargetingFilter:  enables the feature flag for specified users and groups.
- You can also create your own feature filter that implements the **Microsoft.FeatureManagement.IFeatureFilter** interface.

#### Register a feature filter

You register a feature filter by calling the **AddFeatureFilter** method, 
specifying the type name of the desired feature filter. For example, 
the following code registers PercentageFilter:

```
public void ConfigureServices(IServiceCollection services)
{
    services.AddControllersWithViews();
    services.AddFeatureManagement().AddFeatureFilter<PercentageFilter>();
}
```

---

### [Release Gates](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/89029c70-91fe-4937-9781-0a17438c5f82/4fbece53-2e08-476c-b219-712e55e399f0)  

In an Azure DEvOps Pipelines **Gates are typically used between stages** as either**pre-deployment or post-deployment** conditions to advance through the release or deployment pipeline.

#### Scenarious for Release Gates

- Incident and issue management: 
check the Azure Board for connected WIs and their status and that all related bugs have been closed

- seek approval outside Azure Pipelines:
a business process that involves the approval from people other than the users of the Azure DevOps
Pipeline i.e. legal department, managers, etc. this process might also involve intergration with 
collaboration tools such as Teams or Slack.

- quality validation
in this case you gather quality metrics such as test pass rate, code coverage, etc.
the deployment should move on only if a specified threshold is satisfied.

- security scan on artifacts:
antivirus, code scanning, policy checking on artifacts

- UX test against a baseline:
test that the UX has not degraded with respect a give baseline i.e. the previous release threshold.

- infrastructure health:
test the availabbility, security and state of the target infrastructure in order to deploy the artifacts

- Manual Intervention & Manual Validation:
In a **pre-deployment** step you might  use a **Manual Intervention** to **carry out manual operation**
prior to a deploument i.e. to update a database schema and **Manual Validation** might imply an
individual **to check** configuration files or the state of the target enviroment or aother assets prior 
to deployment. **One example is that of a workload that requires enough computational resource to be able**
**to successfully complete**, you may want to **validate** that such resources are going to be available 
when the workload is deployed i.e. all previous workloads have completed.
**Manual Intervention & Manual Validation** in Stage Gates in Azure DevOps will either **show a prompt** 
and/or send an email notofication including instruction to complete the validation phase. While this is 
pending the deployment is paused.

#### How to add a Manual Intervention & Manual Validation?

[ManualIntervention@8 - Manual intervention v8 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/manual-intervention-v8?view=azure-pipelines)   

[ManualValidation@0 - Manual validation v0 task](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/manual-validation-v0?view=azure-pipelines)  

The workflow to do this is a bit different.

1. from your Release Pipeline go to Tasks
2. **add an Agentless Job** 
3. add a **Manual Intervention Task** to this Job
4. add a **Manual Validation Task** to this Job

These manual tasks **are in addition to** **the Approvals that are available in a pre-deployment step**.
The difference is that in Approvals of a pre-deployment step the people that can be selected as approvers
are members of the the Azure DevOps Team Project. 

---

[Examm Tip: Examine a scenario where approvals may take longer than expected and try to rectify it](https://www.examtopics.com/discussions/microsoft/view/17035-exam-az-400-topic-8-question-30-discussion/)

---

## [Design and Implement Deployments](https://app.pluralsight.com/ilx/video-courses/675a1cc4-be1f-4660-8afd-4c2d6f3d81d7/107908ad-8470-4d10-a611-af41b5660d88/f57b8a98-5595-4d82-b793-f72d5605b631)

- Release Strategies
- Implement Deployment Slot Releases
- Implement Load Balancer & Traffic Manaher Releses
- Use Feature Toggles
- LAB: Deploy a Node.js App to a deployment slot in Azure DevOps 

#### Design and Implement Stratey

The general steps are:

1. Enable initialization
2. Deploy the update
3. **Route traffic** to the uploaded version
4. Test the updated version
5. **In case of failure** run steps to **restore** the last working version

---













