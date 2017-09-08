FROM java:8 

# Downloads the latest spark version for docker Hub
FROM p7hb/docker-spark

# NOTE : To get the specific version of spark use p7hb/p7hb-docker-spark:<<spark-version>>
# Example : FROM p7hb/p7hb-docker-spark:1.6.2

# Creating Directory in Container to place the application jars
RUN mkdir -p /home/spark-apps

# Specify the local workspace directory path 
WORKDIR /home/workspace/HelloWorld/

#Build the spark application and copy the jar from local path to container
ADD target/HelloWorld-0.0.1-SNAPSHOT.jar /home/spark-apps
