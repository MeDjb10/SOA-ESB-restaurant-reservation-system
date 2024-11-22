const Payment = require("../models/payment");

const createPayment = (req, res) => {
  const { reservationId, tableId } = req.body;
  const paymentId = Math.floor(Math.random() * 100000); // Generate a random payment ID

  // Step 1: Insert payment
  Payment.create(paymentId, reservationId, "confirmed", (err, result) => {
    if (err) {
      console.error("Error creating payment:", err);
      return res.status(500).json({ error: "Failed to create payment." });
    }

    // Step 2: Update reservation status
    Payment.updateReservationStatus(reservationId, "paid", (err) => {
      if (err) {
        console.error("Error updating reservation:", err);
        return res.status(500).json({ error: "Failed to update reservation." });
      }

      // Step 3: Update table availability
      Payment.updateTableAvailability(tableId, false, (err) => {
        if (err) {
          console.error("Error updating table availability:", err);
          return res
            .status(500)
            .json({ error: "Failed to update table availability." });
        }

        res.status(201).json({ message: "Payment successful!", paymentId });
      });
    });
  });
};

const cancelPayment = (req, res) => {
  const { reservationId } = req.body;

  // Step 1: Update reservation status
  Payment.updateReservationStatus(reservationId, "canceled", (err) => {
    if (err) {
      console.error("Error updating reservation:", err);
      return res.status(500).json({ error: "Failed to cancel payment." });
    }

    res.status(200).json({ message: "Payment canceled successfully!" });
  });
};

module.exports = { createPayment, cancelPayment };
