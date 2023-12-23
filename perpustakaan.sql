-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 08:32 AM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktivitas_petugas`
--

CREATE TABLE `aktivitas_petugas` (
  `activity_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `deskripsi_aktivitas` text NOT NULL,
  `waktu_aktivitas` time DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aktivitas_petugas`
--

INSERT INTO `aktivitas_petugas` (`activity_id`, `staff_id`, `deskripsi_aktivitas`, `waktu_aktivitas`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1002, 'Jalan-jalan', '01:25:51', '2023-12-14 10:26:57', '2023-12-14 10:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_perpustakaan`
--

CREATE TABLE `anggota_perpustakaan` (
  `id` int NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fakultas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `anggota_perpustakaan`
--

INSERT INTO `anggota_perpustakaan` (`id`, `nim`, `nama`, `alamat`, `nomor_telepon`, `email`, `created_at`, `updated_at`, `fakultas`, `deleted_at`) VALUES
(9, '22.N1.0012', 'Ezra Baik', 'Jalan Ayo', '9283928', 'ezra@gmail.com', '2023-11-15 00:27:42', '2023-12-21 18:02:43', '6', '2023-12-21 18:02:43'),
(10, '22.N1.0003', 'Farrell', 'Jalan Era', '9839894', 'dipi@gmail.com', '2023-11-15 23:51:45', '2023-11-15 23:52:08', '8', '2023-11-15 23:52:08'),
(12, '22.J1.0010', 'Devan', 'Jalan Era', '9839894', 'dipi@gmail.com', '2023-11-16 18:14:13', '2023-12-21 18:02:51', '6', '2023-12-21 18:02:51'),
(14, '2001', 'Budi', 'Jalan Budi', '232367686', 'budi@gmail.com', NULL, '2023-12-07 21:08:32', '6', '2023-12-07 21:08:32'),
(15, '007', 'James Bond', 'Jalan Ayo', '9283928', 'james@gmail.com', '2023-12-07 19:10:01', '2023-12-07 19:10:31', '5', '2023-12-07 19:10:31'),
(16, '23.K1.0007', 'Divi', 'Jalan Era', '08292329829', 'ohsean@gmail.com', '2023-12-14 10:15:47', '2023-12-21 18:03:00', '6', '2023-12-21 18:03:00'),
(17, '20092', 'Evan', 'Jalan Saja', '9384389289', 'evan@gmail.com', '2023-12-21 05:03:03', '2023-12-21 18:03:10', '3', '2023-12-21 18:03:10'),
(18, '28738', 'Tania', 'Jalan Santai', '83787842', 'tania@gmail.com', '2023-12-21 05:04:25', '2023-12-21 18:03:22', '7', '2023-12-21 18:03:22'),
(19, '22.N4.0001', 'Peter', 'Jalan Santai Aja', '08132829223', 'peterya@gmail.com', '2023-12-21 05:07:50', '2023-12-21 18:03:29', '6', '2023-12-21 18:03:29'),
(20, '22.A1.0009', 'Allan', 'Jalan Tlogosari', '0828328292', 'allan@gmail.com', '2023-12-21 05:09:32', '2023-12-21 18:03:42', '2', '2023-12-21 18:03:42'),
(21, '22.B2.0010', 'Stefanie', 'Jalan Toyosaki', '0828328291', 'stef@gmail.com', '2023-12-21 05:15:35', '2023-12-21 18:03:49', '8', '2023-12-21 18:03:49'),
(22, '22.B2.0011', 'Aurel', 'Jalan Ayolah', '0828328218', 'aurel@gmail.com', '2023-12-21 05:16:21', '2023-12-21 18:03:56', '8', '2023-12-21 18:03:56'),
(24, '22.N1.0018', 'Renza', 'Jalan Kedungmundu', '8273728221', 'farel@gmail.com', '2023-12-21 05:17:25', '2023-12-21 18:04:05', '6', '2023-12-21 18:04:05'),
(25, '22.N1.0020', 'Doggy', 'Jalan Tembalang', '03840280390', 'dogg@gmail.com', '2023-12-21 07:17:19', '2023-12-21 07:18:00', 'FIKOM', '2023-12-21 07:18:00'),
(27, '22.N1.0021', 'Barty', 'Jalan Tembalang', '03840280390', 'dogg@gmail.com', '2023-12-21 07:28:26', '2023-12-21 18:04:12', 'FITL-5', '2023-12-21 18:04:12'),
(28, '22.N1.0078', 'Cockroach', 'Jalan Tembalang', '03840280390', 'dogg@gmail.com', '2023-12-21 07:29:26', '2023-12-21 07:29:26', '10 - PERTANIAN', NULL),
(29, '20.K1.0017', 'Divi Baik', 'Jalan Era', '08292329829', 'apasih@gmail.com', '2023-12-21 17:37:14', '2023-12-21 17:37:14', '6 - FIKOM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `book_id` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` year NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `category_id` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`book_id`, `judul`, `pengarang`, `tahun_terbit`, `ISBN`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tutorial Pemrograman Laravel', 'Ezra Natanael', '2003', 'xxx', '6', '2023-12-12 10:03:30', '2023-12-14 09:37:04', NULL),
(2, 'Spy x Family', 'Divi', '2020', 'yyy', '16', '2023-12-14 09:40:53', '2023-12-14 09:40:53', NULL),
(3, 'Naruto', 'Masashi Kishimoto', '2003', 'zzz', '15', '2023-12-14 09:49:04', '2023-12-14 18:56:23', '2023-12-14 18:56:23'),
(4, 'Laskar Pelangi', '5', '2014', 'uuu', '3 - Referensi', '2023-12-21 07:43:30', '2023-12-21 07:43:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `fine_id` int NOT NULL,
  `loan_id` int NOT NULL,
  `jumlah_denda` decimal(10,2) DEFAULT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`fine_id`, `loan_id`, `jumlah_denda`, `tanggal_pembayaran`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 20.00, '2023-12-19', '2023-12-12 10:54:57', '2023-12-12 10:54:57', NULL),
(2, 1, 20.00, '2023-12-14', '2023-12-12 10:57:01', '2023-12-12 10:57:01', NULL),
(3, 2, 20.00, '2023-12-22', '2023-12-14 10:31:29', '2023-12-14 10:31:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman`
--

CREATE TABLE `detail_peminjaman` (
  `detail_id` int NOT NULL,
  `id_member` varchar(250) NOT NULL,
  `loan_id` int NOT NULL,
  `book_id` int NOT NULL,
  `jumlah` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_peminjaman`
--

INSERT INTO `detail_peminjaman` (`detail_id`, `id_member`, `loan_id`, `book_id`, `jumlah`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, '22.J1.0010', 1, 1, 1, 6, '2023-12-12 10:29:36', '2023-12-12 10:29:36', NULL),
(8, '10', 2, 3, 1, 15, '2023-12-14 10:12:37', '2023-12-14 10:12:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int NOT NULL,
  `kode_fakultas` int NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `kode_fakultas`, `nama_fakultas`, `deleted_at`) VALUES
(1, 1, 'FAD', NULL),
(2, 2, 'FEB', NULL),
(3, 3, 'FBS', NULL),
(4, 4, 'FHK', NULL),
(5, 5, 'FITL', NULL),
(6, 6, 'FIKOM', NULL),
(7, 7, 'FK', NULL),
(8, 8, 'PSIKOLOGI', NULL),
(9, 9, 'TEKNIK', NULL),
(10, 10, 'PERTANIAN', NULL),
(11, 11, 'AKSI', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int NOT NULL,
  `kode_jabatan` int NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `kode_jabatan`, `nama_jabatan`, `deleted_at`) VALUES
(1, 1, 'Pustakawan', NULL),
(2, 2, 'Petugas Perpustakaan', NULL),
(3, 3, 'Asisten Pustakawan', NULL),
(4, 4, 'Peneliti Informasi', NULL),
(5, 5, 'Teknisi Komputer Perpustakaan', NULL),
(6, 6, 'Pengelola Acara dan Pameran', NULL),
(7, 7, 'Spesialis Koleksi Digital', NULL),
(8, 8, 'Kustos Arsip Perpustakaan', NULL),
(9, 9, 'Pengelola Layanan Pengguna', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `nama_kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`id`, `category_id`, `nama_kategori`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Fiksi', NULL, NULL, NULL),
(2, 2, 'Non-Fiksi', NULL, NULL, NULL),
(3, 3, 'Referensi', NULL, NULL, NULL),
(4, 4, 'Anak-anak dan Remaja', NULL, NULL, NULL),
(5, 5, 'Sains dan Matematika', NULL, NULL, NULL),
(6, 6, 'Teknologi dan Informatika', NULL, NULL, NULL),
(7, 7, 'Seni dan Musik', NULL, NULL, NULL),
(8, 8, 'Kesehatan dan Kebugaran', NULL, NULL, NULL),
(9, 9, 'Agama dan Spiritualitas', NULL, NULL, NULL),
(10, 10, 'Pendidikan dan Pengembangan Diri', NULL, NULL, NULL),
(11, 11, 'Travel', NULL, NULL, NULL),
(12, 12, 'Kuliner', NULL, NULL, NULL),
(15, 13, NULL, '2023-11-15 01:23:36', '2023-11-15 01:24:31', '2023-11-15 01:24:31'),
(16, 13, 'Misteri', '2023-11-15 01:24:45', '2023-11-15 01:24:45', NULL),
(17, 14, 'Horror', '2023-11-16 18:15:46', '2023-11-16 18:15:46', NULL),
(18, 15, 'Manga', '2023-12-12 09:50:12', '2023-12-12 09:50:12', NULL),
(19, 16, 'Anime', '2023-12-14 09:34:30', '2023-12-14 09:34:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_11_131313_add_column_deleted_at_posts', 2),
(6, '2023_11_11_134600_add_column_deleted_at_posts', 3),
(7, '2023_11_11_134912_add_column_deleted_at_posts', 4),
(8, '2023_11_15_024450_add_column_deleted_at_posts', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `loan_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `category_id` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`loan_id`, `member_id`, `tanggal_peminjaman`, `tanggal_pengembalian`, `status`, `category_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 9, '2003-11-20', '2003-11-23', 'Oke', '13', '2023-11-30 04:23:28', '2023-11-30 04:23:28', NULL),
(2, 10, '2003-02-20', '2003-03-23', 'Oke Sip', '13', '2023-11-30 04:27:34', '2023-11-30 04:27:34', NULL),
(3, 14, '2023-12-15', '2023-12-17', 'Dipinjam', '1', '2023-12-14 10:00:47', '2023-12-14 10:00:47', NULL),
(4, 12, '2023-12-23', '2023-12-24', 'Dipinjam ya', '6', '2023-12-14 10:06:14', '2023-12-14 10:06:14', NULL),
(5, 25, '2023-12-21', '2023-12-23', 'Pinjam ya', 'Seni dan Musik', '2023-12-21 07:36:58', '2023-12-21 07:36:58', NULL),
(6, 18, '2023-12-23', '2023-12-30', 'Pinjam ya', '6 - Teknologi dan Informatika', '2023-12-21 07:37:52', '2023-12-21 07:37:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id` int NOT NULL,
  `kode_pengarang` int NOT NULL,
  `nama_pengarang` varchar(250) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id`, `kode_pengarang`, `nama_pengarang`, `deleted_at`) VALUES
(1, 1, 'Andrea Hirata', NULL),
(2, 2, 'Tere Liye', NULL),
(3, 3, 'Haidar Musyafa', NULL),
(4, 4, 'Raditya Dika', NULL),
(5, 5, 'Ika Natassa', NULL),
(6, 6, 'Eka Kurniawan', NULL),
(7, 7, 'Valerie Patkar', NULL),
(8, 8, 'Erisca Febriani', NULL),
(9, 9, 'Pramodyea Ananta Toer', NULL),
(10, 10, 'Ahmad Fuadi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas_perpustakaan`
--

CREATE TABLE `petugas_perpustakaan` (
  `id` int NOT NULL,
  `staff_id` varchar(250) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `petugas_perpustakaan`
--

INSERT INTO `petugas_perpustakaan` (`id`, `staff_id`, `nama`, `jabatan`, `nomor_telepon`, `email`, `updated_at`, `created_at`, `deleted_at`) VALUES
(2, '1002', 'Fransisco Aditya', '3', '+6281329296088', 'ezranatanael2003@gmail.com', '2023-11-15 00:50:09', '2023-11-15 00:50:09', NULL),
(3, '1003', 'Renza', '1', '9839894', 'renza@gmail.com', '2023-11-16 18:15:12', '2023-11-16 18:15:12', NULL),
(4, '23', 'dipi', '8', '23243454', 'dipi@gmail.com', NULL, NULL, NULL),
(5, '80', 'Bonfil', '3', '8928392892', 'bonfil@gmail.com', '2023-12-14 10:17:48', '2023-12-14 10:17:48', NULL),
(6, '98', 'Budi', 'Teknisi Komputer Perpustakaan - 5', '8349384938', 'budi@gmail', '2023-12-21 07:31:16', '2023-12-21 07:31:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ezra', 'ezra@gmail.com', NULL, '$2y$12$xi.bzYDgYKkqc98nQ7DV/uijGL1M7XJSLZYWrOIdWeKgZoYhkhmfO', NULL, '2023-11-10 18:25:03', '2023-11-10 18:25:03'),
(2, 'admin', 'admin@admin.com', NULL, '$2y$12$CsGc.XFalfgOMLoqwSAidu9eu7KvqE.n/vMpDF4cw3OQEfDrJxhea', 'NgST8wZMckcbdmkx7pJvnBr8cExmvax5tQRb1MPiwUNE9xIhoJZZewsaxFD1', '2023-11-14 20:53:50', '2023-11-14 20:53:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktivitas_petugas`
--
ALTER TABLE `aktivitas_petugas`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `anggota_perpustakaan`
--
ALTER TABLE `anggota_perpustakaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn_buku` (`ISBN`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`fine_id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `fk_detail_peminjaman_category` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `peminjaman_ifbk_1` (`member_id`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petugas_perpustakaan`
--
ALTER TABLE `petugas_perpustakaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktivitas_petugas`
--
ALTER TABLE `aktivitas_petugas`
  MODIFY `activity_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggota_perpustakaan`
--
ALTER TABLE `anggota_perpustakaan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `fine_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_peminjaman`
--
ALTER TABLE `detail_peminjaman`
  MODIFY `detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `loan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas_perpustakaan`
--
ALTER TABLE `petugas_perpustakaan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ifbk_1` FOREIGN KEY (`member_id`) REFERENCES `anggota_perpustakaan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
