# Reacting Spark Framework
Simple example using React.js with Spark Framework (http://sparkjava.com/)

To get get started, run the following:
```console
$ docker build .
Sending build context to Docker daemon 3.188 MB
Sending build context to Docker daemon 
Step 0 : FROM dockerfile/java:oracle-java8
 ---> 7b0a8f5a9865
Step 1 : RUN apt-get update
 ---> Using cache
 ---> 5f1fe862ac67
...
...
...
Step 10 : CMD java -jar target/reactingspark-jar-with-dependencies.jar
 ---> Using cache
 ---> 7d4065f88794
Successfully built 7d4065f88794
```

Once that is completed, take the image id and run the following:
```console
$ docker run -p 4567:4567 b97d8765b66c
[Thread-0] INFO spark.webserver.SparkServer - == Spark has ignited ...
[Thread-0] INFO spark.webserver.SparkServer - >> Listening on 0.0.0.0:4567
[Thread-0] INFO org.eclipse.jetty.server.Server - jetty-9.0.z-SNAPSHOT
[Thread-0] INFO org.eclipse.jetty.server.ServerConnector - Started ServerConnector@39605de5{HTTP/1.1}{0.0.0.0:4567}
```

Now visit http://{docker_host_ip}:4567 to see the running spark application.
