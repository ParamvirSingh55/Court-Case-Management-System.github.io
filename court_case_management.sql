-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 11:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court_case_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(50) NOT NULL,
  `admin_last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_first_name`, `admin_last_name`, `email`, `password`) VALUES
(1, 'Paramvir', 'Singh', 'param55@gmail.com', '$2y$10$mmISQOhxscWs9nbnMZvvg.fXIaG8CunBBqzmejPdlubU.xpiOKh0G'),
(2, 'Nisha', 'Agarwal', 'nisha@gmail.com', '$2y$10$3OpNXz.tDTVJgZ1Rkc9Pk.w81VSUEkGl0rsz3oaQ4tg33ISLuhPvS');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` int(11) NOT NULL,
  `case_type` varchar(50) NOT NULL,
  `case_details` varchar(200) NOT NULL,
  `next_hearing_date` date DEFAULT NULL,
  `prev_hearing_date` date DEFAULT NULL,
  `case_status` varchar(50) NOT NULL,
  `court_name` varchar(50) DEFAULT NULL,
  `lawyer_id_assigned` int(11) NOT NULL,
  `lawyer_status` varchar(20) DEFAULT 'not yet accepted',
  `clientforcase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `case_type`, `case_details`, `next_hearing_date`, `prev_hearing_date`, `case_status`, `court_name`, `lawyer_id_assigned`, `lawyer_status`, `clientforcase_id`) VALUES
(9, 'Murder', 'Murdered someone', '2023-03-26', '2022-12-30', 'finished', 'supreme court,Delhi', 3, 'accepted', 1),
(10, 'Property Dispute', 'Illegally Property Occupied by relatives', '2023-03-29', '2023-01-26', 'finished', 'Banglore High Court,karnataka', 7, 'accepted', 1),
(11, 'domestic voilence', 'not  treated well by family', '2023-03-20', '2022-12-15', ' finished', 'supreme court,Delhi', 8, 'accepted', 3),
(12, 'Rape', 'Delhi gangrape by goons', '2023-05-20', '2023-03-26', 'finished', 'High court,Delhi', 18, 'accepted', 4),
(13, 'Killing', 'contract killing of vidya', '2023-03-24', '2021-08-24', ' finished', 'Haryana High Court', 4, 'not yet accepted', 4),
(14, 'Domestic violence ', 'Domestic violence on Riya', '2023-03-20', '2022-12-11', ' finished', 'Mumbai High Court', 9, 'accepted', 4),
(15, 'Child custody', 'Child custody of Ram\'s son', '2023-03-25', '2021-08-24', ' finished', 'Banglore High Court', 8, 'accepted', 4),
(16, 'Fraud', 'Violation of  agreement signed.', '0000-00-00', '2022-12-26', 'finished', 'Mumbai High Court', 15, 'accepted', 4),
(17, 'Copyright Infringement', 'Pathan\'s Copyright Infringement', '2023-03-26', '2023-02-15', 'finished', 'supreme court,Delhi', 19, 'not yet accepted', 1),
(18, 'Murder', 'Murder  of Neeraj Grover', '2023-03-20', '2022-12-30', 'finished', 'Jammu High Court', 6, 'accepted', 1),
(19, 'civil case', 'kent RO v/s Amit kadak', '2023-03-20', '2023-02-15', 'finished', 'High court,Delhi', 20, 'accepted', 1),
(20, 'Business case', 'Fraud with employees', '2023-03-25', '2022-12-26', ' finished', 'High court,Delhi', 14, 'accepted', 1),
(21, 'Civil case', 'Novartis v/s Union of India', '2023-03-26', '2022-12-26', ' closed', 'supreme court,Delhi', 20, 'accepted', 3),
(22, 'Criminal case', 'Robbery in Bank', '2023-03-25', '2022-12-26', ' finished', 'Kerela High Court', 18, 'rejected', 3),
(23, 'Criminal case', 'Hyderabad Rape case', '2023-03-23', '2022-12-26', 'pending', 'Hyderabad High Court', 5, 'accepted', 3),
(24, 'Family case', 'Dowry Harrasment', '2023-03-25', '2022-12-30', 'finished', 'Jammu High Court', 9, 'accepted', 3),
(25, 'Civil Case', 'Bayer co-operation  V\\s Union of India  ', '2023-03-20', '2022-12-26', 'finished', 'supreme court,Delhi', 19, 'not yet accepted', 3),
(26, 'Business case', 'Agreement Violation', '2023-03-20', '2022-12-30', 'finished', 'Banglore High Court', 13, 'accepted', 3),
(27, 'Civil case', 'T-series copyright infringement', '2023-03-23', '2022-12-26', ' finished', 'Jammu High Court', 20, 'accepted', 5),
(28, 'Criminal case', 'Nirav Modi Scam', '2023-03-25', '2022-12-30', 'finished', 'High court,Delhi', 18, 'accepted', 5),
(29, 'Family case', 'Property Disputes', '2023-03-27', '2022-12-26', ' finished', 'Jammu High Court', 10, 'not yet accepted', 5),
(30, 'Environmental case', 'Pradeep Krishna V/s Union of India', '2023-03-20', '2022-12-30', 'pending', 'supreme court,Delhi', 21, 'accepted', 5),
(31, 'Environmental case', 'Indian Handicraft emporium V/s Union Of India', '2023-03-20', '2023-02-15', ' closed', 'High court,Delhi', 21, 'not yet accepted', 5),
(32, 'Environmental case', 'Ganga River Pollution case', '2023-03-28', '2023-02-15', 'pending', 'High court,Delhi', 21, 'accepted', 4),
(33, 'Environmental case', 'Mc Mehta V/s union of Carbide Commission', '2023-03-20', '2022-12-26', 'pending', 'Mumbai High Court', 21, 'not yet accepted', 4),
(34, 'Environmental case', 'Illegal mining', '0000-00-00', '0000-00-00', 'case-rejected', 'Jammu High Court', 21, 'rejected', 6),
(35, 'Criminal case', 'murdered a streetvendor ', '2023-03-20', '2022-12-26', ' finished', 'Banglore High Court', 18, 'accepted', 4),
(36, 'bussiness', 'Business fraud ', '2023-03-20', '2022-12-30', ' closed', 'Mumbai High Court', 13, 'accepted', 1),
(37, 'Civil', 'scam in construction projects', '2023-03-20', '2022-12-30', ' finished', 'Banglore High Court', 20, 'rejected', 1),
(38, 'bussiness', 'bussiness fraud', NULL, NULL, 'pending', NULL, 13, 'accepted', 1),
(39, 'Criminal case', 'murdered someone', NULL, NULL, 'pending', NULL, 18, 'accepted', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_first_name` varchar(50) NOT NULL,
  `client_last_name` varchar(50) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `client_password` varchar(200) NOT NULL,
  `phone_no` text DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_first_name`, `client_last_name`, `client_email`, `client_password`, `phone_no`, `address`) VALUES
(1, 'Samreen', 'Kour', 'samr@gmail.com', '$2y$10$EyVZH14tO1Ti4/LHRpE0IOs8OHkQ1HDt0GFRkfncxVvc1fKUwFnMW', '9149797345', 'karan bagh ,jammu,j&k'),
(3, 'Veena ', 'potdar', 'veena123@gmail.com', '$2y$10$BfKKLHEXLM4Hu8Sg04wdse0CmyC6uX9n7x2r7cKm3wqH4GtP5fQ7K', '9874561235', 'Bengaluru,Karnataka'),
(4, 'Nishu', 'Agarwal', 'Nishua@gmail.com', '$2y$10$aff0NUt7.itBpBxQwssfye0ERPMYkRX0VSHGZ6w8Ime/.iTsKdwjW', '9906354755', 'Darjeeling,WestBengal'),
(5, 'Harneet', 'Kour', 'harneet@gmail.com', '$2y$10$rFryuKtjJLIoow4t9Y/oTeITBAlnExMZrOFS2ImskR5sUI3dZpo8i', '9682672600', 'Kashmir'),
(6, 'Harleen', ' Kaur', 'harleen@gmail.com', '$2y$10$aXMQWpnwXRHWCuiuffS9wOAG9bQXGjRjdKOCvhr7wP5HyL9NZ1IPy', '6006254879', 'Jammu&Kashmir'),
(7, 'sonia', 'sharma', 'sonia@gmail.com', '$2y$10$csccubIJlsUExk6sFsTf3.zxuj3PlqdJgI/5q4dsOsM2CWxyol0Jm', '9086025371', 'jammu');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `client_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_login`
--

CREATE TABLE `lawyer_login` (
  `lawyer_id` int(11) NOT NULL,
  `lawyer_first_name` varchar(50) NOT NULL,
  `lawyer_last_name` varchar(50) NOT NULL,
  `lawyer_email` varchar(50) NOT NULL,
  `lawyer_password` varchar(200) NOT NULL,
  `lawyer_phone_no` int(11) DEFAULT NULL,
  `lawyer_city` varchar(100) DEFAULT NULL,
  `lawyer_address` varchar(200) DEFAULT NULL,
  `lawyer_category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lawyer_login`
--

INSERT INTO `lawyer_login` (`lawyer_id`, `lawyer_first_name`, `lawyer_last_name`, `lawyer_email`, `lawyer_password`, `lawyer_phone_no`, `lawyer_city`, `lawyer_address`, `lawyer_category`) VALUES
(5, 'Abhimanyu', 'shandilya', 'abhim@gmail.com', '$2y$10$qAcymah83jGXeHSnHa7fmOpXA8rYdzABIG260jbzbirSppAAIE/Cm', 2147483647, 'Delhi', 'Near Sarojini Market', 'Criminal Lawyer'),
(6, 'Prithviraj', 'Sikka', 'prithvi@gmail.com', '$2y$10$6s/l2HSQUAmZvlMYDJS9/uwomsHAQ3EAW6iTX2wIRTwyT7bOFBC9G', 789654123, 'Pune', 'Maharashtra', 'Criminal Lawyer'),
(7, 'Sushil', 'Kumar', 'sush@gmail.com', '$2y$10$e9CoJpl9bL4.etfBU5iLK.4wOm1.P7yv.LlYTUdqO228TLHMZKf12', 785496123, 'Jaipur', 'Rajasthan', 'Family Lawyer'),
(8, 'Shanti', 'Bhusan', 'shantib@gmail.com', '$2y$10$kFuWf6Wr/vzIYX5VDvt4I.DDnHh9ppuMWpaaJq.WAjl9Js3MHhbqC', 784596123, 'kolkata', 'WestBengal', 'Family Lawyer'),
(9, 'Anish', 'Palkar', 'Anish@gmail.com', '$2y$10$zjXb3kpuwAeFWKndtpNT0Ox6JCcEd4X/OtQfCAACEAvkn1nc/cbRO', 639258147, 'Surat', 'Gujrat', 'Family Lawyer'),
(12, 'Srinatha', 'Gowda', 'srinath@gmail.com', '$2y$10$R5uai0HOtoohi/Agrudbge2aHvRemNT3ZygiXkjsgN61VmxwFpQwW', 123654987, 'nanded', 'Maharashtra', 'Business Lawyer'),
(13, 'Savita', 'Bhandari', 'savita@gmail.com', '$2y$10$bfxQXqX4.Um3wh3N0ngGxuSqvYwQYcxj/r98hOHjRg.uEVty7BFDe', 456987123, 'Bengaluru', 'Nagarbhavi,Bengaluru,Karnataka', 'Business Lawyer'),
(14, 'Anjali', 'Bisht', 'anjali@gmail.com', '$2y$10$5dWVb3AN0Ew2huG32/N9qeVjfUY8Ag6xCzS3c7YK0UlKD2huRSfwm', 789654123, 'Ghuwati', 'Assam', 'Business Lawyer'),
(15, 'Gurleen', 'Kour', 'gurleen@gmail.com', '$2y$10$SaZepEK34sv/PoM82FkISuDKvgrp7triIF/GN5TUS8awLQLPyRav6', 990635475, 'jammu', 'karan bagh', 'Business Lawyer'),
(16, 'Satish', 'Sharma', 'sati@gmail.com', '$2y$10$ft3eYdNZh48/ftbbC1hnUedh87MPLN2k9s2w2R5utGe3Orn.dUioy', 695847321, 'Ranchi', 'Jharkhand', 'Business Lawyer'),
(17, 'Atul', 'Prabhakar', 'atul@gmail.com', '$2y$10$.zkxb2gnRyKXQ4aifctZAuwbXsPnfwqthJl8gP7N9Tr50zNd4SEFC', 12536948, 'Noida', 'Sector 62,Noida ', 'Criminal lawyer'),
(18, 'Harnoor', 'Singh', 'harnoor@gmail.com', '$2y$10$j6wMig62gudllQBI4wgvZO1Y4mv.kzN6O7TAfuENgFrNIif2rn52K', 321456987, 'Jammu', 'Azad Nagar', 'Criminal Lawyer'),
(20, 'Puneet', 'Kour', 'puneetk@gmail.com', '$2y$10$.yYVzPZUdVMSCfLLjkLPu.yqCVVfP/gmVfYprRsM0XQ7vwFyzKv9u', 849295027, 'Jammu', 'Baba Zorawar Singh Colony,Bikran Nagar', 'Civil Lawyer'),
(21, 'Manjot', 'Singh', 'manjot@gmail.com', '$2y$10$bhopqJrXy3uxEMw6fUwuT.Sespc1H.VfGuvd7lkw.SZ7rJbXQbjW6', 963585248, 'Jammu', 'Raipur Satwari', 'Environmental Lawyer'),
(22, 'Harman', 'Singh', 'harman@gmail.com', '$2y$10$FHrCuCW6/KGQ9U6wQGog/.SJPTD4w19UiyfI4uQprIcuE0b0dj2T6', 456987123, 'jammu', 'simbal camp,ward no-2', 'Criminal lawyer'),
(23, 'Asha', 'K.N', 'asha@gmail.com', '$2y$10$YZl7YQ8TbDURARzxwDmXi.93dHjI4Kn9HMHRlBt6m45KB7KIhKUZ2', 789456123, 'Bengaluru', 'Nagarbhavi,Bengaluru,Karnataka', 'Civil Lawyer'),
(24, 'Roshan', 'Gupta', 'roshan@gmail.com', '$2y$10$jo8TgeP9eIEEZvKXxv8BHOFz.Szd.HYQousVl9WW1wvkTBQjNFK7a', 784596123, 'Jodhpur', 'Rajasthan', 'Family Lawyer'),
(25, 'Ranbhir Singh', 'Rajput', 'ranbhirsr@gmail.com', '$2y$10$ig8u2GaSLa3c4PVEfW3ZNODq0b0yJXpt/waTwYpSEib26a9iYWcIW', 600658857, 'Jammu', 'kathua,jammu', 'Civil Lawyer');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Notif_id` int(4) NOT NULL,
  `Client_id` int(4) DEFAULT NULL,
  `Lawyer_id` int(4) DEFAULT NULL,
  `Case_details` varchar(200) DEFAULT NULL,
  `Case_type` varchar(100) DEFAULT NULL,
  `Accepted_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`Notif_id`, `Client_id`, `Lawyer_id`, `Case_details`, `Case_type`, `Accepted_status`) VALUES
(8, 1, 3, 'Murdered someone', 'Murder', 'accepted'),
(9, 1, 7, 'Illegally Property Occupied by relatives', 'Property Dispute', 'accepted'),
(10, 3, 8, 'not  treated well by family', 'domestic voilence', 'accepted'),
(11, 4, 18, 'Delhi gangrape by goons', 'Rape', 'accepted'),
(12, 4, 4, 'contract killing of vidya', 'Killing', 'not yet accepted'),
(13, 4, 9, 'Domestic violence on Riya', 'Domestic violence ', 'accepted'),
(14, 4, 8, 'Child custody of Ram\'s son', 'Child custody', 'accepted'),
(15, 4, 15, 'Violation of  agreement signed.', 'Fraud', 'accepted'),
(16, 1, 19, 'Pathan\'s Copyright Infringement', 'Copyright Infringement', 'not yet accepted'),
(17, 1, 6, 'Murder  of Neeraj Grover', 'Murder', 'accepted'),
(18, 1, 20, 'kent RO v/s Amit kadak', 'civil case', 'rejected'),
(19, 1, 14, 'Fraud with employees', 'Business case', 'accepted'),
(20, 3, 20, 'Novartis v/s Union of India', 'Civil case', 'accepted'),
(21, 3, 18, 'Robbery in Bank', 'Criminal case', 'rejected'),
(22, 3, 5, 'Hyderabad Rape case', 'Criminal case', 'accepted'),
(23, 3, 9, 'Dowry Harrasment', 'Family case', 'accepted'),
(24, 3, 19, 'Bayer co-operation  V\\s Union of India  ', 'Civil Case', 'not yet accepted'),
(25, 3, 13, 'Agreement Violation', 'Business case', 'accepted'),
(26, 5, 20, 'T-series copyright infringement', 'Civil case', 'accepted'),
(27, 5, 18, 'Nirav Modi Scam', 'Criminal case', 'accepted'),
(28, 5, 10, 'Property Disputes', 'Family case', 'not yet accepted'),
(29, 5, 21, 'Pradeep Krishna V/s Union of India', 'Environmental case', 'accepted'),
(30, 5, 21, 'Indian Handicraft emporium V/s Union Of India', 'Environmental case', 'accepted'),
(31, 4, 21, 'Ganga River Pollution case', 'Environmental case', 'accepted'),
(32, 4, 21, 'Mc Mehta V/s union of Carbide Commission', 'Environmental case', 'accepted'),
(33, 6, 21, 'Illegal mining', 'Environmental case', 'rejected'),
(34, 4, 18, 'murdered a streetvendor ', 'Criminal case', 'accepted'),
(35, 1, 13, 'Business fraud ', 'bussiness', 'accepted'),
(36, 1, 20, 'scam in construction projects', 'Civil', 'rejected'),
(37, 1, 13, 'bussiness fraud', 'bussiness', 'accepted'),
(38, 1, 18, 'murdered someone', 'Criminal case', 'accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  ADD PRIMARY KEY (`lawyer_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Notif_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lawyer_login`
--
ALTER TABLE `lawyer_login`
  MODIFY `lawyer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `Notif_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
