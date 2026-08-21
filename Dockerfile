# pull a base image which gives all required tools and libraries
FROM eclipse-temurin:17-jdk-alpine

#create a folder where the app code will be stored
WORKDIR /app

#copy the source code from your host machine to your container
COPY src/Main.java /app/Main.java

#compile the application code
RUN javac Main.java

#run the application
CMD ["java", "Main"]
