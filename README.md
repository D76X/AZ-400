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

The following merges the FeatureA branch into the master branch

`git checkout main`
`git merge FeatureA`

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

#### Other useful Git Commands

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

---