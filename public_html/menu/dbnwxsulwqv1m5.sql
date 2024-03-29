-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2024 at 06:00 PM
-- Server version: 5.7.44-48-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnwxsulwqv1m5`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `Id` int(11) NOT NULL,
  `ArabicName` varchar(100) NOT NULL,
  `EnglishName` varchar(100) NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Id`, `ArabicName`, `EnglishName`, `Image`) VALUES
(1, 'الشواء', 'BARBEQUE', 'https://redston.gulfstar.com.sa/assets/images/prducts/31.png'),
(2, 'الشوربة', 'SOUP', 'https://redston.gulfstar.com.sa/assets/images/prducts/32.png'),
(3, 'السلطة', 'SALAD', 'https://redston.gulfstar.com.sa/assets/images/prducts/33.png'),
(4, 'المعكرونة', 'PASTA', 'https://redston.gulfstar.com.sa/assets/images/prducts/34.png'),
(5, 'البرجر والتاكو', 'BURGER & TACO', 'https://redston.gulfstar.com.sa/assets/images/prducts/35.png'),
(6, 'وصفات روزالينا', 'ROZALINA SPECIALS', 'https://redston.gulfstar.com.sa/assets/images/prducts/36.png'),
(7, 'ستيك', 'Steak', 'https://redston.gulfstar.com.sa/assets/images/prducts/37.png'),
(8, 'أضلاع', 'Racks', 'https://redston.gulfstar.com.sa/assets/images/prducts/38.png'),
(9, 'المشروبات الباردة', 'COLD DRINKS', 'https://redston.gulfstar.com.sa/assets/images/prducts/39.png'),
(10, 'القهوة', 'COFFEE', 'https://redston.gulfstar.com.sa/assets/images/prducts/40.png'),
(11, 'الكيك', 'CAKE', 'https://redston.gulfstar.com.sa/assets/images/prducts/41.png');

-- --------------------------------------------------------

--
-- Table structure for table `Items`
--

CREATE TABLE `Items` (
  `Id` int(11) NOT NULL,
  `ArabicName` varchar(100) NOT NULL,
  `EnglishName` varchar(100) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `ArabicDescription` varchar(200) NOT NULL,
  `EnglishDescription` varchar(200) NOT NULL,
  `Calories` int(11) NOT NULL,
  `Image` text NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `AddedDate` date NOT NULL,
  `ModifiedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Items`
--

INSERT INTO `Items` (`Id`, `ArabicName`, `EnglishName`, `CategoryId`, `Price`, `ArabicDescription`, `EnglishDescription`, `Calories`, `Image`, `publish`, `AddedDate`, `ModifiedDate`) VALUES
(1, 'شوربة التشيلي المكسيكية', 'Mexican Chili Soup', 2, 23, 'حساء المكسيكي الذي يمزج بين الفاصوليا الحمراء والتوابل واللحم المفروم بطريقة فريدة.', 'A unique Mexican soup blending red beans, spices, and minced meat.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/chili.png', 1, '0000-00-00', '0000-00-00'),
(2, 'شوربة الذرة', 'Corn Soup', 2, 19, 'شوربة خفيفة ومنعشة مع نكهة حلوة من الذرة وتوابل الأعشاب.', 'A light and refreshing soup with sweet corn flavor and herbal spices.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/2.jpg', 1, '0000-00-00', '0000-00-00'),
(3, 'شوربة الطماطم', 'Tomato Soup', 2, 23, 'شوربة الطماطم المميزة مع الكريمة البيضاء ونكهة البابريكا اللذيذة.', 'Distinctive tomato soup with creamy white sauce and tasty paprika flavor.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/3.jpg', 1, '0000-00-00', '0000-00-00'),
(4, 'شوربة البطاطا', 'Potato Soup', 2, 22, 'حساء البطاطا المهروس بنكهة مميزة من الأعشاب مع لمسة من التوابل الحارة.', 'Mashed potato soup with distinctive herbal flavor and a hint of spicy seasoning.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/4.jpg', 1, '0000-00-00', '0000-00-00'),
(5, 'سلطة الباستا', 'Pasta Salad', 3, 29, 'سلطة المكرونة الممزوجة بالذرة والخضار، مع تتبيلة المكسيكية اللذيذة.', 'Pasta salad mixed with corn and vegetables, dressed in tasty Mexican seasoning.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/5.jpg', 1, '0000-00-00', '0000-00-00'),
(6, 'سلطة مكسيكية', 'Mexican Salad', 3, 28, 'سلطة مكسيكية نابضة بالحياة مع مكوناتها الطازجة المقرمشة ونكهاتها الغنية.', 'A vibrant Mexican salad with fresh crispy ingredients and rich flavors.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/6.jpg', 1, '0000-00-00', '0000-00-00'),
(7, 'سلطة السيزر', 'Caesar Salad', 3, 27, 'سلطة السيزر التقليدية مع لمسة خاصة من الصلصة الغنية بالنكهة.', 'The traditional Caesar salad with a special touch of rich flavorful dressing.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/7.jpg', 1, '0000-00-00', '0000-00-00'),
(8, 'معكرونة البيستو', 'Pesto Pasta', 4, 38, 'مكرونة شهية مع تتبيلة البيستو المصنوعة من الأعشاب والثوم والجبن وزيت الزيتون.', 'Delicious pasta with pesto dressing made from herbs, garlic, cheese, and olive oil.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/8.jpg', 1, '0000-00-00', '0000-00-00'),
(9, 'معكرونة أمريكية', 'American Pasta', 4, 39, 'مكرونة غنية بصلصة الطماطم وكرات اللحم الأنجوس الشهية.', 'Rich pasta with tomato sauce and savory Angus meatballs.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/9.jpg', 1, '0000-00-00', '0000-00-00'),
(10, 'معكرونة بيضاء', 'White Pasta', 4, 38, 'مكرونة بيضاء كريمية مع قطع دجاج مشوية وتتبيلة لذيذة.', 'Creamy white pasta with grilled chicken pieces and tasty dressing.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/10.jpg', 1, '0000-00-00', '0000-00-00'),
(11, 'برجر اللحم', 'Beef Burger', 5, 38, 'برجر لحم الأنجوس مع الجبنة المذابة والبصل المكرمل والخس المقرمش والصلصة اللذيذة.', 'Angus beef burger with melted cheese, caramelized onions, crispy lettuce, and tasty sauce.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/11.jpg', 1, '0000-00-00', '0000-00-00'),
(12, 'تاكو الجمبري', 'Shrimp Taco', 5, 42, 'تاكو الجمبري بصلصة المانجو لطعم مميز ومنعش.', 'Shrimp taco with mango sauce for a distinctive and refreshing taste.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/12.jpg', 1, '0000-00-00', '0000-00-00'),
(13, 'تاكو اللحم', 'Beef Taco', 5, 38, 'تاكو اللحم الشهي بصلصات المكسيكية التقليدية.', 'Flavorful beef taco with traditional Mexican sauces.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/13.jpg', 1, '0000-00-00', '0000-00-00'),
(14, 'روزالينا بيف', 'Rozalina Beef', 6, 78, 'طبق خاص مع لحم طري مع البطاطا والجزر في تسبيكة لذيذة مع الأرز المكسيكي.', 'Special dish with tender beef, potatoes, and carrots in a delicious mixture served with Mexican rice.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/14.jpg', 1, '0000-00-00', '0000-00-00'),
(15, 'روزالينا شرمب', 'Rozalina Shrimp', 6, 75, 'طبق خاص مع جمبري مطبوخ بصلصة كريمية لطعم فريد وشهي.', 'Special dish with shrimp cooked in creamy sauce for a unique and tasty flavor.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/15.jpg', 1, '0000-00-00', '0000-00-00'),
(16, 'مكس اللحم', 'Beef Mix', 1, 86, 'تشكيلة من أسياخ اللحم المتنوعة مع البطاطس المهروسة والخضار المقلية وصلصات التتبيل المتنوعة.', 'Assorted meat skewers served with mashed potatoes, sautéed vegetables, and various dipping sauces.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/16.png', 0, '0000-00-00', '0000-00-00'),
(17, 'مكس الدجاج', 'Chicken Mix', 1, 69, 'تشكيلة من أسياخ الدجاج المختلفة مع البطاطس المهروسة والخضار المقلية وصلصات التتبيل المتنوعة.', 'Assorted chicken skewers served with mashed potatoes, sautéed vegetables, and various dipping sauces.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/17.png', 1, '0000-00-00', '0000-00-00'),
(18, 'مكس لحم ودجاج', 'Beef & Chicken Mix', 1, 78, 'تشكيلة متنوعة من أسياخ اللحم والدجاج مع البطاطس المهروسة والخضار المقلية وصلصات التتبيل المتنوعة.', 'Assorted skewers of beef and chicken served with mashed potatoes, sautéed vegetables, and various dipping sauces.', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/18.png', 1, '0000-00-00', '0000-00-00'),
(19, 'واغيو', 'Wagyu', 7, 99, '', '', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/19.jpg', 1, '0000-00-00', '0000-00-00'),
(20, 'آنجوس', 'Angus', 7, 99, '', '', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/20.jpg', 1, '0000-00-00', '0000-00-00'),
(21, 'عجل هولندي', 'Veal', 7, 99, '', '', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/21.jpg', 1, '0000-00-00', '0000-00-00'),
(22, 'ريش غنم', 'Lamb Racks', 8, 99, '', '', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/22.jpg', 1, '0000-00-00', '0000-00-00'),
(23, 'ريش بقري', 'Beef Racks', 8, 99, '', '', 156, 'https://redston.gulfstar.com.sa/assets/images/prducts/23.jpg', 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(1, 'red', 'RedSton@13579');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Items`
--
ALTER TABLE `Items`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
