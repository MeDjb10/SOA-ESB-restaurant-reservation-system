
# **Restaurant Reservation System**

## **Overview**
This repository showcases a service-oriented architecture (SOA)-based restaurant reservation system, which integrates four independently implemented web services. Each service is designed using a different technology stack, demonstrating interoperability and service communication via REST and SOAP protocols.

### **Features**
1. **Restaurant List Service (Django)**
   - Provides a list of restaurants from the database.
   - Exposes RESTful APIs for restaurant retrieval.

2. **Table Availability Service (Spring Boot)**
   - Returns available tables in a selected restaurant.
   - Supports filtering by table attributes (e.g., number of chairs, position).
   - Communicates using SOAP-based web services.

3. **Reservation Service (Node.js/Express.js)**
   - Enables creating reservations for specific tables.
   - Captures reservation details, including status (e.g., "not confirmed").

4. **Payment Service (Node.js/Express.js)**
   - Manages payment operations for reservations.
   - Updates reservation status to "confirmed" or "canceled."
   - Modifies table availability based on payment outcomes.

---

## **Architecture**
This project uses a modular architecture where each service operates independently and communicates with other services either synchronously or asynchronously.  

### **Service Overview**
1. **Restaurant List Service**
   - Technology: Django
   - Purpose: Fetch restaurant data.
   - URL: `http://localhost:8000`

2. **Table Availability Service**
   - Technology: Spring Boot
   - Purpose: Query available tables with filters.
   - URL: `http://localhost:8080/ws` (SOAP)

3. **Reservation Service**
   - Technology: Node.js/Express.js
   - Purpose: Create and manage reservations.
   - URL: `http://localhost:3000`

4. **Payment Service**
   - Technology: Node.js/Express.js
   - Purpose: Process payments and update reservation status.
   - URL: `http://localhost:3001`

---

## **Workflow**
1. **Fetch Restaurants**: Use the Restaurant List Service to retrieve a list of available restaurants.
2. **Check Table Availability**: Query the Table Availability Service to find available tables in a selected restaurant.
3. **Create a Reservation**: Use the Reservation Service to book a table with specific details (date, time, table ID).
4. **Process Payment**: Use the Payment Service to confirm or cancel the reservation.

---

## **API Endpoints**
### **Restaurant List Service (Django)**
- `GET /restaurants/` – Retrieve a list of restaurants.

### **Table Availability Service (Spring Boot)**
- `SOAP Request /ws/` – Retrieve available tables based on specified filters.

### **Reservation Service (Node.js/Express.js)**
- `GET /reservations/` – Retrieve all reservations.
- `POST /reservations/` – Create a new reservation.

### **Payment Service (Node.js/Express.js)**
- `POST /payment/` – Confirm payment for a reservation.
- `PUT /payment/:id/cancel` – Cancel a reservation payment.

---

## **Prerequisites**
Ensure you have the following installed:
- **Django**, Python, and pip for the Restaurant List Service.
- **JDK** and Maven for the Table Availability Service.
- **Node.js** and npm for the Reservation and Payment Services.
- **MySQL** for managing reservation and payment data.

---

## **Installation**
1. **Clone the Repository**
   ```bash
   git clone https://github.com/<your-username>/restaurant-reservation-system.git
   cd restaurant-reservation-system
   ```

2. **Set Up Each Service**
   - **Restaurant List Service (Django)**
     ```bash
     cd RestaurantListWebService(django)
     pip install -r requirements.txt
     python manage.py runserver
     ```

   - **Table Availability Service (Spring Boot)**
     ```bash
     cd TableAvailability(springBoot)
     mvn clean install
     mvn spring-boot:run
     ```

   - **Reservation Service (Node.js/Express.js)**
     ```bash
     cd ReservationWebService(nodejs)
     npm install
     node server.js
     ```

   - **Payment Service (Node.js/Express.js)**
     ```bash
     cd Payment(nodejs)
     npm install
     node server.js
     ```

---

## **Usage**
- **Restaurant List Service** → Retrieve restaurant details.
- **Table Availability Service** → Check table availability with filters.
- **Reservation Service** → Create reservations for tables.
- **Payment Service** → Confirm or cancel reservations.

---

## **Contribution**
Contributions are welcome! Please fork the repository, create a new branch for your feature or bug fix, and submit a pull request.

---

## **License**
This project is licensed under the MIT License. See the `LICENSE` file for details.
