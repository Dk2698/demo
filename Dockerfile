FROM ubuntu
RUN apt-get update
CMD ["echo", "hello wolrd"]


FROM openjdk

WORKDIR /usr/src/myapp

COPY . /usr/src/myapp/

RUN javac Test.java 

CMD ["java", "Test"]


FROM python 

WORKDIR /usr/src/myapp 
COPY . /usr/src/myapp/
CMD ["python3","main.py"]


FROM openjdk 

WORKDIR /usr/src/myapp 
COPY . /usr/src/myapp/
CMD ["java","-jar","DOckerTest.jar"]
EXPOSE 9090

#  docker build -t bootimage .
# docker run --name projectName -it -p 9595:9090 -d bo0timage