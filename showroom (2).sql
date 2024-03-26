-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2024 at 08:41 AM
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
-- Database: `showroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(300) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = is active\r\n0 = not active',
  `photo_profile` varchar(255) NOT NULL DEFAULT 'default.png',
  `token_password` char(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `is_active`, `photo_profile`, `token_password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$UrnEb21M5mcSS89S0dmrheOBHOK7cf8KsuHGOd58nkZn554V27z3G', 1, 'default.png', NULL, NULL, '2023-12-02 04:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `app_id` int NOT NULL,
  `app_name` varchar(50) DEFAULT NULL,
  `no_hp` char(18) DEFAULT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'main_logo.png',
  `meta_token` text,
  `email` varchar(80) DEFAULT NULL,
  `alamat` text,
  `url_facebook` text,
  `url_instagram` text,
  `url_youtube` text,
  `jadwal` text,
  `visi` text,
  `misi` text,
  `img_hero1` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_hero2` varchar(150) DEFAULT NULL,
  `img_stempel` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_about_us` varchar(150) DEFAULT NULL,
  `img_about_us2` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`app_id`, `app_name`, `no_hp`, `logo`, `meta_token`, `email`, `alamat`, `url_facebook`, `url_instagram`, `url_youtube`, `jadwal`, `visi`, `misi`, `img_hero1`, `img_hero2`, `img_stempel`, `img_about_us`, `img_about_us2`, `created_at`, `updated_at`) VALUES
(1, 'Rizki Motor', '081326362324', 'logo-2024-01-21-19-19-21.png', '2421f8c64a776afe530038cbe68087c1', 'rizkimotor17@gmail.com', 'Jl. Hos Cokroaminoto Gg. 3 No.33, Mlati Norowito, Kec. Kota Kudus, Kabupaten Kudus, Jawa Tengah 59319', 'https://www.facebook.com/jualbelimobkas/', 'https://www.instagram.com/rizkimotorkudus/?utm_source=ig_web_button_share_sheet&igshid=OGQ5ZDc2ODk2ZA==', 'https://www.youtube.com/@rizkimotorkudus9227', 'Senin-jumat: 08:00 pagi - 20:00 malam', 'Visi kami adalah menjadi pusat utama mobil bekas yang unggul, menawarkan lingkungan belanja inovatif dan ramah pelanggan. Kami bertekad untuk menjadi destinasi pilihan dengan inventaris terlengkap, kualitas terjamin, dan layanan pelanggan terbaik. Dengan profesionalisme, integritas, dan inovasi, kami ingin membentuk masa depan industri ini, memberikan kontribusi positif pada kepuasan pelanggan, dan mempercepat pertumbuhan bisnis.', 'Misi kami di Showroom Mobil Bekas adalah memprioritaskan kepuasan pelanggan melalui pengalaman belanja yang mudah. Kami komitmen menyediakan mobil berkualitas tanpa kompromi melalui seleksi ketat dan memanfaatkan inovasi teknologi. Dalam membangun komunitas pecinta otomotif, kami ingin menjadi destinasi utama untuk pembelian mobil bekas, memberikan kontribusi positif pada kepuasan pelanggan, dan terus berinovasi dalam pertumbuhan bisnis.', 'Hero-1-2024-01-21-19-14-18.jpg', 'Hero-2-2024-01-21-19-21-26.jpg', 'stempel-2024-01-19-08-29-03.png', 'AboutUs1-2024-01-19-08-29-03.jpg', 'AboutUs2-2024-01-19-08-29-03.jpg', NULL, '2024-01-21 17:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `bahan_bakar`
--

CREATE TABLE `bahan_bakar` (
  `bahan_bakar_id` bigint NOT NULL,
  `bahan_bakar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bahan_bakar`
--

INSERT INTO `bahan_bakar` (`bahan_bakar_id`, `bahan_bakar`, `created_at`, `updated_at`) VALUES
(1, 'Bensin (geosoline)', '2023-11-04 12:26:12', '2023-11-04 12:30:29'),
(3, 'Solar', '2023-11-04 15:49:33', NULL),
(4, 'Listrik', '2023-12-01 00:52:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `bank_id` int NOT NULL,
  `no_rekening` char(30) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`bank_id`, `no_rekening`, `nama`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, '32323', 'Rizki  Motor', 'BRI', NULL, NULL),
(2, '999033', 'Rizki  Motor', 'BCA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `body_id` int NOT NULL,
  `body` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`body_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 'SUV', '2023-11-04 14:59:42', NULL),
(2, 'Sedan', '2023-11-04 14:59:49', NULL),
(3, 'Hatchback', '2023-11-16 05:11:52', NULL),
(4, 'Coupe', '2023-11-16 05:12:10', NULL),
(5, 'Wagon', '2023-11-16 05:12:42', NULL),
(6, 'Van', '2023-11-16 05:12:51', NULL),
(7, 'Jeep', '2023-11-16 05:13:04', NULL),
(8, 'MPV', '2024-01-11 13:40:31', NULL),
(9, 'City Car', '2024-01-11 13:40:59', NULL),
(10, 'LCGC', '2024-01-11 13:41:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `finance_id` bigint NOT NULL,
  `nama_finance` varchar(150) NOT NULL,
  `bunga` char(5) NOT NULL,
  `biaya_asuransi` float NOT NULL,
  `biaya_administrasi` float NOT NULL,
  `uang_muka` float NOT NULL,
  `biaya_provisi` float NOT NULL,
  `deskripsi` text,
  `url_website` text,
  `url_facebook` text,
  `url_instagram` text,
  `telepon` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 == active\r\n0 == tidak active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`finance_id`, `nama_finance`, `bunga`, `biaya_asuransi`, `biaya_administrasi`, `uang_muka`, `biaya_provisi`, `deskripsi`, `url_website`, `url_facebook`, `url_instagram`, `telepon`, `email`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Adira Finance', '1.66', 0, 0.5, 5, 0, 'Fitur Produk\r\nAdira Finance menawarkan 3 tipe jasa untuk membiayai sepeda motor dan mobil, baik baru maupun bekas secara kredit dari bermacam merk. Fasilitas jasa ini ditawarkan kepada perusahaan, kelompok atau individu baik untuk keperluan usaha atau operasional dan individual. 3 tipe produk yang ditawarkan berupa:\r\n\r\nPembiayaan Konsumen: Kegiatan pembiayaan untuk pengadaan barang berdasarkan kebutuhan konsumen dengan pembayaran secara angsuran (Peraturan Menkeu Republik Indonesia No. 84/PMK.012/2006).\r\nSewa Guna Usaha: Kegiatan pembiayaan dalam bentuk penyediaan barang modal baik secara sewa guna usaha dengan hak opsi (Finance Lease) maupun sewa guna usaha tanpa hak opsi (Operating Lease) untuk digunakan oleh Penyewa Guna Usaha (lessee) selama jangka waktu tertentu berdasarkan pembayaran secara angsuran (Peraturan Menkeu Republik Indonesia No. 84/PMK.012/2006).\r\nPembiayaan Konsumen Berdasarkan Prinsip Syariah: Kegiatan pembiayaan untuk pengadaan barang berdasarkan kebutuhan konsumen dengan pembayaran secara angsuran sesuai dengan prinsip Syariah (Peraturan Ketua Bapepam-LK No. PER-03/BL/2007).\r\nCara Pembayaran Kredit\r\nPembayaran dapat dilakukan melalui kasir di seluruh cabang Adira Finance yang tersebar pada seluruh Indonesia. Selain itu, pelanggan dapat melakukan pembayaran melalui kantor Pos online, melalui ATM, EDC, M-Banking serta Internet Banking. Beberapa cara pembayaran di atas akan dikenakan biaya administrasi sebesar Rp 2.000,- s/d Rp 4.000,-', 'www.adira.co.id', 'https://www.facebook.com/AdiraFinanceKudus/', 'https://www.instagram.com/adirafinanceid/?hl=en', '082317180526', 'customercare@adira.co.id', 'Finance_2023-11-16-05-56-05.jpg', 1, '2023-11-15 22:56:05', '2023-12-27 04:47:52'),
(6, 'BCA MULTIFINANCE', '8.25', 0.81, 0, 20, 0.5, 'Multifinance atau perusahaan pembiayaan adalah lembaga keuangan yang bergerak dalam bidang usaha peminjaman dana kepada debitur atau nasabah untuk melakukan pembelian suatu barang atau jasa.', 'https://g.co/kgs/7GYzTs', 'www.facebook.com/bcaf.bcaf.16', 'https://www.instagram.com/bcafinance.kudus/?hl=id', '(0291) 425725', 'www.bcamf.co.id', 'Finance_2024-01-19-00-52-02.jpg', 1, '2023-12-22 13:22:43', '2024-01-18 17:52:02'),
(7, 'BCA FINANCE', '3.66', 0.81, 1, 0, 5, 'Jam kerja / operasional:\r\nSenin: 8:00 AM - 3:00 PM, \r\nSelasa: 8:00 AM - 3:00 PM, \r\nRabu: 8:00 AM - 3:00 PM, \r\nKamis: 8:00 AM - 3:00 PM,\r\nJumat: 8:00 AM - 3:00 PM, \r\nSabtu: Closed, \r\nMinggu: Closed', 'www.bcafinance.co.id', 'https://l.instagram.com/?u=https%3A%2F%2Fwww.facebook.com%2Fbcaf.bcaf.16&e=AT1DUekj5tBd5uoM7dKxsW4Y6OvNzr82lNuewSrbtpdz0IvO8uMVXO385Gi6buNp6BcTb1F6Jj0Djjx9HrYtDDOyvRBIf2py', 'https://www.instagram.com/bcafinance.kudus/?hl=id', '(0291) 3305770', NULL, 'Finance_2024-01-19-00-52-14.jpg', 1, '2023-12-27 03:48:37', '2024-01-18 17:52:14'),
(8, 'ACC FINANCE', '1.005', 9.5, 0, 30, 0, 'Astra Credit Companies bekerja sama dengan dealer-dealer mobil Indonesia untuk menawarkan pembiayaan untuk semua kendaraan baik bekas maupun baru untuk semua merk khususnya untuk merk kendaraan yang diproduksi oleh Astra yaitu Daihatsu, Isuzu, BMW, Peugeot dan Toyota. dengan syarat kredit yang fleksibel dan mudah.\r\n\r\nACC juga menyediakan fasilitas pembiayaan untuk kendaraan bekas dengan usia kendaraan hingga 15 tahun pada saat tenor lunas dan ACC juga dapat membantu melakukan pengecekan kondisi mobil. ACC juga memberikan pelayanan pemeriksaaan BPKP ke Samsat dan pada saat pelunasan dan BPKB dapat langsung dibawa pulang. Semua fasilitas tersebut diberikan tanpa provisi.\r\n\r\nSelain fasilitas pembiayaan kendaraan, ACC juga mempunyai divisi ‘Fleet Commercial & Business’ yang mendukung operasional berbagai industri seperti kontruksi, distribusi, manufaktur, transportasi publik dan sebagainya. Pembiayaan ini meliputi alat berat (baru/bekas), kendaraan untuk operasional perusahaan, transportasi dan distribusi perusahaan dan sebagainya.\r\n\r\nFasilitas lain dari ACC adalah C2C Financing, yaitu pembiayaan kredit kendaraan semua merk dari teman, kenalan atau perorangan lainnya, dengan kata lain, ACC menjadi penengah pembiayaan kredit dari personil A ke B.\r\n\r\nCara Pembayaran Kredit\r\nPada saat pembayaran, beberapa hal yang harus diperhatikan adalah:\r\n\r\nNomor perjanjian adalah nomor kontrak dan pastikan nomor tersebut dan nama anda sudah benar dan lengkap\r\nNomor rekening tujuan benar dan bukti bayar adalah bukti sah dan harus disimpan dengan baik.\r\nPembayaran dilakukan 2 (dua) hari sebelum jatuh tempo\r\nPelanggan ACC dapat membayar angsuran melalui Kantor Pos atau melalui ATM (Bersama, Mandiri, Permata, BNI, BCA, Danamon, BRI). Saluran pembayaran juga terbuka hingga SMS/Mobile Banking (Permata, BCA, Mandiri), Internet Banking (Permata, BCA, Mandiri), cek/giro maupun tunai, mesin EDC (Permata Shop/ Mini ATM) dana Auto Debet Permata.', 'www.acc.co.id', 'https://www.facebook.com/acconeid', 'https://www.instagram.com/explore/locations/1035525281/acc-finance-kudus/', '1500 599', 'kontakacc@ai.astra.co.id', 'Finance_2024-01-19-00-53-06.png', 1, '2023-12-27 04:13:44', '2024-01-18 17:53:06'),
(9, 'CLIPAN FINANCE', '0.7', 0, 2.5, 25, 0, 'CFI melayani pembiayaan kendaraan bekas beroda 4 (empat) atau lebih dari berbagai tipe, antara lain sedan, SUV (Sport Utility Vehicle), MPV (Multi Purpose Vehicle), Pick up, Truk, dan Bus dengan menggunakan BPKB sebagai jaminan. Yang dapat mengajukan pembiayaan adalah konsumen berupa perorangan / pribadi dengan status karyawan, profesional atau wiraswasta atau badan hukum / badan usaha. Pembiayaan ini memiliki jangka waktu kredit 1 (satu) sampai dengan 4 (empat) tahun. Beberapa keunggulan yang membedakan pembiayaan mobil bekas CFI dengan yang lain adalah:\r\n\r\nPembayaran angsuran yang mudah dengan jaringan ATM yang lebih luas, aman, dan praktis tanpa konfirmasi\r\nFleksibel dengan merk, tipe dan kategori tergantung pada debitur\r\nSuku bunga bersaing\r\nTenor kredit mencapai 4 (empat) tahun\r\n\r\nCara Pembayaran Kredit\r\nPembayaran angsuran dapat dilakukan melalui:\r\n\r\nATM (Panin, BCA, Bersama)\r\nOnline payment menggunakan VA (Virtual Account) (dikenakan biaya administrasi Rp 8.000)\r\nInternet Banking Panin\r\nMenggunakan layanan POSPAY (online Kantor Pos) / melalui Kantor Pos / Agen Pos / Mitra Pos (dikenakan biaya administrasi Rp 8.000)\r\nSetoran tunai / cek / giro melalui teller / cashier bank Panin (dikenakan biaya administrasi Rp 20.000)\r\nPick up (pengambilan pemnbayaran) tunai langsung dari debitur (dikenakan biaya administrasi Rp 50.000)', 'www.clipan.co.id', 'https://www.facebook.com/pages/PT-Clipan-Finance-Kudus/338019493538767', NULL, '(0291) 2912866', 'cs@clipan.co.id', 'Finance_2024-01-19-00-53-24.png', 1, '2023-12-27 04:46:22', '2024-01-18 17:53:24'),
(10, 'SMS FINANCE', '0.75', 0, 0.02, 25, 0, 'Fitur Produk\r\nSMS Finance memberikan fasilitas kredit untuk dua macam produk, yaitu produk regular dan multiguna.\r\n\r\nReguler\r\n\r\nReguler adalah fasilitas kredit konsumen yang dikhususkan untuk pembiayaan mobil baru maupun bekas dengan tingkat bunga yang kompetitif dan pemilihan mobil yang fleksibel.\r\n\r\nMultiguna\r\n\r\nMultiguna adalah pembiayaan yang ditujukan untuk kebutuhan konsumen yang mendesak seperti biaya pengobatan, pendidikan, rumah tangga, dan lain-lain. Dana akan ditransfer langsung kepada institusi / perusahaan oleh SMS Finance.\r\n\r\nCara Pembayaran Kredit\r\nPembayaran harus dilakukan sebelum atau selambat – lambatnya pada masa jatuh tempo, yang mana jika debitur gagal memenuhinya, akan dikenakan biaya denda sebesar 0,5 % setiap hari dari jumlah angsuran setiap bulannya. Pembayaran angsuran dapat dilunasi melalui:\r\n\r\nKasir di seluruh cabang SMS Finance (dengan cek / bilyet giro / tunai)\r\nATM (Mandiri, BCA, BNI, BRI, BJB, Muamalat)\r\nPembayaran melalui Alfamidi, Alfa Express, Alfamart\r\nKeuntungan dan Kegunaan\r\nSMS Finance memberikan fasilitas pembiayaan untuk mobil baru & bekas. Keuntungan dengan menggunakan produk reguler adalah konsumen dapat memiliki kendaraan yang diinginkan dengan persyaratan yang mudah, proses persetujuan yang cepat dan BPKB yang dijaminkan aman.\r\n\r\nAnda dapat membeli mobil baru dan bekas dengan pembiayaan dari SMS Finance. Fisik mobil dapat Anda lihat pada dealer/showroom yang bekerjasama dengan SMS Finance.', 'https://www.smsfinance.co.id/', 'https://www.facebook.com/SMSFinanceID/?locale=id_ID', 'https://www.instagram.com/smsfinanceid/', '(0291) 438981', NULL, 'Finance_2024-01-19-00-53-39.jpg', 1, '2023-12-27 05:02:38', '2024-01-18 17:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `kapasitas_mesin`
--

CREATE TABLE `kapasitas_mesin` (
  `km_id` int NOT NULL,
  `kapasitas` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kapasitas_mesin`
--

INSERT INTO `kapasitas_mesin` (`km_id`, `kapasitas`, `created_at`, `updated_at`) VALUES
(1, '1.200 CC', '2023-11-04 16:07:23', '2023-12-22 12:53:48'),
(3, '1.000 CC', '2023-11-07 21:07:57', '2023-12-22 12:35:23'),
(4, '2.500 CC', '2023-11-16 05:23:51', '2023-12-22 12:35:33'),
(5, '1.500 CC', '2023-12-22 12:35:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kapasitas_penumpang`
--

CREATE TABLE `kapasitas_penumpang` (
  `kp_id` int NOT NULL,
  `kapasitas` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kapasitas_penumpang`
--

INSERT INTO `kapasitas_penumpang` (`kp_id`, `kapasitas`, `created_at`, `updated_at`) VALUES
(7, '4 Orang', '2023-12-22 12:36:39', NULL),
(8, '2 Orang', '2023-12-22 12:36:55', NULL),
(9, '6 - 7 Orang', '2023-12-22 12:37:18', NULL),
(10, '5 Orang', '2024-01-11 14:29:29', '2024-01-11 14:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `karyawan_id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `no_hp` char(18) NOT NULL,
  `alamat` text,
  `password` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = is active\r\n0 = not active',
  `photo_profile` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `name`, `email`, `no_hp`, `alamat`, `password`, `status`, `photo_profile`, `created_at`, `updated_at`) VALUES
(3, 'ali', 'ali@gmail.com', '081392138897', 'kudus', '$2y$10$puY3qfkDqoIa63n6zYBGAOJTBYNXhkS/E9yd4MSKixvUgX5mI/i7G', 1, 'default.png', '2023-12-07 06:40:25', '2024-01-15 02:52:57'),
(5, 'Dina', 'dina@gmail.com', '0987654', 'kudus', '$2y$10$0pwI4jdiDyWFKvm266WJgOdN5j5vR.5euRytwVwqXqjbkgRWo975S', 1, 'KRY-2024-01-21-10:27:29.jpg', '2024-01-21 03:27:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `merk_id` int NOT NULL,
  `merk` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`merk_id`, `merk`, `created_at`, `updated_at`) VALUES
(1, 'Honda', '2023-11-04 10:09:28', NULL),
(4, 'Toyota', '2023-11-06 13:33:16', NULL),
(5, 'Mitsubishi', '2023-11-16 05:24:22', NULL),
(6, 'Daihatsu', '2024-01-11 13:38:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `mobil_id` bigint NOT NULL,
  `merk_id` int NOT NULL,
  `body_id` int NOT NULL,
  `nama_model` varchar(255) NOT NULL,
  `no_plat` varchar(50) DEFAULT NULL,
  `no_mesin` varchar(50) NOT NULL,
  `no_rangka` varchar(50) NOT NULL,
  `tahun` char(7) DEFAULT NULL,
  `warna_id` int NOT NULL,
  `km_id` int NOT NULL,
  `bahan_bakar_id` int NOT NULL,
  `transmisi_id` int NOT NULL,
  `kp_id` int NOT NULL,
  `km` char(50) DEFAULT NULL,
  `tangki_id` int NOT NULL,
  `harga_beli` float NOT NULL,
  `biaya_perbaikan` float DEFAULT NULL,
  `harga_jual` float DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `nama_pemilik` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status_mobil` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = available\r\n2 = booked\r\n0 = soldout',
  `status_post` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = public\r\n0 = private',
  `url_youtube` text,
  `url_instagram` text,
  `url_facebook` text,
  `deskripsi` text,
  `gambar1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gambar2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gambar3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gambar4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gambar5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gambar6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`mobil_id`, `merk_id`, `body_id`, `nama_model`, `no_plat`, `no_mesin`, `no_rangka`, `tahun`, `warna_id`, `km_id`, `bahan_bakar_id`, `transmisi_id`, `kp_id`, `km`, `tangki_id`, `harga_beli`, `biaya_perbaikan`, `harga_jual`, `tgl_masuk`, `diskon`, `nama_pemilik`, `status_mobil`, `status_post`, `url_youtube`, `url_instagram`, `url_facebook`, `deskripsi`, `gambar1`, `gambar2`, `gambar3`, `gambar4`, `gambar5`, `gambar6`, `created_at`, `updated_at`) VALUES
(15, 1, 2, 'GRAND CIVIC 1990 M/T', 'G 1234 PK', '-', 'SR452921989', '1990', 10, 5, 1, 1, 7, '3000', 1, 35000000, 1000000, 45000000, '2023-10-22', 0, 'Ali', 1, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=848446487071131&set=pcb.848446890404424', 'Bismillahirrohmanirrohim...\r\nDi jual Cepat !!!\r\nHONDA GRAND CIVIC 1990 M/T\r\nWarna Putih\r\nTransmisi Manual\r\nMesin Oke Kering\r\nBahan Bakar Bensin\r\nKelistrikan Berfungsi Dengan Normal\r\nMERAPAT yok \r\nCash 45JT Nego Setelah Lihat Unitnya\r\nKredit Nanti Kita Bantu Prosesnya\r\nMonggo pinarak Jl.Hos Cokrominoto Gg 3 Mlati Norowito Kudus\r\nTelp/wa \r\n0813 2636 2324\r\n0813 9213 8897\r\nCash & Kredit', 'gambar1_2024-01-18-22-30-35.jpg', 'gambar2_2024-01-18-22-30-35.jpg', 'gambar3_2024-01-18-22-30-35.jpg', 'gambar4_2024-01-18-22-30-35.jpg', 'gambar5_2024-01-18-22-30-35.jpg', 'gambar6_2024-01-18-22-30-35.jpg', '2023-12-22 12:46:40', '2024-01-18 15:30:35'),
(16, 6, 10, 'AYLA X 2013 MT', 'H 1234 HM', '-', '-', '2013', 10, 1, 1, 1, 7, '75000', 1, 55000000, 5000000, 85000000, '2023-12-20', 0, 'Lala', 1, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=871352201447226&set=pcb.871373141445132', 'Daihatsu Ayla diperkenalkan sebagai mobil berkonsep green car yang berkapasitas lima penumpang dan hemat bahan bakar. Daihatsu Ayla merupakan tonggak penting dalam sejarah industri otomotif di Indonesia. Alasannya, selain menjawab program pemerintah tentang LCGC (Low Cost Green Car), Ayla ini juga merupakan produk otomotif yang pertama kali didesain oleh orang Indonesia yang kemudian dipilih secara global mengalahkan desainer Italia, Prancis, dan Jepang. Dalam hal ini, PT ADM berperan dalam perencanaan, pengembangan, serta produksi Daihatsu Ayla.', 'gambar1_2024-01-18-22-32-48.jpeg', 'gambar2_2024-01-18-22-32-48.jpg', 'gambar3_2024-01-18-22-32-48.jpg', 'gambar4_2024-01-18-22-32-48.jpeg', 'gambar5_2024-01-18-22-32-48.jpeg', 'gambar6_2024-01-18-22-32-48.jpeg', '2024-01-11 13:56:00', '2024-01-18 15:32:48'),
(17, 4, 1, 'INNOVA G 2.5 DIESEL PUTIH2013', 'K 2345 KK', '-', '-', '2013', 10, 1, 3, 1, 7, '90000', 1, 200000000, 5000000, 225000000, '2023-12-09', 0, 'Ani', 1, 1, 'https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCg9wbK1JgM7OOKmwROU5foA%3Ffbclid%3DIwAR1LGKH3bMMlzIwXSAgld3DK7golOeECuVX4ja87TRbVJIE97EEgXdmP0yY&h=AT1v4GzpvoiFPAjSdwypPeQVSxyGdPhhb-6RlGpHEME0Mq6P6gttHCgYHCzI65coJ9CJxHvwr27BGafm4wWTC33nYUYpoY72MdVoO0-oiwYs-9pLzqqWCC2QwjRP7K0jMNkK3o_676443O8dJ86H&__tn__=-UK*F', NULL, 'https://www.facebook.com/photo?fbid=871352794780500&set=pcb.871373141445132', 'Toyota Astra Motor (TAM) melakukan facelift kedua Toyota Kijang Innova melakukan facelift kedua pada 2011 dengan nama Grand New Kijang Innova, kemudian Innova generasi pertama ini melakukan facelift terakhhir di 2013. Hingga akhirnya Innova generasi kedua dengan nama All New Kijang Innova atau biasa disebut Innova Reborn meluncur di akhir 2015. Menurut informasi dari beberapa pedagang mobil bekas, tampilan Kijang Innova generasi facelift kedua ini (2011-2013) lebih banyak disenangi ketimbang facelift akhir (2013-2015) dengan gril yang membesar. Gril berlapis krom mewah terlihat sporty dengan lekukan tebal di tengah. Alur lekukan tersebut dilanjutkan ke arah kap mesin sehingga menciptakan pola alur baru. Lekukan di ujung gril ikut dilanjutkan ke arah kap mesin dan membentuk bahu kokoh.', 'gambar1_2024-01-18-22-34-10.jpg', 'gambar2_2024-01-18-22-34-10.jpg', 'gambar3_2024-01-18-22-34-10.jpeg', 'gambar4_2024-01-18-22-34-10.jpeg', 'gambar5_2024-01-18-22-34-10.jpg', 'gambar6_2024-01-18-22-34-10.jpeg', '2024-01-11 14:07:38', '2024-01-18 15:34:10'),
(18, 4, 1, 'RAIZE G 2023 MT', 'K 6758 HK', '-', '-', '2023', 10, 3, 1, 1, 7, '30000', 1, 155000000, 4500000, 185000000, '2023-12-09', 0, 'Baba', 2, 1, NULL, NULL, 'https://www.facebook.com/photo?fbid=871353078113805&set=pcb.871373141445132', 'Interior Toyota Raize juga memiliki tampilan modern yang didominasi warna hitam. Kenyamanan pengemudi pada Raize ditawarkan dengan desain konsol tengah yang sedikit maju ke depan sehingga dapat berfungsi sebagai sandaran tangan saat mengemudi. \r\n\r\nUntuk memberikan kenyamanan dan keamanan, Toyota Raize dilengkapi dengan berbagai fitur canggih. Beberapa di antaranya seperti head unit dengan konektivitas smartphone, layar MID TFT berukuran 7 inci, auto headlamp, paddle shift, sistem AC otomatis, keyless, auto mirror, dan masih banyak lagi.', 'gambar1_2024-01-18-22-35-22.jpeg', 'gambar2_2024-01-18-22-35-22.jpg', 'gambar3_2024-01-18-22-35-22.jpeg', 'gambar4_2024-01-18-22-35-22.jpeg', 'gambar5_2024-01-18-22-35-22.jpeg', 'gambar6_2024-01-18-22-35-22.jpeg', '2024-01-11 14:16:45', '2024-01-22 03:37:14'),
(19, 1, 8, 'MOBILIO E CVT 1.5 2014 A/T', 'K 8401 NK', '-', '-', '2014', 10, 5, 1, 1, 9, '90000', 1, 100000000, 3000000, 120000000, '2023-11-01', 0, 'Dinao', 2, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=853703816545398&set=pcb.853704319878681', 'Honda Mobilio (Jepang: ホンダ・モビリオ) adalah sebuah MPV mini dengan tujuh tempat duduk yang diproduksi oleh produsen mobil Jepang Honda. Generasi pertama Mobilio yang diproduksi tahun 2001-2008, adalah seri kedua di Honda Small Max dan juga mengambil konsep Honda\'s Global Small Platform dengan mesin i-DSI. Pada bulan Mei 2008, Honda Freed diperkenalkan, menggantikan Mobilio.', 'gambar1_2024-01-18-22-36-14.jpg', 'gambar2_2024-01-18-22-36-14.jpg', 'gambar3_2024-01-18-22-36-14.jpg', 'gambar4_2024-01-18-22-36-15.jpg', 'gambar5_2024-01-18-22-36-15.jpg', 'gambar6_2024-01-18-22-36-15.jpg', '2024-01-11 14:28:14', '2024-01-22 01:58:41'),
(20, 1, 1, 'HONDA FREED PSD 2009 A/T', 'H 7865 HK', '-', '-', '2009', 12, 5, 1, 3, 7, '101000', 1, 110000, 3500000, 130000, '2023-10-23', 0, 'Silv', 2, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=848445187071261&set=pcb.848445823737864', 'Honda Freed punya konsumsi bahan bakar yang lumayan irit. Untuk penggunaan dalam kota, mobil ini mampu menempuh jarak 11 km per liter. Sedangkan untuk luar kota, 13 km per liter. Selain konsumsi bahan bakar yang irit, mobil ini diklaim sangat efisien bahan bakar.', 'gambar1_2024-01-18-22-37-35.jpg', 'gambar2_2024-01-18-22-37-35.jpg', 'gambar3_2024-01-18-22-37-35.jpg', 'gambar4_2024-01-18-22-37-35.jpg', 'gambar5_2024-01-18-22-37-35.jpg', 'gambar6_2024-01-18-22-37-35.jpg', '2024-01-11 14:37:22', '2024-01-21 15:23:24'),
(21, 6, 1, 'DAIHATSU TERIOS TX 2011 M/T', 'H 7589 KK', '-', '-', '2011', 10, 5, 1, 1, 7, '120427', 1, 112000000, 3400000, 132000000, '2023-10-20', 0, 'Tios', 2, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=846647387251041&set=pcb.846647820584331', 'Daihatsu, Terios adalah SUV tangguh dengan kelebihan tersedia 3 baris seat ) 7 penumpang) dibandingkan Toyota rush yang hanya menyediakan 2 baris seat94 penumpnag). Dan terios baris ke-3 juga baris ke-2 ini hanya digeser dan dapat dilipat sehingga bisa membuat ruamg duduk yang sangat nyaman.', 'gambar1_2024-01-18-22-38-39.jpg', 'gambar2_2024-01-18-22-38-39.jpg', 'gambar3_2024-01-18-22-38-39.jpg', 'gambar4_2024-01-18-22-38-39.jpg', 'gambar5_2024-01-18-22-38-39.jpg', 'gambar6_2024-01-18-22-38-39.jpg', '2024-01-11 14:48:13', '2024-01-21 08:20:59'),
(22, 4, 1, 'TOYOTA AVANZA G 2008 M/T', 'B 3504 BJ', '-', '-', '2008', 12, 5, 1, 1, 9, '12566', 1, 75000000, 4000000, 95000000, '2023-10-19', 0, 'Abu', 0, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=846069497308830&set=pcb.846069700642143', 'Bismillahirrohmanirrohim...\r\nDi jual Cepat !!!\r\nTOYOTA AVANZA G 2008 M/T\r\nWarna Silver\r\nTransmisi Manual\r\nMesin Oke Kering\r\nBahan Bakar Bensin\r\nKelistrikan Berfungsi Dengan Normal\r\nMERAPAT yok \r\nCash 95JT Nego Setelah Lihat Unitnya\r\nKredit Nanti Kita Bantu Prosesnya\r\nMonggo pinarak Jl.Hos Cokrominoto Gg 3 Mlati Norowito Kudus\r\nTelp/wa \r\n0813 2636 2324\r\n0813 9213 8897\r\nCash & Kredit', 'gambar1_2024-01-18-22-39-49.jpg', 'gambar2_2024-01-18-22-39-49.jpg', 'gambar3_2024-01-18-22-39-49.jpg', 'gambar4_2024-01-18-22-39-49.jpg', 'gambar5_2024-01-18-22-39-49.jpg', 'gambar6_2024-01-18-22-39-49.jpg', '2024-01-11 15:17:25', '2024-01-18 15:39:49'),
(23, 4, 9, 'TOYOTA INNOVA G 2.0 2007 M/T', 'AD 1242 WG', '-', '-', '2007', 19, 5, 1, 1, 9, '134000', 1, 107000000, 3000000, 127000000, '2023-10-16', 0, 'Tem', 2, 1, NULL, NULL, 'https://www.facebook.com/photo/?fbid=844438314138615&set=pcb.844438940805219', 'BISMILLAHIRROHMANIRROHIM....\r\nDIJUAL CEPAT!!\r\nTOYOTA INNOVA G 2.0 2007 M/T\r\nBahan Bakar Bensin Sudah Uero\r\nTransmisi Manual\r\nWarna HitamFavorit\r\nKelistrikan Berfungsi Dengan Normal\r\nHarga 127jt Nego Setelah Lihat Unit\r\nKredit Nanti dibantu Proses\r\nTerima Tukar Tambah\r\nCari Mobil keluarga Ada\r\nCari Mobil City Car Ada\r\nCari DP minim Bisa\r\nMonggo Cek unit di SINI Recomend MobKas Anti Kemahalen 😄😄😄😄😄😄\r\nMobil Berkwalitas Langsung Hubungi kami\r\nPhone 081326362324 - 081392138897', 'gambar1_2024-01-18-22-41-26.jpg', 'gambar2_2024-01-18-22-41-26.jpg', 'gambar3_2024-01-18-22-41-26.jpg', 'gambar4_2024-01-18-22-41-26.jpg', 'gambar5_2024-01-18-22-41-26.jpg', 'gambar6_2024-01-18-22-41-26.jpg', '2024-01-11 15:40:30', '2024-01-18 15:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notif_id` bigint NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1 = succes\r\n2 = proses\r\n0 = tidak valid\r\n3 = finance proses\r\n',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = belum dibaca\r\n1 = telah dibaca',
  `user_id` bigint NOT NULL,
  `transaksi_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notif_id`, `type`, `status`, `user_id`, `transaksi_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'TRX-USR-1-2023-12-06-12-20-51', '2023-12-07 06:04:56', '2023-12-07 06:10:36'),
(2, 1, 1, 1, 'TRX-USR-1-2023-12-07-13-03-43', '2023-12-07 06:08:02', '2023-12-07 06:10:36'),
(3, 2, 1, 1, 'TRX-USR-1-2023-12-06-12-20-51', '2023-12-07 06:08:40', '2023-12-07 06:10:36'),
(4, 0, 1, 1, 'TRX-USR-1-2023-12-07-13-03-43', '2023-12-07 06:54:47', '2023-12-12 16:47:07'),
(5, 2, 1, 1, 'TRX-USR-1-2023-12-12-23-46-35', '2023-12-12 16:49:20', '2024-01-01 14:52:01'),
(6, 1, 1, 1, 'TRX-USR-1-2023-12-12-23-46-35', '2023-12-12 16:53:14', '2024-01-01 14:52:01'),
(7, 3, 0, 2, 'TRX-USR-2-2023-12-22-20-34-18', '2023-12-22 13:35:25', NULL),
(8, 1, 0, 2, 'TRX-USR-2-2023-12-22-20-34-18', '2023-12-22 13:36:00', NULL),
(9, 1, 1, 1, 'TRX-USR-1-2023-12-06-12-20-51', '2024-01-01 14:56:19', '2024-01-11 11:46:22'),
(10, 0, 1, 1, 'TRX-USR-1-2023-12-12-23-46-35', '2024-01-01 16:17:39', '2024-01-11 11:46:22'),
(11, 0, 1, 1, 'TRX-USR-1-2024-01-01-21-57-29', '2024-01-04 05:46:37', '2024-01-11 11:46:22'),
(12, 0, 1, 1, 'TRX-USR-1-2024-01-01-22-03-38', '2024-01-11 13:57:22', '2024-01-15 14:22:40'),
(13, 3, 1, 1, 'TRX-USR-1-2024-01-11-23-15-01', '2024-01-11 16:34:35', '2024-01-15 14:22:40'),
(14, 1, 1, 1, 'TRX-USR-1-2024-01-11-23-14-08', '2024-01-15 14:24:00', '2024-01-18 16:48:08'),
(15, 2, 1, 1, 'TRX-USR-1-2024-01-11-23-15-01', '2024-01-15 14:24:24', '2024-01-18 16:48:08'),
(16, 1, 1, 1, 'TRX-USR-1-2024-01-11-23-15-01', '2024-01-15 14:24:53', '2024-01-18 16:48:08'),
(17, 0, 1, 1, 'TRX-USR-1-2024-01-15-21-22-20', '2024-01-15 14:25:18', '2024-01-18 16:48:08'),
(18, 0, 1, 1, 'TRX-USR-1-2024-01-18-22-13-02', '2024-01-18 15:15:02', '2024-01-18 16:48:08'),
(19, 1, 1, 1, 'TRX-USR-1-2024-01-18-22-13-02', '2024-01-18 15:15:54', '2024-01-18 16:48:08'),
(20, 1, 1, 1, 'TRX-USR-1-2024-01-18-22-13-02', '2024-01-18 15:15:59', '2024-01-18 16:48:08'),
(21, 3, 1, 1, 'TRX-USR-1-2024-01-18-23-53-46', '2024-01-18 17:08:30', '2024-01-21 08:39:02'),
(22, 3, 1, 1, 'TRX-USR-1-2024-01-18-22-13-02', '2024-01-21 08:20:59', '2024-01-21 08:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `notification_admin`
--

CREATE TABLE `notification_admin` (
  `notif_id` bigint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = belum dibaca\r\n1 = telah dibaca',
  `transaksi_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notification_admin`
--

INSERT INTO `notification_admin` (`notif_id`, `status`, `transaksi_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'TRX-USR-1-2023-12-06-12-20-51', '2023-12-06 05:20:51', '2023-12-07 06:12:19'),
(2, 1, 'TRX-USR-1-2023-12-07-13-03-43', '2023-12-07 06:03:43', '2023-12-07 06:12:19'),
(3, 1, 'TRX-USR-1-2023-12-12-23-46-35', '2023-12-12 16:46:35', '2023-12-12 16:48:59'),
(4, 1, 'TRX-USR-2-2023-12-22-20-34-18', '2023-12-22 13:34:18', '2023-12-22 13:37:28'),
(5, 1, 'TRX-USR-1-2024-01-01-21-57-29', '2024-01-01 14:57:29', '2024-01-01 14:58:09'),
(6, 1, 'TRX-USR-1-2024-01-01-22-03-38', '2024-01-01 15:03:38', '2024-01-01 15:48:58'),
(7, 1, 'TRX-USR-1-2024-01-11-23-14-08', '2024-01-11 16:14:08', '2024-01-19 04:31:49'),
(8, 1, 'TRX-USR-1-2024-01-11-23-15-01', '2024-01-11 16:15:01', '2024-01-19 04:31:49'),
(9, 1, 'TRX-USR-1-2024-01-15-21-22-20', '2024-01-15 14:22:20', '2024-01-19 04:31:49'),
(10, 1, 'TRX-USR-1-2024-01-16-22-07-17', '2024-01-16 15:07:17', '2024-01-19 04:31:49'),
(11, 1, 'TRX-USR-1-2024-01-18-22-13-02', '2024-01-18 15:13:02', '2024-01-19 04:31:49'),
(12, 1, 'TRX-USR-1-2024-01-18-23-53-46', '2024-01-18 16:53:46', '2024-01-19 04:31:49'),
(13, 0, 'TRX-USR-1-2024-01-21-22-23-24', '2024-01-21 15:23:24', NULL),
(14, 0, 'TRX-USR-5-2024-01-22-08-58-41', '2024-01-22 01:58:41', NULL),
(15, 0, 'TRX-USR-5-2024-01-22-10-37-14', '2024-01-22 03:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(300) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = is active\r\n0 = not active',
  `photo_profile` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_id`, `name`, `email`, `password`, `alamat`, `is_active`, `photo_profile`, `created_at`, `updated_at`) VALUES
(5, 'Owner', 'owner@gmail.com', '$2y$10$PKNHLu.EUs0tOJIDuTD6WOYt7RB4h1CCX8FrdNStYktePkG.mFfHK', '', 1, 'default.png', '2023-11-11 07:33:27', '2023-12-07 06:57:46'),
(6, 'Slamet Choirul Hadi', 'SlametChoirulHadi@gmail.com', '$2y$10$vig/M0l7DNGSyMXliKYxl.ile3FyOALYev1MBURuqJmosCXWN1lIq', '', 1, 'default.png', '2023-12-07 06:41:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` varchar(150) NOT NULL,
  `nama_lengkap` varchar(80) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `nama_lengkap`, `alamat`, `no_hp`, `created_at`, `updated_at`) VALUES
('PLG-2023-12-07-13-47-34', 'titi', 'gebog kudus', '085600714534', '2023-12-07 06:47:34', NULL),
('PLG-2024-01-01-23-18-19', 'ira', 'gribig kudus', '095456789', '2024-01-01 16:18:19', '2024-01-20 04:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kredit`
--

CREATE TABLE `pengajuan_kredit` (
  `transaksi_id` varchar(150) NOT NULL,
  `finance_id` int NOT NULL,
  `ktp_suami` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ktp_istri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengajuan_kredit`
--

INSERT INTO `pengajuan_kredit` (`transaksi_id`, `finance_id`, `ktp_suami`, `ktp_istri`, `kk`, `created_at`, `updated_at`) VALUES
('TRX-USR-1-2024-01-11-23-15-01', 8, 'KTP-suami-1-2024-01-11-23-15-01.jpg', 'KTP-istri-1-2024-01-11-23-15-01.jpg', 'KK-1-2024-01-11-23-15-01.jpg', '2024-01-11 16:15:01', NULL),
('TRX-USR-1-2024-01-18-22-13-02', 4, 'KTP-suami-1-2024-01-18-22-13-02.png', 'KTP-istri-1-2024-01-18-22-13-02.png', 'KK-1-2024-01-18-22-13-02.png', '2024-01-18 15:13:02', NULL),
('TRX-USR-1-2024-01-18-23-53-46', 4, 'KTP-suami-1-2024-01-18-23-53-46.jpg', 'KTP-istri-1-2024-01-18-23-53-46.jpg', 'KK-1-2024-01-18-23-53-46.jpg', '2024-01-18 16:53:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `mobil_id` bigint NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `star` float NOT NULL,
  `image1` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image2` varchar(150) DEFAULT NULL,
  `image3` varchar(150) DEFAULT NULL,
  `image4` varchar(150) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 = aktif\r\n0 = tidak aktif',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `user_id`, `mobil_id`, `review_text`, `star`, `image1`, `image2`, `image3`, `image4`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 6, 'mobilnya bagus bangettttttttttttttttttttttt', 5, 'RVW-1-6.png', 'RVW-2-6.png', 'RVW-3-6.png', 'RVW-4-6.png', 1, '2023-12-07 06:09:53', NULL),
(2, '2', 15, 'mobil sesuai dengan deskripsi', 5, NULL, NULL, NULL, NULL, 1, '2023-12-22 13:47:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tangki`
--

CREATE TABLE `tangki` (
  `tangki_id` int NOT NULL,
  `tangki` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tangki`
--

INSERT INTO `tangki` (`tangki_id`, `tangki`, `created_at`, `updated_at`) VALUES
(1, '20Liter', '2023-11-04 15:29:25', '2024-01-11 14:29:58'),
(3, '30 Liter', '2023-12-22 12:55:13', NULL),
(4, '50 Liter', '2023-12-22 12:55:24', NULL),
(5, '80 Liter', '2023-12-22 12:55:31', NULL),
(6, '45 Liter', '2024-01-11 14:30:08', NULL),
(7, '60 Liter', '2024-01-11 14:30:18', NULL),
(8, '40 Liter', '2024-01-11 14:30:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` varchar(150) NOT NULL,
  `mobil_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `pelanggan_id` varchar(150) DEFAULT NULL,
  `payment_method` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '1 = cash\r\n2 = credit\r\n3 = transfer',
  `total_pembayaran` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1 = valid\r\n2 = process\r\n3 = finance process\r\n0 = Tidak valid',
  `alasan` text,
  `bukti_pembayaran` varchar(150) DEFAULT NULL,
  `biaya_pengiriman` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `mobil_id`, `user_id`, `pelanggan_id`, `payment_method`, `total_pembayaran`, `status`, `alasan`, `bukti_pembayaran`, `biaya_pengiriman`, `created_at`, `updated_at`) VALUES
('TRX-USR-1-2024-01-11-23-14-08', 22, 1, NULL, '3', 95000000, 1, NULL, 'EVD-TRX-USR-1-2024-01-11-23-14-08.jpg', 500000, '2024-01-11 16:14:08', '2024-01-15 14:24:00'),
('TRX-USR-1-2024-01-11-23-15-01', 19, 1, NULL, '2', 120000000, 0, NULL, NULL, 1000000, '2024-01-11 16:15:01', '2024-01-18 18:24:25'),
('TRX-USR-1-2024-01-15-21-22-20', 21, 1, NULL, '3', 132000000, 0, NULL, 'EVD-TRX-USR-1-2024-01-15-21-22-20.jpg', NULL, '2024-01-15 14:22:20', '2024-01-15 14:25:18'),
('TRX-USR-1-2024-01-16-22-07-17', 23, 1, NULL, '3', 127000000, 2, NULL, 'EVD-TRX-USR-1-2024-01-16-22-07-17.png', NULL, '2024-01-16 15:07:17', NULL),
('TRX-USR-1-2024-01-18-22-13-02', 21, 1, NULL, '2', 132000000, 3, NULL, NULL, 300000, '2024-01-18 15:13:02', '2024-01-21 08:20:59'),
('TRX-USR-1-2024-01-18-23-53-46', 20, 1, NULL, '2', 130000, 0, NULL, NULL, NULL, '2024-01-18 16:53:46', '2024-01-18 18:24:42'),
('TRX-USR-1-2024-01-21-22-23-24', 20, 1, NULL, '3', 130000, 2, NULL, 'EVD-TRX-USR-1-2024-01-21-22-23-24.jpeg', NULL, '2024-01-21 15:23:24', NULL),
('TRX-USR-5-2024-01-22-08-58-41', 19, 5, NULL, '3', 120000000, 2, NULL, 'EVD-TRX-USR-5-2024-01-22-08-58-41.jpeg', NULL, '2024-01-22 01:58:41', NULL),
('TRX-USR-5-2024-01-22-10-37-14', 18, 5, NULL, '3', 185000000, 2, NULL, 'EVD-TRX-USR-5-2024-01-22-10-37-14.jpeg', NULL, '2024-01-22 03:37:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transmisi`
--

CREATE TABLE `transmisi` (
  `transmisi_id` int NOT NULL,
  `transmisi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transmisi`
--

INSERT INTO `transmisi` (`transmisi_id`, `transmisi`, `created_at`, `updated_at`) VALUES
(1, 'Manual', '2023-11-04 14:36:11', '2023-11-16 05:19:09'),
(3, 'Auto', '2023-11-16 05:19:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `nama_lengkap` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `no_hp` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `kota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `provinsi` text,
  `sign_in` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = aktif\r\n0 = tidak aktif',
  `profile_photo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'default.png',
  `token_password` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `nama_lengkap`, `no_hp`, `alamat`, `kota`, `provinsi`, `sign_in`, `status`, `profile_photo`, `token_password`, `created_at`, `updated_at`) VALUES
(1, 'dina@gmail.com', '$2y$10$U.SSbW3oHPXBtQ6nWsjtQektjDMhZ.HOxhK42R.l3EflF8AdHWu.6', 'fahaddina fikroh', '085678987678', 'kudus', '', NULL, 'email', 1, 'USR-1.png', 'nYMUJy', '2023-12-06 05:17:53', '2024-01-21 15:23:24'),
(2, 'titi@gmail.com', '$2y$10$GsNAEQtjPsHvafckD2hHDemNG/lGtkgVpQPtc0sC6Yr85rTC0RCiO', 'titi widiastuti', '085600714534', 'gebog kudus', '', NULL, 'email', 1, 'USR-2.jpg', NULL, '2023-12-22 13:31:22', '2023-12-27 04:54:15'),
(3, 'fahadinafikroh20@gmail.com', NULL, 'fahaddina fikroh', NULL, NULL, '', NULL, 'google', 1, 'https://lh3.googleusercontent.com/a/ACg8ocLUVQ7UpI8eXixOG8FyT2cNx4GJW7I3Lo85Jb9RXEp6vx0=s96-c', NULL, '2024-01-01 15:46:11', '2024-01-16 15:51:33'),
(4, 'cinta@gmail.com', '$2y$10$9nxf4AakZuh/EKDR84AhPe6u53.fwptZm2xG/wM/xU5pX3ImbhxFe', 'cinta', NULL, NULL, '', NULL, 'email', 1, 'default.png', NULL, '2024-01-10 13:46:54', '2024-01-19 00:38:48'),
(5, 'rani@gmail.com', '$2y$10$gxcdD1OEaZLLWUT7eC.Oh.gSJ52GMwHjfYsctS8xVYs/sx3AYrvAS', 'Rani Muhana', '085600714534', 'Jl.Pemuda Semarang', 'Semarang', 'Jawa Tengah', 'email', 1, 'default.png', NULL, '2024-01-22 01:49:07', '2024-01-22 03:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '2024-01-22 03:12:50', NULL),
(2, '127.0.0.1', '2024-01-22 03:13:19', NULL),
(3, '127.0.0.1', '2024-01-22 03:13:45', NULL),
(4, '127.0.0.1', '2024-01-22 03:22:45', NULL),
(5, '127.0.0.1', '2024-01-22 03:23:40', NULL),
(6, '127.0.0.1', '2024-01-22 03:30:18', NULL),
(7, '127.0.0.1', '2024-01-22 03:35:11', NULL),
(8, '127.0.0.1', '2024-01-22 03:36:22', NULL),
(9, '127.0.0.1', '2024-01-22 03:37:31', NULL),
(10, '127.0.0.1', '2024-01-22 03:37:39', NULL),
(11, '127.0.0.1', '2024-01-22 10:28:54', NULL),
(12, '127.0.0.1', '2024-03-22 03:01:28', NULL),
(13, '127.0.0.1', '2024-03-22 03:04:34', NULL),
(14, '127.0.0.1', '2024-03-22 03:04:54', NULL),
(15, '127.0.0.1', '2024-03-22 04:50:33', NULL),
(16, '127.0.0.1', '2024-03-22 04:50:53', NULL),
(17, '127.0.0.1', '2024-03-22 04:52:06', NULL),
(18, '127.0.0.1', '2024-03-22 04:52:07', NULL),
(19, '127.0.0.1', '2024-03-22 04:52:25', NULL),
(20, '127.0.0.1', '2024-03-22 04:56:45', NULL),
(21, '127.0.0.1', '2024-03-22 06:58:40', NULL),
(22, '127.0.0.1', '2024-03-22 06:58:40', NULL),
(23, '127.0.0.1', '2024-03-22 07:50:00', NULL),
(24, '127.0.0.1', '2024-03-22 08:28:02', NULL),
(25, '127.0.0.1', '2024-03-22 08:28:22', NULL),
(26, '127.0.0.1', '2024-03-22 08:28:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warna`
--

CREATE TABLE `warna` (
  `warna_id` int NOT NULL,
  `warna` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `warna`
--

INSERT INTO `warna` (`warna_id`, `warna`, `created_at`, `updated_at`) VALUES
(7, 'Hitam kuning', '2023-11-04 04:17:09', '2023-11-04 04:51:10'),
(9, 'Hijau', '2023-11-04 04:46:03', NULL),
(10, 'Putih', '2023-11-04 04:46:12', NULL),
(11, 'Kuning hijau', '2023-11-04 04:46:22', '2023-11-04 04:51:51'),
(12, 'Silver', '2023-11-04 04:46:31', NULL),
(13, 'Jingga', '2023-11-04 04:46:42', NULL),
(14, 'Merah', '2023-11-04 04:46:53', NULL),
(15, 'Cream', '2023-11-04 04:47:11', NULL),
(16, 'Biru', '2023-11-04 04:47:22', NULL),
(18, 'Pink', '2023-11-04 04:47:38', NULL),
(19, 'Hitam Glossy', '2023-11-04 04:47:47', NULL),
(20, 'Hitam Glossy Pekat', '2023-11-04 04:48:00', NULL),
(22, 'Gold', '2023-12-01 01:25:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `bahan_bakar`
--
ALTER TABLE `bahan_bakar`
  ADD PRIMARY KEY (`bahan_bakar_id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`body_id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`finance_id`);

--
-- Indexes for table `kapasitas_mesin`
--
ALTER TABLE `kapasitas_mesin`
  ADD PRIMARY KEY (`km_id`);

--
-- Indexes for table `kapasitas_penumpang`
--
ALTER TABLE `kapasitas_penumpang`
  ADD PRIMARY KEY (`kp_id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`mobil_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indexes for table `notification_admin`
--
ALTER TABLE `notification_admin`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `pengajuan_kredit`
--
ALTER TABLE `pengajuan_kredit`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tangki`
--
ALTER TABLE `tangki`
  ADD PRIMARY KEY (`tangki_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `transmisi`
--
ALTER TABLE `transmisi`
  ADD PRIMARY KEY (`transmisi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`warna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `app_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bahan_bakar`
--
ALTER TABLE `bahan_bakar`
  MODIFY `bahan_bakar_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `bank_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `body_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `finance_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kapasitas_mesin`
--
ALTER TABLE `kapasitas_mesin`
  MODIFY `km_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kapasitas_penumpang`
--
ALTER TABLE `kapasitas_penumpang`
  MODIFY `kp_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `karyawan_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `merk_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `mobil_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notif_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notification_admin`
--
ALTER TABLE `notification_admin`
  MODIFY `notif_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tangki`
--
ALTER TABLE `tangki`
  MODIFY `tangki_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transmisi`
--
ALTER TABLE `transmisi`
  MODIFY `transmisi_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `warna`
--
ALTER TABLE `warna`
  MODIFY `warna_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
