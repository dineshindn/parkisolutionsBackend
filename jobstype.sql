 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

 

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `job` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `fee` varchar(100) NOT NULL,
  `c_date` date NOT NULL,
  `d_date` varchar(100) NOT NULL,
  `fee_c_d` date NOT NULL,
  `fee_c` varchar(100) NOT NULL,
  `payment_terms` varchar(100) NOT NULL,
  `expenses` varchar(100) NOT NULL,
  `expenses_terms` varchar(100) NOT NULL,
  `subcontroller` varchar(100) NOT NULL,
  `subcontroller_fee` varchar(100) NOT NULL,
  `modum_fee` varchar(100) NOT NULL,
  `net_fee` varchar(100) NOT NULL,
  `internal_review` varchar(100) NOT NULL,
  `marketing` varchar(100) NOT NULL,
  `marketing_per` varchar(100) NOT NULL,
  `marketing_doller` varchar(100) NOT NULL,
  `corporate` varchar(100) NOT NULL,
  `corporate_per` varchar(100) NOT NULL,
  `production_per` varchar(100) NOT NULL,
  `production_doller` varchar(100) NOT NULL,
  `appraiser1` varchar(100) NOT NULL,
  `appraiser1_per` varchar(100) NOT NULL,
  `appraiser2` varchar(100) NOT NULL,
  `appraiser2_per` varchar(100) NOT NULL,
  `appraiser3` varchar(100) NOT NULL,
  `appraiser3_per` varchar(100) NOT NULL,
  `appraiser3_doller` varchar(100) NOT NULL,
  `ir` int(11) NOT NULL,
  `ir_doller` int(11) NOT NULL,
  `total` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

 
ALTER TABLE `job` ADD PRIMARY KEY (`id`);
 
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

 