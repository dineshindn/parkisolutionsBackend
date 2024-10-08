const httpStatus = require("http-status");
const pool = require("../../config/mysqlPool");
const Joi = require("joi");


module.exports.newJobAll = async (req, res) => {
  try {
    const input  = req.body;
    console.log(input, "inputs...")
    // if (error) {
    //   return res
    //     .status(400)
    //     .json({ status: false, message: error.details[0].message });
    // }
 
    const insertQuery = `INSERT INTO job (job, address, fee, c_date, d_date, fee_c_d, fee_c, payment_terms, expenses, expenses_terms, subcontroller, subcontroller_fee, modum_fee, net_fee, internal_review, marketing, marketing_per, marketing_doller, corporate, corporate_per, production_per, production_doller, appraiser1, appraiser1_per, appraiser2, appraiser2_per, appraiser3, appraiser3_per, appraiser3_doller, ir, ir_doller, total)
                         VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)`;

    const payloadData = [
      input.job,
      input.address,
      input.fee,
      input.c_date,
      input.d_date,
      input.fee_c_d,
      input.fee_c,
      input.payment_terms,
      input.expenses,
      input.expenses_terms,
      input.subcontroller,
      input.subcontroller_fee,
      input.modum_fee,
      input.net_fee,
      input.internal_review,
      input.marketing,
      input.marketing_per,
      input.marketing_doller,
      input.corporate,
      input.corporate_per,
      input.production_per,
      input.production_doller,
      input.appraiser1,
      input.appraiser1_per,
      input.appraiser2,
      input.appraiser2_per,
      input.appraiser3,
      input.appraiser3_per,
      input.appraiser3_doller,
      input.ir,
      input.ir_doller,
      input.total,
    ];

    const sql = await pool.query(insertQuery, payloadData);
    return res
      .status(httpStatus.OK)
      .send({ status: true, data: sql, msg: "Success" });
  } catch (err) {
    return res
      .status(httpStatus.INTERNAL_SERVER_ERROR)
      .send({ status: false, message: err });
  }
};


const jobSchema = Joi.object({
  job: Joi.string().required(),
  address: Joi.string().required(),
  fee: Joi.number().required(),
});


module.exports.newJob = async (req, res) => {
  try {
    const { error, value } = jobSchema.validate(req.body);
    if (error) {
      return res.status(400).json({ status: false, message: error.details[0].message });
    }

    const input = value;
    const query = "INSERT INTO `job` (`job`, `address`, `fee`) VALUES (?,?,?)";
    const payloadData = [input.job, input.address, input.fee];
    const sql = await pool.query(query, payloadData);

    res.send({ status: true, message: "success", data: sql });
  } catch (error) {
    res.status(500).send({ status: false, message: 'Failed', error: error.message });
  }
};
