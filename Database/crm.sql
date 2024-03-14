-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 07:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_account_cancel_cheque_preview`
--

CREATE TABLE `bank_account_cancel_cheque_preview` (
  `mob_no` bigint(20) NOT NULL,
  `Agreement` mediumblob DEFAULT NULL,
  `Undertaking` mediumblob DEFAULT NULL,
  `Declaration` mediumblob DEFAULT NULL,
  `Security_Deposit_Payment_Slip` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_account_cancel_cheque_preview`
--

INSERT INTO `bank_account_cancel_cheque_preview` (`mob_no`, `Agreement`, `Undertaking`, `Declaration`, `Security_Deposit_Payment_Slip`) VALUES
(8421279597, 0x75706c6f6164732f70726f66696c652e6a706567, 0x75706c6f6164732f70726f66696c652e6a706567, 0x75706c6f6164732f70726f66696c652e6a706567, 0x75706c6f6164732f70726f66696c652e6a706567);

-- --------------------------------------------------------

--
-- Table structure for table `bgl_review`
--

CREATE TABLE `bgl_review` (
  `Sr_No` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Note_Remark` text DEFAULT NULL,
  `Total_BGL_Amount` decimal(10,2) DEFAULT NULL,
  `Total_Paid_Amount` decimal(10,2) DEFAULT NULL,
  `Pay_Amount` decimal(10,2) DEFAULT NULL,
  `Unpaid_Amount` decimal(10,2) DEFAULT NULL,
  `Total_Unpaid_Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bgl_review`
--

INSERT INTO `bgl_review` (`Sr_No`, `customer_id`, `Date`, `Note_Remark`, `Total_BGL_Amount`, `Total_Paid_Amount`, `Pay_Amount`, `Unpaid_Amount`, `Total_Unpaid_Amount`) VALUES
(1, '1234567890', '2024-03-15', 'Customer has made partial payment. And some random questions.', '1500.00', '1000.00', '500.00', '500.00', '1500.00');

-- --------------------------------------------------------

--
-- Table structure for table `call_history`
--

CREATE TABLE `call_history` (
  `Mob_no` bigint(20) NOT NULL,
  `Call_InOut` varchar(255) DEFAULT NULL,
  `Call_Date` date DEFAULT NULL,
  `Call_Time` varchar(255) DEFAULT NULL,
  `Enquiry_Complaint` varchar(255) DEFAULT NULL,
  `Call_Reason_Query` varchar(255) DEFAULT NULL,
  `Project` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Subtype` varchar(255) DEFAULT NULL,
  `Resolution` varchar(255) DEFAULT NULL,
  `Interaction_Type` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_history`
--

INSERT INTO `call_history` (`Mob_no`, `Call_InOut`, `Call_Date`, `Call_Time`, `Enquiry_Complaint`, `Call_Reason_Query`, `Project`, `Type`, `Subtype`, `Resolution`, `Interaction_Type`, `Remark`) VALUES
(5555555555, 'Inbound', '2024-03-03', '10:45:00', 'Complaint', 'Service Disruption', 'Project Z', 'Penalty', 'Late Payment', 'Issue Not Resolve', 'Operator Not Satisfied', 'Customer was dissatisfied with resolution.'),
(8421279597, 'Inbound', '2024-03-01', '08:30:00', 'Complaint', 'Technical Issue', 'Project X', 'Tech Support', 'Hardware', 'Issue Resolve', 'Operator Satisfied', 'Resolved the issue after troubleshooting.'),
(9876543210, 'Outbound', '2024-03-02', '14:00:00', 'Enquiry', 'Product Query', 'Project Y', 'Documentation', NULL, NULL, NULL, 'Provided information about product documentation.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `mob_no` bigint(20) NOT NULL,
  `Whatsapp_No` bigint(20) NOT NULL,
  `Alternate_Contact_No` varchar(255) NOT NULL,
  `Personal_Mail_ID` varchar(255) NOT NULL,
  `Official_Mail_ID` varchar(255) NOT NULL,
  `Communication_Address` varchar(255) NOT NULL,
  `Permanent_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`mob_no`, `Whatsapp_No`, `Alternate_Contact_No`, `Personal_Mail_ID`, `Official_Mail_ID`, `Communication_Address`, `Permanent_Address`) VALUES
(8421279597, 9876543210, '9876543211', 'personal@example.com', 'official@example.com', '123 Street, City, State', '456 Street, City, State');

-- --------------------------------------------------------

--
-- Table structure for table `document_details`
--

CREATE TABLE `document_details` (
  `mob_no` bigint(20) NOT NULL,
  `Profile_Picture` blob DEFAULT NULL,
  `Aadhar_Card_No` bigint(20) DEFAULT NULL,
  `AdPreview` blob DEFAULT NULL,
  `Pan_Card_No` bigint(20) DEFAULT NULL,
  `PanPreview` blob DEFAULT NULL,
  `NSCIT_Certificate_No` bigint(20) DEFAULT NULL,
  `NSPreview` blob DEFAULT NULL,
  `Highest_Qualification_Degree` varchar(255) DEFAULT NULL,
  `Certificate_Preview` blob DEFAULT NULL,
  `Bank_Name` varchar(255) DEFAULT NULL,
  `Branch_Name` varchar(255) DEFAULT NULL,
  `Branch_Location` varchar(255) DEFAULT NULL,
  `Account_no` varchar(255) DEFAULT NULL,
  `IFSC_Code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `document_details`
--

INSERT INTO `document_details` (`mob_no`, `Profile_Picture`, `Aadhar_Card_No`, `AdPreview`, `Pan_Card_No`, `PanPreview`, `NSCIT_Certificate_No`, `NSPreview`, `Highest_Qualification_Degree`, `Certificate_Preview`, `Bank_Name`, `Branch_Name`, `Branch_Location`, `Account_no`, `IFSC_Code`) VALUES
(8421279597, 0x75706c6f6164732f70726f66696c652e6a706567, 242424, 0x75706c6f6164732f4164707265762e6a706567, 234234, 0x75706c6f6164732f50616e507265762e6a706567, 23423, 0x75706c6f6164732f4e73507265762e6a706567, 'Btech', 0x75706c6f6164732f6465677265652e6a706567, 'SBI', 'Katraj', 'Pune', '234234234234', 'SBI34KP');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_history`
--

CREATE TABLE `enquiry_history` (
  `Sr_No` int(11) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `Tag_Date_Time` datetime DEFAULT NULL,
  `Call_Type` varchar(50) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Sub_Type` varchar(255) DEFAULT NULL,
  `Query` varchar(1000) DEFAULT NULL,
  `Feedback` varchar(1000) DEFAULT NULL,
  `Resolution` varchar(1000) DEFAULT NULL,
  `Resolution_Status` varchar(50) DEFAULT NULL,
  `Remark` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry_history`
--

INSERT INTO `enquiry_history` (`Sr_No`, `customer_id`, `Tag_Date_Time`, `Call_Type`, `Type`, `Sub_Type`, `Query`, `Feedback`, `Resolution`, `Resolution_Status`, `Remark`) VALUES
(1, '1234567890', '2024-03-13 09:30:00', 'Inbound', 'General', 'Technical', 'How do I reset my password?', 'Customer was satisfied with the explanation provided.', 'Password reset link sent to customer.', 'Resolved', 'Issue resolved successfully.');

-- --------------------------------------------------------

--
-- Table structure for table `operatormaininfo`
--

CREATE TABLE `operatormaininfo` (
  `mob_no` bigint(20) NOT NULL,
  `Operator_Name` varchar(255) DEFAULT NULL,
  `Operator_ID` int(11) DEFAULT NULL,
  `NSCIT_Certificate_No` int(11) DEFAULT NULL,
  `Aadhar_Operator_ID` varchar(255) DEFAULT NULL,
  `Project` varchar(255) DEFAULT NULL,
  `Important_Notification` varchar(255) DEFAULT NULL,
  `Activation_Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operatormaininfo`
--

INSERT INTO `operatormaininfo` (`mob_no`, `Operator_Name`, `Operator_ID`, `NSCIT_Certificate_No`, `Aadhar_Operator_ID`, `Project`, `Important_Notification`, `Activation_Status`) VALUES
(8421279597, 'Akshay', 1, 8343, '234234', 'BOM', 'Finish work till 5pm', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `mob_no` varchar(15) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`mob_no`, `name`, `gender`, `email`, `address`) VALUES
('8421279597', 'Ram', 'male', 'ram@123', 'pune');

-- --------------------------------------------------------

--
-- Table structure for table `penalty_review`
--

CREATE TABLE `penalty_review` (
  `Sr_No` int(11) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Note_Remark` varchar(255) DEFAULT NULL,
  `Penalty_Amount` decimal(10,2) DEFAULT NULL,
  `Total_Paid_Amount` decimal(10,2) DEFAULT NULL,
  `Unpaid_Amount` decimal(10,2) DEFAULT NULL,
  `Total_Penalty_Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penalty_review`
--

INSERT INTO `penalty_review` (`Sr_No`, `customer_id`, `Date`, `Note_Remark`, `Penalty_Amount`, `Total_Paid_Amount`, `Unpaid_Amount`, `Total_Penalty_Amount`) VALUES
(1, '1234567890', '2024-03-01', 'Late payment', '50.00', '20.00', '30.00', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `mob_no` bigint(20) NOT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Blood_Group` varchar(255) DEFAULT NULL,
  `Emergency_Contact_Person_Name` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `In_Case_Emergency_Contact_No` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`mob_no`, `Gender`, `Date_Of_Birth`, `Blood_Group`, `Emergency_Contact_Person_Name`, `Relationship`, `Address`, `In_Case_Emergency_Contact_No`) VALUES
(8421279597, 'Male', '1990-01-01', 'O+', 'John Doe', 'Friend', '123 Main St, City', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `tagcomplaint`
--

CREATE TABLE `tagcomplaint` (
  `mob_no` varchar(20) NOT NULL,
  `tag_date_time` datetime NOT NULL,
  `call_type` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sub_type` varchar(50) NOT NULL,
  `complaint_issue` varchar(255) NOT NULL,
  `escalation_desk` varchar(255) NOT NULL,
  `escalation_remark` text NOT NULL,
  `resolution_tat` varchar(50) NOT NULL,
  `resolution_status` varchar(50) NOT NULL,
  `complaint_handle` varchar(255) NOT NULL,
  `complaint_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagcomplaint`
--

INSERT INTO `tagcomplaint` (`mob_no`, `tag_date_time`, `call_type`, `type`, `sub_type`, `complaint_issue`, `escalation_desk`, `escalation_remark`, `resolution_tat`, `resolution_status`, `complaint_handle`, `complaint_remark`) VALUES
('8421279597', '2024-03-13 00:20:00', 'Inbound', 'dr', 'er', 'ertrg', 'erf', 'efef', 'esf', 'unresolved', 'ffwe', 'efwef');

-- --------------------------------------------------------

--
-- Table structure for table `tag_enquiry`
--

CREATE TABLE `tag_enquiry` (
  `mob_no` bigint(20) NOT NULL,
  `tag_date_time` datetime DEFAULT NULL,
  `call_type` varchar(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `sub_type` varchar(50) DEFAULT NULL,
  `query` text DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `feedback` varchar(100) DEFAULT NULL,
  `resolution_status` varchar(20) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag_enquiry`
--

INSERT INTO `tag_enquiry` (`mob_no`, `tag_date_time`, `call_type`, `type`, `sub_type`, `query`, `resolution`, `feedback`, `resolution_status`, `remark`) VALUES
(8421279597, '2024-03-12 08:00:00', 'Inbound', 'Support', 'Technical', 'How to reset password?', 'Password reset link sent.', 'Good service', 'Resolved', 'Customer issue resolved successfully.');

-- --------------------------------------------------------

--
-- Table structure for table `tag_technical_resolution`
--

CREATE TABLE `tag_technical_resolution` (
  `customer_id` varchar(20) NOT NULL,
  `tag_date_time` datetime NOT NULL,
  `call_type` varchar(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sub_type` varchar(100) NOT NULL,
  `query` text NOT NULL,
  `resolution` text NOT NULL,
  `resolution_status` varchar(100) NOT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag_technical_resolution`
--

INSERT INTO `tag_technical_resolution` (`customer_id`, `tag_date_time`, `call_type`, `type`, `sub_type`, `query`, `resolution`, `resolution_status`, `feedback`, `remark`) VALUES
('8421279597', '2024-03-13 10:09:00', 'inbound', 'dc', 'er', 'fef', 'sef', 'resolved', 'efwefr', 'werwer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` char(10) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `mob_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `pass`, `mob_no`) VALUES
('user1', 'pass1', '8421279597');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_account_cancel_cheque_preview`
--
ALTER TABLE `bank_account_cancel_cheque_preview`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `bgl_review`
--
ALTER TABLE `bgl_review`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `call_history`
--
ALTER TABLE `call_history`
  ADD PRIMARY KEY (`Mob_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `document_details`
--
ALTER TABLE `document_details`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `enquiry_history`
--
ALTER TABLE `enquiry_history`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `operatormaininfo`
--
ALTER TABLE `operatormaininfo`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `penalty_review`
--
ALTER TABLE `penalty_review`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `tagcomplaint`
--
ALTER TABLE `tagcomplaint`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `tag_enquiry`
--
ALTER TABLE `tag_enquiry`
  ADD PRIMARY KEY (`mob_no`);

--
-- Indexes for table `tag_technical_resolution`
--
ALTER TABLE `tag_technical_resolution`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bgl_review`
--
ALTER TABLE `bgl_review`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `call_history`
--
ALTER TABLE `call_history`
  MODIFY `Mob_no` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9876543211;

--
-- AUTO_INCREMENT for table `enquiry_history`
--
ALTER TABLE `enquiry_history`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penalty_review`
--
ALTER TABLE `penalty_review`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
