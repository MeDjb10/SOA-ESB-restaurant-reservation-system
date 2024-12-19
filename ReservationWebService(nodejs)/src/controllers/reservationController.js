const Reservation = require("../models/reservation");




// get the reservation

const getReservations = async (req, res) => {
  try {
    const reservations = await Reservation.findAll();
    res.json(reservations);
  } catch (error) {
    console.error("Error getting reservations:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};




// Create a new reservation
const createReservation = async (req, res) => {
  try {
    console.log("Request Body:", req.body); // Add this line to check incoming data

    const { clientName, phone, email, startTime, endTime, tableId ,restaurantId} = req.body;

    const newReservation = await Reservation.create({
      clientName,
      phone,
      email,
      startTime,
      endTime,
      status: "not confirmed",
      tableId,
      restaurantId,
    });

    res.status(201).json(newReservation);
  } catch (error) {
    console.error("Error creating reservation:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};


module.exports = { getReservations, createReservation };
