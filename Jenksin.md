
[Getting Started with Jenkins](https://app.pluralsight.com/library/courses/getting-started-jenkins/table-of-contents)  
[Running Jenkins in Docker](https://app.pluralsight.com/library/courses/running-jenkins-docker/table-of-contents)  
[Automating Jenkins with Groovy](https://app.pluralsight.com/library/courses/automating-jenkins-groovy/table-of-contents)  

[Jenkins + docker-compose Makes It Incredibly Easy to Run Instances Side by Side on the Same Host](https://app.pluralsight.com/course-player?clipId=8d1e075c-a831-4e54-9d98-6594e8a4ddbc)

```
docker-compose up
```

[Intro to Docker - A Tool Every Developer Should Know](https://www.youtube.com/watch?v=WcQ3-M4-jik&t=2329s)  
[The Best Way To Use Docker For Integration Testing In .NET](https://www.youtube.com/watch?v=tj5ZCtvgXKY)  

[Unit Testing T-SQL Code with tSQLt](https://app.pluralsight.com/library/courses/unit-testing-t-sql-tsqlt/table-of-contents)    

--- 

[DockerHub-Jenkins Continuous Integration and Delivery server.](https://hub.docker.com/r/jenkins/jenkins)  
[Official Jenkins Docker image-GitHub](https://github.com/jenkinsci/docker/blob/master/README.md)  


--- 

[Jenkins](https://www.jenkins.io/)     
[Using Jenkins agents](https://www.jenkins.io/doc/book/using/using-agents/)  
[CloudBeesTV](https://www.youtube.com/@CloudBeesTV/playlists)  
[Jenkins+Docker by CloudBees](https://www.youtube.com/watch?v=BexOKevEVa0&list=PLvBBnHmZuNQLcH9pn-fmpKBoX_L0kvNAx)   

---

## Why would one want to use Docker with Jenkins?

### 1. The Developer Perspective

[Docker Rocks for Learning Jenkins Thanks to the Official jenkins/jenkins Images - Setup is Effortless](https://app.pluralsight.com/course-player?clipId=68ef696f-a498-49dd-b951-4b116e744f25))
[Using docker-compose up to Spin up Jenkins and a MailHog Test Email Server!](https://app.pluralsight.com/course-player?clipId=716dc35e-1797-4bb9-b160-1812b2bf878f)   
[Clean up and Recreation Is a Breeze with docker-compose](https://app.pluralsight.com/course-player?clipId=2d290806-ad22-43d8-b21a-7ca42da2d02c)  

### 2. The DevOps Perspective

[The Vision and the Why: Jenkins on Docker](https://app.pluralsight.com/course-player?clipId=ba6e5004-8ca3-4ea6-a6e7-5f05477018b0)   

In the classic **Main Controller Configuraion** of Jenkins you have a **Jenkins Controller** and at least one **Agent (aka) Node**.
However, normally in a real contests it is desireble to set up Jenkins so that there is a **Jenkins Controller** and as many Agents
as possible to make aptimal use of the available underlying resources and to minimize the DevOps cycle. 
In summary therefore there si a tewofold goal.

1. make aptimal use of the available underlying resources
2. minimize the DevOps cycle. 

In a traditional contest one would operate a build pipeline on **Virtual Machines**. 
In the simplest of cases you may have a single VM where you install the **Jenkins Controller** and then one or more **Jenkins Agents**.
In more sofisticated scenario the **Jenkins Agents** would spill over additional VMs as the demand of the pipeline grows over time. 

#### The Traditional Jenkins setup  

With this model there are two competing effects at play. 

 1. In order to achieve reasonable performance, one would have a dedicated VM for each installed **Jenkins Agents**
 2. it is possible to install multiples **Jenkins Agents** on the same VM which increases parallelization over a set of constraint resources.

#### The Jenkins setup with Containers 

This model is intrinsicly far more inefficient than running **Jenkins Agents** as containers on an equal set of VMs.

However, each VM has its own Kernel therefore once it is up and running it keeps running whether it is idle or not.
This is intrinsicly far more inefficient than running **Jenkins Agents** as containers on an equal set of VMs because with containers 
there is only one **shared Kernal** borrowed from the **Host OS** and no additionla resources are booked to the exclusive use of the
agent

---

[Demo: The Basics of Running Jenkins in a Container](https://app.pluralsight.com/course-player?clipId=238f1b69-fa8f-4cec-b22f-b36cdffeb3a5)   

```
docker image list
docker search jenkins
docker pull jenkins/jenkins:lts
docker run -p 8080:8080 jenkins/jenkins:lts
docker ps -a
```

Use the initial admin password taht the container prints out on the shell and use it @ localhost:8080 where the **Jenkins Startup Page** 
for this running container is located. Notice that there is no additional setup required i.e. no JAVA_HOME or JDK installed, it is all
packaged up into the Docker Container.

```
docker run -p 50000:8080 -name jenkins-master jenkins/jenkins:lts 
docker exec -it jenkins-master /bin/bash
cd var/jenkins_home
ls
cd jobs
cd ../secrets
cat initialAdminPassword
```
---

[Maintaining State Outside the Container](https://app.pluralsight.com/course-player?clipId=2c794ca0-31a0-486a-98a2-50d0631b74d0)  

We have two aspects to consider on this point.

1. The 

Jenkins offers two foundamental ways to manage the definition of builds and its setup.
By default Jenkins maintains state as a set of files **on disc** located in the folder that is set up as value of the 
path variable `JENKINS_HOME`, the default should be `user.home/.jenkins` and in this folder (directory) the file
`config.xml` is also located that contains the configuration for Jenkins together with either files that are used to 
maintain the definition of the builds.

In thismode of operation it is advisable to regularly **back up** the contents of the directory `JENKINS_HOME` in 
order to preserve the state of teh Jenkins setup together with the definition of teh builds.

More information is available at the link below.

[Spelunking JENKINS_HOME: How to Reset Your Jenkins Install and Back It Up](https://app.pluralsight.com/course-player?clipId=921b3f28-2314-4710-8127-272c70b5142e) 

---

#### Freestyle Projects (aka the Toilet Paper Form) vs. Pipeline Type Project (Scripted Pipeline Syntax)

[Reflecting on Freestyle Projects Aka the Toilet Paper Form](https://app.pluralsight.com/course-player?clipId=619bd731-9d4d-478e-9122-bf6756c046a6)  


---

### Jenkins Main Controller Configuration and Agent Nodes

[Adding a Jenkins Agent Node](https://www.pluralsight.com/resources/blog/cloud/adding-a-jenkins-agent-node)

Any type of machine that can run Java can be an **Agent** for a **Jenkins Controller**.

#### Q-1

Why do I need an **Agent** ? 
Can't I simply run Jenkins directly on the **Jenkins Controller**?

#### A-1

The answer is yes you can but you should not!
Use the **Main Controller Configuraion** instead.

--- 