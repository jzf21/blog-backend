const express = require("express");
const router = express.Router();
const { body } = require("express-validator");
const { signup, login } = require("../controllers/auth.controller");

router.post(
  "/signup",
  [body("email").isEmail(), body("password").isLength({ min: 6 })],
  signup
);

router.post(
  "/login",
  [body("email").isEmail(), body("password").exists()],
  login
);

module.exports = router;
