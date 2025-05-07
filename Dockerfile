FROM maven:sapmachine
WORKDIR /src
COPY . /src
RUN apt update 
    \ mvn clean install
CMD ['java' '-jar' 'target/*.jar']
