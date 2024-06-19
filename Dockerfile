FROM anapsix/alpine-java
WORKDIR /
COPY /target/NumberGenerator-1.0-SNAPSHOT.jar .
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
CMD java - jar NumberGenerator-1.0-SNAPSHOT.jar
