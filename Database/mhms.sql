-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 09:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(100) NOT NULL,
  `img_url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(81, 'uploads/male.jpg', 'Mr Accountant', 'accountant@1888.com', 'Gondar, Ethiopia', '+251912345678', '', '755', '416');

-- --------------------------------------------------------

--
-- Table structure for table `alloted_bed`
--

CREATE TABLE `alloted_bed` (
  `id` int(100) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `request` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient`, `doctor`, `date`, `time_slot`, `s_time`, `e_time`, `remarks`, `add_date`, `registration_time`, `s_time_key`, `status`, `user`, `request`, `hospital_id`) VALUES
(416, '37', '150', '1684879200', 'Not Selected', 'Not Selected', '', '', '05/24/23', '1684937233', '0', 'Confirmed', '2', '', '416');

-- --------------------------------------------------------

--
-- Table structure for table `bankb`
--

CREATE TABLE `bankb` (
  `id` int(100) NOT NULL,
  `group` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bankb`
--

INSERT INTO `bankb` (`id`, `group`, `status`, `hospital_id`) VALUES
(1, 'A+', '0 Bags', '416'),
(2, 'A-', '0 Bags', '416'),
(3, 'B+', '0 Bags', '416'),
(4, 'B-', '0 Bags', '416'),
(5, 'AB+', '0 Bags', '416'),
(6, 'AB-', '0 Bags', '416'),
(7, 'O+', '0 Bags', '416'),
(8, 'O-', '0 Bags', '416');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_a_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `last_d_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bed_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bed_category`
--

CREATE TABLE `bed_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_category`
--

INSERT INTO `bed_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(6, 'Icu', '10 beds', '416'),
(7, 'Ccu', '10 beds', '416'),
(8, 'Children', '5 beds', '416'),
(10, 'General Ward', '50 beds', '416');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `x`, `y`, `hospital_id`) VALUES
(12, 'Cardiology', '<p>This department provides medical care to patients who have problems with their heart or circulation. It treats people on an inpatient and outpatient basis. </p>\n', '', '', '416'),
(15, 'Diagnostic imaging', 'Formerly known as X-ray, this department provides a full range of diagnostic imaging services including:\n\n', '', '', '416'),
(17, 'Ear nose and throat (ENT)', 'Ear nose and throat (ENT)\nThe ENT department provides care for patients with a variety of problems, including:\ngeneral ear, nose and throat diseases\nneck lumps\ncancers of the head and neck area\ntear duct problems\nfacial skin lesions\nbalance and hearing disorders\nsnoring and sleep apnoea\nENT allergy problems\nsalivary gland diseases\nvoice disorders.\n', '', '', '416'),
(20, 'General surgery', 'The general surgery ward covers a wide range of surgery.', '', '', '416'),
(23, 'Maternity departments', 'Women now have a choice of who leads their maternity care and where they give birth. Care can be led by a consultant, a GP or a midwife.\n\n', '', '', '416'),
(24, 'Microbiology', 'The microbiology department looks at all aspects of microbiology, such as bacterial and viral infections.\n\n', '', '', '416'),
(26, 'Nephrology', 'This department monitors and assesses patients with kidney (renal) problems.\n', '', '', '416'),
(27, 'Neurology', 'This unit deals with disorders of the nervous system, including the brain and spinal cord. It\'s run by doctors who specialise in this area (neurologists) and their staff.\n\n', '', '', '416'),
(28, 'Nutrition and dietetics', 'Trained dieticians and nutritionists provide specialist advice on diet for hospital wards and outpatient clinics, forming part of a multidisciplinary team.\n\n', '', '', '416'),
(32, 'Occupational therapy', 'This profession helps people who are physically or mentally impaired, including temporary disability after medical treatment. It practices in the fields of both healthcare and social care.\n\n', '', '', '416'),
(33, 'Oncology', 'This department provides radiotherapy and a full range of chemotherapy treatments for cancerous tumours and blood disorders.\n\n', '', '', '416'),
(34, 'Ophthalmology', 'Eye departments provide a range of ophthalmic services for adults and children,\n\n', '', '', '416'),
(35, 'Orthopaedics', 'Orthopaedic departments treat problems that affect your musculoskeletal system. That\'s your muscles, joints, bones, ligaments, tendons and nerves.\n\n', '', '', '416'),
(36, 'Pain management clinics', 'Usually run by consultant anaesthetists, these clinics aim to help treat patients with severe long-term pain that appears resistant to normal treatments.\n', '', '', '416'),
(38, 'Physiotherapy', 'Physiotherapists promote body healing, for example after surgery, through therapies such as exercise and manipulation.\n\n', '', '', '416'),
(39, 'Radiotherapy', 'Radiotherapy\nRun by a combination of consultant doctors and specially trained radiotherapists, this department provides radiotherapy (X-ray) treatment for conditions such as malignant tumours and cancer.\n\n', '', '', '416'),
(40, 'Renal unit', 'Closely linked with nephrology teams at hospitals, these units provide haemodialysis treatment for patients with kidney failure. Many of these patients are on waiting lists for a kidney transplant.\n\n', '', '', '416'),
(41, 'Rheumatology', 'Specialist doctors called rheumatologists run the unit and are experts in the field of musculoskeletal disorders (bones, joints, ligaments, tendons, muscles and nerves).\n\n', '', '', '416'),
(42, 'Sexual health (genitourinary medicine)', 'This department provides a free and confidential service offering:\nadvice, testing and treatment for all sexually transmitted infections (STIs)\nfamily planning care (including emergency contraception and free condoms)\npregnancy testing and advice.\nIt also provides care and support for other sexual and genital problems.\nPatients are usually able to phone the department directly for an appointment and don\'t need a referral letter from their GP.\n\n\n', '', '', '416'),
(43, 'Urology', '<p>The urology department is run by consultant urology surgeons and their surgical teams. It investigates all areas linked to kidney and bladder-based problems.</p>\n', '', '', '416'),
(51, 'Department Name 1', '<p>Description 1</p>\n', '', '', '416'),
(52, 'Department Name 2', '<p>Department Name 2</p>\n', '', '', '449');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostic_report`
--

CREATE TABLE `diagnostic_report` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `invoice` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(10) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sig` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `department`, `profile`, `sig`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(149, 'uploads/doc.png', 'Dr Bernabas', 'doctor@1888.com', 'Gondar, Ethiopia', '+251912345678', 'Cardiology', 'Cardiac Specialized', 'uploads/bernabas.png', '', '', '751', '416'),
(150, 'uploads/doc1.png', 'Dr Abebech Yimer', 'abebech@1888.com', 'Gondar, Ethiopia', '+251927689249', 'Cardiology', 'Cardiac Specialized', '', NULL, NULL, '761', '416');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ldd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `reciepient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(100) NOT NULL,
  `admin_email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `admin_email`, `type`, `user`, `password`, `hospital_id`) VALUES
(19, 'robelbaye6@gmail.com', '', '', '', '416'),
(21, 'robelbaye6@gmail.com', NULL, NULL, NULL, '452'),
(22, 'robelbaye6@gmail.com', NULL, NULL, NULL, '453'),
(23, 'robelbaye6@gmail.com', NULL, NULL, NULL, '454'),
(24, 'robelbaye6@gmail.com', NULL, NULL, NULL, '455'),
(25, 'robelbaye6@gmail.com', NULL, NULL, NULL, '456'),
(26, 'Admin Email', NULL, NULL, NULL, '457');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'superadmin', 'Super Admin'),
(2, 'members', 'General User'),
(3, 'Accountant', 'For Financial Activities'),
(4, 'Doctor', 'Medical Doctor'),
(5, 'Patient', 'Patient'),
(6, 'Nurse', 'Nurse'),
(7, 'Pharmacist', 'Pharmacist'),
(8, 'Laboratorist', 'Laboratorist'),
(10, 'Receptionist', 'Receptionist'),
(11, 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(100) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `password`, `address`, `phone`, `package`, `p_limit`, `d_limit`, `module`, `ion_user_id`) VALUES
(416, 'Ibex Hospital', 'admin@1888.com', '', 'Gondar, Ethiopia', '+251927689249', '79', '100000', '1000', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `report` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `category`, `patient`, `doctor`, `date`, `category_name`, `report`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`) VALUES
(1926, NULL, '33', '149', '1684360800', NULL, '<table align=\"center\" border=\"1\" cellpadding=\"5\" cellspacing=\"0\">\r\n <thead>\r\n  <tr>\r\n   <th scope=\"col\">Head 1</th>\r\n   <th scope=\"col\">Head 2</th>\r\n   <th scope=\"col\">Head 3</th>\r\n   <th scope=\"col\">Head 4</th>\r\n   <th scope=\"col\">Head 5</th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>10</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n  </tr>\r\n  <tr>\r\n   <td>?</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n   <td>?</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p>?</p>\r\n', NULL, '2', 'Mr Patient', '+251912345678', 'Gondar, Ethiopia', 'Dr Doctor', '18-05-23', '416');

-- --------------------------------------------------------

--
-- Table structure for table `laboratorist`
--

CREATE TABLE `laboratorist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratorist`
--

INSERT INTO `laboratorist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(4, 'uploads/male.jpg', 'Mr Laboratorist', 'laboratorist@1888.com', 'Gondar, Ethiopia', '+251912345678', '', '', '754', '416');

-- --------------------------------------------------------

--
-- Table structure for table `lab_category`
--

CREATE TABLE `lab_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `reference_value` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical_history`
--

CREATE TABLE `medical_history` (
  `id` int(100) NOT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `box` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `generic` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `effects` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_date` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `price`, `box`, `s_price`, `quantity`, `generic`, `company`, `effects`, `e_date`, `add_date`, `hospital_id`) VALUES
(2866, 'test items', 'anti biotics', '150', 'PCS', '200', 8, 'test items', 'TEST PLC', '', '23-05-2023', '05/22/23', '416'),
(2867, 'test', 'anti biotics', '150', 'PCS', '200', 10, 'test ', 'TEST PLC', '', '25-05-2023', '05/25/23', '416');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category`, `description`, `hospital_id`) VALUES
(19, 'anti biotics', 'anti biotics', '416');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(100) NOT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `modules` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(100) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `z` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `z`, `ion_user_id`, `hospital_id`) VALUES
(13, 'uploads/female.jpg', 'Mrs Nurse', 'nurse@1888.com', 'Gondar, Ethiopia', '+251912345678', '', '', '', '752', '416');

-- --------------------------------------------------------

--
-- Table structure for table `ot_payment`
--

CREATE TABLE `ot_payment` (
  `id` int(100) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_c_s` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_a_s_2` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_anaes` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `n_o_o` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_s_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_1` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `a_s_f_2` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `anaes_f` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ot_charge` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `cab_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `seat_rent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `others` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_fees` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `p_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_limit` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `show_in_frontend` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `frontend_order` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `set_as_default` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `price`, `p_limit`, `d_limit`, `module`, `show_in_frontend`, `frontend_order`, `set_as_default`) VALUES
(77, '1888 Basic', '25000', '25000', '100', 'accountant,appointment,lab,department,doctor,laboratorist,nurse,patient,pharmacist,prescription,receptionist,report', 'Yes', NULL, '1'),
(78, '1888 Standard ', '50000', '50000', '500', 'accountant,appointment,lab,department,doctor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report', 'Yes', NULL, '0'),
(79, '1888 Enterprise', '85000', '100000', '1000', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice', 'Yes', NULL, '0'),
(80, '1888 Express', '100000', '300000', '50000', 'accountant,appointment,lab,bed,department,doctor,donor,finance,pharmacy,laboratorist,medicine,nurse,patient,pharmacist,prescription,receptionist,report,notice,email,sms', 'Yes', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `birthdate` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `age` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bloodgroup` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `how_added` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `img_url`, `name`, `email`, `doctor`, `address`, `phone`, `sex`, `birthdate`, `age`, `bloodgroup`, `ion_user_id`, `patient_id`, `add_date`, `registration_time`, `how_added`, `hospital_id`) VALUES
(33, 'uploads/male.jpg', 'Mr Patient', 'patient@1888.com', '149', 'Gondar, Ethiopia', '+251927689249', 'Male', '07-07-2019', '50', 'A+', '750', '727265', '07/07/19', '1562482338', '', '416'),
(37, NULL, 'TEST', 'test@1888.com', '150', 'Gondar, Ethiopia', '+251927689249', 'Male', '17-01-1995', NULL, 'A+', '762', '690836', '05/24/23', '1684937130', NULL, '416');

-- --------------------------------------------------------

--
-- Table structure for table `patient_deposit`
--

CREATE TABLE `patient_deposit` (
  `id` int(10) NOT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposited_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_deposit`
--

INSERT INTO `patient_deposit` (`id`, `patient`, `payment_id`, `date`, `deposited_amount`, `amount_received_id`, `deposit_type`, `gateway`, `user`, `hospital_id`) VALUES
(1595, '33', '2021', '1684407146', '', '2021.gp', '0', NULL, '751', '416'),
(1596, '33', '2021', '1684504032', '250', NULL, 'Cash', NULL, '2', '416'),
(1597, '33', '2022', '1684848572', '350', '2022.gp', 'Cash', NULL, '2', '416');

-- --------------------------------------------------------

--
-- Table structure for table `patient_material`
--

CREATE TABLE `patient_material` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deposit_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient_address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date_string` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `remarks`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `deposit_type`, `status`, `user`, `patient_name`, `patient_phone`, `patient_address`, `doctor_name`, `date_string`, `hospital_id`) VALUES
(2021, NULL, '33', '149', '1684407146', '250', '0', NULL, NULL, '0', '0', '250', '', '175', '75', NULL, '16*250*diagnostic*1', '', '0', 'unpaid', '751', 'Mr Patient', '+251912345678', 'Gondar, Ethiopia', 'Dr Doctor', '18-05-23', '416'),
(2022, NULL, '33', '149', '1684848572', '350', '0', NULL, NULL, '0', '0', '350', '', '275', '75', NULL, '16*250*diagnostic*1,20*100*others*1', '350', 'Cash', 'unpaid', '2', 'Mr Patient', '+251927689249', 'Gondar, Ethiopia', 'Dr Doctor', '23-05-23', '416');

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `merchant_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `salt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIUsername` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APIPassword` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `APISignature` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `name`, `merchant_key`, `salt`, `x`, `y`, `APIUsername`, `APIPassword`, `APISignature`, `status`, `hospital_id`) VALUES
(59, 'Pay U Money', 'Merchant key', 'Salt', NULL, NULL, NULL, NULL, NULL, 'test', '457'),
(58, 'PayPal', NULL, NULL, NULL, NULL, 'PayPal API Username', 'PayPal API Password', 'PayPal API Signature', 'test', '457');

-- --------------------------------------------------------

--
-- Table structure for table `payment_category`
--

CREATE TABLE `payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_category`
--

INSERT INTO `payment_category` (`id`, `category`, `description`, `c_price`, `type`, `d_commission`, `h_commission`, `hospital_id`) VALUES
(16, 'E.C.G', 'Payments from E.C.G', '250', 'diagnostic', 30, 0, '416'),
(78, 'USG - Pregnancy Pro', 'USG - Pregnancy Pro', '400', 'diagnostic', 30, 0, '416'),
(19, 'Ward Fee', 'Deposits from ward', '400', 'others', 0, 0, '416'),
(20, 'Admission Fees', 'Patient Admission Fees', '100', 'others', 0, 0, '416'),
(23, 'Oxyzen', 'Income From Oxyzen', '0', 'others', 0, 0, '416'),
(24, 'Nebulizer', 'Income From Nebulizer', '60', 'others', 0, 0, '416'),
(25, 'Newspaper sell', 'Income From selling old newspaper', '0', 'others', 0, 0, '416'),
(33, 'Ambulance', 'Ambulance er vara', '0', 'others', 0, 0, '416'),
(34, 'HbAIc', 'gfdsegfdgd', '800', 'diagnostic', 30, 0, '416'),
(35, 'Troponin-I', 'Pathological Test', '1000', 'diagnostic', 30, 0, '416'),
(36, 'CBC (DIGITAL)', 'Pathological Test', '450', 'diagnostic', 30, 0, '416'),
(37, 'Eosinophil', 'Pathological Test', '100', 'diagnostic', 30, 0, '416'),
(38, 'Platelets', 'Pathological Test', '200', 'diagnostic', 30, 0, '416'),
(39, 'Malarial Parasites (MP)', 'Pathological Test', '100', 'diagnostic', 30, 0, '416'),
(40, 'BT/ CT', 'Pathological Test', '200', 'diagnostic', 30, 0, '416'),
(41, 'ASO Titre', 'Pathological Test', '250', 'diagnostic', 30, 0, '416'),
(42, 'CRP', 'Pathological Test', '400', 'diagnostic', 30, 0, '416'),
(43, 'R/A test', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(44, 'VDRL', 'Pathological Test', '200', 'diagnostic', 30, 0, '416'),
(45, 'TPHA', 'Pathological Test', '350', 'diagnostic', 30, 0, '416'),
(46, 'HBsAg (Screening)', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(47, 'HBsAg (Confirmatory)', 'Pathological Test', '600', 'diagnostic', 30, 0, '416'),
(48, 'CFT for Kala Zar', 'Pathological Test', '0', 'diagnostic', 0, 0, '416'),
(49, 'CFT for Filaria', 'Pathological Test', '0', 'diagnostic', 0, 0, '416'),
(50, 'Pregnancy Test', 'Pathological Test', '150', 'diagnostic', 30, 0, '416'),
(51, 'Blood Grouping', 'Pathological Test', '100', 'diagnostic', 30, 0, '416'),
(52, 'Widal Test', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(53, 'RBS', 'Pathological Test', '100', 'diagnostic', 30, 0, '416'),
(54, 'Blood Urea', 'Pathological Test', '250', 'diagnostic', 30, 0, '416'),
(55, 'S. Creatinine', 'Pathological Test', '250', 'diagnostic', 30, 0, '416'),
(56, 'S. cholesterol', 'Pathological Test', '250', 'diagnostic', 30, 0, '416'),
(57, 'Fasting Lipid Profile', 'Pathological Test', '850', 'diagnostic', 30, 0, '416'),
(58, 'S. Bilirubin', 'Pathological Test', '150', 'diagnostic', 30, 0, '416'),
(59, 'S. Alkaline Phosohare', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(60, 'S. Albumin', 'Pathological Test', '250', 'diagnostic', 30, 0, '416'),
(61, 'S. Calcium', 'Pathological Test', '350', 'diagnostic', 30, 0, '416'),
(62, 'RBS with CUS', 'Pathological Test', '160', 'diagnostic', 30, 0, '416'),
(63, 'SGPT', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(64, 'SGOT', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(65, 'Urine for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, '416'),
(66, 'Urine C/S', 'Pathological Test', '350', 'diagnostic', 30, 0, '416'),
(67, 'Stool for R/E', 'Pathological Test', '150', 'diagnostic', 30, 0, '416'),
(68, 'Semen Analysis', 'Pathological Test', '300', 'diagnostic', 30, 0, '416'),
(69, 'S. Electrolyte', 'Pathological Test', '800', 'diagnostic', 30, 0, '416'),
(70, 'S. T3/ T4/ THS', 'Pathological Test', '1000', 'diagnostic', 30, 0, '416'),
(71, 'MT', 'Pathological Test', '150', 'diagnostic', 30, 0, '416'),
(77, 'USG - Whole Abdomen ', 'USG - Whole Abdomen ', '400', 'diagnostic', 30, 0, '416'),
(73, 'ECHO Normal', 'ksdjkfsd', '700', 'diagnostic', 30, 0, '416'),
(76, 'x-ray chest', 'Normal', '200', 'diagnostic', 10, 0, '416'),
(79, 'USG - KUB', 'USG - KUB', '500', 'diagnostic', 20, 0, '416'),
(80, 'USG - Liver', 'USG - Liver', '400', 'diagnostic', 30, 0, '416'),
(81, 'USG - Breast (Left)', 'USG - Breast (Left)', '400', 'diagnostic', 30, 0, '416'),
(82, 'USG - Breast (Right)', 'USG - Breast (Right)', '400', 'diagnostic', 30, 0, '416'),
(83, 'X-RAY - Ba MealS+D  ', 'X-RAY - Ba MealS+D  ', '1400', 'diagnostic', 20, 0, '416'),
(84, 'X-RAY - Ba Swallo Oesopha', 'X-RAY - Ba Swallo Oesopha', '1000', 'diagnostic', 20, 0, '416'),
(85, 'X-RAY - KUB                         ', 'X-RAY - KUB ', '500', 'diagnostic', 20, 0, '416'),
(86, 'X-RAY - Leg Joint(B/V)(L/R)', 'X-RAY - Leg Joint(B/V)(L/R)', '500', 'diagnostic', 20, 0, '416'),
(87, 'X-RAY -Knee Joint(L/R)', 'X-RAY -Knee Joint(L/R)', '500', 'diagnostic', 20, 0, '416'),
(88, 'X-RAY - Finger(B/V) ', 'X-RAY - Finger(B/V) ', '350', 'diagnostic', 20, 0, '416'),
(89, 'X-RAY - Wrist(B/V)(L/R) ', 'X-RAY - Wrist(B/V)(L/R) ', '350', 'diagnostic', 20, 0, '416'),
(90, 'X-RAY - Hand(B/V)(L/R)                   ', 'X-RAY - Hand(B/V)(L/R)       ', '350', 'diagnostic', 20, 0, '416'),
(91, 'X-RAY - Elbow(B/V)(L/R)', 'X-RAY - Elbow(B/V)(L/R)', '350', 'diagnostic', 20, 0, '416'),
(92, 'X-RAY - Erm(B/V)(L/R )', 'X-RAY - Erm(B/V)(L/R )', '350', 'diagnostic', 20, 0, '416'),
(93, 'X-RAY - Shoulder Joint (B/V)', 'X-RAY - Shoulder Joint (B/V)', '500', 'diagnostic', 20, 0, '416'),
(94, 'X-RAY - Shoulder Joint (A/P)', 'X-RAY - Shoulder Joint (A/P)', '350', 'diagnostic', 20, 0, '416'),
(95, 'X-RAY - Foot (B/V)', 'X-RAY - Foot (B/V)', '350', 'diagnostic', 20, 0, '416'),
(96, 'X-RAY - Thigh(B/V)', 'X-RAY - Thigh(B/V)', '500', 'diagnostic', 20, 0, '416'),
(97, 'X-RAY - Ankle(B/V)', 'X-RAY - Ankle(B/V)', '350', 'diagnostic', 20, 0, '416'),
(98, 'X-RAY - Hip Joint(A/P)', 'X-RAY - Hip Joint(A/P)', '350', 'diagnostic', 20, 0, '416'),
(99, 'X-RAY - Pelvis(A/P)', 'X-RAY - Pelvis(A/P)', '500', 'diagnostic', 20, 0, '416'),
(100, 'X-RAY - L/S(B/V)(Lamber Spine)', 'X-RAY - L/S(B/V)(Lamber Spine)', '500', 'diagnostic', 20, 0, '416'),
(101, 'X-RAY - L/S(A/P)(LamberSpine)', 'X-RAY - L/S(A/P)(LamberSpine)', '500', 'diagnostic', 20, 0, '416'),
(102, 'X-RAY - D/L(A/P)(Thoracic)', 'X-RAY - D/L(A/P)(Thoracic)', '500', 'diagnostic', 20, 0, '416'),
(103, 'X-RAY - Mandable(B/V)', 'X-RAY - Mandable(B/V)', '500', 'diagnostic', 20, 0, '416'),
(104, 'X-RAY -C/S(AP)(Carvicai)', 'X-RAY -C/S(AP)(Carvicai)', '500', 'diagnostic', 20, 0, '416'),
(105, 'X-RAY - PNS (AP)', 'X-RAY - PNS (AP)', '350', 'diagnostic', 20, 0, '416'),
(106, 'ESR', 'Patho Test', '150', 'diagnostic', 30, 0, '416'),
(107, 'FBS CUS', 'Pathological test', '160', 'diagnostic', 30, 0, '416'),
(108, 'Hb%', 'Pathological test', '100', 'diagnostic', 30, 0, '416'),
(109, 'Physio-Therapy', 'Therapy', '1000', 'diagnostic', 30, 0, '416'),
(114, '2HABF', 'Pathological test', '100', 'diagnostic', 30, 0, '416'),
(113, 'FBS', 'Pathological test', '100', 'diagnostic', 30, 0, '416'),
(115, 'S. TSH', 'Pathological test', '400', 'diagnostic', 30, 0, '416'),
(116, 'S. T3', 'Pathological test', '400', 'diagnostic', 30, 0, '416'),
(117, 'DC', 'Pathological test', '200', 'diagnostic', 30, 0, '416'),
(118, 'TC', 'Pathological test', '200', 'diagnostic', 30, 0, '416'),
(119, 'X-Ray CXR (Digital)', 'X-Ray', '500', 'diagnostic', 20, 0, '416'),
(120, 'S. Uric acid', 'Pathological test', '250', 'diagnostic', 30, 0, '416'),
(122, 'U.S.G OF L/A ', 'U.S.G', '400', 'diagnostic', 30, 0, '416'),
(125, 'Rt knee joient b/v', 'X-Ray', '500', 'diagnostic', 20, 0, '416'),
(126, 'eosinphil', 'Pathology Test', '100', 'diagnostic', 20, 0, '416');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `y`, `ion_user_id`, `hospital_id`) VALUES
(9, 'uploads/female.jpg', 'Mrs. Pharmacist', 'pharmacist@1888.com', 'Gondar, Ethiopia', '+251912345678', '', '', '753', '416');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense`
--

CREATE TABLE `pharmacy_expense` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_expense_category`
--

CREATE TABLE `pharmacy_expense_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `y` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment`
--

CREATE TABLE `pharmacy_payment` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `x_ray` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `flat_vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `flat_discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `gross_total` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_amount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `category_amount` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `category_name` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `amount_received` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy_payment`
--

INSERT INTO `pharmacy_payment` (`id`, `category`, `patient`, `doctor`, `date`, `amount`, `vat`, `x_ray`, `flat_vat`, `discount`, `flat_discount`, `gross_total`, `hospital_amount`, `doctor_amount`, `category_amount`, `category_name`, `amount_received`, `status`, `hospital_id`) VALUES
(1969, NULL, '0', NULL, '1684779216', '200', '0', NULL, NULL, '', '', '200', NULL, NULL, NULL, '2866*200*1*150', '0', 'unpaid', '416'),
(1970, NULL, '0', NULL, '1684847847', '200', '0', NULL, NULL, '', '', '200', NULL, NULL, NULL, '2866*200*1*150', '0', 'unpaid', '416');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_payment_category`
--

CREATE TABLE `pharmacy_payment_category` (
  `id` int(10) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `c_price` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `d_commission` int(100) DEFAULT NULL,
  `h_commission` int(100) DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `symptom` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `advice` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dd` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `medicine` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `validity` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `patient`, `doctor`, `symptom`, `advice`, `state`, `dd`, `medicine`, `validity`, `note`, `hospital_id`) VALUES
(74, '1684706400', '33', '149', '', NULL, NULL, NULL, '2867,2866', NULL, '<p>2 days</p>\r\n', '416'),
(75, '1684965600', '37', '149', '', NULL, NULL, NULL, '2866,2867', NULL, '', '416');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `id` int(100) NOT NULL,
  `img_url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ion_user_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`id`, `img_url`, `name`, `email`, `address`, `phone`, `x`, `ion_user_id`, `hospital_id`) VALUES
(8, 'uploads/female.jpg', 'Mrs.Receptionist', 'receptionist@1888.com', 'Gondar, Ethiopia', '+251912345678', '', '756', '416');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(100) NOT NULL,
  `report_type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `patient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `package` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(100) NOT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `title`, `description`) VALUES
(1, '', 'Clinic Management Syste', 'Clinic Management Syste'),
(2, '', 'Hospital Management Syetem', 'Hospital Management Syetem'),
(3, '', 'Pharmacy Management System', 'Pharmacy Management System'),
(4, '', 'Laboratory Management System', 'Laboratory Management System');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `system_vendor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `discount` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `login_title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_logo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `payment_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sms_gateway` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `codec_purchase_code` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_vendor`, `title`, `address`, `phone`, `email`, `facebook_id`, `currency`, `language`, `discount`, `vat`, `login_title`, `logo`, `invoice_logo`, `payment_gateway`, `sms_gateway`, `codec_username`, `codec_purchase_code`, `hospital_id`) VALUES
(4, '1888 Systems', '1888 Systems', 'Gondar, Ethiopia', '+251927689249', 'robelbaye6@gmail.com', '', 'Birr', 'amharic', 'flat', '15', '1888 Systems', 'uploads/romass-BG3.png', 'uploads/logo-nonetext.png', '', '', '', '', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `text1` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text2` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `text3` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `title`, `img_url`, `text1`, `text2`, `text3`, `position`, `status`) VALUES
(1, 'Slider 1', 'uploads/1503411077revised-bhatia-homebanner-03.jpg', 'Register Your Hospital Today', 'Run Your System in a Secure Environment', 'Hospital', '2', 'Active'),
(2, 'Best Hospital management System', 'uploads/1707260345350542.jpg', 'Best Hospital management System', 'Best Hospital management System', 'Best Hospital management System', '1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(100) NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `recipient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `api_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sender` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `authkey` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `name`, `username`, `password`, `api_id`, `sender`, `authkey`, `user`, `hospital_id`) VALUES
(1, 'sms gateway', '0', '0', '0', '0', '0', '2', '416'),
(2, 'Clickatell', 'Your ClickAtell Username', 'Your ClickAtell Password', 'Your ClickAtell Api Id', NULL, NULL, '1', '457'),
(3, 'MSG91', 'Your MSG91 Username', NULL, 'Your MSG91 API ID', NULL, 'Your MSG91 Auth Key', '1', '457');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `template` varchar(10000) CHARACTER SET utf8 DEFAULT NULL,
  `user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `name`, `template`, `user`, `x`, `hospital_id`) VALUES
(14, 'Bacteriology', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" >\r\n <caption>\r\n <h2><strong>Bacteriology</strong></h2>\r\n </caption>\r\n <thead>\r\n  <tr>\r\n   <th scope=\"col\">\r\n   <h2><strong>Test</strong></h2>\r\n   </th>\r\n   <th scope=\"col\">\r\n   <h2><strong>Results</strong></h2>\r\n   </th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Specimen</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Gram Stain</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>EFP</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>KOH</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Other</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Others</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416'),
(11, 'CBC', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" summary=\"CBC\">\r\n <caption>\r\n <h2><strong>CBC</strong></h2>\r\n </caption>\r\n <thead>\r\n  <tr>\r\n   <th scope=\"col\">\r\n   <h2><strong>TEST</strong></h2>\r\n   </th>\r\n   <th scope=\"col\">\r\n   <h2><strong>Result&#39;s</strong></h2>\r\n   </th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>WBC</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Differential</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>HGB</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>PLT</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416'),
(12, 'Acute phase reactants', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n <caption>\r\n <h2><strong>Acute phase reactants </strong></h2>\r\n </caption>\r\n <thead>\r\n  <tr>\r\n   <th scope=\"col\">\r\n   <h2><strong>Test</strong></h2>\r\n   </th>\r\n   <th scope=\"col\">\r\n   <h2><strong>Result&#39;s</strong></h2>\r\n   </th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>ESR</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>CRP</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416'),
(13, 'Coomb\'s Test', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" >\r\n <caption>\r\n <h2><strong>Coomb&#39;s Test</strong></h2>\r\n </caption>\r\n <thead>\r\n  <tr>\r\n   <th scope=\"col\">\r\n   <h2><strong>Test</strong></h2>\r\n   </th>\r\n   <th scope=\"col\">\r\n   <h2><strong>Result&#39;s</strong></h2>\r\n   </th>\r\n  </tr>\r\n </thead>\r\n <tbody>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Direct</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <td>\r\n   <h2><strong>Indirect</strong></h2>\r\n   </td>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416'),
(15, 'Serology', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" >\r\n <caption>\r\n <h2><strong>Serology</strong></h2>\r\n </caption>\r\n <tbody>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Test</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2><strong>Result</strong></h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Blood Group</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Widal</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>wei-Felix</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>ASO titer</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>VDRL</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>H.Pylori Ab</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>H.Pylori Stool Ag</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>HBsAg</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Anti-HCV Ab</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>RF</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>ANA</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>HIV</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Urine HCG</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n  <tr>\r\n   <th scope=\"row\">\r\n   <h2><strong>Other(Specify)</strong></h2>\r\n   </th>\r\n   <td>\r\n   <h2> </h2>\r\n   </td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n\r\n<p> </p>\r\n', '2', NULL, '416');

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(100) NOT NULL,
  `doctor` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `duration` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `id` int(100) NOT NULL,
  `doctor` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `e_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `weekday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `s_time_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `hospital_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `hospital_ion_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `hospital_ion_id`) VALUES
(1, '127.0.0.1', 'superadmin', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', '', 'robelbaye6@gmail.com', '', NULL, NULL, NULL, 1268889823, 1684757235, 1, 'Super', 'Admin', 'ADMIN', '0', ''),
(2, '127.0.0.1', 'Ibex Hospital', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'admin@1888.com', NULL, NULL, NULL, NULL, 1268889832, 1685117034, 1, 'admin', NULL, NULL, NULL, '2'),
(750, '127.0.0.1', 'Mr Patient', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'patient@1888.com', NULL, NULL, NULL, NULL, 1562482338, 1684249971, 1, NULL, NULL, NULL, NULL, '2'),
(751, '127.0.0.1', 'Mr Doctor', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'doctor@1888.com', NULL, NULL, NULL, NULL, 1562482389, 1684853101, 1, NULL, NULL, NULL, NULL, '2'),
(752, '127.0.0.1', 'Mrs Nurse', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'nurse@1888.com', NULL, NULL, NULL, NULL, 1562482422, 1684239991, 1, NULL, NULL, NULL, NULL, '2'),
(753, '127.0.0.1', 'Mr. Pharmacist', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'pharmacist@1888.com', NULL, NULL, NULL, NULL, 1562482455, 1684779138, 1, NULL, NULL, NULL, NULL, '2'),
(754, '127.0.0.1', 'Mr Laboratorist', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'laboratorist@1888.com', NULL, NULL, NULL, NULL, 1562482499, 1684240071, 1, NULL, NULL, NULL, NULL, '2'),
(755, '127.0.0.1', 'Mr Accountant', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'accountant@1888.com', NULL, NULL, NULL, NULL, 1562482536, 1684510396, 1, NULL, NULL, NULL, NULL, '2'),
(756, '127.0.0.1', 'Mr Receptionist', '$2y$08$1Rvlfb8r7JXT9SZtzbGYGuttL1p7G4ULzMtOOb4YkxCHuU383eEGK', NULL, 'receptionist@1888.com', NULL, NULL, NULL, NULL, 1562482561, 1684563989, 1, NULL, NULL, NULL, NULL, '2'),
(761, '::1', 'Dr Abebech Yimer', '$2y$08$mUd10fpg6ZN.Nj8FvWaU0.hyjnUQ6QW/pQYoN7ow9mG8mj8/5EuSi', NULL, 'abebech@1888.com', NULL, NULL, NULL, NULL, 1684853308, 1684955042, 1, NULL, NULL, NULL, NULL, '2'),
(762, '::1', 'TEST', '$2y$08$x1xZLpCG.Z.KlTgaZh94EepTLVv87ssBXkI9SShl9hN2ueCFeQujG', NULL, 'test@1888.com', NULL, NULL, NULL, NULL, 1684937130, NULL, 1, NULL, NULL, NULL, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 11),
(752, 750, 5),
(753, 751, 4),
(754, 752, 6),
(755, 753, 7),
(756, 754, 8),
(757, 755, 3),
(758, 756, 10),
(763, 761, 4),
(764, 762, 5);

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` int(100) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `logo` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `emergency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `support` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `block_1_text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `service_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `doctor_block__text_under_title` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_username` varchar(100) NOT NULL,
  `google_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `skype_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `x` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `title`, `logo`, `address`, `phone`, `emergency`, `support`, `email`, `currency`, `block_1_text_under_title`, `service_block__text_under_title`, `doctor_block__text_under_title`, `facebook_id`, `twitter_id`, `twitter_username`, `google_id`, `youtube_id`, `skype_id`, `x`) VALUES
(1, '1888 Systems', 'uploads/romass-BG2.png', 'Gondar, Ethiopia', '+251970708303', '+251927689249', '+251927689249', 'robelbaye6@gmail.com', 'Birr', 'Best hospital software', '', 'We work with forward thinking clients to create beautiful, honest and amazing things that bring positive results.', 'https://www.facebook.com/1888Systems', 'https://www.twitter.com/1888Systems', '1888Systems', 'https://www.google.com/1888Systems', 'https://www.youtube.com/1888Systems', 'https://www.skype.com/1888Systems', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bankb`
--
ALTER TABLE `bankb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_category`
--
ALTER TABLE `bed_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratorist`
--
ALTER TABLE `laboratorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_category`
--
ALTER TABLE `lab_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_history`
--
ALTER TABLE `medical_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ot_payment`
--
ALTER TABLE `ot_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_material`
--
ALTER TABLE `patient_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_category`
--
ALTER TABLE `payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `alloted_bed`
--
ALTER TABLE `alloted_bed`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;

--
-- AUTO_INCREMENT for table `bankb`
--
ALTER TABLE `bankb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `bed_category`
--
ALTER TABLE `bed_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `diagnostic_report`
--
ALTER TABLE `diagnostic_report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1928;

--
-- AUTO_INCREMENT for table `laboratorist`
--
ALTER TABLE `laboratorist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lab_category`
--
ALTER TABLE `lab_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_history`
--
ALTER TABLE `medical_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2868;

--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ot_payment`
--
ALTER TABLE `ot_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `patient_deposit`
--
ALTER TABLE `patient_deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1598;

--
-- AUTO_INCREMENT for table `patient_material`
--
ALTER TABLE `patient_material`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `payment_category`
--
ALTER TABLE `payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pharmacy_expense`
--
ALTER TABLE `pharmacy_expense`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `pharmacy_expense_category`
--
ALTER TABLE `pharmacy_expense_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `pharmacy_payment`
--
ALTER TABLE `pharmacy_payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1971;

--
-- AUTO_INCREMENT for table `pharmacy_payment_category`
--
ALTER TABLE `pharmacy_payment_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `time_slot`
--
ALTER TABLE `time_slot`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2129;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=763;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
