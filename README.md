# Java Spring Boot CRUD MVC Practice

[![Java Version](https://img.shields.io/badge/Java-25-orange?style=flat-square&logo=openjdk)](https://openjdk.org/)
[![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.5.6-brightgreen?style=flat-square&logo=springboot)](https://spring.io/projects/spring-boot)
[![Architecture](https://img.shields.io/badge/Architecture-MVC-blue?style=flat-square)]()

A hands-on practice repository demonstrating full **CRUD (Create, Read, Update, Delete)** operations using the **Spring MVC** architecture pattern.

This project focuses on mastering the **Request Lifecycle**, **Dependency Injection (DI)**, Controller routing, and integrating different View Engines in Spring Boot — all backed by in-memory data before connecting to a real database.

---

## 📂 Repository Structure

This repository is organized as two independent sub-projects, each corresponding to a popular View Engine:

```text
java-spring-crud-mvc-practice/
├── spring-mvc-jsp/               # CRUD with JSP (JavaServer Pages)
│   ├── src/main/webapp/          # Contains WEB-INF/view/ structure
│   └── pom.xml
│
└── spring-mvc-thymeleaf/         # CRUD with Thymeleaf Template Engine
    ├── src/main/resources/       # Contains templates/ and static/ folders
    └── pom.xml
```

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Java 25 |
| Framework | Spring Boot 3.5.6 (Spring MVC, SpEL) |
| Build Tool | Maven |
| View Engine (JSP) | Embedded Tomcat Jasper, Jakarta Servlet JSTL API |
| View Engine (Thymeleaf) | Spring Boot Starter Thymeleaf |
| Data Layer | In-Memory Mock Data via Java Stream API |

---

## 🎯 Features

Full CRUD simulation for a basic **User Management** application:

- [x] **Read** — List all members via the `Controller → Service` flow.
- [x] **Create** — Add new members using `@ModelAttribute` for safe data binding.
- [x] **Update** — Filter and update member information by `@PathVariable (id)`.
- [x] **Delete** — Remove members from the in-memory list via `POST`/`DELETE`.

---

## 🚀 Getting Started

### Prerequisites

- JDK 25
- Maven
- Recommended IDE: IntelliJ IDEA or VS Code

### Running the Projects

Since this is a **multi-project** repository, navigate into the specific sub-project before running.

**JSP version:**

```bash
cd spring-mvc-jsp
mvn spring-boot:run
```

Access at: `http://localhost:8081`

**Thymeleaf version:**

```bash
cd spring-mvc-thymeleaf
mvn spring-boot:run
```

Access at: `http://localhost:8080` (or the port configured in `application.properties`).

---

## ⚠️ IntelliJ IDEA Note

If you open the root directory in IntelliJ IDEA and run `spring-mvc-jsp` using the IDE's Run button, make sure to configure the **Working Directory** correctly:

> **Edit Configurations → Set Working Directory to the `spring-mvc-jsp` folder**

Skipping this step may cause a **Whitelabel Error Page (404 Not Found)** because Tomcat cannot locate the `webapp` directory.

---

## 📝 Credits

This project is built upon knowledge from the course by **Hỏi Dân IT** ([@hoidanit](https://www.youtube.com/@hoidanit)).  
All source code is intended solely for **personal learning**, reinforcing web programming fundamentals, and tracking development progress.