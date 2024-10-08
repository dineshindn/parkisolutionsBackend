const express = require("express"); 
const jobRoutes = require("./jobs.route"); 
const router = express.Router();

 
router.get("/status", (req, res) => res.send("OK"));
 
 
router.use("/job",  jobRoutes); 


module.exports = router;
