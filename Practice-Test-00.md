----------------------------------------------------------------

Microsoft AZ-400 Exam Actual Questions
The questions for AZ-400 were last updated on Oct. 2, 2023.
Viewing page 1 out of 47 pages.
Viewing questions 1-10 out of 472 questions

----------------------------------------------------------------

***********
Offers
***********
https://learn.microsoft.com/en-us/credentials/certifications/deals

Exam AZ-400: Designing and Implementing Microsoft DevOps Solutions:€165
https://learn.microsoft.com/en-us/credentials/certifications/devops-engineer/

***********
MeausureUp
***********
https://pts.measureup.com/web/index.php#dashboard.php
Microsoft Practice Test: €59.15 discounted 35% from €91
https://www.measureup.com/catalogsearch/result/?q=AZ-400


***********
Mindhub
***********
https://eu1.mindhub.com/myaccount

Microsoft Exam Replay: MCP exam + Retake: €215
https://eu1.mindhub.com/microsoft-exam-replay-mcp-exam-plus-retake/p/Microsoft-Exam-Replay?utm_source=msftmarketing&utm_medium=msft_offers&utm_campaign=ExamReplayFY20&utm_term=ERFY20&utm_content=weblink3

Microsoft Exam Replay with Practice Test: MCP exam + Retake + Practice test: €245
https://eu1.mindhub.com/microsoft-exam-replay-with-practice-test-mcp-exam/p/Microsoft-Exam-Replay-PT

Full price of single items would be: 

€165 +  €91 = €256 : 1-exam-voucher + 1-practice-test
€330 +  €91 = €421 : 2-exam-voucher + 1-practice-test
€165 +  €59 = €224 : 2-exam-voucher + 1-practice-test
              €215 : Microsoft Exam Replay: MCP exam + Retake
              €245 : Microsoft Exam Replay with Practice Test: MCP exam + Retake + Practice test*
        
* best value!

-------------------------------------------------------------------------
PT0X-Q0X: 
question text..
Which of the following is the option you would choose?

A0X-1: 
A0X-2: 
A0X-3: 
A0X-4: 

MY ANSWER TO PT0X-Q0X
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

CORRECT ANSWER TO PT0X-Q0X
--------------------------------------------------------------------------
?
--------------------------------------------------------------------------

-------------------------------------------------------------------------
PT00-Q02: 



MY ANSWER:
--------------------------------------------------------------------------

--------------------------------------------------------------------------

CORRECT ANSWER:
--------------------------------------------------------------------------

--------------------------------------------------------------------------

REFS:


-------------------------------------------------------------------------
## PT00-Q01: 

### Complete Case Study

#### Overview:

Company 2  is a software company that creates a new project in Azure DevOps.
A new development team has been assembled for this new project and the 
project code will be hosted on a Git Repo in Azure Repo.
You have been hired as a consultant to create this repository and to Implement
their code flow on the team structure and company policies.

---

#### Development Team:

- 2 tech leands who are responsible for reviewing application code in all the development stages.
- 10 developers who are responsible for implementing new features and reviewing pull requests.
- 2 QA analysts who are responsible for dealing with quality requirements and maintaining the automatic test cases.
- 1 infrastructure analyst who is responsible for deploying new application versions. 

Each role has a  corresponding Azure DevOps Group to manage permission.
All of the permissions are attached to the group and not to individual users.

---

#### Requirements:

1.  Every code change in the main branch must be auditable and these will require 
    a user story association and a review from a teach leader.

2.  Developers must include new code by using a pull request without breaking the
    test cases.

3.  The developr's machine must access the code repository from command line tools
    without using passwords.

4.  Test cases must be executed on every pull request.

5.  The commit history should be linear, should maintain every developer commit and
    should not contain merge commits on the main branch.

6.  To merge a PR on the main branch, all test must pass. 
    If the tests are failing QA and Tech Lead can bypass the checks and complete the 
    merge as-is.

R7:
The infrastucture analyst should be able to publish tags for commits in the 
main branch using a command line script.

R8:
New features must be developed in isolation with production code.

R9:
Deployment to production environment must originate from the main branch only.

------------
Question 1
------------
You need to create the main branch according to the company policies.
A pipeline needs to be configured along with the main branch.

Which 4 actions should you perform in sequence?

All the available actions:

- Create a fork                                   NA
- Create a repository                             01     
- Create a build pipeline                         
- Enable the continuos integration trigger.
- Create a main branch.                           02
- Clone the repository.                           NA
- Add branch permission                           


CORRECT ANSWER:
--------------------------------------------------------------------------
1. Create a repository                                  
2. Create a main branch.                           
3. Create a build pipeline                         
4. Enable the continuos integration trigger        

--------------------------------------------------------------------------
EXPLANATION:

Create a new Git Repo in Azure Repo.
A new Git Repo does not conyain any branches therefore create the main branch
to meet the requirement R1.
The main branch is defined as the first branch which is made when the Git Repo
is initialized using the git init command.

--------------------------------------------------------------------------
RESF:


--------------------------------------------------------------------------


MY ANSWER:
--------------------------------------------------------------------------
This is a new project therefore there is no existing codebase.
This rules out the following:
- Create a fork
- Clone the repository.

STEP1: you must create the repo.
STEP2: create a main branch.
STEP3: create the build pipeline.
STEP4: enable CI trigger.

- Add branch permission

The requirement for STEP3

R1:
Every code change in the main branch must be auditable.
Every code change requires a user story association.
Every code change requires a review from a teach leader.

R2:
Developers must include new code by using a pull request without breaking the test cases.

https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-permissions?view=azure-devops
    Add users or groups
    Set permissions > 
        Bypass policies when completing pull requests > R6

- About pull requests > Permissions and prerequisites
https://learn.microsoft.com/en-us/azure/devops/repos/git/about-pull-requests?view=azure-devops#permissions-and-prerequisites

The Developers:
To contribute to a PR, you must be a member of the **Readers** security group
or have the corresponding permissions.

The tech leads:
To create and complete a PR, you must be a member of the **Contributors** 
security group or have the corresponding permissions.

----------------------------------
Branch policies and pull requests
https://learn.microsoft.com/en-us/azure/devops/repos/git/about-pull-requests?view=azure-devops#branch-policies-and-pull-requests 

Branch policies and settings
https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser
----------------------------------
You can set branch policies to require PRs for any changes on these protected branches
and reject any changes pushed directly to the branches.
Extra requirements like a clean build of the proposed code or approval from multiple 
reviewers can help protect key branches.

To set branch policies, you must be a member of the **Project Administrators security group**.
Require a minimum number of reviewers.

The available policies:
---------------------------------------
Require a minimum number of reviewers
Check for linked work items                 < R1: must have a user story association.
Check for comment resolution
Limit merge types                           < R5: linear history, no rebase, no merge commits.
Add Build Validation policies               < R2+R4: PR must build and tests pass.
Add Status Check policies
Automatically included reviewers            < R1: one reviewer must be a tech leader
---------------------------------------

--------------------------------------------------------------------------


------------
Question 2
------------

After creating the repository, the tech leads report that one of the developers
pushed new code directly to the main branch before it had been reviewed.
You need to ensure that only changes from reviewed PRs are added to the main branch.

Which 2 actions should you perform?

- Add the Tech Lead Group as automatic reviewers.               R1*?
- Lock the main branch.                                         NA
- Change the branch permission in the main branch.              NA    
- Add a Require minimum fo reviewers policy.                    ?
- Add a build validation policy.                                !


Which of the options would not apply?

--------------
Lock a branch
https://learn.microsoft.com/en-us/azure/devops/repos/git/lock-branches?view=azure-devops
--------------
Prevent updates to a Git branch by locking the branch. 
Locking a branch prevents other users from changing the existing commit history. 
Locking also blocks any new commits from being added to the branch by others.

> When would you use a Branch Lock?
Locking is ideal for 
1-preventing new changes that might conflict with an important merge.
2-to place a branch into a read-only state i.e. a released version branch.

> Limitations
Locking does not prevent cloning of a repo or fetching updates made in the branch
into your local repo.

--------------
Change the branch permission in the main branch.
https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-permissions?view=azure-devops
--------------
This would clearly not solve the problem at hand.

-----------------------------------------------------------------------------

CORRECT ANSWER:
--------------------------------------------------------------------------

You should perform the following two actions:
---------------------------------------------------
- Add a build validation policy.  
- Add the Tech Lead Group as automatic reviewers.  
---------------------------------------------------

Explanation:

You should add a build validation policy to ensure that only changes from a 
review PR are added to the main branch.
-------------------------------------
Branch policies and settings
https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser
A branch that has required policies configured 
- can't be deleted 
- requires pull requests (PRs) for all changes.
-------------------------------------

This will prevent any developer from committing any code directly to the branch
which is one of the problems that the Tech Laeds have task you to solve.

You should also add the Tech Lead Group as automatic reviewers.  
This is part of the requirement R1. 
The requirement says "a review from a Tech Leader".
However, I think that this detail was not consider in this Q&A. 

--------------------------------------
Automatically include code reviewers
https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#automatically-include-code-reviewers
--------------------------------------
You can automatically add reviewers to pull requests that change files in 
specific directories and files, or to all pull requests in a repo.

--------------------------------------------------------------------------

Notes:

*R1:
As the Tech Lead Group holds 2 reviewers in this Case Study this would add one 
extra review for a total of 2, which is not STRIKTLY a requirement in this case.

This makes the following option possible:

Add a Require minimum fo reviewers policy.            > require 1 minimum from the Security Group Tech Lead
in place of 
Add the Tech Lead Group as automatic reviewers

However, as noted the solution to the test seems to indicate that this 
requirement has not been interpreted to striktly.

--------------------------------------------------------------------------

------------
Question 3
------------

You need to configure a policy for the main branch to ensure the desired
commit history.
Which merge type should you use for the main branch?

- Rebase and fast-forward
- Rebase with merge commit
- Squash merge
- Basic merge (no- fast-forward)

--------------------------------------------------------------------------