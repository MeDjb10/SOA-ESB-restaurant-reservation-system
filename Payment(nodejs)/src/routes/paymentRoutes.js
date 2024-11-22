const express = require("express");
const {
  createPayment,
  cancelPayment,
} = require("../controllers/paymentController");

const router = express.Router();

router.post("/pay", createPayment);
router.post("/cancel", cancelPayment);

module.exports = router;
