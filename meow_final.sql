-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2024 年 06 月 15 日 09:10
-- 伺服器版本： 11.3.2-MariaDB
-- PHP 版本： 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `meow`
--

-- --------------------------------------------------------

--
-- 資料表結構 `boss`
--

CREATE TABLE `boss` (
  `bId` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bPwd` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `boss`
--

INSERT INTO `boss` (`bId`, `bPwd`) VALUES
('boss', 'boss');

-- --------------------------------------------------------

--
-- 資料表結構 `detail`
--

CREATE TABLE `detail` (
  `menuId` int(10) NOT NULL,
  `shId` varchar(30) NOT NULL,
  `quantity` int(30) DEFAULT NULL,
  `total` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `detail`
--

INSERT INTO `detail` (`menuId`, `shId`, `quantity`, `total`) VALUES
(1, '25', 2, 1200),
(1, '63', 3, 1800),
(1, '90', 3, 1800),
(2, '25', 1, 800),
(2, '63', 2, 1600),
(4, '25', 2, 300),
(4, '63', 1, 150),
(5, '25', 1, 130),
(6, '25', 1, 110),
(7, '94', 3, 480);

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `mId` varchar(30) NOT NULL,
  `mPwd` varchar(30) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`mId`, `mPwd`, `name`, `gender`, `age`, `email`) VALUES
('a', 'a', 'a', 'f', 10, 'a45629751@gmail.com'),
('aaa', 'aaa', 'aaa', 'f', 15, 'a1113312@mail.nuk.edu.tw'),
('b', 'b', 'b', 'f', 10, 'a45629751@gmail.com'),
('c', 'c', 'c', 'm', 20, 'a1113348@mail.nuk.edu.tw'),
('meowboss', 'meowboss123', '黃阿瑪', 'm', 16, 'a45629751@gmail.com'),
('UberEats', 'foodpanda', '小林', 'm', 999, 'a1113312@mail.nuk.edu.tw'),
('www', '123', 'www', 'f', 20, 'a1113320@mail.nuk.edu.tw'),
('y', 'meowboss123', '黃阿瑪', 'm', 16, 'a45629751@gmail.com');

-- --------------------------------------------------------

--
-- 資料表結構 `menu`
--

CREATE TABLE `menu` (
  `menuId` int(10) NOT NULL,
  `mName` tinytext DEFAULT NULL,
  `mPrice` int(20) DEFAULT NULL,
  `mPicture` varchar(255) DEFAULT NULL,
  `mWord` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `menu`
--

INSERT INTO `menu` (`menuId`, `mName`, `mPrice`, `mPicture`, `mWord`) VALUES
(1, '喵王A5手切和牛', 600, 'images/beff.jpg', '每一塊牛排都經過精心烤制，達到外層微焦、內裡多汁的完美口感。搭配特製醬汁，讓人回味無窮。'),
(2, '喵王現撈龍蝦', 800, 'images/lob.jpg', '招牌龍蝦料理是「醬烤龍蝦配香草奶油醬」。新鮮的龍蝦經過巧手料理，以獨特的醬汁淋上烤製而成，搭配香草奶油醬，口感鮮嫩多汁，香氣撲鼻，每一口都是極致享受。'),
(3, '喵王嫩煎雞胸', 500, 'images/chi.jpg', '「香煎雞胸肉配蜂蜜芥末醬」。精選優質雞胸肉，經過巧妙的煎烤處理，肉質鮮嫩多汁，外皮酥脆。搭配特製蜂蜜芥末醬，香甜中帶有微辣，口感豐富，令人回味無窮。'),
(4, '喵草特調', 150, 'images/greendrink.jpg', '這款飲品是由新鮮的青瓜、蘋果和菠菜搭配而成，口感清爽宜人，色彩綠意盎然。每一口都能感受到綠色食材的天然香甜，清涼解渴之餘，更能補充身體所需的營養。'),
(5, '喵王冰茶', 130, 'images/ice.jpg', '這款經典調酒融合了朗姆酒、伏特加、龍舌蘭酒、橙味利口酒和碳酸飲料，清爽中帶著微醺，是夏日消暑的絕佳選擇。'),
(6, '喵喵營養液', 110, 'images/nutri.jpg', '這款特調以新鮮葡萄為基底，加入紅酒、葡萄汁和少許汽水，口感清新怡人，紫色調令人心曠神怡。每一口都散發著葡萄的香甜，是絕佳的夏日解渴選擇。'),
(7, '喵廚沙拉', 160, 'images/sala.jpg', '這款沙拉以新鮮色彩繽紛的時令蔬菜和水果搭配而成，如青葱黃瓜、軟綠生菜、甜蜜蜜瓜、清爽藍莓等。淋上特調的柠檬蜂蜜醬汁，清爽甘甜，每一口都是夏日的味道。'),
(8, '喵王手工麵包塊', 80, 'images/bread.jpg', '這款麵包外皮酥脆，內裡鬆軟，香氣四溢，口感豐富。採用新鮮原料製作，經過金黃色的烘烤，搭配特製果醬或奶油，每一口都帶來濃郁的歐式風情。'),
(9, '喵王經典漢堡排', 140, 'images/humber.jpg', '這道菜以精選的豬肉為主料，外酥內嫩，口感豐富。搭配新鮮蔬菜和特製醬汁，每一口都充滿著美味的滋味，讓人回味無窮。'),
(11, '喵王秘製義大利麵', 50, 'images/pasta.jpg', '這道菜以彈牙的義大利麵搭配豐富的海鮮，再淋上紅酒番茄醬汁，口感鮮美，風味獨特。每一口都是意式料理的精髓，絕對能滿足您對美食的所有幻想。'),
(12, '喵喵披薩', 200, 'images/pizza.jpg', '好吃的脆脆披薩');

-- --------------------------------------------------------

--
-- 資料表結構 `shoppingorder`
--

CREATE TABLE `shoppingorder` (
  `shId` varchar(30) NOT NULL,
  `mId` varchar(30) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `shoppingorder`
--

INSERT INTO `shoppingorder` (`shId`, `mId`, `time`) VALUES
('25', 'y', '2024-06-14 11:23:25'),
('63', 'www', '2024-06-13 10:12:36'),
('90', 'UberEats', '2024-06-12 10:19:21'),
('94', 'aaa', '2024-06-08 23:39:18');

-- --------------------------------------------------------

--
-- 資料表結構 `staff`
--

CREATE TABLE `staff` (
  `sId` varchar(30) NOT NULL,
  `sPwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- 傾印資料表的資料 `staff`
--

INSERT INTO `staff` (`sId`, `sPwd`) VALUES
('staff', 'staff');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `boss`
--
ALTER TABLE `boss`
  ADD PRIMARY KEY (`bId`);

--
-- 資料表索引 `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`menuId`,`shId`),
  ADD KEY `shId` (`shId`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mId`);

--
-- 資料表索引 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuId`);

--
-- 資料表索引 `shoppingorder`
--
ALTER TABLE `shoppingorder`
  ADD PRIMARY KEY (`shId`),
  ADD KEY `mId` (`mId`);

--
-- 資料表索引 `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu`
--
ALTER TABLE `menu`
  MODIFY `menuId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`shId`) REFERENCES `shoppingorder` (`shId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_ibfk_3` FOREIGN KEY (`shId`) REFERENCES `shoppingorder` (`shId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_ibfk_4` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `shoppingorder`
--
ALTER TABLE `shoppingorder`
  ADD CONSTRAINT `shoppingorder_ibfk_1` FOREIGN KEY (`mId`) REFERENCES `member` (`mId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shoppingorder_ibfk_2` FOREIGN KEY (`mId`) REFERENCES `member` (`mId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
