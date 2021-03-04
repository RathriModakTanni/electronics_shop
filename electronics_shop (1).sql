-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 02:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronics_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`) VALUES
(1, 'yashfa@gmail.com', '96e79218965eb72c92a549dd5a330112');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Telivision'),
(2, 'Mobile'),
(3, 'Lighting'),
(4, 'Home Decor'),
(5, 'Lighting'),
(6, 'Fan'),
(7, 'Home improvement'),
(8, 'Floor care');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_email`, `user_address`, `user_mobile`, `payment_method`, `transaction_id`, `cart`, `order_date`, `status`) VALUES
(1, 27, 'test', 'test@gmail.com', 'sylhet', '758738', 'cash-on-delivery', '804858', 'a:1:{s:32:\"34173cb38f07f89ddbebc2ac9128303f\";a:6:{s:2:\"id\";s:2:\"30\";s:4:\"name\";s:3:\"Fan\";s:3:\"qty\";d:1;s:5:\"price\";d:180;s:5:\"rowid\";s:32:\"34173cb38f07f89ddbebc2ac9128303f\";s:8:\"subtotal\";d:180;}}', '2020-10-29 06:59:50pm', 1),
(2, 27, 'test', 'test@gmail.com', 'sylhet', '8598359', 'cash-on-delivery', '399830', 'a:3:{s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";a:6:{s:2:\"id\";s:2:\"29\";s:4:\"name\";s:9:\"Wood Tray\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";s:8:\"subtotal\";d:100;}s:32:\"34173cb38f07f89ddbebc2ac9128303f\";a:6:{s:2:\"id\";s:2:\"30\";s:4:\"name\";s:3:\"Fan\";s:3:\"qty\";d:1;s:5:\"price\";d:180;s:5:\"rowid\";s:32:\"34173cb38f07f89ddbebc2ac9128303f\";s:8:\"subtotal\";d:180;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:6:{s:2:\"id\";s:2:\"28\";s:4:\"name\";s:13:\"Floor Cleaner\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:8:\"subtotal\";d:100;}}', '2020-10-29 07:06:21pm', 1),
(3, 27, 'test', 'rajon@gmail.com', 'test', '35353', 'cash-on-delivery', '606359', 'a:3:{s:32:\"34173cb38f07f89ddbebc2ac9128303f\";a:6:{s:2:\"id\";s:2:\"30\";s:4:\"name\";s:3:\"Fan\";s:3:\"qty\";d:1;s:5:\"price\";d:180;s:5:\"rowid\";s:32:\"34173cb38f07f89ddbebc2ac9128303f\";s:8:\"subtotal\";d:180;}s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";a:6:{s:2:\"id\";s:2:\"29\";s:4:\"name\";s:9:\"Wood Tray\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"6ea9ab1baa0efb9e19094440c317e21b\";s:8:\"subtotal\";d:100;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:6:{s:2:\"id\";s:2:\"28\";s:4:\"name\";s:13:\"Floor Cleaner\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:8:\"subtotal\";d:100;}}', '2020-10-29 07:08:06pm', 0),
(4, 5, 'yashfa@gmail.com', 'yashfa@gmail.com', 'afafa', '3535', 'cash-on-delivery', '697120', 'a:3:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:6:{s:2:\"id\";s:2:\"33\";s:4:\"name\";s:13:\"Floor Cleaner\";s:3:\"qty\";d:1;s:5:\"price\";d:100;s:5:\"rowid\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:8:\"subtotal\";d:100;}s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";a:6:{s:2:\"id\";s:2:\"32\";s:4:\"name\";s:8:\"Wall Art\";s:3:\"qty\";d:1;s:5:\"price\";d:40;s:5:\"rowid\";s:32:\"6364d3f0f495b6ab9dcf8d3b5c6e0b01\";s:8:\"subtotal\";d:40;}s:32:\"c16a5320fa475530d9583c34fd356ef5\";a:6:{s:2:\"id\";s:2:\"31\";s:4:\"name\";s:12:\"Saddle Stool\";s:3:\"qty\";d:1;s:5:\"price\";d:80;s:5:\"rowid\";s:32:\"c16a5320fa475530d9583c34fd356ef5\";s:8:\"subtotal\";d:80;}}', '2020-10-30 06:47:09pm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `review` int(255) NOT NULL,
  `total_rating` int(255) NOT NULL,
  `avg_rating` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `category_id`, `description`, `price`, `image`, `review`, `total_rating`, `avg_rating`) VALUES
(4, 'Bed', 1, 'Queen-size memory-foam mattress with 3 foam layers for optimal softness and support. Plush Feel: Top memory-foam layer is designed to provide a soft texture to sleep on (3-5 firmness on a scale of 10) <br />\r\n<br />\r\nwhile providing adequate support for any sleeping position', 300, 'furniture6.jpg', 0, 0, 0),
(5, 'Chair', 1, 'Sit back and relax in your very own push back recliner chair. This club chair features a dual-function foot extension and a reclining back that will surely help you to unwind and de-stress.Enjoy your favorite entertainment and fully relax your body and mood with this comfortable recliner sofa.recliner chair reliner sofa club chair', 100, 'furniture11.jpg', 1, 1, 5),
(6, 'Fish Sculpture', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 100, 'home7.jpg', 0, 0, 0),
(7, 'Bowl', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived', 100, 'kitchen6.jpg', 0, 0, 0),
(8, 'Bed', 4, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 150, 'bedding1.jpg', 0, 0, 0),
(9, 'Sofa', 1, 'sofa is a modern minimalist design, double-layer fabric sofa, classic tufted design, doll cotton pad, softer and more comfortable.<br />\r\nSolid wood frame, stable and not easy to shake. The buffer spring is supported, full of elasticity and does not deform.', 250, 'furniture2.jpg', 0, 0, 0),
(10, 'Bed', 1, 'Queen-size memory-foam mattress with 3 foam layers for optimal softness and support. Plush Feel: Top memory-foam layer is designed to provide a soft texture to sleep on (3-5 firmness on a scale of 10) while providing adequate support for any sleeping position', 250, 'furniture3.jpg', 0, 0, 0),
(11, 'Chair and Table', 1, 'Sit back and relax in your very own push back recliner chair. This club chair features a dual-function foot extension and a reclining back that will surely help you to unwind and de-stress.Enjoy your favorite entertainment and fully relax your body and mood with this comfortable recliner sofa.recliner chair reliner sofa club chair', 150, 'furniture4.jpg', 8, 0, 0),
(12, 'Desk', 1, 'Maximize your home office space with the Ameriwood Home Dakota L-Shaped Desk<br />\r\nConstructed of laminated particleboard and MDF with an espresso finish<br />\r\nThis Desk fits perfectly in a corner or up against any wall and features a large top surface, extra side storage and grommet holes to keep your cords tangle free', 100, 'furniture5.jpg', 0, 0, 0),
(13, 'Kitchen Gadgets', 3, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 200, 'kitchen11.jpg', 0, 0, 0),
(14, 'Kitchen Gadgets', 3, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 120, 'kitchen2.jpg', 0, 0, 0),
(15, 'Cookware Set', 3, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 100, 'kitchen3.jpg', 0, 0, 0),
(16, 'Cookware Set', 3, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 170, 'kitchen4.jpg', 0, 0, 0),
(17, 'Light', 5, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 40, 'lighting1.jpg', 0, 0, 0),
(18, 'Light', 5, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 80, 'lighting2.jpg', 0, 0, 0),
(19, 'Home Improvement', 7, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 200, 'improvement1.jpg', 0, 0, 0),
(20, 'Show Storage', 6, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 120, 'storage1.jpg', 0, 0, 0),
(21, 'Home Improvement', 7, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 160, 'improvement2.jpg', 0, 0, 0),
(22, 'Basin', 4, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 150, 'badding2.jpg', 0, 0, 0),
(23, 'Blender', 3, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 120, 'kitchen5.jpg', 0, 0, 0),
(24, 'Artificial Plant', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 60, 'home1.jpg', 0, 0, 0),
(25, 'Educational Storage', 6, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 120, 'storage2.jpg', 0, 0, 0),
(26, 'Cosmetics Storage', 6, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 120, 'storage3.jpg', 0, 0, 0),
(27, 'Floor Scrub', 8, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 150, 'floor1.jpg', 0, 0, 0),
(28, 'Floor Cleaner', 8, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 100, 'floor2.jpg', 0, 0, 0),
(29, 'Wood Tray', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 100, 'home4.jpg', 0, 0, 0),
(30, 'Fan', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 180, 'home3.jpg', 0, 0, 0),
(31, 'Saddle Stool', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 80, 'home5.jpg', 0, 0, 0),
(32, 'Wall Art', 2, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 40, 'home6.jpg', 0, 0, 0),
(33, 'Floor Cleaner', 8, 'Indoor & Outdoor Decoration--This artificial fiddle leaf fig tree is very beautiful, with moss on the basin, which can be placed indoors and outdoors. Our tree can match perfectly with any decor theme, showing much freshness and elegance. Bring a touch of greenery to desks, coffee tables, patios, and more.', 100, 'floor3.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `unique_key` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
