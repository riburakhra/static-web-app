# Base Image (OS)

FROM eclipse-temurin:21

# Working Directory for the app

WORKDIR /app


# copy the code from host to container working directory

COPY src/Main.java /app/Main.java
COPY quotes.txt /app/quotes.txt

#run the command to install the libs or to compile the code

RUN javac Main.java

# Expose the port, on which port it should be running

EXPOSE 8000

# command to serve the application and keep it running with the help of CMD command

CMD ["java","Main"] 
