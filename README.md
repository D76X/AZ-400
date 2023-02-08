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

Git supports two different types of tags, annotated and lightweight tags and these iffer in the amount of accompanying meta data they store. A best practice is to consider Annotated tags as public, and Lightweight tags as private. 

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

---