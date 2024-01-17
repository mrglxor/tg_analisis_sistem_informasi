-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2024 at 02:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kuliah_asia_siakad`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nid` int NOT NULL,
  `nama_dosen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `keahlian` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nid`, `nama_dosen`, `keahlian`) VALUES
(1234560, 'Eko Retnadi, M. Kom.', 'Analisis Sistem'),
(1234561, 'EN TAY, M. Kom.', 'Programming'),
(1234562, 'Ahfi Fauka Pranata, S. Kom., M.M.', 'Internet Of Thinks'),
(1234563, 'HARIS SUPRIATNA, ST., M. Kom.', 'Jaringan'),
(1234564, 'Agus Sugandi', 'User Interface & User Experience'),
(1234565, 'Dr. RINAWATI, M.M.', 'Matematikawan');

-- --------------------------------------------------------

--
-- Table structure for table `dosen_matakuliah`
--

CREATE TABLE `dosen_matakuliah` (
  `id` int NOT NULL,
  `nid` int NOT NULL,
  `kode_mk` int NOT NULL
) ;

--
-- Dumping data for table `dosen_matakuliah`
--

INSERT INTO `dosen_matakuliah` (`id`, `nid`, `kode_mk`) VALUES
(1, 1234560, 12345672),
(2, 1234561, 12345674),
(3, 1234561, 12345675),
(4, 1234562, 12345670),
(5, 1234563, 12345673),
(6, 1234564, 12345676),
(7, 1234565, 12345671);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_studi`
--

CREATE TABLE `hasil_studi` (
  `id` int NOT NULL,
  `nim` int NOT NULL,
  `kode_mk` int NOT NULL,
  `nilai` float DEFAULT NULL
) ;

--
-- Dumping data for table `hasil_studi`
--

INSERT INTO `hasil_studi` (`id`, `nim`, `kode_mk`, `nilai`) VALUES
(1, 22020057, 12345674, 100),
(2, 22020057, 12345672, 100);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kelas`
--

CREATE TABLE `jadwal_kelas` (
  `id` int NOT NULL,
  `jadwal_id` int DEFAULT NULL,
  `kelas` enum('B','C','D') COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_kelas`
--

INSERT INTO `jadwal_kelas` (`id`, `jadwal_id`, `kelas`) VALUES
(2, 12001, 'B'),
(3, 12002, 'C'),
(4, 12003, 'D'),
(5, 12004, 'B'),
(6, 12005, 'C'),
(7, 12006, 'D'),
(8, 12007, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `jadwal_id` int NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`jadwal_id`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(12001, 'Senin', '10:30:00', '13:00:00'),
(12002, 'Kamis', '10:30:00', '13:00:00'),
(12003, 'Kamis', '13:30:00', '17:10:00'),
(12004, 'Jumat', '08:00:00', '10:30:00'),
(12005, 'Sabtu', '08:00:00', '10:30:00'),
(12006, 'Sabtu', '10:30:00', '13:00:00'),
(12007, 'Sabtu', '13:30:00', '15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_ruang`
--

CREATE TABLE `jadwal_ruang` (
  `id` int NOT NULL,
  `jadwal_id` int DEFAULT NULL,
  `kode_ruang` int NOT NULL
) ;

--
-- Dumping data for table `jadwal_ruang`
--

INSERT INTO `jadwal_ruang` (`id`, `jadwal_id`, `kode_ruang`) VALUES
(2, 12001, 204),
(3, 12002, 205),
(4, 12003, 206),
(5, 12004, 203),
(6, 12005, 206),
(7, 12006, 206),
(8, 12007, 207);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nim` int NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `nim`, `jenis_kelamin`, `alamat`) VALUES
('Muhamad Farhan', 22020057, 'laki-laki', 'jalan ini');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_matakuliah`
--

CREATE TABLE `mahasiswa_matakuliah` (
  `id` int NOT NULL,
  `nim` int NOT NULL,
  `kode_mk` int NOT NULL
) ;

--
-- Dumping data for table `mahasiswa_matakuliah`
--

INSERT INTO `mahasiswa_matakuliah` (`id`, `nim`, `kode_mk`) VALUES
(1, 22020057, 12345670),
(2, 22020057, 12345671),
(5, 22020057, 12345673),
(6, 22020057, 12345672),
(8, 22020057, 12345674),
(9, 22020057, 12345675),
(10, 22020057, 12345676);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` int NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sks` int DEFAULT NULL
) ;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
(12345670, 'Pengembangan Aplikasi IOT', 3),
(12345671, 'Statistika', 3),
(12345672, 'Analisis Sistem Informasi', 3),
(12345673, 'Komunikasi Data dan Jaringan Komputer', 2),
(12345674, 'Mobile Programming', 3),
(12345675, 'Pemrograman Python', 3),
(12345676, 'UI/UX Design', 2);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah_jadwal`
--

CREATE TABLE `matakuliah_jadwal` (
  `id` int NOT NULL,
  `kode_mk` int NOT NULL,
  `jadwal_id` int DEFAULT NULL
) ;

--
-- Dumping data for table `matakuliah_jadwal`
--

INSERT INTO `matakuliah_jadwal` (`id`, `kode_mk`, `jadwal_id`) VALUES
(2, 12345670, 12001),
(3, 12345671, 12002),
(4, 12345672, 12003),
(5, 12345673, 12004),
(6, 12345674, 12005),
(7, 12345675, 12006),
(8, 12345676, 12007);

-- --------------------------------------------------------

--
-- Table structure for table `rencana_studi`
--

CREATE TABLE `rencana_studi` (
  `id` int NOT NULL,
  `nim` int NOT NULL,
  `kode_mk` int NOT NULL,
  `sks` int DEFAULT NULL,
  `semester` int NOT NULL
) ;

--
-- Dumping data for table `rencana_studi`
--

INSERT INTO `rencana_studi` (`id`, `nim`, `kode_mk`, `sks`, `semester`) VALUES
(1, 22020057, 12345672, 2, 3),
(2, 22020057, 12345674, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ruang_kuliah`
--

CREATE TABLE `ruang_kuliah` (
  `kode_ruang` int NOT NULL,
  `nama_ruang` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `kapasitas` int NOT NULL
) ;

--
-- Dumping data for table `ruang_kuliah`
--

INSERT INTO `ruang_kuliah` (`kode_ruang`, `nama_ruang`, `kapasitas`) VALUES
(203, 'Ruangan Rapat', 300),
(204, 'Laboratorium', 100),
(205, 'Ruang Belajar', 400),
(206, 'Ruang Belajar', 200),
(207, 'Ruang Belajar', 500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','dosen','mahasiswa') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'mahasiswa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'farhan', '$2y$10$OP66e5L/tetdW92q9GJhFOghzs4WJNKEtx8Y3MNIpC8t7ONokEp6G', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nid`),
  ADD UNIQUE KEY `nid` (`nid`);

--
-- Indexes for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nid` (`nid`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `hasil_studi`
--
ALTER TABLE `hasil_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `jadwal_kelas`
--
ALTER TABLE `jadwal_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jadwal_kelas` (`jadwal_id`);

--
-- Indexes for table `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`jadwal_id`),
  ADD UNIQUE KEY `jadwal_id` (`jadwal_id`);

--
-- Indexes for table `jadwal_ruang`
--
ALTER TABLE `jadwal_ruang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwal_id` (`jadwal_id`),
  ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mahasiswa_matakuliah`
--
ALTER TABLE `mahasiswa_matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD UNIQUE KEY `kode_mk_2` (`kode_mk`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `matakuliah_jadwal`
--
ALTER TABLE `matakuliah_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `jadwal_id` (`jadwal_id`);

--
-- Indexes for table `rencana_studi`
--
ALTER TABLE `rencana_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `ruang_kuliah`
--
ALTER TABLE `ruang_kuliah`
  ADD PRIMARY KEY (`kode_ruang`),
  ADD UNIQUE KEY `kode_ruang` (`kode_ruang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_studi`
--
ALTER TABLE `hasil_studi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_kelas`
--
ALTER TABLE `jadwal_kelas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jadwal_ruang`
--
ALTER TABLE `jadwal_ruang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa_matakuliah`
--
ALTER TABLE `mahasiswa_matakuliah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matakuliah_jadwal`
--
ALTER TABLE `matakuliah_jadwal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rencana_studi`
--
ALTER TABLE `rencana_studi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen_matakuliah`
--
ALTER TABLE `dosen_matakuliah`
  ADD CONSTRAINT `dosen_matakuliah_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `dosen` (`nid`),
  ADD CONSTRAINT `dosen_matakuliah_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);

--
-- Constraints for table `hasil_studi`
--
ALTER TABLE `hasil_studi`
  ADD CONSTRAINT `hasil_studi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `hasil_studi_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);

--
-- Constraints for table `jadwal_kelas`
--
ALTER TABLE `jadwal_kelas`
  ADD CONSTRAINT `fk_jadwal_kelas` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_kuliah` (`jadwal_id`);

--
-- Constraints for table `jadwal_ruang`
--
ALTER TABLE `jadwal_ruang`
  ADD CONSTRAINT `jadwal_ruang_ibfk_1` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_kuliah` (`jadwal_id`),
  ADD CONSTRAINT `jadwal_ruang_ibfk_2` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang_kuliah` (`kode_ruang`);

--
-- Constraints for table `mahasiswa_matakuliah`
--
ALTER TABLE `mahasiswa_matakuliah`
  ADD CONSTRAINT `mahasiswa_matakuliah_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `mahasiswa_matakuliah_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);

--
-- Constraints for table `matakuliah_jadwal`
--
ALTER TABLE `matakuliah_jadwal`
  ADD CONSTRAINT `matakuliah_jadwal_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`),
  ADD CONSTRAINT `matakuliah_jadwal_ibfk_2` FOREIGN KEY (`jadwal_id`) REFERENCES `jadwal_kuliah` (`jadwal_id`);

--
-- Constraints for table `rencana_studi`
--
ALTER TABLE `rencana_studi`
  ADD CONSTRAINT `rencana_studi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `rencana_studi_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
