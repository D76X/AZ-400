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