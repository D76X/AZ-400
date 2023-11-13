
https://github.com/g0t4/course-jenkins-getting-started 


--- 

## TOPIC #1: The Problem of the state

#### Getting Started with Jenkins

[Freestyle, Pipeline, Jenkinsfile](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/f6f67fca-ef22-4137-a82a-20ab45d9622c/3827ba49-d575-4ff9-b5a0-903e2afc6a87)   
[Develop Jenkins Pipelines in VSCode](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/f6f67fca-ef22-4137-a82a-20ab45d9622c/757a2b77-e337-4e7a-9288-cfff8a89970c)    

In this part you mentione that with Jenkins we have multiple ways to define a **Workflow**.

1. As a Freestyle Workflow
2. As a Pipeline Workflow with embedded Groovy Script
3. As a Pipeline Workflow with the Groovy Script saved on a Code Repository

Running Jenkins in Docker
[Maintainig State Outside the Container](https://app.pluralsight.com/ilx/video-courses/11cf4ce8-1747-4679-969e-83becb6fefd3/ff6d8c86-ed91-4258-b2a9-f90920a0db08/965c3e1f-0528-43dd-85b2-c336207788bb) 

Strive to keep state outside of the container:
1. Store the Build Definition in Version Control as Pipeline Scripts rather than with the Classic Pipeline Scripts as the latter is a XML file tied to the Filesystem.

---

---

## TOPIC #2: Why and How Jenkins in Docker?

## How to run Jenkins in a Docker Container on a development machine.

[Demo: The Basics of Running Jenkins in a Container](https://app.pluralsight.com/course-player?clipId=fab899b5-00c9-4814-b16f-5ca9b0ac6036) 

The image jenkins is a weekly release while the jenkins/jenkins:lts is the 4-months stable version.

```
docker image list
docker search jenkins 
docker pull jenkins/jenkins:lts
docker run -p 8081:8080 jenkins/jenkins:lts
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



---

## TOPIC #3:

Here we would like to 
- try to run containers side to side 
- ?

Getting Started with Jenkins
[Using docker-compose with Jenkins](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/b6f9cf19-86a1-4b55-96a4-edf86e33c912/716dc35e-1797-4bb9-b160-1812b2bf878f)



[Jenkins + docker-compose Makes It Incredibly Easy to Run Instances Side by Side on the Same Host](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/806d7c4c-b5e8-4076-9384-15b3842f3290/8d1e075c-a831-4e54-9d98-6594e8a4ddbc)   

- You want ot test a new feature that has been recently release to Jenkins and you would like to do so on your 
  current pipeline definition.
- With Docker you can spin up additional isolated environments on the same machine!
- Just define the two running containers on separate ports!

[Enabling the Dark Theme](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/806d7c4c-b5e8-4076-9384-15b3842f3290/4a510bf1-48a2-4b8b-b235-bec32e5e2592)   

### Commands
```
docker-compose up
docker-compose down
```

Running Jenkins in Docker
[The Docker File System](https://app.pluralsight.com/ilx/video-courses/11cf4ce8-1747-4679-969e-83becb6fefd3/ff6d8c86-ed91-4258-b2a9-f90920a0db08/52145344-7e85-4f49-b3de-958a2c846252)    
[Understanding Copy on Write](https://app.pluralsight.com/ilx/video-courses/11cf4ce8-1747-4679-969e-83becb6fefd3/ff6d8c86-ed91-4258-b2a9-f90920a0db08/5c5fc4b4-f4ba-4514-959f-c1624839e414)  

- talk about the TWL: Top Writable Layer
  The TWL is in effect the state of a running container!
  This is what distiguishes from its image!
  Take care of your container files: back-up / mirror / RAID / use Docker volumes...


---