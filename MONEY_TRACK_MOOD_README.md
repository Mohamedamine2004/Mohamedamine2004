<div align="center">

<!-- ────────────── HERO LOGO & TITLE ────────────── -->
<img src="https://img.shields.io/badge/Money%20Track-Mood-6DB33F?style=for-the-badge&logo=springboot&logoColor=white" alt="Money Track Mood" height="38"/>

# 💡 Money Track Mood

### *Behavioral Finance & Mood-Linked Expense Tracking Platform*

**Bridging the gap between emotional psychology and personal financial health.**

[![Java 17](https://img.shields.io/badge/Java-17-ED8B00?style=flat-square&logo=openjdk&logoColor=white)](https://openjdk.org/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.x-6DB33F?style=flat-square&logo=springboot&logoColor=white)](https://spring.io/projects/spring-boot)
[![React](https://img.shields.io/badge/React-18.x-61DAFB?style=flat-square&logo=react&logoColor=black)](https://react.dev/)
[![MySQL](https://img.shields.io/badge/MySQL-8.x-4479A1?style=flat-square&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Hibernate](https://img.shields.io/badge/JPA%20%2F%20Hibernate-ORM-59666C?style=flat-square&logo=hibernate&logoColor=white)](https://hibernate.org/)
[![Maven](https://img.shields.io/badge/Build-Maven-C71A36?style=flat-square&logo=apachemaven&logoColor=white)](https://maven.apache.org/)
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)

---

> **Money Track Mood** is an intuitive full-stack web application that combines **daily expense tracking** with **emotional state analysis**. By mapping psychological mood states to financial transactions, the platform uncovers emotional impulse triggers, assists users in setting realistic financial goals, and fosters long-term financial discipline.

</div>

---

## 📋 Table of Contents

- [🎯 Problem & Vision](#-problem--vision)
- [✨ Core Capabilities](#-core-capabilities)
- [📸 Application Preview](#-application-preview)
- [🏗️ System Architecture](#️-system-architecture)
- [🛠️ Tech Stack](#️-tech-stack)
- [📡 REST API Endpoints](#-rest-api-endpoints)
- [⚡ Quick Start Guide](#-quick-start-guide)
- [📂 Project Structure](#-project-structure)
- [👨‍💻 Author](#-author)

---

## 🎯 Problem & Vision

Traditional budgeting tools only record *what* was spent and *when*, ignoring the most critical variable in financial decision-making: **human emotion**.

| Traditional Expense Trackers | Money Track Mood Solution |
|---|---|
| Static logs of past transactions | Correlates spending amounts with emotional states (stress, joy, boredom) |
| No explanation behind impulse purchases | Identifies psychological spending triggers with data visualization |
| Generic advice that ignores emotional context | Actionable insights to prevent emotional retail therapy |

---

## ✨ Core Capabilities

- **💸 Comprehensive Expense Management**: Log, categorize, edit, and filter daily expenses with real-time balance calculations.
- **🧠 Mood & Emotional Correlation**: Associate an emotional state (e.g., *Happy*, *Stressed*, *Bored*, *Impulsive*) with every transaction.
- **📊 Interactive Visualizations**: Dynamic charts crossing spending categories with mood trends over time.
- **🎯 Personalized Budget & Emotional Goals**: Set financial limits alongside wellness objectives to curb emotional spending habits.
- **🔐 Secure Stateless Architecture**: Robust session management and authenticated REST endpoints protecting user financial data.

---

## 📸 Application Preview

<table width="100%" align="center">
  <tr>
    <td width="50%" align="center">
      <b>📊 Expense Tracking & Balance Dashboard</b><br/><br/>
      <img src="https://raw.githubusercontent.com/Mohamedamine2004/Money_Track_Mood/main/images/Capture%20d'%C3%A9cran%202025-04-29%20181231.png" alt="Expense Tracking Interface" width="100%"/>
    </td>
    <td width="50%" align="center">
      <b>🧠 Mood & Behavioral Spending Analysis</b><br/><br/>
      <img src="https://raw.githubusercontent.com/Mohamedamine2004/Money_Track_Mood/main/images/Capture%20d'%C3%A9cran%202025-04-29%20181321.png" alt="Mood Analytics Interface" width="100%"/>
    </td>
  </tr>
</table>

---

## 🏗️ System Architecture

The application follows an **enterprise multi-layered architecture** adhering to separation of concerns:

```
┌────────────────────────────────────────────────────────┐
│               React.js Single Page App                 │
│        (Components • State Management • Axios)         │
└───────────────────────────┬────────────────────────────┘
                            │  HTTP / JSON REST API
┌───────────────────────────▼────────────────────────────┐
│              Spring Boot Application Server            │
│  ┌──────────────────────────────────────────────────┐  │
│  │  REST Controllers (@RestController, Routing)     │  │
│  ├──────────────────────────────────────────────────┤  │
│  │  Service Layer (Business Logic & Mood Engine)    │  │
│  ├──────────────────────────────────────────────────┤  │
│  │  Data Access (Spring Data JPA & Hibernate ORM)   │  │
│  └────────────────────────┬─────────────────────────┘  │
└───────────────────────────┼────────────────────────────┘
                            │  JDBC Queries
┌───────────────────────────▼────────────────────────────┐
│        Relational Database (MySQL / H2 In-Memory)      │
│     (Users • Transactions • MoodTags • Goals)          │
└────────────────────────────────────────────────────────┘
```

---

## 🛠️ Tech Stack

### Backend
- **Java 17**: Modern language features, records, and pattern matching.
- **Spring Boot 3**: Enterprise framework powering dependency injection, validation, and REST controllers.
- **Spring Data JPA & Hibernate**: Object-relational mapping (ORM) with clean repository abstractions.
- **MySQL / H2**: MySQL for persistent production data, H2 for rapid local development and testing.

### Frontend
- **React.js**: Dynamic, component-driven user interface with responsive layouts.
- **HTML5 & CSS3**: Clean, mobile-friendly design system.
- **Axios**: Promised-based HTTP client for secure API communication.

### Tooling & Build
- **Apache Maven**: Dependency management and multi-phase build automation.
- **Postman**: API testing and validation suites.
- **Git & GitHub**: Version control and CI/CD pipelines.

---

## 📡 REST API Endpoints

| Method | Endpoint | Description |
|:---:|:---|:---|
| `POST` | `/api/auth/register` | Register a new user account |
| `POST` | `/api/auth/login` | Authenticate user and initialize session |
| `GET` | `/api/expenses` | Retrieve all expenses for the authenticated user |
| `POST` | `/api/expenses` | Create a new expense with associated mood tag |
| `PUT` | `/api/expenses/{id}` | Update an existing transaction |
| `DELETE` | `/api/expenses/{id}` | Delete a specific transaction |
| `GET` | `/api/analytics/mood-correlation` | Compute aggregate spending grouped by emotional state |
| `GET` | `/api/analytics/trends` | Monthly expense progression across categories |

---

## ⚡ Quick Start Guide

### Prerequisites
- **Java Development Kit (JDK 17+)** installed
- **Node.js (v18+)** & `npm` installed
- **MySQL Server** (optional; H2 in-memory runs out of the box for development)
- **Git**

### 1. Clone the Repository
```bash
git clone https://github.com/Mohamedamine2004/Money_Track_Mood.git
cd Money_Track_Mood
```

### 2. Run the Spring Boot Backend
```bash
# Navigate to the backend directory
cd backend

# Build and run with Maven
./mvnw spring-boot:run
```
*The backend API will start on: `http://localhost:8080`*

### 3. Run the React Frontend
```bash
# In a new terminal, navigate to the frontend directory
cd frontend

# Install dependencies and start development server
npm install
npm start
```
*The web interface will open at: `http://localhost:3000`*

---

## 📂 Project Structure

```
Money_Track_Mood/
├── backend/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/moneytrack/
│   │   │   │   ├── controllers/      # REST Endpoints
│   │   │   │   ├── models/           # JPA Entities (User, Expense, Mood)
│   │   │   │   ├── repositories/     # Spring Data JPA Repositories
│   │   │   │   └── services/         # Business Logic & Behavioral Analytics
│   │   │   └── resources/
│   │   │       └── application.yml   # Database & server configuration
│   └── pom.xml                       # Maven dependencies
├── frontend/
│   ├── src/
│   │   ├── components/               # Reusable UI widgets
│   │   ├── pages/                    # Views (Dashboard, Analytics, Expenses)
│   │   └── services/                 # Axios API wrappers
│   └── package.json                  # React dependencies
└── images/                           # Application screenshots
```

---

## 👨‍💻 Author

<div align="center">

**Mohamed Lamine Saidane**  
*AI & Software Engineering Student @ ESPRIT 🎓*  
*B.Sc. in Software Engineering (GLSI) — Mention Très Bien 🏅*

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Mohamed_Lamine_Saidane-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/saidane-mohamed-lamine-31862a247/)
[![GitHub](https://img.shields.io/badge/GitHub-Mohamedamine2004-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/Mohamedamine2004)
[![Email](https://img.shields.io/badge/Email-saidanemohamedamine72%40gmail.com-EA4335?style=flat-square&logo=gmail&logoColor=white)](mailto:saidanemohamedamine72@gmail.com)

---

⭐ **If you found this project insightful, consider leaving a star on GitHub!**

</div>

