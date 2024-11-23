const express = require("express");
const router = express.Router();
const { body } = require("express-validator");
const {
  createPost,
  getPosts,
  getPostsByAuthor,
} = require("../controllers/posts.controller");
const auth = require("../middleware/auth.middleware");

router.post(
  "/",
  [auth, body("title").trim().notEmpty(), body("content").trim().notEmpty()],
  createPost
);

router.get("/", getPosts);
router.get("/author/:userId", getPostsByAuthor);

module.exports = router;
