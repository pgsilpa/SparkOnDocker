
### Contains the steps to run the Spark application on Docker Container

Pre-requisites:

* Copy the Docker file to the project directory

### Steps to Build and Run

Go to the directory where the Docker file is present in the Command Line.
```sh
$ cd /home/workspace/HelloWorld
```
Create the Docker Image for spark application as below
Command : docker build -t <image-name> .
Note: Docker image name sholud be small case
```sh
$ docker build -t helloworld .
```

List down the images created

```sh
$ docker images
```

Run the Docker image 
(when we run the Docker image container instance will be created and started)
```sh
$ docker run -it -d --name=helloworld -p 4040:4040 helloworld
```
Note: 
1. By default spark will be started on port 4040, while starting the container we are doing port forwarding to see the spark UI of Container in host machine
2. --name option is to specify the valid name for the container, it's not mandatory option

List the running containers
```sh
$ docker ps
```

Login in to container as below to run the spark applications
```sh
$ docker exec -ti <<ContainerId>> bash
```
Note : ContainerId is the one got from $ docker ps command  

After logging into container go to the path where spark application jar is copied 
```sh
$ cd /home/spark-apps/
```
Note : application path is specified in the Docker file

Run the spark appliction using spark-submit
```sh
$ spark-submit --class com.test.HelloWorld.App  HelloWorld-0.0.1-SNAPSHOT.jar
```
Note : This is the basic Hello world application 

