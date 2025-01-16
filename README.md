# Keycloak Auth Provider for Spring Security Using Docker 

This project is a simple example of how to use Keycloak as an authentication provider for a Spring Boot application.

## Getting Started

### Reference Documentation

For further reference, please consider the following sections:

* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/3.4.1/maven-plugin)
* [Create an OCI image](https://docs.spring.io/spring-boot/3.4.1/maven-plugin/build-image.html)
* [Spring Data JPA](https://docs.spring.io/spring-boot/3.4.1/reference/data/sql.html#data.sql.jpa-and-spring-data)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/3.4.1/reference/using/devtools.html)
* [Spring Web](https://docs.spring.io/spring-boot/3.4.1/reference/web/servlet.html)
* [Spring Security](https://docs.spring.io/spring-boot/3.4.1/reference/security.html)
* [Keycloak](https://www.keycloak.org/)

### Guides

The following guides illustrate how to use some features concretely:

* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Accessing data with MySQL](https://spring.io/guides/gs/accessing-data-mysql/)
* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/rest/)
* [Spring Security](https://spring.io/guides/gs/securing-web/)
* [Spring Boot and OAuth2](https://spring.io/guides/tutorials/spring-boot-oauth2/)
* [Spring Boot and OAuth2 with Keycloak](https://www.baeldung.com/spring-boot-keycloak)
* [Spring Boot and Keycloak](https://www.baeldung.com/spring-boot-keycloak)
* [Spring Boot and Keycloak Integration](https://www.baeldung.com/spring-boot-keycloak)
* [Spring Boot and Keycloak Integration with Spring Security](https://www.baeldung.com/spring-boot-keycloak)

### Maven Parent overrides

Due to Maven's design, elements are inherited from the parent POM to the project POM.

While most of the inheritance is fine, it also inherits unwanted elements like `<license>` and `<developers>` from the parent.

To prevent this, the project POM contains empty overrides for these elements.

If you manually switch to a different parent and actually want the inheritance, you need to remove those overrides.

### Docker

To build the Docker image, run the following command:

```shell
mvn spring-boot:build-image
```

To run the Docker container, run the following command:

```shell
docker run -p 8080:8080 -t spring-security-keycloak
```

### Keycloak

To start Keycloak, run the following command:

```shell
docker run -p 8081:8080 -e KEYCLOAK
```

To access the Keycloak admin console, navigate to `http://localhost:8081/auth/admin`.

To access the Keycloak user console, navigate to `http://localhost:8081/auth`.

To create a new realm, click on the `Add realm` button and enter the realm name.

To create a new client, click on the `Clients` tab and then click on the `Create` button.

To create a new user, click on the `Users` tab and then click on the `Add user` button.

To assign the user to the client, click on the `Clients` tab and then click on the `Roles` tab.

