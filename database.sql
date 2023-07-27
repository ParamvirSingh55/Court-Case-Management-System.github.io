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
);
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
); 
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
);
-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(200) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `client_id` int(10) DEFAULT NULL
);

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
);

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
);