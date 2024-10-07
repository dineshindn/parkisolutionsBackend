const express = require("express");
const dotenv = require("dotenv"); 
const bodyParser = require("body-parser")
dotenv.config({path: `.${process.env.NODE_ENV}.env`});
const app = express(); 
const pool = require("./config")
const morgan = require("morgan");
const cors = require("cors");


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true })); 
app.use(cors("*"));
app.get("/", (req, res)=>{
    res.status(200).json({
        message: "welcome",
    })
})

app.use(morgan());

app.post("/job-create", async(req, res)=> { 
   try {
    const input = req.body;
    const query  = "INSERT INTO `job` (`job`, `address`, `fee`) VALUES (?,?,?)";
    const payloadDate = [job= input.job, address= input.address,  fee= input.fee ];
    const sql = await pool.query(query, payloadDate);

    res.send({status: true, message: "success", data: sql})
    return;
   } catch (error) {
    res.status(500).send({status: false, message: 'Failled', error: error})
   }
})


app.post("/job-create-all", async(req, res)=> { 
       try {
        const input = req.body;
       
        const payloadData= [
            job= input.job,
            address= input.address,
            fee= input.fee,
            c_date= input.c_date,
            d_date= input.d_date,
            fee_c_d= input.fee_c_d,
            fee_c= input.fee_c,
            payment_terms= input.payment_terms,
            expenses= input.expenses,
            expenses_terms= input.expenses_terms,
            subcontroller= input.subcontroller,
            subcontroller_fee= input.subcontroller_fee,
            modum_fee= input.modum_fee,
            net_fee= input.net_fee,
            internal_review= input.internal_review,
            marketing= input.marketing,
            marketing_per= input.marketing_doller,
            marketing_doller= input.marketing_doller,
            corporate= input.corporate,
            corporate_per= input.corporate_per,
            production_per= input.production_per,
            production_doller= input.production_doller,
            appraiser1= input.appraiser1,
            appraiser1_per= input.appraiser1_per,
            appraiser2= input.appraiser2,
            appraiser2_per= input.appraiser2_per,
            appraiser3= input.appraiser3,
            appraiser3_per= input.appraiser3_per,
            appraiser3_doller= input.appraiser3_doller,
            ir= input.ir,
            ir_doller= input.ir_doller,
            total= input.total
        ];

        const insert  = "INSERT INTO `job` (`job`, `address`, `fee`, `c_date`, `d_date`, `fee_c_d`, `fee_c`, `payment_terms`, `expenses`, `expenses_terms`, `subcontroller`, `subcontroller_fee`, `modum_fee`, `net_fee`, `internal_review`, `marketing`, `marketing_per`, `marketing_doller`, `corporate`, `corporate_per`, `production_per`, `production_doller`, `appraiser1`, `appraiser1_per`, `appraiser2`, `appraiser2_per`, `appraiser3`, `appraiser3_per`, `appraiser3_doller`, `ir`, `ir_doller`, `total`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
     
        const sql = await pool.query(insert, payloadData);
     
        res.send({status: true, message: "success", data: sql})
        return;
       } catch (error) {
        res.status(500).send({status: false, message: 'Failled', error: error})
       }
    })


app.listen(process.env.PORT || 3001, ()=> {
    console.log("server started");
})

module.exports = app;