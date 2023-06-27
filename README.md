# forum-mse-2023-back-end
 
 A Spring Boot Java application, using Java 17, Spring Boot JPA, Lombok with Maven. The application is about a simple forum implementation, where users create topics and writes replies on given topic. The application exercises an REST-ful JSON API. The application has a frontend simple React frontend implementation, which has a repository https://github.com/anniexp/mse-forum-frontend.
 
 The project's structure has several layers - Entity, DTO (Persistece), Repository, Servicea (Business) and Controller layers. The project uses Hibernate which automatically generates the tables, based on the Entities. PosgreSQL is used for the database. In the Entity layers we have the structure of each Entity(Table) - users, topics, replies. In the DTO layer we have objects, which we use in the requests to the server, instead of the table objects, capsulating them instead. The Dto objects are mapped to the Entity obejcts using Mapstruct. The mapping is configured in the class files in the /mappers directory. The controllers get Dto objects from the frontend, redirects them to the service layer, deals with the returned response and returns http response the with dto object body to the frontend.
 
The configurations of the connection to the db, the hibernate are in the application.property file.
All dependencies are made in the pom.xml file. Some of the dependencies - Spring boot, postgresql driver, Lombok to reduce boilerplade code, Actuator for monitoring and managing the Spring web application, spring-boot-starter-test and junit for basic unit tests, mapstruct for automatric mapping of the Entity objects to Dto objects and vice - versa.
 
The project has a Dockerfile which has instructions for creating a Docker Image of the app, which is later pushed remotely to [Dockerhub](https://hub.docker.com/)https://hub.docker.com/.

CRUD API endpoints :
 - http://localhost:8081/api/topics 
 - http://localhost:8081/api/topics/{topicId}
 - http://localhost:8081/api/topics/{topicId}/replies
 - http://localhost:8081/api/topics/{topicId}/replies/{replyId}
 - http://localhost:8081/api/users/register
