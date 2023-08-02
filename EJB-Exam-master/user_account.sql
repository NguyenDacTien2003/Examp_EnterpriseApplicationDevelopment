
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `user_account`
--
--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(100) NOT NULL,
  `authority` varchar(68) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data to the table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin', 'ROLE_ADMIN'),
('manager', 'ROLE_MANAGER'),
('user', 'ROLE_USER');

-- --------------------------------------------------------

--
--Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
--Dumping data to the table `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('admin', '{bcrypt}$2a$12$bF7pqCah57kH2RpGSOVMzuzr9tJUmAUGhMXkb.TW.KWyCTM6WqtBK', 1),
('manager', '{bcrypt}$2a$12$bF7pqCah57kH2RpGSOVMzuzr9tJUmAUGhMXkb.TW.KWyCTM6WqtBK', 1),
('user', '{bcrypt}$2a$12$bF7pqCah57kH2RpGSOVMzuzr9tJUmAUGhMXkb.TW.KWyCTM6WqtBK', 1);

--
-- table `authorities`
--
ALTER TABLE `authorities`
  ADD KEY `username` (`username`);

--
-- table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Constraints for the table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
