-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2021 at 06:39 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cactusshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` char(30) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '$2y$10$Yd7HNzGpfUuycbrAdhPYn.e2hroKi6Gclwp0gRZtkIwchVb4I.2be');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Xương rồng'),
(3, 'Sen đá'),
(4, 'Tiểu cảnh'),
(5, 'Cây cảnh');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_username` varchar(100) NOT NULL,
  `member_password` varchar(200) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_email` varchar(150) DEFAULT NULL,
  `member_phone` varchar(12) DEFAULT NULL,
  `member_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_username`, `member_password`, `member_name`, `member_email`, `member_phone`, `member_address`) VALUES
('admin', '$2y$10$Yd7HNzGpfUuycbrAdhPYn.e2hroKi6Gclwp0gRZtkIwchVb4I.2be', 'anh', 'anh@gmail.com', '0386482739', 'Khong co ba oi'),
('anhb1805676', '$2y$10$6S2RFSoDs0b5Aqf9oSCZueeISZUw2Arl8qQHFTLAxkPDIPkyidIS.', 'Qoang Bee', 'q.bee@gmail.com', '0987654321', 'Trần Hoàng Na, Ninh Kiều, Cần Thơ'),
('chien', '$2y$10$oN.QoOfgi4yCzqBrxcSBg.YtMUcDMTgxZloj4Xs4/yWSmQo18wxui', 'Thiện Chiến', 'chien@gmail.com', '0123456789', 'U Minh - Cà Mau'),
('jenzy', '$2y$10$9Hwa/eC9X5QQLbAghiSBM.ramo4yavmd9wsVlTYBYEGPIo0WgI01W', 'Wacdii', 'jenzy027@gmail.com', '0123456789', 'U Minh - Cà Mau'),
('quocvi', '$2y$10$vu32BTIROxOZvW2uBW/sle6hdFUunmDUmU32loJR8kgxp2oPqDVaS', 'Quốc Vĩ', 'quocvi@gmail.com', '0123456788', 'Mỹ Hiệp Sơn - Hòn Đất - Kiên Giang');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `member_username` varchar(100) DEFAULT NULL,
  `cus_name` varchar(100) DEFAULT NULL,
  `cus_email` varchar(100) DEFAULT NULL,
  `cus_phone` varchar(12) DEFAULT NULL,
  `cus_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `orders_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `member_username`, `cus_name`, `cus_email`, `cus_phone`, `cus_address`, `total`, `orders_created`, `status`) VALUES
(4, 'anhb1805676', 'Qoang Bee', 'q.bee@gmail.com', '0987654321', 'Trần Hoàng Na, Ninh Kiều, Cần Thơ', 315000, '2021-05-29 12:03:23', 1),
(13, 'jenzy', 'Wacdii', 'jenzy027@gmail.com', '0123456789', 'U Minh - Cà Mau', 5065000, '2021-05-30 06:56:35', 1),
(14, 'quocvi', 'Quốc Vĩ', 'quocvi@gmail.com', '0123456789', 'Mỹ Hiệp Sơn - Hòn Đất - Kiên Giang', 640000, '2021-05-30 07:26:39', 1),
(15, 'quocvi', 'Quốc Vĩ', 'quocvi@gmail.com', '0123456789', 'Mỹ Hiệp Sơn - Hòn Đất - Kiên Giang', 254000, '2021-05-30 15:20:31', 0),
(16, NULL, 'Thiện Chiến', 'chien99@gmail.com', '0123456789', ' Trung Chánh - Vũng Liêm - Vĩnh Long', 2240000, '2021-05-30 15:21:57', 1),
(17, NULL, 'Tuyết Ngân', 'ngan@gmail.com', '0123456789', ' Trung Chánh - Vũng Liêm - Vĩnh Long', 30000, '2021-05-31 01:36:52', 0),
(18, 'chien', 'Thiện Chiến', 'chien@gmail.com', '0123456789', 'U Minh - Cà Mau', 3960000, '2021-05-31 01:37:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `product_id` char(8) DEFAULT NULL,
  `size` char(3) DEFAULT NULL,
  `quanlity` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `orders_detail_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`orders_detail_id`, `orders_id`, `product_id`, `size`, `quanlity`, `price_sale`, `orders_detail_created`) VALUES
(23, 13, 'XR00001', '', 1, 110000, '2021-05-30 06:56:01'),
(24, 13, 'XR00008', '', 1, 155000, '2021-05-30 06:56:01'),
(25, 13, 'XR00004', '', 64, 75000, '2021-05-30 06:56:01'),
(26, 14, 'XR00008', '', 2, 155000, '2021-05-30 07:25:08'),
(27, 14, 'XR00001', '', 3, 110000, '2021-05-30 07:25:08'),
(28, 15, 'XR00008', '', 1, 155000, '2021-05-30 15:20:31'),
(29, 15, 'CC000001', '', 1, 99000, '2021-05-30 15:20:31'),
(30, 16, 'SD000003', '', 64, 35000, '2021-05-30 15:21:37'),
(31, 17, 'XR00002', '', 1, 30000, '2021-05-31 01:36:52'),
(32, 18, 'SD000005', '', 99, 40000, '2021-05-31 01:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` char(8) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_quanlity` int(11) DEFAULT NULL,
  `product_describe` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `product_price`, `product_quanlity`, `product_describe`, `product_img`, `product_created`) VALUES
('CC000001', 'Cây Lá May Mắn Đỏ', 5, 99000, 100, 'Lá may mắn là loài cây được rất nhiều khách hàng chọn lựa để tô điểm cho không gian sống cũng như bàn làm việc của mình.  - Màu sắc nổi bật, bắt mắt và hình dáng nhỏ nhắn, dễ thương cùng  - Sức sống mãnh liệt, thích nghi với đa dạng điều kiện môi trường.  - Là biểu tượng cho sự thuận lợi, tài lộc, vận may và điềm lành  Sản phẩm gồm: Một chậu lá may mắn đỏ', './storage/uploads/la-may-man.jpeg', '2021-11-06 12:15:42'),
('SD000002', 'Sen đá Đất Hồng', 3, 15000, 99, 'Sen đá đất hồng là loại sen đá đang được rất nhiều người yêu thích hiện nay: - Cây có hình dáng bắt mắt, hài hòa. - Tính thích nghi cao, dễ chăm sóc, ít tốn công chăm. - Cây có thể lọc các chất gây hại từ khói thuốc lá, mực in, các đồ dùng điện tử,…', './storage/uploads/sen-da-dat-hong-1.jpeg', '2021-11-06 12:18:11'),
('SD000003', 'Sen đá Cẩm Thạch', 3, 35000, 99, 'Sen đá cẩm thạch là loại sen đá đang được rất nhiều người yêu thích hiện nay:  - Màu xanh cẩm thạch trong trẻo, mát mắt,  - Sức sống mãnh liệt, mạnh mẽ  - Cây có thể lọc các chất gây hại từ khói thuốc lá, mực in, các đồ dùng điện tử,…  Kích thước: 3-5cm', './storage/uploads/sen-da-cam-thach-04.jpeg', '2021-11-06 12:18:21'),
('SD000004', 'Sen đá Gilva', 3, 49000, 77, 'Sen đá gilva là loại sen đá đang được rất nhiều người yêu thích hiện nay: - Hình dáng cân đối, xinh xắn và độc đáo. - Tính thích nghi cao, dễ chăm sóc, ít tốn công chăm. - Cây có thể lọc các chất gây hại từ khói thuốc lá, mực in, các đồ dùng điện tử,…  Kích thước: 6-10cm', './storage/uploads/sen-da-gilva-03.jpeg', '2021-11-06 12:20:20'),
('SD000005', 'Sen đá Ruby Nâu', 3, 40000, 99, 'Sen đá Ruby nâu là loại sen đá được rất nhiều bạn trẻ hiện nay yêu thích:  - Thích nghi tốt với nhiều điều kiện môi trường khác nhau.  - Màu sắc tươi sáng, bắt mắt có sự kết hợp hài hòa giữa màu xanh ngọc và màu đỏ ruby  - Có thể lọc các chất gây hại từ không khí và giảm tác hại của sóng điện từ  Sản phẩm gồm: 1 sen đá kích thước 6-10cm,', './storage/uploads/sen-da-ruby-nau.jpeg', '2021-11-06 12:18:31'),
('TC000001', 'Tiểu Cảnh Still Growing', 4, 60000, 99, '- Kết hợp hài hòa loại sen đá được nhiều người ưa thích với chậu men Bát Tràng  - Màu sắc tươi sáng, trẻ trung, sinh động  - Cây khỏe mạnh, không mất nhiều thời gian chăm sóc  Sản phẩm gồm: Một chậu tiểu cảnh để bàn Still Growing', './storage/uploads/tieu-canh-de-ban-19.jpeg', '2021-11-06 12:18:35'),
('TC000002', 'Tiểu cảnh để bàn Melo', 4, 99000, 99, '- Kết hợp hài hòa loại xương rồng được nhiều người ưa thích với chậu vẽ acrylic  - Màu sắc tươi sáng, trẻ trung, sinh động  - Cây khỏe mạnh, không mất nhiều thời gian chăm sóc  Sản phẩm gồm: Một chậu tiểu cảnh để bàn Melo', './storage/uploads/tieu-canh-de-ban-9.jpeg', '2021-11-06 12:18:39'),
('XR00001', 'Xương rồng Bánh Sinh Nhật', 1, 110000, 96, 'Xương rồng Bánh Sinh Nhật là loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, dễ ra hoa, hoa nhiều và màu hồng rất đẹp, cây hấp thụ bức xạ điện từ, bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng bụi 7 cây 8-12 cm', './storage/uploads/xuong-rong-banh-sinh-nhat-bui.jpg', '2021-11-06 12:18:45'),
('XR00002', ' Xương rồng Trứng Chim ', 1, 30000, 56, 'Xương rồng Trứng Chim là một loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, hình dáng ngộ nghĩnh, dễ nhân giống. Cây hấp thụ bức xạ điện tử giúp bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng 6-10 cm', './storage/uploads/xuong-rong-trung-chim-nhap-25.jpg', '2021-11-06 12:18:53'),
('XR00003', 'Xương rồng Lobi', 1, 50000, 64, 'Xương rồng Lobi là loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, hình dáng bắt mắt, màu sắc tươi tắn, thường xuyên ra hoa. Cây hấp thụ bức xạ điện tử giúp bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng 3 - 5 cm', './storage/uploads/xuong-rong-lobi-1.jpg', '2021-11-06 12:20:33'),
('XR00004', 'Xương rồng Trụ Cẩm Thạch', 1, 99000, 69, 'Xương rồng Trụ Cẩm Thạch là một loại xương rồng rất được yêu thích hiện nay. Cây có màu xanh cẩm thạch rất thu hút, thích hợp trang trí theo phong cách hiện đại. Cây hấp thụ bức xạ điện từ, bảo vệ sức khỏe. Sản phẩm gồm: 01 xương rồng 20cm', './storage/uploads/xuong-rong-tru-cam-thach-2.jpg', '2021-11-06 12:19:01'),
('XR00005', 'Xương rồng Mickey', 1, 35000, 69, 'Xương rồng Mickey là một loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, cây có hình dáng rất đáng yêu. Cây hấp thụ bức xạ điện từ, bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng 5 - 7 cm', './storage/uploads/xuong-rong-mickey-2.jpg', '2021-11-06 12:19:05'),
('XR00006', 'Xương rồng Aster', 1, 100000, 0, 'Xương rồng Aster là một loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, cây có các chấm vân xinh xắn, thu hút. Cây hấp thụ bức xạ điện tử giúp bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng 6 - 8 cm', './storage/uploads/xuong-rong-aster-2.jpg', '2021-11-06 12:19:11'),
('XR00007', 'Xương rồng Que', 1, 25000, -1, 'Xương rồng Que là một loại xương rồng rất được yêu thích hiện nay. Cây rất dễ chăm sóc, ít tốn công tưới, lựa chọn hàng đầu để phối tiểu cảnh. Cây hấp thụ bức xạ điện từ giúp bảo vệ sức khỏe. Sản phẩm gồm 1 xương rồng 7 - 10 cm', './storage/uploads/xuong-rong-que-27.jpg', '2021-11-06 12:19:15'),
('XR00008', 'Tiểu cảnh để bàn Ốc sên', 1, 155000, 61, 'Kết hợp hài hòa 3 loại xương rồng được nhiều người ưa thích. Màu sắc tươi sáng, trẻ trung, sinh động. Cây khỏe mạnh, không mất nhiều thời gian chăm sóc. Sản phẩm gồm một chậu tiểu cảnh để bàn Be Your Colour', './storage/uploads/tieu-canh-de-ban-4.jpg', '2021-11-06 12:19:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `member_username` (`member_username`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`),
  ADD KEY `orders_id` (`orders_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`member_username`) REFERENCES `member` (`member_username`);

--
-- Constraints for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`orders_id`),
  ADD CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
