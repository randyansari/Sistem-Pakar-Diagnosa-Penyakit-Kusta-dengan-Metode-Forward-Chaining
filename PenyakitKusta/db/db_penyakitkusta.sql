-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 10:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyakitkusta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Terdapat 1-5 lesi kulit berupa bercak datar berwarna kemerahan atau pucat'),
(2, 'G002', 'Terdapat Benjolan'),
(3, 'G003', 'Terdistribusi tidak sikmetris'),
(4, 'G004', 'Menghilangnya sensibilitas dengan jelas'),
(5, 'G005', 'Kerusakan saraf hanya pada satu cabang saraf'),
(6, 'G006', 'Bintik keputihan seperti panu dan mati rasa'),
(7, 'G007', 'Bidang bercak yang kering dan kasar serta tidak berkeringat'),
(8, 'G008', 'Terdapat lebih dari 5 lesi kulit berupa bercak datar berwarna kemerahan atau pucat'),
(9, 'G009', 'Terdistribusi simetris'),
(10, 'G010', 'Menghilangnya sensibilitas kurang jelas'),
(11, 'G011', 'Tidak tumbuh rambut atau bulu'),
(12, 'G012', 'Timbul bercak baru diarea kulit lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `info`, `solusi`) VALUES
(1, 'Indeterminate', 'terjadi pada seseorang dengan daya tahan tubuh sedemikian tinggi sehingga tubuh bisa segera menyembuhkan penyakitnya tanpa suatu pengobatan. Atau pada orang dengan daya tahan tubuh yang kurang maka tanda indeterminatenya menjadi lebih jelas.', 'Segera lakukan pengobatan, apabila dibiarkan tanpa pengobatan yang khusus penyakit kusta jenis Indeterminate berkemungkinan bisa sembuh sendiri, tetapi hal itu tidak menjamin. Pada stadiun dini pengobatan sangat lah mudah dan sering berhasil.'),
(2, 'Tuberkuloid', 'Jenis ini ditandai dengan bentuk lesi yang datar dan beberapa diantaranya berukuran besar serta mati rasa akibat memengaruhi saraf. Menurut klasifikasi Ridley-Jopling, kusta jenis ini masih dapat sembuh sendirinya, bertahan, dan mungkin berkembang ke bentuk yang lebih parah.', 'Lakukan pengobataan selama 6-9 bulan, ciriciri seperti bercak bertambah dalam ukuran dan jumlah kemerahan pada tepi bercak. Selama pengawasan 3-6 bulan dapat dipastikan perubahan dari ketebalan bercak apakah lebih menipis atau menebal.'),
(3, 'Lepromatous', 'Kusta lepromatosa adalah bentuk terparah karena lesi sudah muncul semakin banyak dan disertai dengan bakteri. Kusta ini juga telah memengaruhi saraf lebih serius, sehingga rambut pengidapnya mulai rontok dan tungkai melemah. Kusta lepromatosa harus segera diobati karena jenis ini akan terus memburuk.', 'Pada kusta jenis lepramatous termasuk jenis kusta yang lama dan sulit disembuhkan, lakukan pengobatan secara berkala 12-18 bulan hingga penyakit tidak lagi menular.'),
(4, 'Borderline Tuberkuloid', 'Lesi kusta jenis ini mirip dengan tuberkuloid, tetapi jumlahnya lebih banyak. Selain itu, kusta jenis ini mulai memengaruhi banyak titik saraf. Kusta tuberkuloid borderline tidak dapat sembuh dengan sendirinya namun bisa mereda ke bentuk kusta tuberkuloid. Namun, kusta ini pastinya dapat bertahan atau berkembang ke bentuk yang lebih parah.', 'Lakukan pengobatan selama lebih dari 6 bulan setelah itu tanda aktif pada penyakit jenis kusta ini akan menghilang.'),
(5, 'Mid Borderline', 'Jenis ini sudah menimbulkan mati rasa di banyak area tubuh bahkan menyebabkan pembengkakan pada kelenjar getah bening. Kusta jenis ini dapat mereda menjadi tipe tuberkuloid borderline atau berkembang menjadi tipe yang lebih serius.', 'Lakukan rujukan penyakit jenis kusta Mid Borderline ini ke puskesmas karena kebanyakan jenis kusta ini akan mengalami reaksi-reaksi dari jenis penyakit tersebut.'),
(6, 'Borderline Lepromatous', 'Jenis Ini ditandai dengan banyak lesi, termasuk lesi datar, Benjolan atau nodul dan plak juga semakin banyak serta menimbulkan mati rasa. Kusta ini bisa mereda ke bentuk sebelumnya, yakni plak kusta kemerahan borderline atau malah lebih parah.', 'Lakukan pengobatan selama 12-18 bulan setelah ciri-ciri yang aktif menghilang. Karena reaksi tidak terjadi dengan cepat dengan pengobatan yang tepat dan berkala sehingga dapat disembuhkan kembali.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`) VALUES
(1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1),
(6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
