# Wiremock as WAR reproducer

This works until WireMock version `2.24.1`, after that it will break
with the following error for the registered servlets:

```
UT010009: Servlet wiremock-mock-service-handler-servlet of type class com.github.tomakehurst.wiremock.servlet.WireMockHandlerDispatchingServlet does not implement javax.servlet.Servlet"
```

## Run on Wildfly 24 via Docker

```shell
$ mvn clean package && docker-compose build && docker-compose up
```

On a working version you should be able to open http://localhost:8080/wiremock/hello and get a "Hello World!" response.
