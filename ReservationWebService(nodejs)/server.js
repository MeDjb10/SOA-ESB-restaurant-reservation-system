const express = require("express");
const reservationRoutes = require("./src/routes/reservationRoutes");
const sequelize = require("./src/config/db");

const app = express();
const PORT = process.env.PORT || 3000;

// Middleware to parse JSON requests
app.use(express.json());

// Routes
app.use("/api", reservationRoutes);
app.use("/api", reservationRoutes);

// Sync database and start server
sequelize
  .sync()
  .then(() => {
    app.listen(PORT, () => {
      console.log(`Server is running on port ${PORT}`);
    });
  })
  .catch((error) => {
    console.error("Unable to sync database:", error);
  });
