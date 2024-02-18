-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 07:59 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialmedia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posty`
--

CREATE TABLE `posty` (
  `id` int(11) NOT NULL,
  `treść` text NOT NULL,
  `id_użytkownika` int(11) NOT NULL,
  `data_utworzenia` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posty`
--

INSERT INTO `posty` (`id`, `treść`, `id_użytkownika`, `data_utworzenia`) VALUES
(1, 'Pierwszy post i chuj', 1, '2024-02-10'),
(2, 'kurwa', 1, '2024-02-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `użytkownicy`
--

CREATE TABLE `użytkownicy` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `haslo` text NOT NULL,
  `imie` text NOT NULL,
  `nazwisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `użytkownicy`
--

INSERT INTO `użytkownicy` (`id`, `login`, `haslo`, `imie`, `nazwisko`) VALUES
(1, 'Chuj', 'Chuj', 'Chuj', 'Chuj'),
(2, 'sdfsf', 'vafsdf', 'Śmieć', 'Zjeb'),
(3, 'sdgsdggh', 'sdhhsdh', 'Debil', 'Imbecyl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posty`
--
ALTER TABLE `posty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `użytkownicy`
--
ALTER TABLE `użytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posty`
--
ALTER TABLE `posty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `użytkownicy`
--
ALTER TABLE `użytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
