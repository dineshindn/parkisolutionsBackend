const express = require("express");
const { jobController } = require("../../controllers");

const router = express.Router();

router.post("/new", jobController.newJob);
router.post("/newAll", jobController.newJobAll);

module.exports = router;
