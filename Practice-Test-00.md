

# Microsoft AZ-400 Practice Test

### [Microsoft Learn Exam Offers](https://learn.microsoft.com/en-us/credentials/certifications/deals)

- [Exam AZ-400: Designing and Implementing Microsoft DevOps Solutions](https://learn.microsoft.com/en-us/credentials/certifications/devops-engineer/):  €165

### [MeausureUp](https://pts.measureup.com/web/index.php#dashboard.php)

[Microsoft Practice Test: €59.15 discounted 35% from €91](https://www.measureup.com/catalogsearch/result/?q=AZ-400)

### [Mindhub](https://eu1.mindhub.com/myaccount)

- [Microsoft Exam Replay: MCP exam + Retake: €215](https://eu1.mindhub.com/microsoft-exam-replay-mcp-exam-plus-retake/p/Microsoft-Exam-Replay?utm_source=msftmarketing&utm_medium=msft_offers&utm_campaign=ExamReplayFY20&utm_term=ERFY20&utm_content=weblink3)  

- [Microsoft Exam Replay with Practice Test: MCP exam + Retake + Practice test: €245](https://eu1.mindhub.com/microsoft-exam-replay-with-practice-test-mcp-exam/p/Microsoft-Exam-Replay-PT)


### Summary

€421 = €330 +  €91 : 2-exam-voucher + 1-practice-test  
€245 : Microsoft Exam Replay with Practice Test: MCP exam + Retake + Practice test*  
€256 = €165 +  €91 : 1-exam-voucher + 1-practice-test  
€215 : Microsoft Exam Replay: MCP exam + Retake  
€224 = €165 +  €59 : 2-exam-voucher + 1-practice-test    
        
\* best value!

---

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
- Each role has a  corresponding Azure DevOps Group to manage permission.
- All of the permissions are attached to the group and not to individual users.

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

7.  The infrastucture analyst should be able to publish tags for commits in the 
    main branch using a command line script.

8.  New features must be developed in isolation with production code.

9. Deployment to production environment must originate from the main branch only.

---

###  Question 1

You need to create the main branch according to the company policies.
A pipeline needs to be configured along with the main branch.

Which 4 actions should you perform in sequence?

All the available actions:

- Create a fork                                   NA
- Create a repository                             01     
- Create a build pipeline                         
- Enable the continuos integration trigger
- Create a main branch                           02
- Clone the repository                           NA
- Add branch permission                           


---

Correct Answer:

1. Create a repository                                  
2. Create a main branch.                           
3. Create a build pipeline                         
4. Enable the continuos integration trigger        

---

### Explanation:

#### What you should do

Create a new Git Repo in Azure Repo. A new Git Repo does not contain any branches therefore create the main branch to meet the requirement R1. The main branch is defined as the first branch which is made when the Git Repo is initialized using the [git init](https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-init) command.

You should then create a new build pipeline to run the test suite.
Finally, you should enable the CI trigger to run this build on all branches.

####  What you should not do

- You should not add branch permission.  
You add branch permission to control who can read and update the code in a branch.

- You should not creaqte a fork.  
You would create a fork to obtain a complete copy of an existing repository, whic includes
all files and commits.

- You should not clone the repository
You would vlone the repository to have a local copy of it to work on your machine.

---

### References

####  Answer References

[Create a new Git Branch - Azure Repos](https://learn.microsoft.com/en-us/azure/devops/repos/git/create-branch?view=azure-devops&tabs=browser)  
[Set Branch Permissions](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-permissions?view=azure-devops)  
[Specify events that trigger pipelines](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/triggers?view=azure-devops&tabs=yaml)  

---

####  Other References

[Git init](https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-init)  
[New Git repository has no "master" branch](https://stackoverflow.com/questions/20225031/new-git-repository-has-no-master-branch)  
[Error when creating a new branch for an empty repository #577](https://github.com/integrations/terraform-provider-github/issues/577)   

[Of Git and GitHub, Master and Main](https://www.biteinteractive.com/of-git-and-github-master-and-main/#:~:text=A%20branch%2C%20after%20all%2C%20is,branch%20is%20created%20for%20you.)  

```
By default, as a long-standing convention, when you first create a local Git repository by saying git init on your computer, the new repository has a single branch called master. Okay, that’s not completely accurate, because when you first create a local Git repository, it appears to have no branches at all. A branch, after all, is just a name for a commit; but a newly created Git repository has no commits.

You don’t actually have a branch until you have some files and you first say git add and git commit. At that point, a branch is created for you. But that branch has a name! 

Where did that name come from? Well, under the hood, a newly created Git repository has its HEAD configured to point to *refs/heads/master* — even though there is no actual master branch yet, because you haven’t yet made your first commit. As a result, when you do make your first commit, the branch name pointing to it is master.
```

---

[Build Azure Repos Git or TFS Git repositories](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=yaml#ci-triggers)  

[PR triggers](https://learn.microsoft.com/en-us/azure/devops/pipelines/repos/azure-repos-git?view=azure-devops&tabs=yaml#pr-triggers) 
```
Pull request (PR) triggers cause a pipeline to run whenever you open a pull request, or when you push changes to it. In Azure Repos Git, this functionality is implemented using branch policies. 
```

[Build validation](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#build-validation)  

```
You can set a policy requiring PR changes to build successfully before the PR can complete. 
```

---

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)  
[Create pull requests](https://learn.microsoft.com/en-us/azure/devops/repos/git/pull-requests?view=azure-devops&tabs=browser) 

---

[Branch policies Q & A](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#q--a)


[Can I push changes directly to branches that have branch policies?](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#can-i-push-changes-directly-to-branches-that-have-branch-policies)  

```
You can't push changes directly to branches that have required branch policies unless you have permissions to bypass branch policies. Changes to these branches can be made only through pull requests. You can push changes directly to branches that have optional branch policies, if they have no required branch policies.
```

[How can I configure multiple users as required reviewers, but require only one of them to approve?](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#how-can-i-configure-multiple-users-as-required-reviewers-but-require-only-one-of-them-to-approve)  
```
You can add the users to a group, and then add the group as a reviewer. Any member of the group can then approve to meet the policy requirement.
```

--------------------------------------------------------------------------

#### Consideration 1

This is a new project therefore there is no existing codebase, neither repository nor branch.
It will be necessary to create and initialize the repository and commit cahnges to it in 
order to create the **main** branch.

This rules out the following options:
- Create a fork
- Clone the repository.

---

#### Consideration 2

[About pull requests > Permissions and prerequisites](https://learn.microsoft.com/en-us/azure/devops/repos/git/about-pull-requests?view=azure-devops#permissions-and-prerequisites)  

To contribute to a PR, you must be a member of the **Readers** security groupor have the corresponding permissions. To create and complete a PR, you must be a member of the **Contributors** security group or have the corresponding permissions.

This means that the **Security Group of the Developers** must have permissions equivalent to
those granted by the **Contributors** because developers must be able to create and complete a PR and not just to contribute to it.

---

#### Consideration 3

You can set branch policies to require PRs for any changes on these protected branches
and reject any changes pushed directly to the branches. Extra requirements like a clean 
build of the proposed code or approval from multiple reviewers can help protect key 
branches.

To set branch policies, you must be a member of the **Project Administrators security group**.

#### The available policies:

 - [Add Build Validation policies](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#build-validation)                 
 - [Automatically included reviewers](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#automatically-include-code-reviewers)             
 - [Check for linked work items](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#check-for-linked-work-items)                   
 - [Limit merge types](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#limit-merge-types)              

#### The available policies that are less relevant in this Case Study

 - [Require a minimum number of reviewers](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#require-a-minimum-number-of-reviewers)  
 - [Check for comment resolution](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#check-for-comment-resolution)  
 - [Add Status Check policies](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#status-checks)  

---

#### [Bypass Branch Policies](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#bypass-branch-policies)  

Bypassing branch policies is relevant in this Case Study because the Tech Leads must be able to complte PRs that do not
satisfy all branch policies. In this case in order to satisfy the requirement the Security Group of teh Tech Leads will
need to be assigned the permission **Bypass policies when completing pull requests** as it is decribed in detail below.

```
 grant bypass permissions to a user or group. You can scope bypass permissions to an entire project, a repo, or a single branch.
``` 

Two permissions allow users to bypass branch policy in different ways:

- Bypass policies when completing pull requests 

 applies only to pull request completion. Users with this permission can complete pull requests even if the pull requests don't satisfy policies

 - Bypass policies when pushing

applies to pushes from local repositories and edits made on the web. Users with this permission can push changes directly to protected branches without meeting policy requirements.

---

##### Requirement 1

- Every code change in the main branch must be auditable.
- Every code change requires a user story association.
- Every code change requires a review from a teach leader.

[Link work items to a pull request](https://learn.microsoft.com/en-us/azure/devops/repos/git/pull-requests?view=azure-devops&tabs=browser#link-work-items-to-a-pull-request)  

In relation to **Every code change requires a review from a teach leader** refer to the 

[How can I configure multiple users as required reviewers, but require only one of them to approve?](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#how-can-i-configure-multiple-users-as-required-reviewers-but-require-only-one-of-them-to-approve)  
```
You can add the users to a group, and then add the group as a reviewer. Any member of the group can then approve to meet the policy requirement.
```

This means that by adding to the required reviewers for the Branch Policy the 
security group of the 2 Tech Leads then only one of them will be required to 
perform the code review. Thi is in agreement with the requirement.

---

#### Consideration 4

##### Requirement 2

 - Developers must include new code by using a pull request without breaking the test cases.

https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-permissions?view=azure-devops
    Add users or groups
    Set permissions > 
        Bypass policies when completing pull requests > R6


---

### Question 2

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