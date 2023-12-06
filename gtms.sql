-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 06:01 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gtms`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `system_name` varchar(50) NOT NULL,
  `access` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `system_name`, `access`, `link`) VALUES
(1, 'GTMS', 'admin', '../admin/index.php'),
(2, 'GTMS', 'employee', '../employee/index.php'),
(3, 'GTMS', 'evaluator', '../evaluator/index.php');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `access` varchar(50) NOT NULL,
  `sec_id` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `fname`, `lname`, `email`, `access`, `sec_id`, `status`) VALUES
(1, 'ADMIN', '12345', 'SYSTEM', 'ADMIN', 'b.solomon@glory.com.ph', '1', 'SK', 1),
(2, 'OBUGARIN', '12345', 'OLIVE', 'BUGARIN', 'o.bugarin@glory.com.ph', '2', 'SK', 1),
(3, 'KMARERO', '12345', 'KEVIN', 'MARERO', 'k.marero@glory.com.ph', '2', 'MIS', 1),
(4, 'FRAMIREZ', '12345', 'FRANCIS', 'RAMIREZ', 'f.ramirez@glory.com.ph', '2', 'FEM', 1),
(5, 'JNEMEDEZ', '12345', 'JONATHAN', 'NEMEDEZ', 'j.nemedez@glory.com.ph', '3', 'MIS', 1),
(6, 'BSOLOMON', '12345', 'BOBBY JOHN', 'SOLOMON', 'b.solomon@glory.com.ph', '2', 'SK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `day_off`
--

CREATE TABLE `day_off` (
  `id` int(11) NOT NULL,
  `date_off` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_off`
--

INSERT INTO `day_off` (`id`, `date_off`, `status`) VALUES
(1, '2023-11-28', 1),
(2, '2023-12-08', 1),
(3, '2023-12-09', 1),
(4, '2023-12-11', 0),
(5, '2023-12-07', 0),
(6, '2023-12-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `sec_id` varchar(20) NOT NULL,
  `sec_name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `sec_id`, `sec_name`, `status`) VALUES
(1, 'SK', 'SYSTEM KAIZEN', 1),
(2, 'MIS', 'MANAGEMENT INFORMATION SYSTEM', 1),
(3, 'FEM', 'FACILITIES AND EQUIPMENT MAINTENANCE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(50) NOT NULL,
  `task_code` varchar(150) NOT NULL,
  `in_charge` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_code`, `in_charge`) VALUES
(2, 'SK-TA-000001', 'OBUGARIN'),
(3, 'SK-TP-000001', 'OBUGARIN'),
(4, 'MIS-TD-000001', 'KMARERO'),
(5, 'MIS-TA-000001', 'KMARERO'),
(6, 'MIS-TP-000001', 'KMARERO'),
(7, 'FEM-TD-000001', 'FRAMIREZ'),
(8, 'FEM-TA-000001', 'FRAMIREZ'),
(9, 'FEM-TP-000001', 'FRAMIREZ'),
(11, 'SK-TD-000001', 'OBUGARIN'),
(32, 'SK-TD-000002', 'OBUGARIN'),
(33, 'SK-TD-000003', 'OBUGARIN'),
(34, 'SK-TD-000004', 'BSOLOMON'),
(35, 'SK-TD-000005', 'OBUGARIN'),
(36, 'SK-TD-000006', 'OBUGARIN'),
(37, 'SK-TD-000007', 'BSOLOMON');

-- --------------------------------------------------------

--
-- Table structure for table `tasks_details`
--

CREATE TABLE `tasks_details` (
  `id` int(11) NOT NULL,
  `task_code` varchar(50) NOT NULL,
  `date_created` date NOT NULL,
  `due_date` date NOT NULL,
  `in_charge` varchar(150) NOT NULL,
  `status` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_accomplished` date DEFAULT NULL,
  `task_status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks_details`
--

INSERT INTO `tasks_details` (`id`, `task_code`, `date_created`, `due_date`, `in_charge`, `status`, `remarks`, `date_accomplished`, `task_status`) VALUES
(1, 'FEM-TD-000001', '2023-11-25', '2023-11-27', 'FRAMIREZ', 'NOT YET STARTED', '', NULL, 1),
(2, 'FEM-TA-000001', '2023-11-25', '2023-11-27', 'FRAMIREZ', 'NOT YET STARTED', '', NULL, 1),
(3, 'FEM-TP-000001', '2023-11-25', '2023-11-27', 'FRAMIREZ', 'NOT YET STARTED', '', NULL, 1),
(4, 'SK-TD-000001', '2023-11-25', '2023-11-27', 'OBUGARIN', 'FINISHED', '', '2023-11-25', 0),
(5, 'SK-TA-000001', '2023-11-25', '2023-11-30', 'OBUGARIN', 'FINISHED', '', '2023-11-30', 1),
(6, 'SK-TP-000001', '2023-11-25', '2023-11-28', 'OBUGARIN', 'FINISHED', 'WEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE', '2023-12-05', 1),
(7, 'MIS-TD-000001', '2023-11-25', '2023-11-27', 'KMARERO', 'IN PROGRESS', '', NULL, 1),
(8, 'MIS-TA-000001', '2023-11-25', '2023-11-27', 'KMARERO', 'NOT YET STARTED', '', NULL, 1),
(9, 'MIS-TP-000001', '2023-11-25', '2023-11-27', 'KMARERO', 'NOT YET STARTED', '', NULL, 1),
(13, 'MIS-TD-000001', '2023-11-25', '2023-11-25', 'KMARERO', 'NOT YET STARTED', '', NULL, 1),
(14, 'FEM-TD-000001', '2023-11-25', '2023-11-25', 'FRAMIREZ', 'NOT YET STARTED', '', NULL, 1),
(15, 'SK-TD-000001', '2023-11-25', '2023-11-25', 'OBUGARIN', 'FINISHED', '', '2023-11-25', 1),
(16, 'MIS-TD-000001', '2023-11-28', '2023-11-28', 'KMARERO', 'NOT YET STARTED', '', NULL, 1),
(17, 'FEM-TD-000001', '2023-11-28', '2023-11-28', 'FRAMIREZ', 'NOT YET STARTED', '', NULL, 1),
(18, 'SK-TD-000001', '2023-11-28', '2023-11-28', 'OBUGARIN', 'FINISHED', '', '2023-12-05', 1),
(37, 'SK-TD-000002', '2023-11-30', '2023-12-02', 'OBUGARIN', 'FINISHED', 'TESTTESTTESTTESTTESTTESTTESTTESTTEST', '2023-12-05', 1),
(38, 'SK-TD-000003', '2023-11-30', '2023-12-03', 'OBUGARIN', 'NOT YET STARTED', '', NULL, 1),
(39, 'SK-TD-000004', '2023-11-30', '2023-12-02', 'BSOLOMON', 'FINISHED', '', '2023-11-30', 1),
(40, 'SK-TD-000005', '2023-11-30', '2023-12-02', 'OBUGARIN', 'FINISHED', '000000000000000000000000000000', '2023-12-05', 1),
(41, 'SK-TD-000006', '2023-11-30', '2023-12-03', 'OBUGARIN', 'NOT YET STARTED', '', NULL, 1),
(42, 'SK-TD-000007', '2023-11-30', '2023-12-02', 'BSOLOMON', 'FINISHED', '', '2023-11-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_class`
--

CREATE TABLE `task_class` (
  `id` int(50) NOT NULL,
  `task_class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_class`
--

INSERT INTO `task_class` (`id`, `task_class`) VALUES
(1, 'DAILY ROUTINE'),
(2, 'ADDITIONAL TASK'),
(3, 'PROJECT');

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `id` int(50) NOT NULL,
  `task_code` varchar(50) NOT NULL,
  `task_name` varchar(150) NOT NULL,
  `task_details` varchar(500) DEFAULT NULL,
  `task_class` varchar(150) NOT NULL,
  `task_for` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`id`, `task_code`, `task_name`, `task_details`, `task_class`, `task_for`, `status`) VALUES
(1, 'SK-TD-000001', 'TEST', 'TEST', '1', 'SK', 1),
(2, 'SK-TA-000001', 'TEST1', 'TEST1', '2', 'SK', 1),
(3, 'SK-TP-000001', 'TEST2', 'TEST2', '3', 'SK', 1),
(4, 'MIS-TD-000001', 'TEST', 'TEST', '1', 'MIS', 1),
(5, 'MIS-TA-000001', 'TEST1', 'TEST1', '2', 'MIS', 1),
(6, 'MIS-TP-000001', 'TEST2', 'TEST2', '3', 'MIS', 1),
(7, 'FEM-TD-000001', 'TEST', 'TEST', '1', 'FEM', 1),
(8, 'FEM-TA-000001', 'TEST1', 'TEST1', '2', 'FEM', 1),
(9, 'FEM-TP-000001', 'TEST2', 'TEST2', '3', 'FEM', 1),
(30, 'SK-TD-000002', 'TEST 1', NULL, '1', 'SK', 1),
(31, 'SK-TD-000003', 'TEST 1', NULL, '1', 'SK', 1),
(32, 'SK-TD-000004', 'TEST 1', NULL, '1', 'SK', 1),
(33, 'SK-TD-000005', 'TEST 1', '123', '1', 'SK', 1),
(34, 'SK-TD-000006', 'TEST 1', NULL, '1', 'SK', 1),
(35, 'SK-TD-000007', 'TEST 1', '', '1', 'SK', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_off`
--
ALTER TABLE `day_off`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_details`
--
ALTER TABLE `tasks_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_class`
--
ALTER TABLE `task_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `day_off`
--
ALTER TABLE `day_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tasks_details`
--
ALTER TABLE `tasks_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `task_class`
--
ALTER TABLE `task_class`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `InsertToTask` ON SCHEDULE EVERY 1 DAY STARTS '2023-11-28 13:05:00' ON COMPLETION PRESERVE ENABLE DO IF NOT UTC_TIMESTAMP() IN (SELECT date_created from tasks_details) 
AND NOT DAYOFWEEK(UTC_TIMESTAMP()) IN (1) 
AND NOT UTC_TIMESTAMP() IN (SELECT date_off from day_off) THEN

INSERT INTO tasks_details(task_code,date_created,due_date,in_charge,status, date_accomplished, task_status)

SELECT DISTINCT task_code,UTC_TIMESTAMP(),UTC_TIMESTAMP(),in_charge,'NOT YET STARTED',null,true
FROM tasks
WHERE task_code LIKE '%TD%';
END IF$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
