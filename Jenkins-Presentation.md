
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

## TOPIC #2: Why Jenkins in Docker?

[Using Docker with Pipeline ](https://www.jenkins.io/doc/book/pipeline/docker/)  

  1. to unify their build and test environments across machines.
 
  2. a user can define the tools required for their Pipeline, without having to manually configure agents.
    Any tool that can be packaged in a Docker container can be used with ease, by making only minor edits 
    to a Jenkinsfile.
    
  3. Using multiple containers thus multiple build toolsets
    For example, a repository might have both a Java-based back-end API implementation and a 
    JavaScript-based front-end implementation. Combining Docker and Pipeline allows a Jenkinsfile 
    to use multiple types of technologies, by combining the agent {} directive with different stages.

  It has become increasingly common for code bases to rely on multiple different technologies. 
 
  4. to provide an efficient mechanism for deploying applications.



  1. try to run containers side to side 
  2. You want ot test a new feature that has been recently release to Jenkins and you would like to do so on your current pipeline definition.
  3. With Docker you can spin up additional isolated environments on the same machine!
  4. Just define the two running containers on separate ports!

Getting Started with Jenkins
[Using docker-compose with Jenkins](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/b6f9cf19-86a1-4b55-96a4-edf86e33c912/716dc35e-1797-4bb9-b160-1812b2bf878f)
[Jenkins + docker-compose Makes It Incredibly Easy to Run Instances Side by Side on the Same Host](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/806d7c4c-b5e8-4076-9384-15b3842f3290/8d1e075c-a831-4e54-9d98-6594e8a4ddbc)   
[Enabling the Dark Theme](https://app.pluralsight.com/ilx/video-courses/48cf7494-f57b-4f79-90a3-fce0df92fa7a/806d7c4c-b5e8-4076-9384-15b3842f3290/4a510bf1-48a2-4b8b-b235-bec32e5e2592)   

### Commands
```
docker-compose up
docker-compose down
```

---

## TOPIC #1: How Jenkins in Docker?

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

### Install tools on a Docker Image.

## Install .Net SDK on a Linux Distribution Docker Image.

- [adding .net core to docker container with Jenkins](https://stackoverflow.com/questions/48104954/adding-net-core-to-docker-container-with-jenkins)  

In the following script we have replaced `dotnet-sdk-2.0.0` with `dotnet-sdk-6.0.0` in order to install
**.NET 6.0**. This can be updated to install any future version of .Net SDK.
The .Net installed on the **Jenkins Controller Node** as well as any **Agen Node** that may be used
to build **.Net** source code.

```
FROM jenkins/jenkins:lts
 # Switch to root to install .NET Core SDK
USER root

# Just for my sanity... Show me this distro information!
RUN uname -a && cat /etc/*release

# Based on instructiions at https://learn.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x
# Install depency for dotnet core 2.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl libunwind8 gettext apt-transport-https && \
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
    mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
    sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-debian-stretch-prod stretch main" > /etc/apt/sources.list.d/dotnetdev.list' && \
    apt-get update

# Install the .Net Core framework, set the path, and show the version of core installed.
RUN apt-get install -y dotnet-sdk-6.0.0 && \
    export PATH=$PATH:$HOME/dotnet && \
    dotnet --version

# Good idea to switch back to the jenkins user.
USER jenkins
```

The `uname -a && cat /etc/*release` which is embedded in this exerpt of Dockerfile can be used
in the **Exec** pane of **Docker Client** or terminal to verify the Linux Distribution the 
image is based on. 
The image used as **Jenkins Controller** is **jenkins/jenkins:lts** and the following is the 
 output the Developer machine. It is easy to see that it is a **Debian** distribution for **WSL2**.

```
Linux daf6fd2fe971 5.10.102.1-microsoft-standard-WSL2 #1 SMP Wed Mar 2 00:30:59 UTC 2022 x86_64 GNU/Linux
PRETTY_NAME="Debian GNU/Linux 12 (bookworm)"
NAME="Debian GNU/Linux"
VERSION_ID="12"
VERSION="12 (bookworm)"
VERSION_CODENAME=bookworm
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
$
```
---

### Jenkins Plugis that must be installed

[Dashboard > Manage Jenkins > Plugins](http://localhost:8081/manage/pluginManager/)  

On the **Jenkins Controller Node** or an **Jenkins Agent Node** the following **Jenkins Plugins**
mat need to be installed.

1. [.NET SDK Support](https://plugins.jenkins.io/dotnet-sdk/)

This is required to...


2. [Docker Pipeline](https://plugins.jenkins.io/docker-workflow/)

This is required to...

---

### Installing Docker on the machine of a Jenkins node

[Downloading and running Jenkins in Docker](https://www.jenkins.io/doc/book/installing/docker/#downloading-and-running-jenkins-in-docker)    

Use the recommended officialimage from the Docker Hub repository: 

- [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins) 
- [Official Jenkins Docker image - GitHub](https://github.com/jenkinsci/docker/blob/master/README.md)  

This image contains the current Long-Term Support (LTS) release of Jenkins, 
which is production-ready. However, this image **doesn’t contain Docker CLI**, 
and is not bundled with the frequently used Blue Ocean plugins and its features. 
To use the full power of Jenkins and Docker, you may want to go through the 
installation process described below.

[On macOS and Linux](https://www.jenkins.io/doc/book/installing/docker/#on-windows)  
...

[On Windows](https://www.jenkins.io/doc/book/installing/docker/#on-windows)  

The Jenkins project provides a Linux container image, not a Windows container image.
Be sure that your Docker for Windows installation is configured to run Linux Containers 
rather than Windows Containers. 

Refer to the Docker documentation for instructions to switch to Linux containers.
https://docs.docker.com/desktop/get-started/#switch-between-windows-and-linux-containers 

Once configured to run Linux Containers, the steps are:

1. Create a bridge network in Docker
In a terminal: `docker network create jenkins`

2. Run a docker:dind Docker image
In a Cmd Terminal (BASH):

```
docker run --name jenkins-docker --rm --detach ^
  --privileged --network jenkins --network-alias docker ^
  --env DOCKER_TLS_CERTDIR=/certs ^
  --volume jenkins-docker-certs:/certs/client ^
  --volume jenkins-data:/var/jenkins_home ^
  --publish 2376:2376 ^
  docker:dind
```

3. Build a new docker image from this Dockerfile and assign the image a meaningful name, e.g. "myjenkins-blueocean:2.426.1-1":
`docker build -t myjenkins-blueocean:2.426.1-1 .`

If you have not yet downloaded the official Jenkins Docker image, the above process automatically downloads it for you.

4. Run your own myjenkins-blueocean:2.426.1-1 image as a container in Docker using the following docker run command:

```
docker run --name jenkins-blueocean --restart=on-failure --detach ^
  --network jenkins --env DOCKER_HOST=tcp://docker:2376 ^
  --env DOCKER_CERT_PATH=/certs/client --env DOCKER_TLS_VERIFY=1 ^
  --volume jenkins-data:/var/jenkins_home ^
  --volume jenkins-docker-certs:/certs/client:ro ^
  --publish 8082:8080 --publish 50002:50000 myjenkins-blueocean:2.426.1-1
```

---

# Docker in Dockler

[Docker in Docker](https://hub.docker.com/_/docker)  
[~jpetazzo/Using Docker-in-Docker for your CI or testing environment? Think twice.](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)  
[docker run docker (redux)](https://asciinema.org/a/378669)  

---

## TOPIC #3: Some basics about Docker and Docker Containers


[Overview of the get started guide](https://docs.docker.com/get-started/)

Running Jenkins in Docker
[The Docker File System](https://app.pluralsight.com/ilx/video-courses/11cf4ce8-1747-4679-969e-83becb6fefd3/ff6d8c86-ed91-4258-b2a9-f90920a0db08/52145344-7e85-4f49-b3de-958a2c846252)    
[Understanding Copy on Write](https://app.pluralsight.com/ilx/video-courses/11cf4ce8-1747-4679-969e-83becb6fefd3/ff6d8c86-ed91-4258-b2a9-f90920a0db08/5c5fc4b4-f4ba-4514-959f-c1624839e414)  

- talk about the TWL: Top Writable Layer
  The TWL is in effect the state of a running container!
  This is what distiguishes from its image!
  Take care of your container files: back-up / mirror / RAID / use Docker volumes...


---



---