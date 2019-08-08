-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 10:57 AM
-- Server version: 5.5.27
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(20) NOT NULL,
  `adm_name` varchar(100) NOT NULL,
  `adm_pass` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `adm_name`, `adm_pass`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `apply_id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `emp_id` int(20) DEFAULT NULL,
  `job_id` int(20) DEFAULT NULL,
  `status` int(20) DEFAULT NULL,
  `date_applied` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`apply_id`, `user_id`, `emp_id`, `job_id`, `status`, `date_applied`) VALUES
(1, 10, 3, 5, NULL, '26-02-18'),
(2, 11, 4, 6, NULL, '06-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `eid` int(20) NOT NULL,
  `log_id` int(20) NOT NULL,
  `ename` varchar(100) DEFAULT NULL,
  `etype` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `executive` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `profile` varchar(700) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`eid`, `log_id`, `ename`, `etype`, `industry`, `address`, `pincode`, `executive`, `phone`, `location`, `profile`, `logo`) VALUES
(1, 18, 'Infosys Pvt Ltd', 'Company', 'Software Services', 'Infosys,\r\nIT Zone,\r\n4 - BE,\r\nBangalore', '458796', 'Ajith', '9145512345', 'India,Karnataka,Bengaluru', 'Infosys is a global leader in consulting, technology, and outsourcing and next-generation services. We enable clients in more than 50 countries to outperform the competition and stay ahead of the innovation curve.', 'Infosys Pvt Ltd1.jpg'),
(2, 23, 'Microsoft', 'Company', 'Software Services', 'Microsoft, Bangalore, Karnataka', '456987', 'Arun', '78945612332', 'India,Karnataka,Bommasandra', NULL, NULL),
(3, 25, 'AMPWORK Pvt India Ltd', 'Company', 'Software Services', '3rd Floor B Wing IT Park \r\nHubli', '580026', 'Anil M Prabhu', '9741467514', 'India,Karnataka,Hubli', NULL, 'AMPWORK Pvt India Ltd3.png'),
(4, 29, 'AMPWORK', 'Company', 'Software Services', 'AMPWORK Pvt Ltd \r\nJain Mandir Road\r\nHosur 2nd Cross\r\nOpp. Tej Comfort Apartment\r\nHubli', '580021', 'Anil M Prabhu', '9741467514', 'India,Karnataka,Hubli', NULL, 'AMPWORK4.png');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(20) NOT NULL,
  `eid` int(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `jobdesc` varchar(700) NOT NULL,
  `vacno` int(20) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `basicpay` varchar(100) DEFAULT NULL,
  `fnarea` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `ugqual` varchar(100) DEFAULT NULL,
  `pgqual` varchar(100) DEFAULT NULL,
  `profile` varchar(700) DEFAULT NULL,
  `postdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `eid`, `title`, `jobdesc`, `vacno`, `experience`, `basicpay`, `fnarea`, `location`, `industry`, `ugqual`, `pgqual`, `profile`, `postdate`) VALUES
(2, 1, 'Network Administrator', 'Consulting with clients to specify system requirements and design solutions\r\nBudgeting for equipment and assembly costs\r\nAssembling new systems\r\nMaintaining existing software and hardware and upgrading any that have become obsolete\r\nWorking in tandem with IT support personnel\r\nProviding network administration and support', 3, '7', 'Rs75000', 'Network Administration', 'India,Karnataka,Bengaluru', 'Software Services', 'B.Tech/B.E.', 'M.Tech', 'Patience,\r\nTechnical skills.\r\nIT skills,\r\nInterpersonal skills,\r\nEnthusiasm,\r\nTeamworking skills,\r\nInitiative,\r\nCommitment to quality,\r\nAttention to detail.', '09-04-16'),
(3, 1, 'Software Engineer', 'The focus of this position is the design and development of the core V-PIL services infrastructure, including custom automation software, job schedulers, data analysis, data visualization, and web development.', 3, '5', 'Rs 1000000', 'Network Virtualizing', 'India,Karnataka,Bengaluru', 'Software Services', 'B.Tech/B.E.', 'M.Tech', 'Strong ability in JavaScript.\r\nStrong ability in database design.\r\nExperience developing and executing performance test suites.\r\nStrong test suite development, execution and automation experience.\r\nFamiliarity with Jenkins and knowledge of existing cloud test suites, including Tempest and Rally.\r\nExperience with continuous integration practices.\r\nExperience with Juju, Charms and MAAS.', '15-04-16'),
(4, 2, 'Web Developer', 'Development of interactive websites at microfost', 5, '3', 'Rs 25000', 'Web Development', 'India,Kerala,Ernakulam', 'Software Services', 'B.Tech/B.E.', 'Not Pursuing Post Graduation', 'Knowledge in ASP.NET, SQL server', '16-04-16'),
(5, 3, 'Junior Android Developer', 'Looking for Junior Android Developer, well versed in Lifecycle of Android, handing Third-party resources, hands-on  experience in hosting app in Google play store', 2, '1', 'Rs 8000', 'Java, Android', 'India,Karnataka,Hubli', 'Software Services', 'BCA', 'MCA', 'BCA, MCA, MTech BTech Student Can also Apply Fresher can also apply', '26-02-18'),
(6, 4, 'Android Development', 'Android Development, Core Java, and Advance Java', 1, '2', 'Rs 15000', 'Android ', 'India,Karnataka,Hubli', 'Software Services', 'B.Tech/B.E.', 'M.Tech', 'Any Degree with Good Knowledge of Android and Core Java concepts and Good Understanding of OOPs concept', '06-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker`
--

CREATE TABLE `jobseeker` (
  `user_id` int(20) NOT NULL,
  `log_id` int(20) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `skills` varchar(100) DEFAULT NULL,
  `basic_edu` varchar(100) DEFAULT NULL,
  `master_edu` varchar(100) DEFAULT NULL,
  `other_qual` varchar(100) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `Resume` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobseeker`
--

INSERT INTO `jobseeker` (`user_id`, `log_id`, `name`, `phone`, `location`, `experience`, `skills`, `basic_edu`, `master_edu`, `other_qual`, `dob`, `Resume`, `photo`) VALUES
(9, 21, 'abc', '1234567890', 'Iceland,Austurland,Bakkafjor ur', '1', 'sjndsnn,mnkjlnlnl  jnn ', 'B.A', 'CA', NULL, NULL, NULL, NULL),
(10, 28, 'Vijay Tallolli', '9731251461', 'India,Karnataka,Hubli', '1', 'Good Hands on Experience in PHP and Java', 'B.Sc', 'M.Sc', NULL, NULL, NULL, 'Vijay Tallolli10.jpg'),
(11, 30, 'Vijay', '9731251461', 'India,Karnataka,Dharwar', '2', 'Android, Java,C,C++,PHP', 'B.Tech/B.E.', 'M.Tech', NULL, NULL, NULL, 'Vijay11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `log_id` int(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`log_id`, `email`, `password`, `usertype`, `status`) VALUES
(18, 'info@infosys.com', '$2y$10$/TP7ishP6SRCroPNfWcVqO1V0mMH47X.Qsft1u/Ed9xFtmietk2ga', 'employer', 0),
(21, 'abc@gmail.com', '$2y$10$ZWYhKrFT9B9m0CaysgRy5e1XMZ/e130v0LGkqw4QpkXbJ3WIV.YYe', 'jobseeker', 1),
(23, 'info@microsoft.com', '$2y$10$q.xafcSTYUoKtz2FIhrf7OX1x0weMZRzY3beiqoO2NGe0PUKJlzga', 'employer', 1),
(25, 'support@ampwork.com', '$2y$10$.ox42d5haSwJik.1OKy/tOjm81wKl3gBRn4g012e4NLEbk2gv6s9e', 'employer', 1),
(28, 'vijay@gmail.com', '$2y$10$Z3LIGa189uxm/A8w1L/25Oei75GX0rrUP/QhNP7JFH25b2TTD.il2', 'jobseeker', 1),
(29, 'vijaytallolli@gmail.com', '$2y$10$1WlUKxI.60.EsFKdNcZbiO7A6fk8g/EBaZl3BcmLG1h6izPpoN6n2', 'employer', 0),
(30, 'vijay@ampwork.com', '$2y$10$FIztxZbyRGB1k.zt4vmFhuAYsUER28gELtBZnj2bXFWnqXwwT255q', 'jobseeker', 1);

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE `selection` (
  `sel_id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `emp_id` int(20) DEFAULT NULL,
  `job_id` int(20) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selection`
--

INSERT INTO `selection` (`sel_id`, `user_id`, `emp_id`, `job_id`, `status`, `date`) VALUES
(1, 10, 3, 5, 1, '26-02-18'),
(2, 11, 4, 6, 1, '06-08-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`apply_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `log_id` (`log_id`),
  ADD KEY `log_id_2` (`log_id`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`sel_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `job_id` (`job_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `apply_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `eid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jobseeker`
--
ALTER TABLE `jobseeker`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `log_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `selection`
--
ALTER TABLE `selection`
  MODIFY `sel_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `fk_empid` FOREIGN KEY (`emp_id`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_job` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`jobid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `jobseeker` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `fk_log_id` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fk_eid` FOREIGN KEY (`eid`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jobseeker`
--
ALTER TABLE `jobseeker`
  ADD CONSTRAINT `fk_login` FOREIGN KEY (`log_id`) REFERENCES `login` (`log_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `selection`
--
ALTER TABLE `selection`
  ADD CONSTRAINT `fk_emp` FOREIGN KEY (`emp_id`) REFERENCES `employer` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`jobid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `jobseeker` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
