-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2017 at 10:28 PM
-- Server version: 5.7.16
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serveriDemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysit`
--

CREATE TABLE `analysit` (
  `id` int(11) NOT NULL,
  `clientit_id` int(11) NOT NULL,
  `kulku_id` int(11) NOT NULL,
  `asiakkaat_id` int(11) NOT NULL,
  `mainokset_id` int(11) NOT NULL,
  `kulkuja_kpl` int(11) NOT NULL,
  `kulku_sek` int(11) NOT NULL,
  `mainokset_kpl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asiakkaat`
--

CREATE TABLE `asiakkaat` (
  `id` int(11) NOT NULL,
  `nimi` varchar(245) NOT NULL,
  `osoite` varchar(245) NOT NULL,
  `email` varchar(245) NOT NULL,
  `y-tunnus` varchar(245) NOT NULL,
  `henkilo` varchar(245) NOT NULL,
  `puhelin` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clientit`
--

CREATE TABLE `clientit` (
  `id` int(11) NOT NULL,
  `kulku_id` int(11) NOT NULL,
  `ip` varchar(245) NOT NULL,
  `laite_nimi` varchar(245) NOT NULL,
  `nayton_tiedot` text NOT NULL,
  `yhteyden_tiedot` text NOT NULL,
  `raspin_tiedot` text NOT NULL,
  `yksikon_tiedot` text NOT NULL,
  `sijainti` text NOT NULL,
  `kommentit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kulku`
--

CREATE TABLE `kulku` (
  `id` int(11) NOT NULL,
  `mainokset_id` varchar(245) NOT NULL,
  `taustakuva` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mainokset`
--

CREATE TABLE `mainokset` (
  `id` int(11) NOT NULL,
  `asiakas_id` varchar(245) NOT NULL,
  `kuvaus` varchar(245) NOT NULL,
  `aika` int(11) NOT NULL DEFAULT '180000',
  `tiedosto` varchar(245) NOT NULL,
  `lisatty` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysit`
--
ALTER TABLE `analysit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientit`
--
ALTER TABLE `clientit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kulku`
--
ALTER TABLE `kulku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mainokset`
--
ALTER TABLE `mainokset`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analysit`
--
ALTER TABLE `analysit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clientit`
--
ALTER TABLE `clientit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kulku`
--
ALTER TABLE `kulku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mainokset`
--
ALTER TABLE `mainokset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
