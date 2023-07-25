# English Education

This is a Spring Web Application which supposed to help users to improve their English language skills. 

https://ryzhkov.website/

Registrate or use existing user:
Login		user@ukr.net
Password	user

## Table of Contents

- [Introduction](#introduction)
- [Technologies](#technologies)
- [Requirements](#requirements)
- [Installation](#installation)

## Introduction

The web application was developed as a learning project. The main goal of the project was the practice of Spring Framework. 
The application Identificate your English language level and provide wealth of content to increase that.


## Technologies

- Java
- Spring MVC
- Spring Security
- MySQL
- Hibernate
- Docker
- etc.

## Requirements

For building and running the application you need:

- [JDK 18](https://www.oracle.com/java/technologies/javase/jdk18-archive-downloads.html)
- [Maven 3](https://maven.apache.org)
- [MySQL 8.0.26](https://dev.mysql.com/downloads/mysql/)

or

- [Docker 20.10](https://docs.docker.com/engine/release-notes/20.10/)


## Installation

There are several ways to run the application

### Using docker:
1. Clone the repository
2. Excecute "docker-compose up" in directory with docker-compose.yml file.
3. Open http://localhost:2244/ in your browser

### Using maven:
1. Clone the repository
2. Launch database
3. Load dump file from /mysql-init/01-db-init.sql to database
4. Configure /english_education/src/main/resources/application.properties according to your database
5. Execute "mvn clean package" in /english_education/ directory
6. Execute "mvn org.codehaus.cargo:cargo-maven2-plugin:run" in /english_education/ directory
7. Open http://localhost:8080/ in your browser

### Using the installed application
1. Open https://ryzhkov.website/ in your browser
