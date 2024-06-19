FROM anapsix/alpine-java
WORKDIR /
COPY /target/NumberGenerator-1.0-SNAPSHOT.jar .
CMD java - jar NumberGenerator-1.0-SNAPSHOT.jar
