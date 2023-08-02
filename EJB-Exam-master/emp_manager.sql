

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `emp_manager`

-- Table structure for table `employees`


CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `wage` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
--Dumping data to the table `employees`
--

INSERT INTO `employees` (`id`, `name`, `wage`) VALUES
(1, 'Nguyen Dac Tien', 1000.00),
(2, 'Nguyen Tam Thang', 2000.00),
(3, 'Nguyen Dac Duy', 3000.00),
(4, 'Cao Thi Huong', 4000.00);

--
-- Index for the table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
--AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;
