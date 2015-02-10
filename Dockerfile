FROM   dockerfile/java:oracle-java8

# Install maven
RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

ADD pom.xml /src/


RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]


EXPOSE 4567
CMD ["java", "-jar", "target/reactingspark-jar-with-dependencies.jar"]
