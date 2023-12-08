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

How should you complete teh Azure CLI command?

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
### Question:
### Answer:
### Explanation:
### References:

---







