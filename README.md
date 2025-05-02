# CSUFConnect Backend

This is the backend server for **CSUFConnect**, a platform built with **Spring Boot 3**, **Java 17**, and **PostgreSQL**, designed to help California State University, Fullerton students connect and collaborate. It also integrates **Firebase Admin SDK** for authentication and **Lombok** for cleaner code.

---

## Features

- Java 17 + Spring Boot 3.2.5
- PostgreSQL via Docker
- Firebase Admin SDK integration
- JPA/Hibernate for data persistence
- CORS setup for frontend communication
- File upload support

---

## Prerequisites

Ensure the following are installed:

- [Java 17+](https://adoptium.net/en-GB/)
- PostgreSQL
- Git (to clone the project)
- Internet (to download dependencies)

---

## 1. Clone the Repository

```bash
git clone https://github.com/justincyk/CSUFConnect-backend-api.git
cd CSUFConnect-backend-api
```

## 2. PostgreSQL database with csufconnect.sql file
   1. Ensure PostgreSQL is running and listening on port 5433 (or update the port in application.properties if using a different one).
   2. Use the csufconnect.sql file to create and populate the csufconnect database. You can execute it using the psql command-line tool:
   ```bash
    psql -h localhost -p 5433 yourusename -d csufconnect -f /full/path/to/csufconnect.sql
   ```

## 3. Add Firebase Admin SDK
   1. Download your Firebase Admin SDK JSON file from Firebase
   2. Save it as: ```src/main/resources/csuf-connect-firebase-adminsdk.json```

## 4. Configure Application Properties
   1. Check and update ```src/main/resources/application.properties``` accordingly
      1. Update username to reflect PostgreSQL username
      2. Update password to reflect PostgreSQL password

## 5. Run the Application
```bash
./mvnw spring-boot:run
```

## 6. Frontend Integration
   1. Make sure the frontend (CSUFConnect-app) is running on port 5173, or update the spring.mvc.allowed-origins in the backend config.
   2. Frontend repo: [CSUFConnect-app](https://github.com/justincyk/CSUFConnect-app)

## Troubleshooting
   - **Database connection errors**: Ensure PostgreSQL is running and mapped to port ```5433```
   - **Firebase initialization errors**: Check that csuf-connect-firebase-adminsdk.json exists in the resources directory.
   - **CORS errors**: Make sure frontend and backend ports match CORS config.