const express = require("express");
const {
  getReservations,createReservation,
} = require("../controllers/reservationController");

const router = express.Router();
router.get("/reservations", getReservations);
router.post("/reservations", createReservation);


module.exports = router;
