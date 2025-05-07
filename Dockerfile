FROM openjdk:1.21
RUN apt update
WORKDIR /src
COPY . /src
RUN mvn clean install
CMD ['java' '-jar' '*.jar'] 
