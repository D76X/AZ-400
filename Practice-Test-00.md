

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

 #### Imnportant Note

 The two policies below are related.

- Require a minimum number of reviewers
- Automatically included reviewers

[Why can't I complete my own pull requests when "Allow requestors to approve their own changes is set"?](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser#why-cant-i-complete-my-own-pull-requests-when-allow-requestors-to-approve-their-own-changes-is-set)
```
Both the Require a minimum number of reviewers policy and the Automatically included reviewers policy have options to Allow requestors to approve their own changes. In each policy, the setting applies only to that policy. The setting doesn't affect the other policy.
```

In other words, if a reviewer is in the set of **Automatically included reviewers** and is also the 
requestor than when they perform the review they satisfy this specific policy if for this policy the 
**Allow requestors to approve their own changes** is set. However, the other policy **Require a minimum number of reviewers** may remain not fulfilled when its **Allow requestors to approve their own changes** 
is NOT enabled. This casues the PR to fail its policies checks!

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

- Add a Require minimum fo reviewers policy.                    ?
- Change the branch permission in the main branch.              NA    
- Add the Tech Lead Group as automatic reviewers.               R1*?
- Lock the main branch.                                         NA
- Add a build validation policy.                                !

---

#### Correct Answer:

You should perform the following two actions:
- Add a build validation policy.  
- Add the Tech Lead Group as automatic reviewers.  

---

#### Explanation:

You should add a build validation policy to ensure that only changes from a 
reviewed PR are added to the main branch.

[Branch policies and settings](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser)


A branch that has required policies configured 
- can't be deleted 
- requires pull requests (PRs) for all changes.

This will prevent any developer from committing any code directly to the branch
in that only code that has fulfilled all the policies through a PR can be merged 
into the main branch. However, the PR by itself would not ensure that the code 
in it is reviewed. A PR will be resolved or rejected according to whether the 
corresponding code and processes fulfill the required policies that are specified. 
If, for example, the policy that requires reviewers approval and/or the policy
that requires reviewers approval from a specific security group were not selected
as branch policies then the code in the PR could still be merged into the main
branch without being reviewed.

Therefor the **Add a build validation policy** by itself does not meet all the 
requirements in thsi question and for the Case Study in general.  
**Question 2** specifies that the code must be reviwed but it does not explicitly
say by whom. This means that in absence of more requirements one could think that 
the option **Add a Require minimum fo reviewers policy** could be used with a 
minimum nuber of reviewers set to 1 in order to fulfill the requirements for 
**Question 2**.

 However, as part of the whole Case Study **requirement 1** says that not only the
 code in a PR must be reviewed, but it also must be reviewed by at least a Tech Lead.
 This makes the **Add the Tech Lead Group as automatic reviewers** the correct option 
 for this questyion instead of **Add a Require minimum fo reviewers policy**. 

---

### Which of the options would not apply?

[Lock a branch](https://learn.microsoft.com/en-us/azure/devops/repos/git/lock-branches?view=azure-devops)

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

---

[Change the branch permission in the main branch](https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-permissions?view=azure-devops)

This would clearly not solve the problem at hand.

```
Set up permissions to control who can read and update the code in a branch on your Git repo. You can set permissions for individual users and groups, and inherit and override permissions as needed from your repo permissions.
```

----

### Question 3

You need to configure a policy for the main branch to ensure the desired
commit history.
Which merge type should you use for the main branch?

- Rebase and fast-forward
- Rebase with merge commit
- Squash merge
- Basic merge (no- fast-forward)

---

### From the requiremnts for this Case Study

The commit history should

 - be linear
 - maintain every develop commit
 - not contain merge commits on the main branch

These 3 requirements may be used to rul out some of the available options.

> The commit history should be linear
This rules out the options **Basic merge (no- fast-forward)** because with this type of 
merge strategy the history is never linear, instead the commit history on each feature 
branch is preserved.

> The commit history should maintain every develop commit
This rules out the options **Squash merge** because it compresses all the commits merged
in from a feature branch into a single commit on the main branch.

> The commit history should not contain merge commits on the main branch
This rules out the option **Rebase with merge commit**, obviously.

---

### Correct Answer

Rebase and fast-forward

---

### Explanation

**Rebase and fast-forward** creates a linear history by replaying the source branch
commits to the target without a merge commit.

**Squash merge** creates a linear history but it lasio condenses the source branch 
commits into a single new cvommit on the target branch, therefore all teh commits 
on the development branch are lost.

**Rebase with merge commit** create a **semi-linear** history. It replays the commits
from the source branch onto the target branch but it also add a merge commit.

---

### Question 4

You need to give developrs access to code repositories.
Which authentication method should you implement?

- HTTPS credentials
- SSH keys
- GitHub OAuth tokens
- Azure Active Directory (Azure AD) credentials

---

#### Relevant Requirements:

3.  The developr's machine must access the code repository from command line tools
    without using passwords.

7.  The infrastucture analyst should be able to publish tags for commits in the 
    main branch using a command line script.

**Requirement 3** rules out all the options that are **passowrd based**.


---

### Correct Answer

SSH keys

---

### Explanation

You should use **SSH keys (Secure Shell Keys)** beacsue these do not require any passowrd and can be used by command line tools. 

A **SSH Public Key** can be associated with your Azure DevOps account and use a **Private SSH Cerificate** that generated this public key as the authentication method to connect to
git repositories. In other words the **Private SSH Cerificate** will be installed on the developer machine and will be used by the command line tools to authenticate to the 
Git Repo on Azure Repo. 

---

### References

[Authentication overview](https://learn.microsoft.com/en-us/azure/devops/repos/git/auth-overview?view=azure-devops)  

---