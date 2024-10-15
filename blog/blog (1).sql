-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 10:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Food', 'This is food category'),
(2, 'Other', 'This is uncategorised section'),
(7, 'Gaming', 'this is gaming category'),
(8, 'Movies', 'Movies category'),
(9, 'Science &amp; Technology', 'This is Science &amp; Technology category'),
(10, 'Travel', 'this is travel category'),
(12, 'Music ', 'This is music category');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(32, 'MoMo', '&ldquo;Momo is an ethnic food of Himalayan communities. It is a steamed dumpling made from wheat dough and stuffed with minced meat, vegetables, spices and herbs usually served with chutneys/pickles/sauces/meat broth/soup&rdquo; (Bepary et al., 2015). Sijapati (2016) writes during the 17th century, dumplings were already a staple snack in Lhasa when trade relations flourished between Kathmandu and Tibet. Soongma Tuladhar (an educator and aformer merchant in Tibet) shared that the original dumplings made with yak meat and onions morphed into momos we know today after they were introduced in the Valley by returning Newar traders From Tibet. &ldquo;By the 1960s, in part because of the influx of Tibetan migrants, momo-chas were already a popular fixture at Kathmandu&rsquo;s handful of cinemas&rdquo; (Sijapati, 2016). Momo then spread across Northeast India, Darjeeling, North Bengal, and nearby states through cross-border travels and migrations of people (Bepary et al., 2015). ', '1726419935Chicken-Momo-Restaurant-Style-Kukhura-ko-Momo-कुखुराको-मम-2.jpg', '2024-09-15 17:05:35', 1, 18, 0),
(33, 'Chatpate', 'Chatpate is the very famous street food popular in Nepal. Different ingredients are mixed on a single pot and stirred to prepare it. The romantic part of it is that Chatpate is given in paper can and a bit hard paper is used as the spoon. Chatpate is the mixture of different tastes. We as a local guide while roaming around the places use to eat chatpate frequently as it activates our taste buds.\r\n\r\nMakinhg Process :-\r\nPuffed rice -1 cup\r\nChickpea -1/4 cup\r\nCilantro chopped -1/4 cup\r\nTomato Diced-1\r\nCucumber diced -1/2\r\nRed onion chopped-1\r\nLemon juice- 2 teaspoons (or to taste)\r\nExtra Virgin Olive Oil -1 tbsp\r\nGreen chili- 2\r\nRed chili powder- 1 tsp (to add a little extra taste and color)\r\nSalt &ndash; 1 tsp', '17264201751596985705591.jpeg', '2024-09-15 17:09:35', 1, 18, 0),
(34, 'PUBG', ' PlayerUnknown&rsquo;s Battlegrounds (PUBG) is an online multiplayer battle game where 100 players participate in each round and the last one standing is declared the winner. Krafton, a South Korean company, develops and distributes the games. Due to its global success, PUBG has become free to play since January 2022.\r\n\r\nPUBG is providing a platform for catharsis for many young people who seek to escape from unpleasant reality. But, is PUBG really an escape route? Is this craze for the game originating from the sheer thrill of playing the game or are there other hidden motives behind this?\r\n\r\n&ldquo;I play PUBG because I like to compete with others,&rdquo; said Muhammad Usman, a 16-year-old schoolboy. &ldquo;I have been playing this game since 2017, and I spend an hour or two daily on it.&rdquo;\r\n\r\nAs mentioned earlier, the motivations behind playing PUBG has been questioned at times. Lots of players see this as an opportunity to earn. Raja Haseeb, a PUBG player, known in E-sports world by his gamer ID &ldquo;Crypto&rdquo; earned $2.416.67 in a running year. Another gamer &ldquo;Blade&rdquo; earned $2,636.67.', '1726420394unnamed.png', '2024-08-12 17:13:14', 7, 18, 0),
(35, 'MDMS in Nepal | Mobile Device Management at NTA 2024 Update', 'Nepal Telecommunication Authority (NTA) claims to have implemented the full version of the mobile device management system (MDMS) in Nepal from Monday, Kartik 20, 2080 (November 06, 2023). As per them, the mobile device management has come into effect after a series of delays. Recently, CIAA (Akhtiyar) has started an investigation into the procurement and operation of MDMS which could again compromise its implementation. More on that and all below.\r\n\r\nWith MDMS, NTA has started to blacklist unregistered mobile handsets (grey phones) in Nepal which will block their access to any mobile network (network lock). The authority has started blacklisting unregistered mobile phones from Kartik 20, 2080 beginning with the high-end phones. For now, they have blacklisted 1500 iPhone 15 series phones that will not get any signal from Nepali telcos (Ntc, Ncell). However, you can still register your phone in NTA&rsquo;s MDMS system and save your phone from blacklisting so that you can continue using carrier-provided services. Let&rsquo;s find out all about MDMS in Nepal [2024 Update], registration, complete steps with pictures, costs for registration, and all in-depth.\r\n\r\n', '1726421130NTA-MDMS-768x422.jpg', '2024-09-15 17:25:30', 9, 19, 0),
(36, 'Annapurna Base Camp Trek - 13 Days', 'The Annapurna Base Camp Trek is a renowned adventure that captivates trekkers from around the world. Nestled at an altitude of 4,130 meters, the Annapurna base camp serves as a gateway to the towering magnificence of Mount Annapurna, the 10th highest peak globally at 8,091 meters. The ABC Trek promises an unforgettable experience, captivating trekkers as they embark on this iconic Himalayan adventure.\r\n\r\nAnnapurna Sanctuary  boasts awe-inspiring and unique settings, surrounded by majestic peaks such as Annapurna I (8,091 m), Annapurna South (7,219 m), Machapuchhre (6,993 m), and Hiunchuli (6,441 m). This trek is renowned for its remarkable altitude variation and diverse ecosystem, making it an extraordinary expedition.\r\n\r\nThe trail meanders through verdant forests adorned with rhododendrons, picturesque rice paddies, and terraced farmlands, providing unrivaled mountain vistas. Immerse yourself in the splendor of enormous mountains and gain insights into the rich tapestry of Nepalese life and culture.\r\n\r\nEmbarking on ABC trek will undoubtedly make you feel like you&rsquo;re embarking on one of the most extraordinary journeys in the world.\r\n\r\nHowever, the Annapurna Base Camp Trek is not solely about sightseeing. Along the way, you have the opportunity to immerse yourself in the local cultures and traditions of ethnic Gurungs, Magars, Thakalis, and Lobas.\r\n\r\nThese vibrant communities reside in charming villages nestled at the foothills of the Annapurna Himalayas. You&rsquo;ll encounter small Buddhist shrines, Gumbas, and experience the tranquility of their exotic traditions, as if you&rsquo;ve been transported to another time.\r\n\r\nTo commence your Annapurna Base Camp trek via Poonhill, you&rsquo;ll first journey from Kathmandu to Pokhara, where the trekking adventure begins. Setting off from Hile, the trail follows the Modi River and meanders through dense forests of rhododendrons and bamboo.\r\n\r\nAs you ascend, you&rsquo;ll notice the vegetation gradually thinning and the gorge narrowing to a mere few hundred meters wide upon reaching Hinku Cave.\r\n\r\nWhile trekking the Annapurna Sanctuary, your eyes will be treated to the breathtaking sight of steep, snow-clad ridges cascading from Hiunchuli on the left and Machapuchhare on the right. Passing through the &ldquo;gate&rdquo; and entering the Sanctuary, you&rsquo;ll find yourself immersed in a colossal amphitheater encircled by a solid wall of snow-capped peaks.\r\n\r\nThe Annapurna Base Camp Trek itinerary typically begins and ends in Pokhara, although it can also be tailored as part of the Annapurna Circuit, a longer and more comprehensive trekking experience.\r\n\r\nEmbarking on the ABC trek is a remarkable opportunity to challenge yourself physically, immerse yourself in natural beauty, and explore the diverse cultural tapestry of the region.\r\n\r\nWith its majestic peaks, unique ecosystems, and cultural encounters, this trek truly offers a once-in-a-lifetime adventure. Discover the wonders of the Annapurna region and create unforgettable memories on the Annapurna Base Camp Trek.\r\n\r\nShort Itinerary\r\nDay 01 :\r\nArrival at Tribhuvan International Airport in Kathmandu (1,400 m/4,593 ft) and transfer to hotel. Overnight at a hotel.\r\n\r\nDay 02 :\r\nDrive to Pokhara (900 m/2,953 ft) from Kathmandu in a Tourist Bus &ndash; 7 to 9 hours. Overnight at the hotel in Lakeside.\r\n\r\nDay 03 :\r\nDrive to Birethanti (1,039 m/3,409 ft) from Pokhara &ndash; 1 hour and Trek to Ulleri (2,020 m/6,627 ft) &ndash; 4 to 5 hours. Overnight at a guesthouse.\r\n\r\nDay 04 :\r\nTrek to Ghorepani (2,840 m/9,286 ft) from Ulleri &ndash; 5 to 6 hours. Overnight at a guesthouse.\r\n\r\nDay 05 :\r\nEarly morning hike up to Poon Hill (3,210 m/10,531 ft) &amp; back and then, Trek to Tadapani (2,610 m/8,563 ft) &ndash; 6 to 7 hours. Overnight at a guesthouse.\r\n\r\nDay 06 :\r\nTrek to Sinuwa (2,360 m/7,740 ft) from Tadapani &ndash; 6 to 7 hours. Overnight at a guesthouse.\r\n\r\nDay 07 :\r\nTrek to Deurali (3,230 m/10,597 ft) from Sinuwa &ndash; 6 to 7 hours. Overnight at a guesthouse.\r\n\r\nDay 08 :\r\nTrek to Annapurna Base Camp (4,130 m/13,550 ft) from Deurali &ndash; 5 to 6 hours. Overnight at a guesthouse.\r\n\r\nDay 09 :\r\nTrek to Bamboo (2,345 m/7,694 ft) from Annapurna Base Camp &ndash; 6 to 7 hours. Overnight at a guesthouse.\r\n\r\nDay 10 :\r\nTrek to Jhinu (1,780 m/5,839 ft) from Bamboo &ndash; 4 to 5 hours. Overnight at a guesthouse.\r\n\r\n\r\nDay 11 :\r\nTrek to Syauli Bazaar (1,170 m/3,839 ft) from Jhinu &ndash; 2 to 3 hours &amp; Drive back to Pokhara &ndash; 2 to 4 hours. Overnight at the hotel in Lakeside.\r\n\r\nDay 12 :\r\nDrive Back to Kathmandu (1,400 m/4,593 ft) from Pokhara in a Tourist Bus &ndash; 7 to 9 hours. Overnight at a hotel.\r\n\r\nDay 13 :\r\nTransfer to the International Airport for Your Final Departure.', '1726421439memories.jpg', '2024-09-15 17:30:39', 1, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(15, 'Sunil Kumar', 'Yadav', 'sunilkumaryadav', 'sunilyadav56470@gmail.com', '$2y$10$zSctu7NfAAALy9.wFmXF9eiUmEMmoqRXshdYrUOvqCV08plrbHjRO', '1726411927455815416_1243037826729980_1047642707994935403_n.jpg', 0),
(16, 'Pinkee', 'Yadav', 'pinkeeyadav', 'pinkeeyadav@gmail.com', '$2y$10$mHOpbsucWriq7uZ/lcX7vOcLiMnkioP6eZUYVF9h0BtCq9LUpfHPe', '1726419391Pinkee_2X2.jpg', 0),
(17, 'Sandhya', 'Jaishwal', 'sandhyajaishwal', 'sandhya@gmail.com', '$2y$10$S4jdFAyKbVCdmegEd19qhOtlPG6iLWcZcxkwlG3k0oT7DjRNhauc6', '1726419590278571599_514446110142183_7379831144894264557_n.jpg', 0),
(18, 'Sandesh ', 'Sah', 'sandeshsah', 'sandesh@gmail.com', '$2y$10$LBNfpaE1XDp8CWY/Mzqe9upEjxvuMW6wN/ScnEUdaUGWm7FYy1MnG', '1726419741440849760_2841187989364391_8045073511877219565_n.jpg', 0),
(19, 'Sagar Raj ', 'Sah', 'sagarrajsah', 'sagarrajsah@gmail.com', '$2y$10$CeIW2ta0AldinBxYeKvQduE5L.56fCWwZBaza4jDArke3.CuAbmwm', '1726421043image.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
