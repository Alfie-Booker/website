-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2024 at 11:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utcl-mts`
--
CREATE DATABASE IF NOT EXISTS `utcl-mts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `utcl-mts`;

-- --------------------------------------------------------

--
-- Table structure for table `administer`
--

CREATE TABLE `administer` (
  `adminster_id` int(11) NOT NULL,
  `takes_id` int(11) NOT NULL,
  `staff_code` text NOT NULL,
  `date_time` int(11) NOT NULL,
  `dose_given` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `audit_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(11) NOT NULL,
  `act` text NOT NULL,
  `date_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`audit_id`, `staff_id`, `act`, `date_time`) VALUES
(1, 2, 'Succ_Log', 1732051053),
(2, 2, 'Succ_Log', 1732051188),
(3, 2, 'Succ_Log', 1732051724),
(4, 2, 'Succ_Log', 1732051816),
(5, 2, 'Succ_Log', 1732051903),
(6, 2, '40', 1732058658),
(7, 2, '40, users were added', 1732058693),
(8, 2, '40 users were added inserted', 1732058713),
(9, 1, 'Succ_Log', 1732092690),
(10, 1, '40 users were added inserted', 1732092952),
(11, 1, 'Fail_Log', 1732094099);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Tesco'),
(2, 'co-op'),
(3, 'Advil'),
(4, 'Amoxil'),
(5, 'Glucophage'),
(6, 'Norvasc'),
(7, 'Deltasone'),
(8, 'Prinivil'),
(9, 'Zithromax'),
(10, 'Cipro'),
(11, 'Prilosec'),
(12, 'Zyrtec'),
(13, 'ventolin'),
(14, 'EpiPen'),
(15, 'Strides Pharma'),
(16, 'Evohaler'),
(17, 'galpharm'),
(18, 'PLIVA Pharma'),
(19, 'Norvasc'),
(20, 'Zyrtec'),
(21, 'Zithromax'),
(22, 'Cipro'),
(23, 'Prilosec'),
(24, 'galpharm'),
(25, 'Valium'),
(26, 'Zocor'),
(27, 'Microzide'),
(28, 'Lasix'),
(29, 'Bayer'),
(30, 'Ativan'),
(31, 'Xyzal'),
(32, 'Neurontin'),
(33, 'Vibramycin'),
(34, 'Deltasone'),
(35, 'Plavix'),
(36, 'Panadol');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `date_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `med`
--

CREATE TABLE `med` (
  `med_id` int(10) UNSIGNED NOT NULL,
  `med_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `med`
--

INSERT INTO `med` (`med_id`, `med_name`) VALUES
(1, 'Paracetamol'),
(2, 'Hayfever releif'),
(3, 'Ibuprofen'),
(4, 'Amoxicillin'),
(5, 'Metformin'),
(6, 'Amlodipine'),
(7, 'Prednisone'),
(8, 'Lisinopril'),
(9, 'Azithromycin'),
(10, 'Ciprofloxacin'),
(11, 'Omeprazole'),
(12, 'Cetirizine'),
(13, 'salbutamol'),
(14, 'Adrenaline Auto-Injector'),
(15, 'Hydrocortisone Cream'),
(16, 'Seretide inhaler'),
(17, 'lanzoprazole'),
(18, 'naproxen'),
(19, 'Azithromycin'),
(20, 'Seretide inhaler'),
(21, 'Diazepam'),
(22, 'Simvastatin'),
(23, 'Hydrochlorothiazide'),
(24, 'Furosemide'),
(25, 'Aspirin'),
(26, 'Lorazepam'),
(27, 'Levocetirizine'),
(28, 'Gabapentin'),
(29, 'Doxycycline'),
(30, 'Clopidogrel');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(10) UNSIGNED NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `group` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `first_name`, `last_name`, `email`, `password`, `group`) VALUES
(1, 'Failed', 'Events', 'failed.events@utcleeds.co.uk', 'failed.events', 'sys');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `year` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `year`) VALUES
(1, 'Jake', 'Peralta', '13'),
(2, 'Amy', 'Santiago', '11'),
(3, 'Charles', 'Boyle', '10'),
(4, 'Rosa', 'Diaz', '12'),
(5, 'Gina ', 'Linetti', '13'),
(6, 'Raymond', 'Holt', '13'),
(7, 'Lucy', 'Chen', '12'),
(8, 'Tim ', 'Bradford', '11'),
(9, 'John ', 'Nolan', '13'),
(10, 'Jackson', 'West', '12'),
(11, 'Bailey', 'Nune', '10'),
(12, 'Wesley', 'Evens', '10'),
(13, 'Angela', 'Lopez', '11'),
(14, 'Rosalind', 'Dyer', '12'),
(15, 'Nyla', 'Harper', '13'),
(16, 'Aaron', 'Thorsen', '11'),
(17, 'Tailia', 'Bishop', '11'),
(18, 'Zoe ', 'Anderson', '12'),
(19, 'Tamara', 'Collins', '10'),
(20, 'Celina', 'Juarez', '10'),
(21, 'Elija', 'Stone', '12'),
(22, 'Monica', 'Stevens', '13'),
(23, 'Oscar', 'Hutchinson', '12'),
(24, 'Wade', 'Grey', '12'),
(25, 'Emmet', 'Lang', '13'),
(26, 'James', 'Murray', '13'),
(27, 'Meredith', 'Grey', '11'),
(28, 'Derek', 'Shepard', '12'),
(29, 'Alex', 'Kerev', '10'),
(30, 'Mark', 'Sloan', '11'),
(31, 'Owen ', 'Hunt', '13'),
(32, 'Cristina ', 'Yang', '11'),
(33, 'Miranda', 'Bailey', '12'),
(754, 'student1', 'student2', '11'),
(755, 'student1', 'student2', '11'),
(756, 'student1', 'student2', '11'),
(757, 'student1', 'student2', '11'),
(758, 'student1', 'student2', '11'),
(759, 'student1', 'student2', '11'),
(760, 'student1', 'student2', '11'),
(761, 'student1', 'student2', '11'),
(762, 'student1', 'student2', '11'),
(763, 'student1', 'student2', '11'),
(764, 'student1', 'student2', '11'),
(765, 'student1', 'student2', '11'),
(766, 'student1', 'student2', '11'),
(767, 'student1', 'student2', '11'),
(768, 'student1', 'student2', '11'),
(769, 'student1', 'student2', '11'),
(770, 'student1', 'student2', '11'),
(771, 'student1', 'student2', '12'),
(772, 'student1', 'student2', '12'),
(773, 'student1', 'student2', '12'),
(774, 'student1', 'student2', '12'),
(775, 'student1', 'student2', '12'),
(776, 'student1', 'student2', '12'),
(777, 'student1', 'student2', '12'),
(778, 'student1', 'student2', '12'),
(779, 'student1', 'student2', '12'),
(780, 'student1', 'student2', '12'),
(781, 'student1', 'student2', '12'),
(782, 'student1', 'student2', '12'),
(783, 'student1', 'student2', '13'),
(784, 'student1', 'student2', '13'),
(785, 'student1', 'student2', '13'),
(786, 'student1', 'student2', '13'),
(787, 'student1', 'student2', '13'),
(788, 'student1', 'student2', '13'),
(789, 'student1', 'student2', '13'),
(790, 'student1', 'student2', '13'),
(791, 'student1', 'student2', '13'),
(792, 'student1', 'student2', '12'),
(793, 'student1', 'student2', '12');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `takes_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `exp_date` int(11) NOT NULL,
  `current_dose` int(11) NOT NULL,
  `min_dose` int(11) NOT NULL,
  `max_dose` int(11) NOT NULL,
  `strength` text NOT NULL,
  `notes` text NOT NULL,
  `archived` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`takes_id`, `student_id`, `med_id`, `brand_id`, `exp_date`, `current_dose`, `min_dose`, `max_dose`, `strength`, `notes`, `archived`) VALUES
(103, 1, 1, 1, 1735862400, 2, 4, 8, '100mg', '', 0),
(104, 2, 2, 2, 1707004800, 4, 1, 30, '50mg', '', 0),
(105, 2, 3, 2, 1733702400, 32, 6, 32, '200mg', '', 0),
(106, 3, 3, 4, 1760659200, 6, 6, 49, '200 mg', '', 0),
(107, 3, 4, 5, 1747008000, 30, 6, 31, '500 mg', '', 0),
(108, 3, 5, 5, 1745366400, 26, 2, 50, '850 mg', '', 0),
(109, 3, 6, 6, 1738713600, 9, 5, 46, '5 mg', '', 0),
(110, 4, 7, 7, 1743292800, 15, 2, 31, '10 mg', '', 0),
(111, 4, 8, 8, 1743206400, 3, 9, 14, '20 mg', '', 0),
(112, 4, 9, 9, 1742515200, 27, 5, 50, '250 mg', '', 0),
(113, 4, 10, 10, 1755907200, 27, 1, 40, '500 mg', '', 0),
(114, 5, 11, 11, 1749772800, 26, 2, 42, '40 mg', '', 0),
(115, 5, 12, 12, 1742860800, 3, 10, 39, '10 mg', '', 0),
(116, 6, 13, 13, 1693526400, 21, 3, 60, '200mg', '', 0),
(117, 7, 14, 14, 1751328000, 1, 2, 1, '0.3mg', '', 0),
(118, 7, 14, 14, 1751328000, 1, 8, 1, '0.3mg', '', 0),
(119, 8, 15, 15, 1734134400, 5, 9, 7, '30g', '', 0),
(120, 8, 20, 16, 1769904000, 40, 10, 60, '125mg', '', 0),
(121, 9, 1, 17, 1759276800, 4, 6, 8, '500mg', '', 0),
(122, 9, 18, 18, 1732838400, 6, 2, 7, '30mg', '', 0),
(123, 10, 18, 19, 1783296000, 4, 7, 7, '500mg', '', 0),
(124, 11, 14, 14, 1678838400, 1, 2, 1, '0.3mg', '', 0),
(125, 11, 14, 14, 1654560000, 1, 6, 1, '0.3mg', '', 0),
(126, 12, 15, 2, 1726963200, 2, 3, 30, '50mg', '', 0),
(127, 13, 12, 20, 1739404800, 2, 2, 40, '10 mg', '', 0),
(128, 14, 13, 13, 1668729600, 2, 2, 60, '200mg', '', 0),
(129, 15, 19, 21, 1722643200, 27, 1, 15, '250 mg', '', 0),
(130, 15, 10, 22, 1652054400, 27, 1, 24, '500 mg', '', 0),
(131, 16, 11, 23, 1690329600, 26, 4, 42, '40 mg', '', 0),
(132, 17, 14, 14, 1760140800, 1, 6, 1, '0.3mg', '', 0),
(133, 17, 14, 14, 1775001600, 1, 8, 1, '0.3mg', '', 0),
(134, 18, 2, 2, 1716249600, 4, 3, 30, '50mg', '', 0),
(135, 19, 3, 2, 1693353600, 32, 4, 32, '200mg', '', 0),
(136, 20, 1, 1, 1799884800, 2, 3, 8, '100mg', '', 0),
(137, 21, 16, 16, 1751414400, 40, 9, 60, '125mg', '', 0),
(138, 22, 1, 18, 1709942400, 4, 6, 8, '500mg', '', 0),
(139, 23, 21, 26, 1797465600, 25, 1, 40, '5 mg', '', 0),
(140, 24, 22, 26, 1643932800, 40, 3, 60, '20 mg', '', 0),
(141, 25, 23, 27, 1747958400, 30, 9, 50, '25 mg', '', 0),
(142, 26, 24, 28, 1696550400, 10, 6, 30, '40 mg', '', 0),
(143, 27, 25, 29, 1821312000, 60, 9, 100, '81 mg', '', 0),
(144, 27, 26, 30, 1775952000, 15, 3, 20, '1 mg', '', 0),
(145, 28, 27, 31, 1669507200, 35, 3, 50, '5 mg', '', 0),
(146, 28, 28, 32, 1707091200, 12, 2, 30, '300 mg', '', 0),
(147, 29, 29, 33, 1732406400, 20, 7, 30, '100 mg', '', 0),
(148, 29, 12, 20, 1696723200, 40, 10, 50, '10 mg', '', 0),
(149, 30, 7, 34, 1800835200, 10, 4, 20, '5 mg', '', 0),
(150, 31, 30, 35, 1710374400, 60, 10, 90, '75 mg', '', 0),
(151, 31, 1, 36, 1755734400, 20, 2, 30, '500 mg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `whole_log`
--

CREATE TABLE `whole_log` (
  `whole_log_id` int(11) NOT NULL,
  `whole_school_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `date_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whole_school`
--

CREATE TABLE `whole_school` (
  `whole_school_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `exp_date` int(11) NOT NULL,
  `amount_left` int(11) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administer`
--
ALTER TABLE `administer`
  ADD PRIMARY KEY (`adminster_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `med`
--
ALTER TABLE `med`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`takes_id`);

--
-- Indexes for table `whole_log`
--
ALTER TABLE `whole_log`
  ADD PRIMARY KEY (`whole_log_id`);

--
-- Indexes for table `whole_school`
--
ALTER TABLE `whole_school`
  ADD PRIMARY KEY (`whole_school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administer`
--
ALTER TABLE `administer`
  MODIFY `adminster_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `audit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `med`
--
ALTER TABLE `med`
  MODIFY `med_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;

--
-- AUTO_INCREMENT for table `takes`
--
ALTER TABLE `takes`
  MODIFY `takes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `whole_log`
--
ALTER TABLE `whole_log`
  MODIFY `whole_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `whole_school`
--
ALTER TABLE `whole_school`
  MODIFY `whole_school_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
