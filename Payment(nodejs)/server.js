require("dotenv").config();
const express = require("express");
const paymentRoutes = require("./src/routes/paymentRoutes");

const app = express();

app.use(express.json());
app.use("/api/payments", paymentRoutes);

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`Payment service running on http://localhost:${PORT}`);
});
