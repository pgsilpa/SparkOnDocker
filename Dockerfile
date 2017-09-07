FROM java:8 
FROM p7hb/docker-spark

# Adding source, compile and package into a fat jar

# Creating Directory in Container to place the application jars
RUN mkdir -p /home/spark-apps

# Specify the local workspace directory path 
WORKDIR /home/workspace/HelloWorld/

#Build the spark application and copy the jar from local path to container
ADD target/HelloWorld-0.0.1-SNAPSHOT.jar /home/spark-apps
