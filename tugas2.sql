-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 07:43 AM
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
-- Database: `quist_joint`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `address`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'naruto@gmail.com', 'Naruto Uzumaki', 'password1', 'Konoha', 'admin', 'active', '2024-09-08 05:41:03', '2024-09-08 05:41:03'),
(2, 'luffy@gmail.com', 'Monkey D. Luffy', 'password2', 'East Blue', 'admin', 'active', '2024-09-08 05:41:03', '2024-09-08 05:41:03');

INSERT INTO categories (user_id, code, name, slug, description, status, photo) VALUES
(1, 'NRT001', 'Peralatan Shinobi', 'peralatan-shinobi', 'Peralatan yang digunakan oleh ninja dalam Naruto', 'active', 'naruto_tools.jpg'),
(1, 'NRT002', 'Senjata', 'senjata', 'Senjata yang digunakan oleh karakter dalam Naruto', 'active', 'naruto_weapons.jpg'),
(2, 'OPC001', 'Perlengkapan Bajak Laut', 'perlengkapan-bajak-laut', 'Perlengkapan yang digunakan oleh bajak laut dalam One Piece', 'active', 'one_piece_gear.jpg'),
(2, 'OPC002', 'Buah Iblis', 'buah-iblis', 'Buah yang memberikan kekuatan dalam One Piece', 'active', 'devil_fruits.jpg');

INSERT INTO products (category_id, user_id, code, name, slug, description, photo, qty, unit, price, status) VALUES
-- Produk Naruto
(1, 1, 'NRTP001', 'Kunai', 'kunai', 'Alat dasar yang digunakan oleh shinobi dalam Naruto.', 'kunai.jpg', 100, 'pcs', 5000, 'active'),
(1, 1, 'NRTP002', 'Shuriken', 'shuriken', 'Bintang lempar yang digunakan oleh ninja.', 'shuriken.jpg', 150, 'pcs', 3000, 'active'),
(1, 1, 'NRTP003', 'Ikat Kepala Ninja', 'ikat-kepala-ninja', 'Ikat kepala yang dipakai oleh ninja sebagai tanda kesetiaan.', 'headband.jpg', 50, 'pcs', 10000, 'active'),
(1, 1, 'NRTP004', 'Bom Asap', 'bom-asap', 'Bom yang digunakan oleh ninja untuk melarikan diri.', 'smoke_bomb.jpg', 200, 'pcs', 2500, 'active'),
(1, 1, 'NRTP005', 'Gulungan Penyegelan', 'gulungan-penyegelan', 'Gulungan yang berisi jutsu terlarang.', 'scroll.jpg', 20, 'pcs', 50000, 'active'),
(2, 1, 'NRTP006', 'Pedang Kusanagi', 'pedang-kusanagi', 'Pedang legendaris yang digunakan oleh Sasuke.', 'kusanagi.jpg', 10, 'pcs', 150000, 'active'),
(2, 1, 'NRTP007', 'Tag Peledak', 'tag-peledak', 'Tag yang meledak saat mengenai target.', 'explosive_tag.jpg', 200, 'pcs', 2500, 'active'),
(2, 1, 'NRTP008', 'Bola Latihan Rasengan', 'bola-rasengan', 'Alat latihan untuk menguasai Rasengan.', 'rasengan.jpg', 30, 'pcs', 75000, 'active'),
(2, 1, 'NRTP009', 'Pedang Chakra', 'pedang-chakra', 'Pedang yang diisi dengan chakra.', 'chakra_blade.jpg', 15, 'pcs', 120000, 'active'),
(2, 1, 'NRTP010', 'Gulungan Pemanggilan', 'gulungan-pemanggilan', 'Gulungan yang digunakan untuk memanggil makhluk.', 'summon_scroll.jpg', 5, 'pcs', 200000, 'active'),

-- Produk One Piece
(3, 2, 'OPCP001', 'Topi Jerami', 'topi-jerami', 'Topi jerami ikonik milik Luffy.', 'straw_hat.jpg', 50, 'pcs', 10000, 'active'),
(3, 2, 'OPCP002', 'Log Pose', 'log-pose', 'Alat navigasi yang digunakan di Grand Line.', 'log_pose.jpg', 20, 'pcs', 100000, 'active'),
(3, 2, 'OPCP003', 'Bendera Bajak Laut', 'bendera-bajak-laut', 'Bendera Bajak Laut Topi Jerami.', 'pirate_flag.jpg', 30, 'pcs', 20000, 'active'),
(3, 2, 'OPCP004', 'Kompas Navigator', 'kompas-navigator', 'Kompas khusus yang digunakan oleh Nami.', 'compass.jpg', 25, 'pcs', 50000, 'active'),
(3, 2, 'OPCP005', 'Gomu Gomu no Mi', 'gomu-gomu-no-mi', 'Buah Iblis milik Luffy yang memberikan kekuatan karet.', 'gomu_gomu.jpg', 5, 'pcs', 500000, 'active'),
(4, 2, 'OPCP006', 'Mera Mera no Mi', 'mera-mera-no-mi', 'Buah Iblis milik Ace yang memberikan kekuatan api.', 'mera_mera.jpg', 3, 'pcs', 700000, 'active'),
(4, 2, 'OPCP007', 'Ope Ope no Mi', 'ope-ope-no-mi', 'Buah Iblis milik Law yang memberikan kemampuan bedah.', 'ope_ope.jpg', 2, 'pcs', 1000000, 'active'),
(4, 2, 'OPCP008', 'Yami Yami no Mi', 'yami-yami-no-mi', 'Buah Iblis milik Blackbeard dengan kekuatan kegelapan.', 'yami_yami.jpg', 1, 'pcs', 1200000, 'active'),
(4, 2, 'OPCP009', 'Borgol Batu Laut', 'borgol-batu-laut', 'Borgol yang dapat menahan pengguna Buah Iblis.', 'seastone.jpg', 15, 'pcs', 150000, 'active'),
(4, 2, 'OPCP010', 'Peta Grand Line', 'peta-grand-line', 'Peta yang menunjukkan rute Grand Line.', 'grand_line_map.jpg', 10, 'pcs', 300000, 'active'),

-- Tambahan Produk Naruto dan One Piece
(1, 1, 'NRTP011', 'Jarum Senbon', 'jarum-senbon', 'Jarum tipis yang digunakan oleh ninja.', 'senbon.jpg', 100, 'pcs', 3000, 'active'),
(1, 1, 'NRTP012', 'Shuriken Angin', 'shuriken-angin', 'Shuriken yang diperkuat dengan chakra angin.', 'wind_shuriken.jpg', 80, 'pcs', 6000, 'active'),
(1, 1, 'NRTP013', 'Pedang Sasuke', 'pedang-sasuke', 'Pedang yang digunakan oleh Sasuke Uchiha.', 'sasuke_sword.jpg', 8, 'pcs', 180000, 'active'),
(2, 1, 'NRTP014', 'Segel Amaterasu', 'segel-amaterasu', 'Segel untuk mengendalikan api Amaterasu.', 'amaterasu.jpg', 5, 'pcs', 250000, 'active'),
(2, 1, 'NRTP015', 'Lensa Kontak Sharingan', 'lensa-kontak-sharingan', 'Lensa kontak yang meniru Sharingan.', 'sharingan.jpg', 50, 'pcs', 15000, 'active'),
(3, 2, 'OPCP011', 'Senapan Sniper', 'senapan-sniper', 'Senapan sniper yang diperbarui milik Usopp.', 'rifle.jpg', 12, 'pcs', 80000, 'active'),
(3, 2, 'OPCP012', 'Den Den Mushi', 'den-den-mushi', 'Siput transponder untuk komunikasi.', 'den_den.jpg', 25, 'pcs', 40000, 'active'),
(4, 2, 'OPCP013', 'Ensiklopedia Buah Iblis', 'ensiklopedia-buah-iblis', 'Buku yang mencantumkan berbagai Buah Iblis.', 'fruit_book.jpg', 3, 'pcs', 600000, 'active');
--
-- Indexes for dumped tables
--

--left join

SELECT 
    u.id AS user_id, 
    u.name AS user_name, 
    u.email, 
    c.id AS category_id, 
    c.name AS category_name, 
    c.description AS category_description, 
    p.id AS product_id, 
    p.name AS product_name, 
    p.description AS product_description, 
    p.price AS harga_rupiah 
FROM 
    users u
LEFT JOIN 
    categories c ON u.id = c.user_id
LEFT JOIN 
    products p ON c.id = p.category_id
ORDER BY 
    u.id, c.id, p.id;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
