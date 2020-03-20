-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 03:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_bank_merchant`
--

CREATE TABLE `m_bank_merchant` (
  `id` int(3) NOT NULL,
  `kode_bank` int(4) NOT NULL,
  `nama_bank` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_bank_merchant`
--

INSERT INTO `m_bank_merchant` (`id`, `kode_bank`, `nama_bank`) VALUES
(1, 14, 'Bank BCA'),
(2, 2, 'Bank BRI'),
(3, 8, 'Bank Mandiri'),
(4, 9, 'Bank BNI');

-- --------------------------------------------------------

--
-- Table structure for table `m_banner`
--

CREATE TABLE `m_banner` (
  `id` int(4) NOT NULL,
  `name_banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_category_produk`
--

CREATE TABLE `m_category_produk` (
  `id` int(3) NOT NULL,
  `nama_category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_customer`
--

CREATE TABLE `m_customer` (
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone_number` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `profile` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_customer`
--

INSERT INTO `m_customer` (`id`, `name`, `phone_number`, `email`, `gender`, `address`, `birth_date`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Dicky Firmansyah', '222222222', 'dickydezchal6@gmail.com', 'Gayungan', 'Laki-Laki', '1998-07-13', '', '2020-02-08 00:00:00', '2020-02-08 16:45:13'),
(6, 'Dicky', '0', 'fffff', 'Fff', 'Cff', '0000-00-00', 'android.support.v7.widget.AppCompatImageView{b5d1a9b V.ED..C.. ........ 30,957-690,1357 #7f09000c ap', '0000-00-00 00:00:00', '2020-03-10 06:08:59'),
(8, 'Dicky Firmansyah Putra', '0', 'dickydezchal6@gmail.com', 'Laki-Laki', 'Gayungan 8 Gg.', '0000-00-00', 'android.support.v7.widget.AppCompatImageView{b5d1a9b V.ED..C.. ........ 30,957-690,1357 #7f09000c ap', '0000-00-00 00:00:00', '2020-03-10 06:14:10'),
(11, 'Dicky Firmansyah Putra', '0', 'dickydezchal6@gmail.com', 'Laki-Laki', 'Gayungan 8 Gg.', '0000-00-00', 'android.support.v7.widget.AppCompatImageView{b5d1a9b V.ED..C.. ........ 30,957-690,1357 #7f09000c ap', '0000-00-00 00:00:00', '2020-03-10 06:19:57'),
(13, 'Dicky', '', 'dicky@email.com', 'Gununganyar, S', 'Laki-Laki', '0000-00-00', 'android.support.v7.widget.AppCompatImageView{198b898 V.ED..C.. ........ 30,957-690,1357 #7f09000c ap', '0000-00-00 00:00:00', '2020-03-12 04:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `m_koperasi_list`
--

CREATE TABLE `m_koperasi_list` (
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_merchant`
--

CREATE TABLE `m_merchant` (
  `id` int(4) NOT NULL,
  `merchant_name` varchar(30) NOT NULL,
  `merchant_phone` varchar(14) NOT NULL,
  `merchant_email` varchar(30) NOT NULL,
  `merchant_password` varchar(15) NOT NULL,
  `is_verified` int(3) NOT NULL,
  `merchant_address` varchar(50) NOT NULL,
  `merchant_bank` varchar(50) NOT NULL,
  `merchant_desc` varchar(100) NOT NULL,
  `merchant_user` varchar(30) NOT NULL,
  `merchant_profile` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_merchant`
--

INSERT INTO `m_merchant` (`id`, `merchant_name`, `merchant_phone`, `merchant_email`, `merchant_password`, `is_verified`, `merchant_address`, `merchant_bank`, `merchant_desc`, `merchant_user`, `merchant_profile`, `created_at`, `updated_at`) VALUES
(5000000, 'Gita Pending', '2147483647', 'muhammadaliyya19@gmail.com', 'test123', 1, 'Kandangan', 'bri', 'hahahaha', 'merchant_ku', 'Tes Profile', '0000-00-00 00:00:00', '2020-03-19 14:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `m_merchant_pending`
--

CREATE TABLE `m_merchant_pending` (
  `id` int(4) NOT NULL,
  `merchant_name` varchar(30) NOT NULL,
  `merchant_phone` varchar(14) NOT NULL,
  `merchant_email` varchar(30) NOT NULL,
  `merchant_password` varchar(15) NOT NULL,
  `is_verified` int(3) NOT NULL,
  `merchant_address` varchar(50) NOT NULL,
  `merchant_bank` varchar(50) NOT NULL,
  `merchant_desc` varchar(100) NOT NULL,
  `merchant_user` varchar(30) NOT NULL,
  `merchant_profile` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_merchant_pending`
--

INSERT INTO `m_merchant_pending` (`id`, `merchant_name`, `merchant_phone`, `merchant_email`, `merchant_password`, `is_verified`, `merchant_address`, `merchant_bank`, `merchant_desc`, `merchant_user`, `merchant_profile`, `created_at`, `updated_at`) VALUES
(5000000, 'Gita Pending', '2147483647', 'muhammadaliyya19@gmail.com', 'test123', 0, 'Kandangan', 'bri', 'hahahaha', 'merchant_ku', 'Tes Profile', '0000-00-00 00:00:00', '2020-03-19 13:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `m_products`
--

CREATE TABLE `m_products` (
  `product_id` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `description` text NOT NULL,
  `jumlah` varchar(3) NOT NULL,
  `merchant_id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `category_id` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_products`
--

INSERT INTO `m_products` (`product_id`, `name`, `price`, `size`, `image`, `description`, `jumlah`, `merchant_id`, `user_id`, `category_id`) VALUES
('1', 'Frame', 300000, 32, 'halu.png', 'Deskripsi aja', '2', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `userName` varchar(120) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `userName`, `password`) VALUES
(1, 'admin', 'cobaganti'),
(2, 'admin', 'admin'),
(3, 'admin', 'adminku');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `emailId` varchar(200) DEFAULT NULL,
  `mobileNumber` char(12) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` int(1) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `firstName`, `lastName`, `emailId`, `mobileNumber`, `userPassword`, `regDate`, `isActive`, `lastUpdationDate`) VALUES
(1, 'Anjumia', 'Kumar', 'test@gmail.com', '1234567890', 'Test@12345', '2018-12-17 18:30:00', 1, '2020-03-14 01:08:53'),
(2, 'Sarita', 'Pandey', 'phpgurukulofficial@gmail.com', '1234567890', 'Test@123', '2018-12-18 17:40:40', 1, '2018-12-22 05:33:41'),
(3, 'Testuser', 'User', 'user@test.com', '1111111112', 'Test@12345', '2018-12-25 17:57:43', 1, '2018-12-25 18:36:18'),
(4, 'Abc', 'Xyz', 'abc@xyz.com', '1234567908', 'Test@123', '2018-12-25 18:43:33', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(121) UNSIGNED NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `html` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `module`, `code`, `template_name`, `html`) VALUES
(1, 'forgot_pass', 'forgot_password', 'Forgot password', '<html xmlns=\"http://www.w3.org/1999/xhtml\"><head>\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n  <style type=\"text/css\" rel=\"stylesheet\" media=\"all\">\r\n    /* Base ------------------------------ */\r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;\r\n      -webkit-box-sizing: border-box;\r\n      box-sizing: border-box;\r\n    }\r\n    body {\r\n      \r\n    }\r\n    a {\r\n      color: #3869D4;\r\n    }\r\n\r\n\r\n    /* Masthead ----------------------- */\r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    .email-masthead_logo {\r\n      max-width: 400px;\r\n      border: 0;\r\n    }\r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      text-align: center;\r\n    }\r\n    .email-footer p {\r\n      color: #AEAEAE;\r\n    }\r\n  \r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n\r\n    /* Type ------------------------------ */\r\n    h1 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h2 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h3 {\r\n      margin-top: 0;\r\n      color: #2F3133;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    p {\r\n      margin-top: 0;\r\n      color: #74787E;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    p.center {\r\n      text-align: center;\r\n    }\r\n\r\n    /* Buttons ------------------------------ */\r\n    .button {\r\n      display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\r\n    }\r\n    .button--green {\r\n      background-color: #22BC66;\r\n    }\r\n    .button--red {\r\n      background-color: #dc4d2f;\r\n    }\r\n    .button--blue {\r\n      background-color: #3869D4;\r\n    }\r\n  </style>\r\n</head>\r\n<body style=\"width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F2F4F6;\r\n      color: #74787E;\r\n      -webkit-text-size-adjust: none;\">\r\n  <table class=\"email-wrapper\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n    width: 100%;\r\n    margin: 0;\r\n    padding: 0;\">\r\n    <tbody><tr>\r\n      <td align=\"center\">\r\n        <table class=\"email-content\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"width: 100%;\r\n      margin: 0;\r\n      padding: 0;\">\r\n          <!-- Logo -->\r\n\r\n          <tbody>\r\n          <!-- Email Body -->\r\n          <tr>\r\n            <td class=\"email-body\" width=\"100%\" style=\"width: 100%;\r\n    margin: 0;\r\n    padding: 0;\r\n    border-top: 1px solid #edeef2;\r\n    border-bottom: 1px solid #edeef2;\r\n    background-color: #edeef2;\">\r\n              <table class=\"email-body_inner\" align=\"center\" width=\"570\" cellpadding=\"0\" cellspacing=\"0\" style=\" width: 570px;\r\n    margin:  14px auto;\r\n    background: #fff;\r\n    padding: 0;\r\n    border: 1px outset rgba(136, 131, 131, 0.26);\r\n    box-shadow: 0px 6px 38px rgb(0, 0, 0);\r\n       \">\r\n                <!-- Body content -->\r\n                <thead style=\"background: #3869d4;\"><tr><th><div align=\"center\" style=\"padding: 15px; color: #000;\"><a href=\"{var_action_url}\" class=\"email-masthead_name\" style=\"font-size: 16px;\r\n      font-weight: bold;\r\n      color: #bbbfc3;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\">{var_sender_name}</a></div></th></tr>\r\n                </thead>\r\n                <tbody><tr>\r\n                  <td class=\"content-cell\" style=\"padding: 35px;\">\r\n                    <h1>Hi {var_user_name},</h1>\r\n                    <p>You recently requested to reset your password for your {var_website_name} account. Click the button below to reset it.</p>\r\n                    <!-- Action -->\r\n                    <table class=\"body-action\" align=\"center\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" style=\"\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      text-align: center;\">\r\n                      <tbody><tr>\r\n                        <td align=\"center\">\r\n                          <div>\r\n                            <!--[if mso]><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"{{var_action_url}}\" style=\"height:45px;v-text-anchor:middle;width:200px;\" arcsize=\"7%\" stroke=\"f\" fill=\"t\">\r\n                              <v:fill type=\"tile\" color=\"#dc4d2f\" />\r\n                              <w:anchorlock/>\r\n                              <center style=\"color:#ffffff;font-family:sans-serif;font-size:15px;\">Reset your password</center>\r\n                            </v:roundrect><![endif]-->\r\n                            <a href=\"{var_varification_link}\" class=\"button button--red\" style=\"background-color: #dc4d2f;display: inline-block;\r\n      width: 200px;\r\n      background-color: #3869D4;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\">Reset your password</a>\r\n                          </div>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                    <p>If you did not request a password reset, please ignore this email or reply to let us know.</p>\r\n                    <p>Thanks,<br>{var_sender_name} and the {var_website_name} Team</p>\r\n                   <!-- Sub copy -->\r\n                    <table class=\"body-sub\" style=\"margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #EDEFF2;\">\r\n                      <tbody><tr>\r\n                        <td> \r\n                          <p class=\"sub\" style=\"font-size:12px;\">If you are having trouble clicking the password reset button, copy and paste the URL below into your web browser.</p>\r\n                          <p class=\"sub\"  style=\"font-size:12px;\"><a href=\"{var_varification_link}\">{var_varification_link}</a></p>\r\n                        </td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n  </tbody></table>\r\n\r\n\r\n</body></html>'),
(3, 'users', 'invitation', 'Invitation', '<p>Hello <strong>{var_user_email}</strong></p>\r\n\r\n<p>Click below link to register&nbsp;<br />\r\n{var_inviation_link}</p>\r\n\r\n<p>Thanks&nbsp;</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_bank_merchant`
--
ALTER TABLE `m_bank_merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_banner`
--
ALTER TABLE `m_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_category_produk`
--
ALTER TABLE `m_category_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_customer`
--
ALTER TABLE `m_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_koperasi_list`
--
ALTER TABLE `m_koperasi_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_merchant`
--
ALTER TABLE `m_merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_merchant_pending`
--
ALTER TABLE `m_merchant_pending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_bank_merchant`
--
ALTER TABLE `m_bank_merchant`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_banner`
--
ALTER TABLE `m_banner`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_category_produk`
--
ALTER TABLE `m_category_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_customer`
--
ALTER TABLE `m_customer`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_koperasi_list`
--
ALTER TABLE `m_koperasi_list`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_merchant`
--
ALTER TABLE `m_merchant`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5000002;

--
-- AUTO_INCREMENT for table `m_merchant_pending`
--
ALTER TABLE `m_merchant_pending`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5000002;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(121) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
