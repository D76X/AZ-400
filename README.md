# AZ-400

This repo collates information that may be useful to prepare for the 

[Exam AZ-400: Designing and Implementing Microsoft DevOps Solutions](https://learn.microsoft.com/en-us/certifications/resources/study-guides/az-400#skills-measured-as-of-february-2-2023)  

---

### Configure processes and communications

---

### Design and Implement Source Control

[GIT-Go Back to previous commit](https://www.udemy.com/course/azure100/learn/lecture/33163052#overview)  

`git checkout [commit-hash]`

[Unstaging a file](https://www.udemy.com/course/azure100/learn/lecture/33163054#overview)  

`git rm --cached [file-name.ext]`

[Create and switch to a branch](https://www.udemy.com/course/azure100/learn/lecture/33163058#overview)  

`git checkout -b [branch-name]`

[Merging Branches](https://www.udemy.com/course/azure100/learn/lecture/33163062#overview)  

The following merges the FeatureA branch into the master/main branch.
Firstly, the branch must be switched to the branch into which you wish to merge another branch.
For example, if you wish to merge a feature branch into the master/main branch firtly switch
to the master/main branch then use the following commands to perform the merge.

`git checkout main`
`git merge FeatureA`

The previous command uses the default GIT merging strategy ORC-Startegy/Recursive startegy and *unless a fastforward merge is possible** it results in a merge with a merge commit as the HEAD of the branch and all the commits on the 
feature branch are included also in the master/main branch plus it adds a merge commits. The merge commits are the 
only commits that have TWO parent commits.

This merge strategy preserves all the commits on the feature branch onto the main branch and some teams might not 
like this and rather prefer to maintain a main branch with fewer commits. By using the --squash option ONLY ONE
commit is produced on the main branch when the feature branch is merged into it.

`git switch main`
`git merge --squash FeatureA`

[Publish a Repo to GitHub from git shell](https://www.udemy.com/course/azure100/learn/lecture/33163068#overview)  

#### Create a local repo and branch and push the code to GitHub on a new Repo

```
echo "# This is a new Repo!" >> README.md
git init
git add README.md
git commit -m "first commit add README.md"
git branch -M main
git remote add origin https://github.com/{ORGANIZATION}/{REPONAME}.git
git push -u origin main
```

This is also what GitHub shows when it provides instructions on how to create a repository from 
command line. 

The only unusual part may be the -M switch used in the [git branch -M ..] which simply means create a new branch from an old branch that is -M forces a rename of the branch.

The following instead pushes an existing local GIT repo to GitHub as a new remote repo.
Notice that the `git remote add` and the `git branch -M` instructions have been inverted with 
respect the previous example! 

#### Push the code of an existing local repo to GitHub on a new Repo

```
git remote add origin https://github.com/{ORGANIZATION}/{REPONAME}.git
git branch -M main
git push -u origin main
```
#### [Import code from another Repo](https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/importing-a-git-repository-using-the-command-line)  

```
$ git clone --bare https://external-host.com/EXTUSER/REPO.git
# Makes a bare clone of the external repository in a local directory

$ cd REPO.git
$ git push --mirror https://github.com/USER/REPO.git
# Pushes the mirror to the new repository on GitHub.com
# the "mirror" option, which ensures that all references, such as branches and tags, are copied to the imported repository.

$ cd ..
$ rm -rf REPO.git
# Remove the temporary local repository.
```

---

#### Atlassian Bitbucket Guidance on Merging and Branching

[Git Merge](https://www.atlassian.com/git/tutorials/using-branches/git-merge)  
[A different merge process](https://www.udemy.com/course/azure100/learn/lecture/33163106#overview)  
[Git Merge Strategy Options and Examples](https://www.atlassian.com/git/tutorials/using-branches/merge-strategy)  

[Git merge using ort strategy](https://medium.com/the-scale-factory/configure-git-to-merge-using-ort-92fc0d450169)  
[Git merge Recursive startegy](https://stackoverflow.com/questions/55998614/merge-made-by-recursive-strategy)  
[What exactly is a merge commit in git?](https://stackoverflow.com/questions/18584376/git-what-exactly-is-a-merge-commit-in-git)  

[Why is a 3-way merge advantageous over a 2-way merge?](https://stackoverflow.com/questions/4129049/why-is-a-3-way-merge-advantageous-over-a-2-way-merge#:~:text=A%20three%2Dway%20merge%20is,a%20change%20of%20one%20line.)  

---

#### Tagging a commit in git

[Tagging a commit in git](https://www.udemy.com/course/azure100/learn/lecture/33163144#overview)  

[Git tag -Atlassian](https://www.atlassian.com/git/tutorials/inspecting-a-repository/git-tag#:~:text=Tagging%20is%20generally%20used%20to,no%20further%20history%20of%20commits.)  

Tagging is generally used to capture a point in history that is used for a marked version release (i.e. v1.0.1). 
A tag is like a branch that doesn’t change. Unlike branches, tags, after being created, have no further history of commits.

Tagging is traditionally used to create semantic version number identifier tags that correspond to software release cycles. 

Git supports two different types of tags, annotated and lightweight tags and these differ in the amount of accompanying meta data they store. A best practice is to consider Annotated tags as public, and Lightweight tags as private. 

#### Annotated Tags

Annotated tags store extra meta data such as: the tagger name, email, and date, important data for a public release.
Annotated tags are stored as full objects in the Git database.
Additionally, for security, annotated tags can be signed and verified with GNU Privacy Guard (GPG). 

In all the following commands when a commit is not specified on creating a git tag then by default, 
git tag will create a tag on the commit that HEAD is referencing. Alternatively git tag can be passed as a ref to a specific commit.

`git tag -a v1.4 -m "my version 1.4"`
`git tag -a v1.4"`
`git tag -a v1.2 15027957951b64cf874c3557a0f3547bd83b3ff6 -m "myemailadd@Gmail.com YYYY-MM-DD comment.."`

The absense of the -m switch will cause a prompt to let the user input the metadata.

#### Lightweight Tags

Lightweight tags are essentially 'bookmarks' to a commit, they are just a name and a pointer to a commit, useful for creating quick links to relevant commits.

`git tag v1.4 -lw`

#### Listing Tags and applying filter expressions with -l option

`git tag`
`git tag -l *-rc`

#### ReTagging/Replacing Old Tags

If you try to create a tag with the same identifier as an existing tag or o tag an older commit with an existing tag identifier, Git will throw an error. The -f FORCE option must be used to update an existing tag.
The example below maps the 15027957951b64cf874c3557a0f3547bd83b3ff6 commit to the v1.4 tag identifier. 
It will override any existing content for the v1.4 tag.

`git tag -a -f v1.4 15027957951b64cf874c3557a0f3547bd83b3ff6`

#### Sharing: Pushing Tags to Remote

By default, git push will not push tags. Tags have to be explicitly passed to git push.
The --tags option causes all local tags to be pushed.

`git push origin v1.4`
`git push --tags`

It is now possible to use tags to checkout code.

`git checkout v1.4`

The following command outputs the details of the commit the tag is attached to.

`git show v1.4`

#### Detached HEAD

This puts the repo in a detached HEAD state.
This means any changes made will not update the tag. They will create a new detached commit. This new detached commit will not be part of any branch and will only be reachable directly by the commits SHA hash. 
Therefore it is a best practice to create a new branch anytime you're making changes in a detached HEAD state.

#### Deleting Tags

`git tag -d v1`

``
---

#### Cherrypicking commits with git

The following example illustrates how to cheyypick a commit by its ID
from one brach to another. In the example the source branch is FeatureA
and the target branch is main. However, the same applies to any choice 
of source and target branch. 

```
git switch FeatureA
git log
git switch main
git cherry-pick [commitId-from-Feature-branch] 
git log
```

---

### Other useful Git Commands

#### Log Graph

`git log --graph`

[Pretty Git branch graphs](https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)  
`git log --all --decorate --oneline --graph`

and If you enter the following at the command prompt once, you can use the single command
`git adog`

Summary of what the different options are for: 

--all = Pretend as if all the refs in refs/ are listed on the command line as commit>. 
--oneline = This is a shorthand for "--pretty=oneline --abbrev-commit" used together. 
--graph= Draw a text-based graphical representation of the commit history
--no-decorate, --decorate[=short|full|no] = 
Print out the ref names of any commits that are shown. 
If short is specified, the ref name prefixes refs/heads/, refs/tags/ and refs/remotes/ will not be printed. 
If full is specified, the full ref name (including prefix) will be printed. 

#### [Create a local feature branch and push it to the origin Repo](https://www.udemy.com/course/azure100/learn/lecture/33163162#overview)  

```
git checkout -b FeatureA
git add FileB.txt
git add FileB.txt
git commit -m "added file FileB.txt"
git checkout main
git push -u origin --all
```

#### Create a Release or Release Candidate branch with a tag

The following approach is applicable to the **GtiFlow Workflow Development Mangement**
as explain in the following reference article.

[Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20Workflow%20is%20a%20Git,designed%20around%20the%20project%20release.)  

1. Once develop has acquired enough features for a release or a redetermined release date is approaching, you fork a release branch off of develop.
2. Creating this branch starts the next release cycle, so no new features can be added after this point
3. Only bug fixes, documentation generation, and other release-oriented tasks should go in this branch.
4. Once it's ready to ship, the release branch gets merged into main and tagged with a version number. 
5. In addition, it should be merged back into develop, which may have progressed since the release was initiated.

Using a dedicated branch to prepare releases makes it possible for one team to polish the current release while another team continues working on features for the next release. 

6. Once the release is ready to ship, it will get merged it into main and develop.

It’s important to merge back into develop because critical updates may have been added to the release branch and they need to be accessible to new features. 

7. The release branch will be deleted

The fact that the release branch is deleted is why often a tag is created on the main branch
after the release branch is merged back into the main branch.

The following illustrates the whole process step by step.

```
git checkout development
git checkout -b release/rcv010000
git push -u origin --all

# here the team or part of it can harden the release branch..
# here the team or part of it can continue to work on feature for the development branch

# when QA says that the release branch is god to be shipped
# merge the release branch back into develop
git switch development
git merge release/rcv010000

# merge the release branch back into main
git switch main
git merge release/rcv010000
# tag the main branch at the merge commit of the release branch into teh main branch
git tag rcv010000 -lw

# show the tags on the main branch
git tag -l *rc*

# the release branch can now be deleted
git branch --delete release/rcv010000
git push origin --delete release/rcv010000

# if and wehn required by means of the tag it is possible to move the head
# of main back to the merge commit of the correspondig release
git switch main
git checkout rcv010000

# if a bug must be fixed on the release then a branch from the main@rc-v1.0.0
# can be taken as a short-lived bug-fix branch
git checkout -b bug-dev-1234

# here the team or part of it can fix the bug..
# once the bug is fixed the bug-fix branch must be merged back into main and develop
# the bug fix may be delivered to the user of the active release before the next major release
m that is before the next merge of develop branch into main branch

git switch main
git merge bug-dev-1234
git tag rcv010001 -lw

# now you can give this to QA and then if they say the bug is fixed and it is OK 
# this can be pushed to production

# merged the bug fix back into develop 
git switch development
git merge bug-dev-1234

```

---

### DevOps Branching and Releasing - Version control management practice 

Most teams leverage one of two development models to deliver quality software Gitflow and trunk-based development. 

#### Git Flows

[Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20Workflow%20is%20a%20Git,designed%20around%20the%20project%20release.)  
[Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)  
[Git Forking Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/forking-workflow)  

#### Trunk Based Development & Feature Flags

[Trunk Based Development-Introduction](https://trunkbaseddevelopment.com/)  
[Trunk Based Development: Branch by Abstraction](https://trunkbaseddevelopment.com/branch-by-abstraction/)  
[Trunk-based development - Atlassian](https://www.atlassian.com/continuous-delivery/continuous-integration/trunk-based-development)  

A source-control branching model, where developers collaborate on code in a single branch called ‘trunk’ *, resist any pressure to create other long-lived development branches by employing documented techniques. They therefore avoid merge hell, do not break the build, and live happily ever after.

Trunk-based development is a version control management practice where developers merge small, frequent updates to a core “trunk” or main branch. Since it streamlines merging and integration phases, it helps achieve CI/CD and increases software delivery and organizational performance.

The main purpose of any Trunk based flow is **to iterate quickly and implement CI/CD**.

#### Specific Implementation of Trunk Based Development

In all practical cases one common element of all Trunk Based control management strategies is their 
relianceof the concept of **Pull Request** to drive **Collaboration** and **Integration**.
Another point is that in all trunk based development the **short-lived branches are always deleted**
and all the changes are flown into the **only long-lived* branch** that matters that is **the trunk**.

**Releases** may be branched off from the main trunk and deployed as such but then they are deleted
and any **bug fix** is performed on a **short lived bug-fix branch** that is shortly converged to 
the trunk.

[GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)    

#### Git Flows vs Trunk based flows

[Git Flow VS GitHub Flow](https://www.youtube.com/watch?v=gW6dFpTMk8s)  

---

### How to investigate the folder structure on an Azure DevOps Pipeline Agent


# https://stackoverflow.com/questions/71728509/azure-devops-powershell-not-showing-file-names-for-get-childitem
# https://cosmin-vladutu.medium.com/azuredevops-list-files-and-folders-676386d8a2bd 
# https://stackoverflow.com/questions/71728509/azure-devops-powershell-not-showing-file-names-for-get-childitem
# https://cosmin-vladutu.medium.com/azuredevops-list-files-and-folders-676386d8a2bd 
# $(Agent.BuildDirectory) = /home/vsts/work/1
        

Folder Structure

[Classic release and artifacts variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/release/variables?view=azure-devops&tabs=batch)  
[Runtime parameters](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/runtime-parameters?view=azure-devops&tabs=script)  
[Azure DevOps Pipelines - Use predefined variables](https://learn.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml)  
[Azure Pipelines - Is there a way to view the folder structure?](https://stackoverflow.com/questions/63117797/azure-pipelines-is-there-a-way-to-view-the-folder-structure)  


[Azure Devops Powershell not showing file names for Get-ChildItem](https://stackoverflow.com/questions/71728509/azure-devops-powershell-not-showing-file-names-for-get-childitem)  



Build.ArtifactStagingDirectory = c:\agent_work\1\a
Directory: /home/vsts/work/1/a/WebApp1

```

UnixMode   User             Group                 LastWriteTime           Size Name
--------   ----             -----                 -------------           ---- ----
-rw-r--r-- vsts             docker             04/15/2023 10:16            119 appsettings.Development.json
-rw-r--r-- vsts             docker             04/15/2023 10:16            142 appsettings.json
-rwxr--r-- vsts             docker             08/29/2020 20:14         173960 Microsoft.OpenApi.dll
-rwxr--r-- vsts             docker             10/16/2021 12:54          14848 Swashbuckle.AspNetCore.Swagger.dll
-rwxr--r-- vsts             docker             10/16/2021 12:54          86016 Swashbuckle.AspNetCore.SwaggerGen.dll
-rwxr--r-- vsts             docker             10/16/2021 12:54        3724800 Swashbuckle.AspNetCore.SwaggerUI.dll
-rw-r--r-- vsts             docker             04/15/2023 10:16            483 web.config
-rw-r--r-- vsts             docker             04/15/2023 10:16           4583 WebApp1.deps.json
-rw-r--r-- vsts             docker             04/15/2023 10:16           9216 WebApp1.dll
-rw-r--r-- vsts             docker             04/15/2023 10:16          20468 WebApp1.pdb
-rw-r--r-- vsts             docker             04/15/2023 10:16            469 WebApp1.runtimeconfig.json

```
---

```
 # -------------------------------------------------------
        # VERY USEFUL
        # notice that \*.* is replaced by \* because the Dockerfile does not have 
        # extension and does not show up with the former wildcard

        # /home/vsts/work/1/s
        - powershell: |
           Write-Host "Content of Build.Repository.LocalPath = $(Build.Repository.LocalPath)"
           Get-ChildItem -Path $(Build.Repository.LocalPath)\* -Recurse -Force | Out-String -Width 160
          errorActionPreference: continue
          displayName: 'pwsh Get-ChildItem of Build.Repository.LocalPath = $(Build.Repository.LocalPath)'
          continueOnError: true

        - powershell: |
           Write-Host "Content of Build.Repository.LocalPath/WebApp1 = $(Build.Repository.LocalPath)/WebApp1"
           Get-ChildItem -Path $(Build.Repository.LocalPath)/WebApp1\* -Recurse -Force | Out-String -Width 160
          errorActionPreference: continue
          displayName: 'pwsh Get-ChildItem of Build.Repository.LocalPath/WebApp1 = $(Build.Repository.LocalPath)/WebApp1'
          continueOnError: true

        - powershell: |
           Write-Host "Content of Build.ArtifactStagingDirectory = $(Build.ArtifactStagingDirectory)"
           Get-ChildItem -Path $(Build.ArtifactStagingDirectory)\* -Recurse -Force | Out-String -Width 160
          errorActionPreference: continue
          displayName: 'pwsh Get-ChildItem of Build.ArtifactStagingDirectory = $(Build.ArtifactStagingDirectory)'
          continueOnError: true

        # -------------------------------------------------------
```

```

# -------------------------------------------------------
        # USEFUL

        #- powershell: |
        #   Write-Host "Content of Build.Repository.LocalPath = $(Build.Repository.LocalPath)"
        #   Get-ChildItem -Path $(Build.Repository.LocalPath)\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Build.Repository.LocalPath = $(Build.Repository.LocalPath)'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Agent.WorkFolder = $(Agent.WorkFolder)"
        #   Get-ChildItem -Path $(Agent.WorkFolder)\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Agent.WorkFolder = $(Agent.WorkFolder)'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Agent.BuildDirectory/s/WebApp1 = $(Agent.BuildDirectory)/s/WebApp1"
        #   Get-ChildItem -Path $(Agent.BuildDirectory)/s/WebApp1\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Agent.BuildDirectory/s/WebApp1 = $(Agent.BuildDirectory)/s/WebApp1'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Agent.BuildDirectory/s/WebApp1 = $(Agent.BuildDirectory)/s/WebApp1"
        #   Get-ChildItem -Path $(Agent.BuildDirectory)/s/WebApp1\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Agent.BuildDirectory/s/WebApp1 = $(Agent.BuildDirectory)/s/WebApp1'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Agent.BuildDirectory = $(Agent.BuildDirectory)"
        #   Get-ChildItem -Path $(Agent.BuildDirectory)\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Agent.BuildDirectory = $(Agent.BuildDirectory)'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Build.SourcesDirectory = $(Build.SourcesDirectory)"
        #   Get-ChildItem -Path $(Build.SourcesDirectory)\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Build.SourcesDirectory = $(Build.SourcesDirectory)'
        #  continueOnError: true

        #- powershell: |
        #   Write-Host "Content of Build.SourcesDirectory = $(Build.ArtifactStagingDirectory)"
        #   Get-ChildItem -Path $(Build.ArtifactStagingDirectory)\*.* -Recurse -Force | Out-String -Width 160
        #  errorActionPreference: continue
        #  displayName: 'pwsh Get-ChildItem of Build.SourcesDirectory = $(Build.ArtifactStagingDirectory)'
        #  continueOnError: true

        # ------------------------------------------------------- 
        ## https://cosmin-vladutu.medium.com/azuredevops-list-files-and-folders-676386d8a2bd 
        #- powershell: |
        #   Write-Host "Show all folder content ArtifactStagingDirectory"
        #   Get-ChildItem -Path $(Build.ArtifactStagingDirectory)\*.* -Recurse -Force
        #  errorActionPreference: continue
        #  displayName: 'PowerShell Script List folder structure $(Build.ArtifactStagingDirectory)'
        #  continueOnError: true

        ## https://praveenkumarsreeram.com/2022/10/24/azure-devops-tips-and-tricks-15-working-with-the-magic-folders-a-b-and-s-in-the-azure-devops-agents/ 
        #- task: PowerShell@2
        #  displayName: List all Folders in $(System.DefaultWorkingDirectory)
        #  inputs:
        #    targetType: 'inline'
        #    pwsh: true
        #    script: |
        #      Get-ChildItem -path $(System.DefaultWorkingDirectory) -recurse

        ## https://techcommunity.microsoft.com/t5/azure-devops/azure-devops-how-to-monitor-the-files-amp-folders-placed-into/m-p/2481508
        #- powershell: |
        #   Write-Host "Show all folder content"
        #   Get-ChildItem -Path $(Agent.WorkFolder)\*.* -Recurse -Force
        #  errorActionPreference: continue
        #  displayName: 'PowerShell Script List folder structure $(Agent.WorkFolder)'
        #  continueOnError: true

        ## https://stackoverflow.com/questions/63117797/azure-pipelines-is-there-a-way-to-view-the-folder-structure
        ## https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/cmd-line-v2?view=azure-pipelines&tabs=yaml&viewFallbackFrom=azure-devops  
        #- task: CmdLine@2
        #  displayName: show folder structure on agent
        #  inputs:
        #    script: echo "Structure of work folder of this pipeline:"
        #      tree $(Agent.WorkFolder)\1 /f
        #      echo "Build.ArtifactStagingDirectory:" 
        #      echo "$(Build.ArtifactStagingDirectory)"
        #      echo "Build.BinariesDirectory:" 
        #      echo "$(Build.BinariesDirectory)"
        #      echo "Build.SourcesDirectory:"
        #      echo "$(Build.SourcesDirectory)"

        # Docker@2 task from the pipeline editor
        #- task: Docker@2
        #  inputs:            
        #    repository: 'webapps'
            #command: 'buildAndPush'
            #buildContext: '$(Build.ArtifactStagingDirectory)/WebApp1' #Default value: ** > Pass ** to indicate the directory that contains the Docker file.
            #string. Required when command = build || command = buildAndPush. Default value: **/Dockerfile.
            #Dockerfile: 'WebApp1/Dockerfile'
            #Dockerfile: '**/WebApp1/Dockerfile'
            #Dockerfile: '$(Build.Repository.LocalPath)/WebApp1/Dockerfile'
            #Dockerfile: '$(Build.Repository.LocalPath)/WebApp1/Dockerfile'
            #Dockerfile: '$(Build.SourcesDirectory)/WebApp1/Dockerfile'
            #Dockerfile: '$(Build.ArtifactStagingDirectory)/WebApp1/Dockerfile'
            #containerRegistry: 'containerRegistryServiceConnection'
            #Dockerfile: '**/Dockerfile'  
            #sourceFolder: '$(Build.Repository.LocalPath)/ArmTemplates/bin/Release/'

        # https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/docker-v2?view=azure-pipelines&tabs=yaml
        #- task: Docker@2
        #  displayName: Login to ACR
        #  inputs:
        #    command: login
        #    containerRegistry: dockerRegistryServiceConnection1
        #- task: Docker@2
        #  displayName: Login to Docker Hub
        #  inputs:
        #    command: login
        #    containerRegistry: dockerRegistryServiceConnection2
        #- task: Docker@2
        #  displayName: Build and Push
        #  inputs:
        #    command: buildAndPush
        #    repository: contosoRepository # username/contosoRepository for DockerHub
        #    tags: |
        #      tag1
        #      tag2  
        # ----------------------------------------------------------------------------        
        #- task: Docker@2
        #  displayName: Build and Push an image to Azure Container Registry
        #  inputs:
        #    command: buildAndPush
        #    repository: $(imageRepository)
        #    dockerFile: $(dockerfilePath)            
        #    #containerRegistry: $(containerRegistry)
        #    containerRegistry: $(containerRegistryServiceConnection)
        #    tags: |
        #      $(tag)
        # ----------------------------------------------------------------------------
```

---