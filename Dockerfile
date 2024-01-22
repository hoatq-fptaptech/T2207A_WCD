FROM openjdk:17
COPY ./target/WCD-1.0-SNAPSHOT /tmp
WORKDIR /tmp
ENTRYPOINT ["java","index.jsp"]