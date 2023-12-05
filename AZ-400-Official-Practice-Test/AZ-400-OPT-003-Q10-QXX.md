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

### Question:
### Answer:
### Explanation:
### References:

---







