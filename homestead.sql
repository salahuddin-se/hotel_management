-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 06:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `date`, `venue`, `price`, `capacity`, `description`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Swimming Pool', 'mPmJ7qJp6tFaRvoMKqVcyCXkgl0T7wm1yelBJBM2.jpeg', '2024-02-11', 'Kuakata', 0, 1000, 'A swimming pool, swimming bath, wading pool ...', 1, '2024-02-11 05:37:47', '2024-02-11 05:37:47'),
(15, 'Gymnasium', 'i4HlidaI0ZvXW90kC1UDctkgrGN4qXzpov9YYo6M.jpeg', '2024-02-11', 'Kuakata', 0, 50, 'According to Healthline, exercise can actually help reduce...', 1, '2024-02-11 05:38:54', '2024-02-11 05:38:54'),
(16, 'Conference', '1pEqGtUM6Ip5OuNdpz2h1WUt6mzCJavv8Rchej7l.jpeg', '2024-02-11', 'Kuakata', 0, 50, 'A best center for conference and party...', 1, '2024-02-11 05:41:47', '2024-02-11 05:49:38'),
(17, 'Buffet Menu', 'fbZst5657FZ5LTjnI0AhITuLpTNRLEzp3g7zf85y.jpeg', '2024-02-11', 'Narayanganj', 100000, 1000, 'Savor a world of flavors, a luxurious multi-cuisine...', 1, '2024-02-11 05:47:33', '2024-02-11 05:48:26');

-- --------------------------------------------------------

--
-- Table structure for table `event_bookings`
--

CREATE TABLE `event_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `number_of_tickets` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `payment` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Air Conditioner', 'air_conditioner.png', 1, '2024-02-02 04:57:30', NULL),
(2, 'Bathtub', 'bathtub.png', 1, '2024-02-02 04:57:30', NULL),
(3, 'Breakfast', 'breakfast.png', 1, '2024-02-02 04:57:30', NULL),
(4, 'Computer', 'computer.png', 1, '2024-02-02 04:57:30', NULL),
(5, 'First Aid Kit', 'first_aid_kit.png', 1, '2024-02-02 04:57:30', NULL),
(6, 'Hair Dryer', 'hair_dryer.png', 1, '2024-02-02 04:57:30', NULL),
(7, 'Mini Bar', 'mini_bar.png', 1, '2024-02-02 04:57:30', NULL),
(8, 'Mini Cooler', 'mini_cooler.png', 1, '2024-02-02 04:57:30', NULL),
(9, 'Parking', 'parking.png', 1, '2024-02-02 04:57:30', NULL),
(10, 'Telephone', 'telephone.png', 1, '2024-02-02 04:57:30', NULL),
(11, 'Television', 'television.png', 1, '2024-02-02 04:57:30', NULL),
(12, 'Wifi', 'wifi.png', 1, '2024-02-02 04:57:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facility_room_type`
--

CREATE TABLE `facility_room_type` (
  `facility_id` int(10) UNSIGNED NOT NULL,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facility_room_type`
--

INSERT INTO `facility_room_type` (`facility_id`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-02-02 04:57:30', NULL),
(2, 1, '2024-02-02 04:57:30', NULL),
(3, 1, '2024-02-02 04:57:30', NULL),
(4, 1, '2024-02-02 04:57:30', NULL),
(5, 1, '2024-02-02 04:57:30', NULL),
(6, 1, '2024-02-02 04:57:30', NULL),
(7, 1, '2024-02-02 04:57:30', NULL),
(8, 1, '2024-02-02 04:57:30', NULL),
(9, 1, '2024-02-02 04:57:30', NULL),
(10, 1, '2024-02-02 04:57:30', NULL),
(11, 1, '2024-02-02 04:57:30', NULL),
(12, 1, '2024-02-02 04:57:30', NULL),
(1, 2, '2024-02-02 04:57:30', NULL),
(2, 2, '2024-02-02 04:57:30', NULL),
(3, 2, '2024-02-02 04:57:30', NULL),
(4, 2, '2024-02-02 04:57:30', NULL),
(5, 2, '2024-02-02 04:57:30', NULL),
(6, 2, '2024-02-02 04:57:30', NULL),
(7, 2, '2024-02-02 04:57:30', NULL),
(8, 2, '2024-02-02 04:57:30', NULL),
(9, 2, '2024-02-02 04:57:30', NULL),
(10, 2, '2024-02-02 04:57:30', NULL),
(1, 3, '2024-02-02 04:57:30', NULL),
(2, 3, '2024-02-02 04:57:30', NULL),
(3, 3, '2024-02-02 04:57:30', NULL),
(4, 3, '2024-02-02 04:57:30', NULL),
(9, 3, '2024-02-02 04:57:30', NULL),
(10, 3, '2024-02-02 04:57:30', NULL),
(12, 3, '2024-02-02 04:57:30', NULL),
(1, 4, '2024-02-02 04:57:30', NULL),
(2, 4, '2024-02-02 04:57:30', NULL),
(3, 4, '2024-02-02 04:57:30', NULL),
(4, 4, '2024-02-02 04:57:30', NULL),
(8, 4, '2024-02-02 04:57:30', NULL),
(2, 5, '2024-02-02 04:57:30', NULL),
(5, 5, '2024-02-02 04:57:30', NULL),
(7, 5, '2024-02-02 04:57:30', NULL),
(9, 5, '2024-02-02 04:57:30', NULL),
(8, 6, '2024-02-02 04:57:30', NULL),
(11, 6, '2024-02-02 04:57:30', NULL),
(12, 6, '2024-02-02 04:57:30', NULL),
(10, 4, '2024-02-02 04:57:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Appetizer','Soup','Salad','Main Course','Dessert') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `type`, `image`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Calamares', 'Appetizer', 'calamares.jpg', '630.00', 'Calamares is the Filipino version of the Mediterranean breaded fried squid dish, Calamari.', 1, '2024-02-02 04:57:30', NULL),
(3, 'Tinolang Manok', 'Soup', 'tinolang_manok.jpg', '530.00', 'Tinola in Tagalog or Visayan, is a soup-based dish served as an main dish in the Philippines.', 1, '2024-02-02 04:57:30', NULL),
(4, 'Chicken Sotanghon Soup', 'Soup', 'chicken_sotanghon_soup.jpg', '410.00', 'Chicken Sotanghon Soup is a soup made with bite-sized chicken, cellophane noodles and vegetables.', 1, '2024-02-02 04:57:30', NULL),
(5, 'Mixed Green Salad', 'Salad', 'mixed_green_salad.jpg', '370.00', 'Garlic, crushed red pepper flakes season the light vinaigrette that dresses this refreshing salad.', 1, '2024-02-02 04:57:30', NULL),
(6, 'Chef\'s Salad', 'Salad', 'chef_salad.jpg', '400.00', 'Chef salad is an American salad consisting of eggs, meat, chicken, tomatoes, cucumbers and cheese.', 1, '2024-02-02 04:57:30', NULL),
(7, 'Beefsteak Tagalog', 'Main Course', 'beefsteak_tagalog.jpg', '650.00', 'Beefsteak Tagalog is a dish of pieces of salted and peppered sirloin.', 1, '2024-02-02 04:57:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `food_id` int(10) UNSIGNED NOT NULL,
  `room_booking_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `cost` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `caption`, `is_primary`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'Bright Room', 1, 1, 1, '2024-02-02 04:57:30', NULL),
(2, '2.jpg', 'Out View', 0, 1, 1, '2024-02-02 04:57:30', NULL),
(3, '3.jpg', 'Swimming in the Dusk', 0, 1, 1, '2024-02-02 04:57:30', NULL),
(4, '4.jpg', 'A fine Winter', 1, 1, 2, '2024-02-02 04:57:30', NULL),
(5, '5.jpg', 'Minimal', 0, 1, 2, '2024-02-02 04:57:30', NULL),
(6, '6.jpg', 'Abstract', 0, 1, 2, '2024-02-02 04:57:30', NULL),
(7, '7.jpg', 'New Concept', 1, 1, 3, '2024-02-02 04:57:30', NULL),
(8, '8.jpg', 'New Concept', 0, 1, 3, '2024-02-02 04:57:30', NULL),
(9, '9.jpg', 'Best Concept', 0, 1, 3, '2024-02-02 04:57:30', NULL),
(10, '10.jpg', 'New thing', 1, 1, 4, '2024-02-02 04:57:30', NULL),
(11, '11.jpg', 'Room with cool aspects', 0, 1, 4, '2024-02-02 04:57:30', NULL),
(12, '12.jpg', 'Amazing Room', 0, 1, 4, '2024-02-02 04:57:30', NULL),
(13, '13.jpg', 'Room with ac', 1, 1, 5, '2024-02-02 04:57:30', NULL),
(14, '14.jpg', 'Cozy Room', 0, 1, 5, '2024-02-02 04:57:30', NULL),
(15, '15.jpg', 'Artful room', 0, 1, 5, '2024-02-02 04:57:30', NULL),
(16, '16.jpg', 'Sculpture Room', 1, 1, 6, '2024-02-02 04:57:30', NULL),
(17, '17.jpg', 'Bath Room', 0, 1, 6, '2024-02-02 04:57:30', NULL),
(18, '18.jpg', 'Cooler Room', 0, 1, 6, '2024-02-02 04:57:30', NULL),
(19, '19.jpg', 'Whats new', 0, 1, 2, '2024-02-02 04:57:30', NULL),
(20, '20.jpg', 'Summer Breeze', 0, 1, 2, '2024-02-02 04:57:30', NULL),
(21, '21.jpg', 'Autumn Breeze', 0, 1, 3, '2024-02-02 04:57:30', NULL),
(22, '22.jpg', 'New Breeze', 0, 1, 1, '2024-02-02 04:57:30', NULL),
(23, '23.jpg', 'Full Breeze', 0, 1, 1, '2024-02-02 04:57:30', NULL),
(24, '24.jpg', 'Coz Breeze', 0, 1, 1, '2024-02-02 04:57:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_29_024654_create_slider_table', 1),
(4, '2018_03_29_024713_create_facilities_table', 1),
(5, '2018_03_29_024753_create_room_types_table', 1),
(6, '2018_03_29_024939_create_facility_room_type_table', 1),
(7, '2018_03_29_025055_create_images_table', 1),
(8, '2018_03_29_025121_create_rooms_table', 1),
(9, '2018_03_29_025157_create_room_bookings_table', 1),
(10, '2018_03_29_025158_create_reviews_table', 1),
(11, '2018_03_29_031146_create_foods_table', 1),
(12, '2018_03_29_031207_create_food_orders_table', 1),
(13, '2018_04_07_022022_create_events_table', 1),
(14, '2018_04_08_025158_create_event_bookings_table', 1),
(15, '2018_05_06_035355_create_pages_table', 1),
(16, '2018_05_06_050318_create_subscribers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url_title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About', 'about', 'Our Hotel is best among all.', 1, '2024-02-02 04:57:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` enum('0','1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `approval_status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `room_booking_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rating`, `approval_status`, `room_booking_id`, `created_at`, `updated_at`) VALUES
(1, 'I have the best experience viewing that room.', '4', 'approved', 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(2, 'I like the environment of the hotel.', '2', 'pending', 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(3, 'My children enjoyed the view and ample play spaces in the hotel.', '3', 'approved', 3, '2024-02-02 04:57:31', '2024-02-02 04:57:31'),
(4, 'This is my second time and I like the hotel.', '3', 'approved', 5, '2024-02-02 04:57:31', '2024-02-02 04:57:31'),
(5, 'I would never come back in this hotel.', '0', 'rejected', 6, '2024-02-02 04:57:31', '2024-02-02 04:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_number` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `room_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `description`, `available`, `status`, `room_type_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hic quidem in magnam atque. Neque nihil dolorem dolor aliquam consectetur. In quibusdam velit reprehenderit aspernatur recusandae nihil. Et suscipit animi doloremque ab omnis ab.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(2, '2', 'Animi quae quia dicta a sapiente eligendi. Dolor dignissimos numquam aut tempore architecto aut omnis. Voluptate et quam doloribus fugiat ducimus incidunt et nemo.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(3, '3', 'Porro eos eius non veniam praesentium. Inventore id possimus dicta molestiae. Quia ex ipsa et doloremque placeat.', 1, 1, 3, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(4, '4', 'Cupiditate minus fuga deleniti ea ut. Et exercitationem vel consequuntur tempore maxime eveniet corrupti. Earum adipisci quia voluptates.', 1, 1, 6, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(5, '5', 'Omnis quia est natus impedit et beatae fugit. Aut qui error non fuga unde voluptatem enim. Omnis doloribus sed fugit minima consectetur.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(6, '6', 'Ut autem reiciendis totam ipsa omnis rerum. Qui nobis voluptatem totam libero commodi eum maxime. Autem voluptatem ut voluptatem voluptatum. Exercitationem amet inventore vitae atque.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(7, '7', 'Et quis totam dignissimos. Corporis corporis quia neque corrupti et. Modi rem reprehenderit harum.', 1, 1, 4, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(8, '8', 'Voluptas fuga et esse maxime. Sapiente ea occaecati harum id aut vel saepe. In cumque quas nam nostrum dolor iure.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(9, '9', 'Nihil et itaque repudiandae ut placeat reprehenderit ex. Repellat rerum quod sed. Eos est et maiores dolor atque.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(10, '10', 'Unde est omnis inventore in enim. Omnis et quia eaque quia quae perferendis velit sit. Dolore voluptates maxime dolor expedita consequuntur molestiae iure dolorem.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(11, '11', 'Sapiente ipsa eius voluptatem vel ut qui. Est accusamus et ad id sunt libero voluptatibus. Magnam eveniet et quia non molestiae.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(12, '12', 'Omnis nisi ut iure itaque. Tenetur et qui ut non itaque eaque sint impedit. Cupiditate voluptate doloribus qui. Eius maiores id molestiae.', 1, 1, 3, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(13, '13', 'Commodi quaerat ut rerum nesciunt id aut. Sunt libero accusantium laboriosam fugiat tenetur. Illo sit et in dicta quas. Facilis consectetur excepturi tempora autem eligendi.', 1, 1, 3, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(14, '14', 'Similique natus accusantium consequuntur nobis reprehenderit. Pariatur sit similique eum nam porro sequi possimus ea. Alias voluptas aut officia at.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(15, '15', 'Facere reprehenderit non error animi. Ullam dolor qui assumenda debitis enim deleniti est. Doloremque ut voluptas minima nisi assumenda quam eaque ex.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(16, '16', 'Ea quam maiores qui dolores. Illum nesciunt omnis aut. Cumque aliquid beatae labore repudiandae error et praesentium. Illum non doloribus fugiat et.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(17, '17', 'Et aliquid officiis numquam quas tempora saepe. Aut quis omnis illum doloribus. Quaerat rerum odio et ratione deserunt provident. Sint cupiditate ut quibusdam quaerat necessitatibus.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(18, '18', 'Ea est ut enim aliquam provident vel minus. Ea ut rerum pariatur quis quaerat totam. Culpa voluptas maxime ut voluptatum laboriosam.', 1, 1, 4, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(19, '19', 'Ut vitae harum sed odit eos aut non aut. Mollitia laudantium rerum dolorum accusamus blanditiis consectetur. Qui officiis nihil illum quod aliquam.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(20, '20', 'Aliquid aliquam a totam ullam maxime. Aspernatur itaque ut velit impedit quia esse laudantium. Neque amet ea non.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(21, '21', 'Est impedit eligendi quia quia in dolor sequi. In ut aliquid consequatur dolorem quis. Blanditiis laudantium rem sed impedit et quibusdam fugit.', 1, 1, 2, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(22, '22', 'Et quia consectetur excepturi cupiditate qui voluptatem. Repudiandae consectetur aperiam porro ut maxime incidunt. Corporis saepe est quaerat ducimus. Distinctio minima quasi ipsam.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(23, '23', 'Saepe amet rerum quia non quibusdam recusandae atque et. Hic rerum fuga consequatur dolorem. Inventore perferendis unde sunt ut consequatur. Adipisci sapiente quibusdam quia fugiat non.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(24, '24', 'Ab odio esse quidem optio expedita in temporibus. Et est voluptas maiores natus quod dolorum. Iste odit quia commodi molestiae commodi quis.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(25, '25', 'Est consequatur omnis perferendis perferendis. Laudantium fugiat quo et sequi natus laudantium animi.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(26, '26', 'Et numquam quia non consequatur magni. Quia est iusto totam quisquam aut soluta beatae dolores. Excepturi sit dolor qui. Sit facilis et molestiae nihil at quo perferendis eum.', 1, 1, 3, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(27, '27', 'Quibusdam quia magnam quo. Expedita architecto est quo nulla et. Voluptatem numquam architecto omnis ipsa inventore recusandae qui facilis. Et rem quae quia tenetur enim nostrum excepturi.', 1, 1, 6, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(28, '28', 'Veniam atque eum explicabo iste eos. Ut cupiditate esse explicabo non officia explicabo. Consequatur aut sapiente cumque repudiandae non ea. Est commodi illo sed enim.', 1, 1, 6, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(29, '29', 'Velit maiores aliquid ea voluptates ut. Voluptatem est et ut voluptas sint inventore. Quasi aut recusandae deleniti magni aspernatur atque eos. Eum quaerat voluptatibus qui provident omnis voluptate.', 1, 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(30, '30', 'Excepturi provident est nisi similique doloribus soluta quis. Maiores nisi sed nulla. At et enim voluptatem. Modi nemo doloribus in quo harum voluptas facere.', 1, 1, 5, '2024-02-02 04:57:30', '2024-02-02 04:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `room_bookings`
--

CREATE TABLE `room_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date DEFAULT NULL,
  `room_cost` int(11) NOT NULL,
  `status` enum('pending','checked_in','checked_out','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_bookings`
--

INSERT INTO `room_bookings` (`id`, `room_id`, `user_id`, `arrival_date`, `departure_date`, `room_cost`, `status`, `payment`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2018-04-18', '2018-04-19', 25000, 'checked_out', 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(2, 2, 2, '2018-04-20', '2018-04-25', 125000, 'checked_out', 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(3, 2, 3, '2018-04-20', '2018-04-25', 125000, 'checked_out', 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(4, 2, 4, '2018-05-15', '2018-05-20', 25000, 'pending', 0, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(5, 3, 2, '2018-05-10', '2018-04-20', 50000, 'checked_in', 0, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(6, 4, 3, '2018-05-10', '2018-05-10', 20000, 'cancelled', 0, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(7, 2, 12, '2024-02-02', '2024-02-05', 60410, 'pending', 0, '2024-02-02 05:00:06', '2024-02-02 05:00:06'),
(8, 3, 12, '2024-02-19', '2024-02-26', 121814, 'pending', 0, '2024-02-03 05:18:15', '2024-02-03 05:18:15'),
(9, 12, 12, '2024-02-19', '2024-02-26', 121814, 'pending', 0, '2024-02-03 05:18:50', '2024-02-03 05:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_day` int(11) NOT NULL,
  `discount_percentage` int(11) NOT NULL DEFAULT 0,
  `size` int(11) DEFAULT NULL,
  `max_adult` int(11) DEFAULT 0,
  `max_child` int(11) DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_service` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `cost_per_day`, `discount_percentage`, `size`, `max_adult`, `max_child`, `description`, `room_service`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master Suite', 25000, 5, 3000, 10, 5, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(2, 'Mini Suite', 18000, 10, 2000, 8, 4, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(3, 'Ultra Deluxe', 14000, 0, 1400, 5, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 1, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(4, 'Luxury Room', 9000, 0, 800, 4, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(5, 'Premium Room', 6000, 0, 500, 3, 2, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(6, 'Normal Room', 3000, 0, 300, 2, 1, 'Maecenas erat lorem, vulputate sed ex at, vehicula dignissim risus. Nullam non nisi congue elit cursus tempus. Nunc vel ante nec libero semper maximus. Donec cursus sed massa eget commodo. Phasellus semper neque id iaculis malesuada. Nulla efficitur dui vitae orci blandit tempor. Mauris sed venenatis nibh, sed sodales risus.\r\n\r\nNam sit amet tortor in elit fermentum consectetur et sit amet eros. Sed varius velit at eros tempor sodales. Fusce at enim at lectus sollicitudin pharetra at in risus. Donec ut semper turpis. Maecenas lobortis ante ut eros scelerisque, at semper augue ullamcorper.', 0, 1, '2024-02-02 04:57:30', '2024-02-02 04:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_text` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `small_title`, `big_title`, `description`, `link`, `link_text`, `status`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 'One Experience the hotel', 'Hotel Kuakata Inn', 'One Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/1', 'Book Now', 1, '2024-02-02 04:57:30', '2024-02-04 00:25:13'),
(2, '2.jpg', 'Two Experience the hotel', 'Hotel Kuakata Inn', 'Two Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/2', 'Book Now', 1, '2024-02-02 04:57:30', '2024-02-04 00:25:27'),
(3, '3.jpg', 'Three Experience the hotel', 'Hotel Kuakata Inn', 'Three Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/3', 'Book Now', 1, '2024-02-02 04:57:30', '2024-02-04 00:25:43'),
(4, '4.jpg', 'Four Experience the hotel', 'Hotel Kuakata Inn', 'Four Mauris non placerat nulla. Sed vestibulum quam mauris, et malesuada tortor venenatis sem porta est consectetur posuere. Praesent nisi velit, porttitor ut imperdiet a, pellentesque id mi.', 'room_type/4', 'Book Now', 1, '2024-02-02 04:57:30', '2024-02-04 00:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone`, `address`, `email`, `password`, `avatar`, `about`, `facebook_id`, `twitter_id`, `google_id`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Geeta', 'sharma', 'female', '9866893439', 'Kathmandu', 'gita3459@gmail.com', '$2y$10$VQBLchO92KBvWYDzdwKLV.SWisy.eDvl6QOly6VYKzjyP/V.Wi7qq', 'girl-1.png', 'hello from the other world', NULL, NULL, NULL, 'admin', 1, '0sQTMUmwGm', '2024-02-02 04:57:29', NULL),
(2, 'Jena', 'Torphy', 'female', '0076438910', '736 Fiona Village Apt. 682\nConnmouth, NM 55557', 'felicita.nicolas@example.com', '$2y$10$GqGwnvr5wC1J3ITgjiUKzuIfYePo8nfJYwHFwvD4sw/3CPmoxkJRO', 'girl.png', 'Minus veniam qui fugit voluptatem. Sequi quia vel tempora magni quidem. Aliquam non rem dignissimos quas. Excepturi illo nobis nostrum error. Et praesentium vel molestiae aliquid.', NULL, NULL, NULL, 'user', 1, 'vddmj8NUTd', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(3, 'Lucius', 'Adams', 'female', '2163548066', '3124 Jacobs Bridge Suite 809\nNew Rowena, NV 07193-9098', 'wdubuque@example.com', '$2y$10$sfVmZIjr0JHcQySWheO1W.QDkcrA/z7rYzujdHXrrQZRnrcBz7TiG', 'girl.png', 'Quasi eligendi necessitatibus odio facere. Doloremque qui commodi unde et. Id a rem quis sequi earum laboriosam. Aperiam qui natus possimus possimus ex cupiditate.', NULL, NULL, NULL, 'user', 1, 'VnCHI8dsNE', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(4, 'Aurelie', 'Hudson', 'others', '5240074941', '1809 Bethel Pine\nLake Yvonneton, MN 68540', 'feest.trent@example.net', '$2y$10$YPc50WE7RwTW4/JSEwxvWeYpm8rlOCmyW49sHdyIvoV65rzCmPL5O', 'man-2.png', 'Laboriosam sunt molestiae fugit dolore. Nobis cum sit modi ut veniam commodi et. Optio quisquam commodi voluptatum eius sint qui.', NULL, NULL, NULL, 'user', 1, '9bBrOYqSWL', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(5, 'Morton', 'Wiegand', 'female', '792175449X', '19642 Annabelle Dam\nShaniyafort, NE 76505', 'frami.jess@example.org', '$2y$10$3i4GKXd61Rri3pi40mYadulDaQ5f4ILjSci3QbWJxrdLhBMaT1Wva', 'girl.png', 'Aperiam laborum et unde et consectetur est. Consequatur omnis iste at quae est voluptatem. Dolores maiores accusamus ipsum asperiores qui illo est.', NULL, NULL, NULL, 'user', 1, 'DoCe0xfRJ9', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(6, 'Laverne', 'Conn', 'others', '0646027123', '74705 Abigail Street Suite 748\nLake Wilbert, WA 70025-4416', 'dibbert.ottis@example.org', '$2y$10$ARQPmMtCNljo8xNeFa7KZuswq7uCVk3KEjoOtI2WvrCA9wous.ScG', 'man.png', 'Voluptate itaque et voluptatem reiciendis. Ratione quam magnam reprehenderit porro eveniet nisi eum. Eum laborum quis necessitatibus. Officia aut nostrum eius et iure.', NULL, NULL, NULL, 'user', 1, 'lhRRumt1uQ', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(7, 'Bernard', 'Wilkinson', 'others', '048790916X', '4321 Shea Extension Apt. 662\nNew Rosellaside, OR 22748', 'cklocko@example.com', '$2y$10$UIC3P3Noaqjr6s6STPYseea1VLzes9gqiajAf13/m0KV8LDQeIA.q', 'man-1.png', 'Quod neque aut velit deleniti corrupti. Unde maxime quam aut eum qui qui nesciunt. Assumenda quis tenetur ab sed. Qui eius dolores est at vitae cum aut.', NULL, NULL, NULL, 'user', 1, '2sytJUwDrF', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(8, 'Francesco', 'Lemke', 'others', '5849239022', '640 Brandi Haven\nPort Freedaland, CT 89287', 'katlynn76@example.com', '$2y$10$pH0pNqv.r6vgFeXP.1aOqOLAw0cz5lW8ljYHxE4sLdzQjkP51e15q', 'man-1.png', 'Quibusdam iste soluta odit sit voluptate. Aspernatur et mollitia qui neque. Consequatur voluptas amet corrupti dolorem est voluptatem.', NULL, NULL, NULL, 'user', 1, 'XYIhTHqpO5', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(9, 'Meta', 'Altenwerth', 'female', '6768140396', '6730 Olga Club Suite 301\nPort Florenceborough, IN 49713-9639', 'odaugherty@example.com', '$2y$10$Nw128uwSXOkMYmGAE8NY9OswU60AAyb2oyrwzZVc.xsUFlFKo8Mf2', 'girl.png', 'Amet et omnis doloremque eligendi. Inventore eum ut illo at qui.', NULL, NULL, NULL, 'user', 1, 'q8NkQa39FA', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(10, 'Sigurd', 'White', 'male', '3822492841', '257 Mikel Motorway Apt. 461\nCieloport, NC 18865-5440', 'cronin.maxine@example.net', '$2y$10$88xIB3bcXKQMKd/11GozDOTck0FdrPFeVMica64Xo568w8KdywtvK', 'man-2.png', 'Tenetur dignissimos veniam quis labore ut commodi tenetur quod. Ullam eum reprehenderit aliquid voluptate. Asperiores recusandae cumque non recusandae incidunt. Dolor ipsam consequatur distinctio.', NULL, NULL, NULL, 'user', 1, 'rUb5qoB7qp', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(11, 'Harley', 'Schroeder', 'male', '5619804224', '9257 Norval Cliffs Suite 877\nDanielville, MD 78292', 'dkeebler@example.org', '$2y$10$KO0eTo9KYvA2oeO.pUeQFe9EhqhM8OclgZKaJ3enR5.R5C/oKMfI6', 'man.png', 'Odit sed qui porro placeat cum facere vel qui. Aspernatur sint esse facilis voluptatum id consequatur. Temporibus veniam recusandae aut eaque nostrum consequatur aut.', NULL, NULL, NULL, 'user', 1, 'gvGXzYC4ey', '2024-02-02 04:57:30', '2024-02-02 04:57:30'),
(12, 'Sallhauddin', 'Ahamed', 'male', NULL, NULL, 'sallha@mail.com', '$2y$10$qgorz8UiiObB5xqKShnod.KZC6yyCuavjWN6oD7c5aMFrJHX5QOHy', 'man-3.png', NULL, NULL, NULL, NULL, 'admin', 1, 'n6toFL8B3IHFiqLUTZLGF363mP5sahMmxalwcUMu8tVLYlmakVXWmtCJIGAE', '2024-02-02 04:59:27', '2024-02-02 04:59:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_name_unique` (`name`);

--
-- Indexes for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_bookings_user_id_index` (`user_id`),
  ADD KEY `event_bookings_event_id_index` (`event_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facilities_name_unique` (`name`);

--
-- Indexes for table `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD KEY `facility_room_type_facility_id_index` (`facility_id`),
  ADD KEY `facility_room_type_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD KEY `food_orders_food_id_index` (`food_id`),
  ADD KEY `food_orders_room_booking_id_index` (`room_booking_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_room_booking_id_index` (`room_booking_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rooms_room_number_unique` (`room_number`),
  ADD KEY `rooms_room_type_id_index` (`room_type_id`);

--
-- Indexes for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_bookings_room_id_index` (`room_id`),
  ADD KEY `room_bookings_user_id_index` (`user_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room_types_name_unique` (`name`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_twitter_id_unique` (`twitter_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event_bookings`
--
ALTER TABLE `event_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_bookings`
--
ALTER TABLE `event_bookings`
  ADD CONSTRAINT `event_bookings_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `facility_room_type`
--
ALTER TABLE `facility_room_type`
  ADD CONSTRAINT `facility_room_type_facility_id_foreign` FOREIGN KEY (`facility_id`) REFERENCES `facilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facility_room_type_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_room_booking_id_foreign` FOREIGN KEY (`room_booking_id`) REFERENCES `room_bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD CONSTRAINT `room_bookings_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
