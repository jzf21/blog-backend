const express = require("express");
const router = express.Router();
const authRoutes = require("./auth.routes");
const postRoutes = require("./posts.routes");

router.use("/auth", authRoutes);
router.use("/posts",postRoutes);

module.exports = router;
