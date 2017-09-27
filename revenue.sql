-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2017 at 09:41 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `revenue`
--

-- --------------------------------------------------------

--
-- Table structure for table `rev_admin`
--

CREATE TABLE `rev_admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_admin`
--

INSERT INTO `rev_admin` (`id`, `first_name`, `last_name`, `username`, `password`, `email_id`, `status`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@profitandloss.io', 1, '2017-05-11 06:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `rev_facebook_ads_campain`
--

CREATE TABLE `rev_facebook_ads_campain` (
  `id` int(11) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `cam_name` varchar(255) NOT NULL,
  `campaign_id` varchar(255) NOT NULL,
  `budget_remaining` varchar(255) NOT NULL,
  `daily_budget` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ads_id` varchar(255) NOT NULL,
  `ads_name` varchar(255) NOT NULL,
  `ads_status` varchar(255) NOT NULL,
  `adset_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fb_account_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adset_id` varchar(255) NOT NULL,
  `clicks` varchar(255) NOT NULL,
  `cpc` varchar(255) NOT NULL,
  `cpm` varchar(255) NOT NULL,
  `cpp` varchar(255) NOT NULL,
  `ctr` varchar(255) NOT NULL,
  `impressions` varchar(255) NOT NULL,
  `cost_per_inline_link_click` varchar(255) NOT NULL,
  `cost_per_inline_post_engagement` varchar(255) NOT NULL,
  `cost_per_unique_click` varchar(255) NOT NULL,
  `cost_per_unique_inline_link_click` varchar(255) NOT NULL,
  `date_start` varchar(255) NOT NULL,
  `date_stop` varchar(255) NOT NULL,
  `created_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `optimization_goal` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_facebook_ads_campain`
--

INSERT INTO `rev_facebook_ads_campain` (`id`, `account_id`, `cam_name`, `campaign_id`, `budget_remaining`, `daily_budget`, `start_time`, `status`, `ads_id`, `ads_name`, `ads_status`, `adset_name`, `user_id`, `fb_account_id`, `created_at`, `adset_id`, `clicks`, `cpc`, `cpm`, `cpp`, `ctr`, `impressions`, `cost_per_inline_link_click`, `cost_per_inline_post_engagement`, `cost_per_unique_click`, `cost_per_unique_inline_link_click`, `date_start`, `date_stop`, `created_time`, `end_time`, `optimization_goal`) VALUES
(13, '25669894', 'Guitar-Kit-Conversion', '6064692304667', '500', '500', '', 'PAUSED', '6064692307067', 'All Day Free Shippiing - Conversions', '', '', 1, 6, '2017-05-30 17:09:22', '', '24', '1.07375', '13.081218', '13.62771', '1.218274', '1970', '12.885', '1.0308', '1.227143', '12.885', '2017-05-01', '2017-05-30', '2017-04-29T04:40:26-0700', '', 'OFFSITE_CONVERSIONS'),
(14, '25669894', 'US - 18+', '6064310167067', '500', '500', '', 'PAUSED', '6064310170867', 'Pugs Factory - Conversions', '', '', 1, 6, '2017-05-30 17:09:22', '', '30', '0.820667', '12.116142', '13.151709', '1.476378', '2032', '24.62', '0.794194', '0.879286', '24.62', '2017-05-01', '2017-05-30', '2017-04-20T15:57:01-0700', '', 'OFFSITE_CONVERSIONS'),
(15, '25669894', 'US - 18-64', '6063611180667', '500', '500', '', 'PAUSED', '6063611184867', 'Post: "" - Engagement', '', '', 1, 6, '2017-05-30 17:09:22', '', '66', '0.38697', '4.357618', '4.5599', '1.126088', '5861', '0', '0.370145', '0.399063', '0', '2017-05-01', '2017-05-30', '2017-04-09T20:28:27-0700', '', 'POST_ENGAGEMENT'),
(2150, '25669894', 'US - 18+', '6065441350667', '500', '500', '', 'PAUSED', '6065441355267', 'Default name - Conversions', '', '', 1, 6, '2017-06-26 06:00:02', '', '0', '0', '16', '16', '0', '15', '0', '0', '0', '0', '2017-05-27', '2017-06-25', '2017-05-15T14:18:49-0700', '', 'OFFSITE_CONVERSIONS'),
(2151, '25669894', 'US - W - 21-30', '6065436680467', '500', '500', '', 'PAUSED', '6065436683867', 'Baby-Bath - Conversions', '', '', 1, 6, '2017-06-26 06:00:03', '', '0', '0', '14.166667', '14.166667', '0', '12', '0', '0', '0', '0', '2017-05-27', '2017-06-25', '2017-05-15T12:08:14-0700', '', 'OFFSITE_CONVERSIONS'),
(2152, '25669894', 'US - 18+', '6065395190267', '500', '500', '', 'PAUSED', '6065395194067', 'Post: "" - Engagement', '', '', 1, 6, '2017-06-26 06:00:03', '', '0', '0', '4.571429', '4.571429', '0', '70', '0', '0', '0', '0', '2017-05-27', '2017-06-25', '2017-05-14T12:12:47-0700', '', 'POST_ENGAGEMENT'),
(3939, '25669894', 'Kit Ad Set - 3', '6066594778467', '1159', '0', '', 'ACTIVE', '6066594792867', 'Kit Ad - 3', '', '', 1, 6, '2017-07-10 06:00:02', '', '5', '0.654', '15.49763', '15.797101', '2.369668', '211', '0.654', '0.654', '0.8175', '0.8175', '2017-06-10', '2017-07-09', '2017-06-09T13:10:54-0700', '', 'LINK_CLICKS'),
(3940, '25669894', 'Kit Ad Set - 2', '6066578871667', '403', '0', '', 'ACTIVE', '6066578885867', 'Kit Ad - 2', '', '', 1, 6, '2017-07-10 06:00:02', '', '6', '0.385', '9.956897', '12.833333', '2.586207', '232', '1.155', '0.256667', '0.385', '1.155', '2017-06-10', '2017-07-09', '2017-06-09T06:47:29-0700', '', 'LINK_CLICKS'),
(3941, '25669894', 'SPINNER-ENGAGEMENT', '6066502240467', '500', '500', '', 'ACTIVE', '6066502255667', 'SPINNERS- Engagement', '', '', 1, 6, '2017-07-10 06:00:02', '', '445', '0.004876', '0.296772', '0.300304', '6.085886', '7312', '0.03807', '0.004687', '0.005319', '0.03807', '2017-06-10', '2017-07-09', '2017-06-07T19:12:07-0700', '', 'POST_ENGAGEMENT'),
(3821, '25669894', 'Hot-Kev-Lar-Engagement', '6066217393867', '500', '500', '', 'ACTIVE', '6066217403067', 'Post: "" - Engagement', '', '', 1, 6, '2017-07-09 06:00:02', '', '121', '0.017438', '0.189714', '0.192466', '1.087934', '11122', '0.5275', '0.023444', '0.01819', '0.5275', '2017-06-09', '2017-07-08', '2017-06-01T11:50:32-0700', '', 'POST_ENGAGEMENT'),
(5047, '25669894', 'PNL-Conversion-1', '6066165428667', '3000', '3000', '', 'ACTIVE', '6066165437467', 'PNL- Conversions-1', '', '', 1, 6, '2017-07-25 06:00:02', '', '0', '0', '56.666667', '56.666667', '0', '18', '0', '0', '0', '0', '2017-06-25', '2017-07-24', '2017-05-31T12:25:21-0700', '', 'OFFSITE_CONVERSIONS'),
(5152, '25669894', 'Kit Ad Set - 3', '6067677332267', '0', '0', '', 'ACTIVE', '6067677337267', 'Kit Ad - 3', '', '', 1, 6, '2017-07-26 17:00:02', '', '100', '0.1', '4.2123', '5.668934', '4.2123', '2374', '0.125', '0.117647', '0.11236', '0.133333', '2017-06-27', '2017-07-26', '2017-07-04T08:22:35-0700', '', 'LINK_CLICKS'),
(5151, '25669894', 'KODI-Engagement', '6068600009267', '400', '600', '', 'ACTIVE', '6068600018067', 'KODI- Engagement', '', '', 1, 6, '2017-07-26 17:00:02', '', '798', '0.080226', '0.533633', '0.624896', '0.665166', '119970', '0.333438', '0.10066', '0.082606', '0.333438', '2017-06-27', '2017-07-26', '2017-07-15T18:38:28-0700', '', 'POST_ENGAGEMENT'),
(5150, '25669894', 'Kit Ad Set - 4', '6068653197667', '0', '0', '', 'ACTIVE', '6068653201867', 'Kit Ad - 4', '', '', 1, 6, '2017-07-26 17:00:02', '', '84', '0.119048', '5.324814', '7.501875', '4.472843', '1878', '0.140845', '0.135135', '0.140845', '0.163934', '2017-06-27', '2017-07-26', '2017-07-17T06:17:06-0700', '', 'LINK_CLICKS');

-- --------------------------------------------------------

--
-- Table structure for table `rev_facebook_info`
--

CREATE TABLE `rev_facebook_info` (
  `id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ads_act` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_facebook_info`
--

INSERT INTO `rev_facebook_info` (`id`, `app_id`, `app_secret`, `user_id`, `ads_act`, `created_at`) VALUES
(6, '', '', 1, '25669894', '2017-04-23 13:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `rev_feedback_betaform`
--

CREATE TABLE `rev_feedback_betaform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rev_miscellaneous`
--

CREATE TABLE `rev_miscellaneous` (
  `id` int(11) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_miscellaneous`
--

INSERT INTO `rev_miscellaneous` (`id`, `datetime`, `title`, `cost`, `desc`, `user_id`) VALUES
(7, '2017-08-21T04:00:00.000Z', 'developer', '500', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rev_orders`
--

CREATE TABLE `rev_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `subtotal_price` varchar(255) DEFAULT NULL,
  `total_weight` varchar(255) DEFAULT NULL,
  `total_tax` varchar(255) DEFAULT NULL,
  `taxes_included` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `financial_status` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT NULL,
  `total_discounts` varchar(255) DEFAULT NULL,
  `total_line_items_price` varchar(255) DEFAULT NULL,
  `cart_token` varchar(255) DEFAULT NULL,
  `buyer_accepts_marketing` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `referring_site` varchar(255) DEFAULT NULL,
  `landing_site` varchar(255) DEFAULT NULL,
  `cancelled_at` varchar(255) DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL,
  `total_price_usd` varchar(255) DEFAULT NULL,
  `checkout_token` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `payment_gateway_names` varchar(255) DEFAULT NULL,
  `processing_method` varchar(255) DEFAULT NULL,
  `checkout_id` varchar(255) DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `fulfillment_status` varchar(255) DEFAULT NULL,
  `fulfillments_id` varchar(255) DEFAULT NULL,
  `fulfillments_created_at` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `line_items_id` varchar(255) DEFAULT NULL,
  `line_items_variant_id` varchar(255) DEFAULT NULL,
  `line_items_title` varchar(255) DEFAULT NULL,
  `line_items_quantity` varchar(255) DEFAULT NULL,
  `line_items_price` varchar(255) DEFAULT NULL,
  `line_items_sku` varchar(255) DEFAULT NULL,
  `line_items_variant_title` varchar(255) DEFAULT NULL,
  `line_items_vendor` varchar(255) DEFAULT NULL,
  `line_items_fulfillment_service` varchar(255) DEFAULT NULL,
  `line_items_product_id` varchar(255) DEFAULT NULL,
  `line_items_requires_shipping` varchar(255) DEFAULT NULL,
  `line_items_taxable` varchar(255) DEFAULT NULL,
  `line_items_gift_card` varchar(255) DEFAULT NULL,
  `line_items_name` varchar(255) DEFAULT NULL,
  `line_items_variant_inventory_management` varchar(255) DEFAULT NULL,
  `line_items_tax_lines` varchar(255) DEFAULT NULL,
  `shipping_lines` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sh_first_name` varchar(255) NOT NULL,
  `sh_last_name` varchar(255) NOT NULL,
  `sh_city` varchar(255) NOT NULL,
  `sh_zip` varchar(255) NOT NULL,
  `sh_province` varchar(255) NOT NULL,
  `sh_country` varchar(255) NOT NULL,
  `sh_country_code` varchar(255) NOT NULL,
  `sh_province_code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_orders`
--

INSERT INTO `rev_orders` (`id`, `order_id`, `email`, `created_at`, `updated_at`, `number`, `note`, `token`, `gateway`, `test`, `total_price`, `subtotal_price`, `total_weight`, `total_tax`, `taxes_included`, `currency`, `financial_status`, `confirmed`, `total_discounts`, `total_line_items_price`, `cart_token`, `buyer_accepts_marketing`, `name`, `referring_site`, `landing_site`, `cancelled_at`, `cancel_reason`, `total_price_usd`, `checkout_token`, `reference`, `payment_gateway_names`, `processing_method`, `checkout_id`, `source_name`, `fulfillment_status`, `fulfillments_id`, `fulfillments_created_at`, `contact_email`, `line_items_id`, `line_items_variant_id`, `line_items_title`, `line_items_quantity`, `line_items_price`, `line_items_sku`, `line_items_variant_title`, `line_items_vendor`, `line_items_fulfillment_service`, `line_items_product_id`, `line_items_requires_shipping`, `line_items_taxable`, `line_items_gift_card`, `line_items_name`, `line_items_variant_inventory_management`, `line_items_tax_lines`, `shipping_lines`, `user_id`, `store_id`, `sh_first_name`, `sh_last_name`, `sh_city`, `sh_zip`, `sh_province`, `sh_country`, `sh_country_code`, `sh_province_code`) VALUES
(26650, '4589638537', 'dianadoup@gmail.com', '2017-03-07T09:36:49-05:00', '2017-03-24T17:35:39-04:00', '6', NULL, '938408dcb96063d73780569dadbcca44', 'shopify_payments', NULL, '18.00', '18.00', '0', '0.00', '0', 'USD', 'paid', '1', '1.99', '19.99', '9bb3f32cb2e0f4fc79ef072fd9b9ce6b', '1', '#1006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4052372745', '2017-03-07T19:03:25-05:00', 'dianadoup@gmail.com', '8925934921', '31459840137', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-apricot', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - apricot', NULL, '[]', '[{"id":3813572425,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Diana', 'Doup', 'Mount Vernon', '43050', 'Ohio', 'United States', 'US', 'OH'),
(26649, '4591554633', 'msnina0053@gmail.com', '2017-03-07T22:51:40-05:00', '2017-03-13T12:15:10-04:00', '7', NULL, 'e2a1584b8ca6929683dbf05f1bdd5762', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'partially_refunded', '1', '0.00', '19.99', '247c68663f1b81879eddf38a1ce0c13e', '1', '#1007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4057689865', '2017-03-09T18:04:29-05:00', 'msnina0053@gmail.com', '8929417673', '31459840137', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-apricot', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - apricot', NULL, '[]', '[{"id":3814878281,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Nina', 'Herzner ', 'Cincinnati', '45230', 'Ohio', 'United States', 'US', 'OH'),
(26648, '4612147273', 'jpiper0718@hotmail.com', '2017-03-15T16:03:29-04:00', '2017-03-17T01:50:39-04:00', '8', NULL, '95b5ed5d64879eaf75b898e1e509a46d', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '6dcc0e78a9fac68963487a2ac7c22b7b', '1', '#1008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4076856073', '2017-03-17T01:50:16-04:00', 'jpiper0718@hotmail.com', '8969034569', '32257079753', 'Personalized charming Fashion jewelry Silver plated Black and White crystal rhinestone Dog Paw', '1', '19.99', '115468-14k-gold-plated', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Personalized charming Fashion jewelry Silver plated Black and White crystal rhinestone Dog Paw - 14K Gold Plated', NULL, '[]', '[{"id":3830405641,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Joan ', 'Piper', 'payson', '85541', 'Arizona', 'United States', 'US', 'AZ'),
(26647, '4615106185', 'marthajo.miller@yahoo.com', '2017-03-16T13:15:06-04:00', '2017-03-18T18:19:39-04:00', '9', NULL, 'e8a0aa4cfd99f008edec46299672ace9', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '113ffd16d8a489670563a34244ba9f77', '1', '#1009', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4080611721', '2017-03-18T18:19:39-04:00', 'marthajo.miller@yahoo.com', '8975283849', '31459840137', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-apricot', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - apricot', NULL, '[]', '[{"id":3832809097,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Martha', 'Miller', 'Fairhope', '36532', 'Alabama', 'United States', 'US', 'AL'),
(26646, '4616901705', 'catt1343@msn.com', '2017-03-16T23:59:13-04:00', '2017-03-22T13:21:38-04:00', '10', NULL, '24c97a58c80c33af40e4d73f0653d37a', 'shopify_payments', NULL, '18.00', '18.00', '0', '0.00', '0', 'USD', 'paid', '1', '1.99', '19.99', '8983b9e16d63d8ecf229161f67863ec2', '1', '#1010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4096035401', '2017-03-22T13:21:38-04:00', 'catt1343@msn.com', '8979199241', '31459840393', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-blue', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - blue', NULL, '[]', '[{"id":3834173577,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Cathe', 'FIUMENERO', 'WHITING', '08759', 'New Jersey', 'United States', 'US', 'NJ'),
(26645, '4622874441', 'Chicki-Chicki@comcast.net', '2017-03-19T09:38:53-04:00', '2017-03-22T13:21:25-04:00', '11', NULL, '470d06eb9de0a26968a7e944fbdec542', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '6ee63a7b4f2c6570e4eb1290d4acc54e', '0', '#1011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4096033737', '2017-03-22T13:21:25-04:00', 'Chicki-Chicki@comcast.net', '8991164745', '31459840201', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-black', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - Black', NULL, '[]', '[{"id":3838580233,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Ruth', 'Vail', 'Manchester', '03109', 'New Hampshire', 'United States', 'US', 'NH'),
(26644, '4623201417', 'sharonjm49@gmail.com', '2017-03-19T12:29:47-04:00', '2017-03-22T13:21:13-04:00', '12', NULL, '55bb03093c48d8dccce97fc9428db4e8', 'shopify_payments', NULL, '35.99', '35.99', '0', '0.00', '0', 'USD', 'paid', '1', '3.99', '39.98', 'a57a1d2fd4a8aa6802822bb2fea68dbd', '1', '#1012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4096032265', '2017-03-22T13:21:13-04:00', 'sharonjm49@gmail.com', '8991729481', '31459840393', 'Ladies Clutch Puppy Wallet', '2', '19.99', '4467542-blue', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - blue', NULL, '[{"title":"FL State Tax","price":"0.00","rate":0.06}]', '[{"id":3838845065,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Sharon', 'McCulloch', 'Stuart', '34997', 'Florida', 'United States', 'US', 'FL'),
(26643, '4628192585', 'olgamullin@aol.com', '2017-03-21T10:53:22-04:00', '2017-03-22T13:20:59-04:00', '13', NULL, '4c4b00e75fe8ccb257f38f7903b97b3a', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', 'f2dcd9deb62807730793edea8fadb593', '1', '#1013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4096030665', '2017-03-22T13:20:59-04:00', 'olgamullin@aol.com', '9001506953', '31459840137', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-apricot', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - apricot', NULL, '[]', '[{"id":3842677129,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Olga', 'Mullin', 'Norristown', '19401', 'Pennsylvania', 'United States', 'US', 'PA'),
(26642, '4637443785', 'junekazibug@yahoo.com', '2017-03-22T18:00:04-04:00', '2017-03-26T14:59:13-04:00', '14', NULL, 'a7e636a71540a27429318316c69753b6', 'shopify_payments', NULL, '39.98', '39.98', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '39.98', 'b1da4e9ee2dda5bf9c728f64ee6c269d', '1', '#1014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4109587529', '2017-03-26T14:59:13-04:00', 'junekazibug@yahoo.com', '9015138057', '31459840265', 'Ladies Clutch Puppy Wallet', '2', '19.99', '4467542-coffee', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - Coffee', NULL, '[]', '[{"id":3850944265,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'June', 'Rhoads', 'Woodbury', '55129', 'Minnesota', 'United States', 'US', 'MN'),
(26641, '4637905033', 'dryan2@ptd.net', '2017-03-22T19:21:19-04:00', '2017-03-26T14:59:25-04:00', '15', NULL, 'bf09e8494d289fa84d1a5ae49ce09334', 'shopify_payments', NULL, '18.00', '18.00', '0', '0.00', '0', 'USD', 'paid', '1', '1.99', '19.99', 'd81f939cd28b607656cd55a0e21e5f1e', '1', '#1015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4109587977', '2017-03-26T14:59:25-04:00', 'dryan2@ptd.net', '9015832393', '31459840265', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-coffee', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - Coffee', NULL, '[]', '[{"id":3851355721,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Deborah ', 'Ryan ', 'Stevens ', '17578', 'Pennsylvania', 'United States', 'US', 'PA'),
(26640, '4648027657', 'vmpre2007@gmail.com', '2017-03-25T14:09:57-04:00', '2017-03-26T14:59:36-04:00', '16', NULL, '7e15971abfeb3d24870423b9529a9d51', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', 'da6487fc4f0dc6487c9ad3a77d7b0b20', '1', '#1016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4109588233', '2017-03-26T14:59:36-04:00', 'vmpre2007@gmail.com', '9033892297', '31459840393', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-blue', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - blue', NULL, '[]', '[{"id":3859600905,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Julie', 'Vargas', 'Isanti', '55040', 'Minnesota', 'United States', 'US', 'MN'),
(26639, '4650816009', 'jeaiken81@gmail.com', '2017-03-26T15:05:06-04:00', '2017-03-27T12:21:23-04:00', '17', NULL, '899244cda73511a592ed22beff2b2bcd', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '355ea5f9f3b27b5b8b20b13ff659df54', '1', '#1017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4111959689', '2017-03-27T12:21:23-04:00', 'jeaiken81@gmail.com', '9039678857', '31459840265', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-coffee', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - Coffee', NULL, '[]', '[{"id":3861680713,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Judie', 'Aiken', 'N scituate', '02857', 'Rhode Island', 'United States', 'US', 'RI'),
(26638, '4657131785', 'katieleblanc663@gmail.com', '2017-03-28T19:16:58-04:00', '2017-03-31T11:39:59-04:00', '18', NULL, '521499452ae96dd497658f596ceef113', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '318215fcbcafdb17a4f494a09a374812', '0', '#1018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4124617545', '2017-03-31T11:39:59-04:00', 'katieleblanc663@gmail.com', '9052622665', '31459840265', 'Ladies Clutch Puppy Wallet', '1', '19.99', '4467542-coffee', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Ladies Clutch Puppy Wallet - Coffee', NULL, '[{"title":"FL State Tax","price":"0.00","rate":0.06},{"title":"Pasco County Tax","price":"0.00","rate":0.01}]', '[{"id":3866531081,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Katie', 'Leblanc', 'Spring hill', '34610', 'Florida', 'United States', 'US', 'FL'),
(26637, '4661154249', 'myglass12@gmail.com', '2017-03-30T09:24:27-04:00', '2017-03-31T11:40:15-04:00', '19', NULL, 'b295cd17e134d08f8285c8dc25204ec3', 'shopify_payments', NULL, '19.99', '19.99', '0', '0.00', '0', 'USD', 'paid', '1', '0.00', '19.99', '6803d4d68f688608472c2bbcf1d9c1bb', '1', '#1019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4124618697', '2017-03-31T11:40:15-04:00', 'myglass12@gmail.com', '9061019785', '30760546633', 'Magnetic Charging Cable for Android Charger Cord for iPhone 7 6 s 5 5s 6s Plus Samsung Mobile Phone', '1', '19.99', '2987555-silver-for-android', NULL, 'AllDayFreeShipping', 'manual', NULL, '1', '0', '0', 'Magnetic Charging Cable for Android Charger Cord for iPhone 7 6 s 5 5s 6s Plus Samsung Mobile Phone - Silver / For Android', NULL, '[]', '[{"id":3869540041,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Steven', 'Glasco', 'Fort bliss ', '79908', 'Texas', 'United States', 'US', 'TX'),
(26636, '4842187913', 'm1958chuck@yahoo.com', '2017-05-17T15:29:51-04:00', '2017-05-18T15:58:15-04:00', '20', NULL, 'ac22e9968e8d3a23d7d702159a45a347', 'shopify_payments', NULL, '17.96', '17.96', '0', '0.00', '0', 'USD', 'paid', '1', '1.99', '19.95', 'ec8252ef91186d588d69003a9c9217ae', '1', '#1020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4288198985', '2017-05-18T15:58:15-04:00', 'm1958chuck@yahoo.com', '9407416649', '35597103561', '2pcs/set BBQ grill mat for barbecue grill sheet cooking and baking and microwave oven', '1', '19.95', '749496', NULL, 'AllDayFreeShipping', 'manual', '9441300745', '1', '0', '0', '2pcs/set BBQ grill mat for barbecue grill sheet cooking and baking and microwave oven', 'shopify', '[]', '[{"id":4008301321,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'charles ', 'major', 'indian river', '49749', 'Michigan', 'United States', 'US', 'MI'),
(26635, '5260100041', 'raptor64@gmail.com', '2017-08-19T12:55:25-04:00', '2017-09-01T16:26:17-04:00', '21', NULL, '1bcbe43f40647c299a070201a569ca52', 'shopify_payments', NULL, '35.99', '35.99', '0', '0.00', '0', 'USD', 'paid', '1', '3.99', '39.98', 'a2716eac19e5d33cf6de37a194aae9a7', '1', '#1021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '["shopify_payments"]', 'direct', NULL, NULL, 'fulfilled', '4658800905', '2017-08-28T07:18:08-04:00', 'raptor64@gmail.com', '10170339721', '36830453961', '100PCS Glow in the Dark Stones Green Decor Garden Outdoor Pebble Luminous Rocks Blue Pretty Stylish Attractive Creative', '2', '19.99', '1475476-blue', NULL, 'AllDayFreeShipping', 'manual', '9616385737', '1', '0', '0', '100PCS Glow in the Dark Stones Green Decor Garden Outdoor Pebble Luminous Rocks Blue Pretty Stylish Attractive Creative - Blue', 'shopify', '[]', '[{"id":4307419529,"title":"Standard Shipping","price":"0.00","code":"Standard Shipping","source":"shopify","phone":null,"requested_fulfillment_service_id":null,"delivery_category":null,"carrier_identifier":null,"discounted_price":"0.00","tax_lines":[]}]', '1', 8, 'Carolann', 'Jensen ', 'Bondurant ', '50035', 'Iowa', 'United States', 'US', 'IA');

-- --------------------------------------------------------

--
-- Table structure for table `rev_setup_productlist`
--

CREATE TABLE `rev_setup_productlist` (
  `id` int(11) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `setup_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `store_id` int(11) NOT NULL,
  `dist_cost` varchar(255) NOT NULL,
  `dist_shippingcost` varchar(255) NOT NULL,
  `packaging_cost` varchar(255) NOT NULL,
  `shipping_cost` varchar(255) NOT NULL,
  `gate_charge_fix` varchar(255) NOT NULL,
  `gate_charge_percent` varchar(255) NOT NULL,
  `desire_margin` varchar(255) NOT NULL,
  `ads_id` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_setup_productlist`
--

INSERT INTO `rev_setup_productlist` (`id`, `report_name`, `store_name`, `product_id`, `product_name`, `setup_date`, `store_id`, `dist_cost`, `dist_shippingcost`, `packaging_cost`, `shipping_cost`, `gate_charge_fix`, `gate_charge_percent`, `desire_margin`, `ads_id`) VALUES
(20, 'Pindo', 'lostandfounditems', '43603383765', 'PINDO Bluetooth Trackers Red', '2017-05-30 16:45:34', 6, '4.5', '1.2', '0', '0', '1', '2.9', '30', '0'),
(31, 'kitchen bakeware', 'AllDayFreeShipping', '37385297609', 'Red Pyramid Bakeware Pan Nonstick Silicone Baking Pads Default Title', '2017-09-17 17:40:20', 8, '1.50', '2.52', '0.00', '0.00', '.30', '2.9', '35', '6066217403067'),
(30, 'gloves', 'AllDayFreeShipping', '36829847561', 'HOT Kev lar Gloves Proof Protect HPPE Safety Mesh Butcher Anti-cutting Breathable Work Gloves Polyethylene Cut Resistant Gloves Default Title', '2017-09-13 18:10:28', 8, '1.50', '2.25', '0.00', '0.00', '.30', '2.9', '35', '6066217403067');

-- --------------------------------------------------------

--
-- Table structure for table `rev_shopify_product`
--

CREATE TABLE `rev_shopify_product` (
  `title` varchar(255) NOT NULL,
  `body_html` varchar(255) NOT NULL,
  `vendor` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `published_at` varchar(255) NOT NULL,
  `template_suffix` varchar(255) NOT NULL,
  `published_scope` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `variants_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `variants_title` varchar(255) NOT NULL,
  `variants_price` varchar(255) NOT NULL,
  `variants_sku` varchar(255) NOT NULL,
  `variants_position` varchar(255) NOT NULL,
  `variants_grams` varchar(255) NOT NULL,
  `variants_inventory_policy` varchar(255) NOT NULL,
  `variants_compare_at_price` varchar(255) NOT NULL,
  `variants_fulfillment_service` varchar(255) NOT NULL,
  `variants_inventory_management` varchar(255) NOT NULL,
  `variants_option1` varchar(255) NOT NULL,
  `variants_created_at` varchar(255) NOT NULL,
  `variants_updated_at` varchar(255) NOT NULL,
  `variants_taxable` varchar(255) NOT NULL,
  `variants_inventory_quantity` varchar(255) NOT NULL,
  `variants_weight` varchar(255) NOT NULL,
  `variants_weight_unit` varchar(255) NOT NULL,
  `variants_old_inventory_quantity` varchar(255) NOT NULL,
  `variants_requires_shipping` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_shopify_product`
--

INSERT INTO `rev_shopify_product` (`title`, `body_html`, `vendor`, `created_at`, `handle`, `updated_at`, `published_at`, `template_suffix`, `published_scope`, `tags`, `variants_id`, `user_id`, `store_id`, `id`, `product_id`, `variants_title`, `variants_price`, `variants_sku`, `variants_position`, `variants_grams`, `variants_inventory_policy`, `variants_compare_at_price`, `variants_fulfillment_service`, `variants_inventory_management`, `variants_option1`, `variants_created_at`, `variants_updated_at`, `variants_taxable`, `variants_inventory_quantity`, `variants_weight`, `variants_weight_unit`, `variants_old_inventory_quantity`, `variants_requires_shipping`) VALUES
('Reusable Aluminum Foil 4pcs/lot Gas Stove Protectors Cover/Liner Reusable Non Stick Silicone Dishwasher Safe', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">No more messy stoves! Put The protectors under burner grate below the flame. The Protector must be clear of any flame to avoid possible file injur', 'AllDayFreeShipping', '2017-05-31T22:43:04-04:00', 'reusable-aluminum-foil-4pcs-lot-gas-stove-protectors-cover-liner-reusable-non-stick-silicone-dishwasher-safe', '2017-09-19T14:34:09-04:00', '', '', '', '', '36829574793', 1, 8, 27942, '9616313865', 'Silver', '15.99', '1459319-silver', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('2016 Nut 3 Nut3s Multifunctional Smart Finder (WiFi Bluetooth Tracker)', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Brand Name:</strong> MLLSE</span><br><span><strong>Function:</strong> Message Reminder</span><br><span><strong>Application A', 'Kenya Tracking Accessories', '2017-05-30T09:39:43+03:00', '2016-nut-3-nut3s-multifunctional-smart-finder-wifi-bluetooth-tracker', '2017-06-12T21:30:43+03:00', '', '', '', '', '43615041493', 37, 6, 4770, '10635414485', 'White', '29.99', '5637835-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('2016 Nut 3 Nut3s Multifunctional Smart Finder (WiFi Bluetooth Tracker)', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Brand Name:</strong> MLLSE</span><br><span><strong>Function:</strong> Message Reminder</span><br><span><strong>Application A', 'Kenya Tracking Accessories', '2017-05-30T09:39:43+03:00', '2016-nut-3-nut3s-multifunctional-smart-finder-wifi-bluetooth-tracker', '2017-06-12T21:30:43+03:00', '', '', '', '', '43615041557', 37, 6, 4771, '10635414485', 'Yellow', '29.99', '5637835-yellow', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369365', 37, 6, 4772, '10635101269', 'Four White', '49.99', '2643263-four-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369429', 37, 6, 4773, '10635101269', 'Four Pink', '49.99', '2643263-four-pink', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369493', 37, 6, 4774, '10635101269', 'Four Blue', '49.99', '2643263-four-blue', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369557', 37, 6, 4775, '10635101269', 'Four Green', '49.99', '2643263-four-green', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369621', 37, 6, 4776, '10635101269', '1 each in 4 colors', '49.99', '2643263-1-each-in-4-colors', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369685', 37, 6, 4777, '10635101269', 'Leave Messages', '49.99', '2643263-leave-messages', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-15T09:08:33+03:00', '', '', '', '', '43614369749', 37, 6, 4778, '10635101269', 'Random', '49.99', '2643263-random', '7', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-17T00:15:44+03:00', '', '', '', '', '43615187605', 37, 6, 4797, '10635467925', 'Black', '5.99', '1626889-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-17T00:15:44+03:00', '', '', '', '', '43615187669', 37, 6, 4798, '10635467925', 'Green', '5.99', '1626889-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-17T00:15:44+03:00', '', '', '', '', '43615187733', 37, 6, 4799, '10635467925', 'Rose Red', '5.99', '1626889-rose-red', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-17T00:15:44+03:00', '', '', '', '', '43615187797', 37, 6, 4800, '10635467925', 'White', '5.99', '1626889-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330645', 37, 6, 4803, '10635525397', 'White', '32.99', '1981160-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330709', 37, 6, 4804, '10635525397', 'Green', '32.99', '1981160-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330773', 37, 6, 4805, '10635525397', 'Gray', '32.99', '1981160-gray', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330837', 37, 6, 4806, '10635525397', 'Pink', '32.99', '1981160-pink', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330901', 37, 6, 4807, '10635525397', '4 Kinds Colour', '74.99', '1981160-4-kinds-colour', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615330965', 37, 6, 4808, '10635525397', 'White And Green', '43.99', '1981160-white-and-green', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-18T01:33:42+03:00', '', '', '', '', '43615331029', 37, 6, 4809, '10635525397', '2 White And 2 Green', '74.99', '1981160-2-white-and-2-green', '7', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383765', 37, 6, 4810, '10630155861', 'Red', '8.99', '6601377-red', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383829', 37, 6, 4811, '10630155861', 'Blue', '8.99', '6601377-blue', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383893', 37, 6, 4812, '10630155861', 'Green', '8.99', '6601377-green', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383957', 37, 6, 4813, '10630155861', 'White', '8.99', '6601377-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PNL', 'Testing', 'Kenya Tracking Accessories', '2017-05-30T17:55:06+03:00', 'pnl', '2017-05-30T18:09:36+03:00', '', '', '', '', '43624142613', 37, 6, 645, '10638899797', 'Default Title', '1000.00', '123', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-16T20:18:12+03:00', '', '', '', '', '43601484245', 37, 6, 4818, '10629258709', 'Black', '4.99', '6010647-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-16T20:18:12+03:00', '', '', '', '', '43601484309', 37, 6, 4819, '10629258709', 'Green', '4.99', '6010647-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-16T20:18:12+03:00', '', '', '', '', '43601484373', 37, 6, 4820, '10629258709', 'Red', '4.99', '6010647-red', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-16T20:18:12+03:00', '', '', '', '', '43601484437', 37, 6, 4821, '10629258709', 'White', '4.99', '6010647-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Reusable Aluminum Foil 4pcs/lot Gas Stove Protectors Cover/Liner Reusable Non Stick Silicone Dishwasher Safe', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">No more messy stoves! Put The protectors under burner grate below the flame. The Protector must be clear of any flame to avoid possible file injur', 'AllDayFreeShipping', '2017-05-31T22:43:04-04:00', 'reusable-aluminum-foil-4pcs-lot-gas-stove-protectors-cover-liner-reusable-non-stick-silicone-dishwasher-safe', '2017-09-19T14:34:09-04:00', '', '', '', '', '36829574729', 1, 8, 27941, '9616313865', 'Black', '15.99', '1459319-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Red Pyramid Bakeware Pan Nonstick Silicone Baking Pads', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">No more food sticking on your pans, these pyramid mats will save you a lot of time and money and make your cooking time more fun! They\'re multifun', 'AllDayFreeShipping', '2017-06-07T15:35:26-04:00', 'red-pyramid-bakeware-pan-nonstick-silicone-baking-pads', '2017-09-21T20:31:36-04:00', '', '', '', '', '37385297609', 1, 8, 27940, '9694269257', 'Default Title', '16.99', '4100454', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('LED light Bluetooth Speaker Music Fidget Spinner EDC Hand Spinner For Autism', '<p><span style="color: #000000; font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">Do you love fidget spinners and also enjoys listening to music, well this unique fidget spinner is simply perfect for you. This LED Speaker fidget spin', 'AllDayFreeShipping', '2017-06-07T15:33:39-04:00', 'led-light-bluetooth-speaker-music-fidget-spinner-edc-hand-spinner-for-autism', '2017-09-15T12:42:59-04:00', '', '', '', '', '37385142665', 1, 8, 27939, '9694247113', 'White', '24.90', '6508094-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('LED light Bluetooth Speaker Music Fidget Spinner EDC Hand Spinner For Autism', '<p><span style="color: #000000; font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">Do you love fidget spinners and also enjoys listening to music, well this unique fidget spinner is simply perfect for you. This LED Speaker fidget spin', 'AllDayFreeShipping', '2017-06-07T15:33:39-04:00', 'led-light-bluetooth-speaker-music-fidget-spinner-edc-hand-spinner-for-autism', '2017-09-15T12:42:59-04:00', '', '', '', '', '37385142537', 1, 8, 27938, '9694247113', 'Pink', '24.90', '6508094-pink', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('LED light Bluetooth Speaker Music Fidget Spinner EDC Hand Spinner For Autism', '<p><span style="color: #000000; font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">Do you love fidget spinners and also enjoys listening to music, well this unique fidget spinner is simply perfect for you. This LED Speaker fidget spin', 'AllDayFreeShipping', '2017-06-07T15:33:39-04:00', 'led-light-bluetooth-speaker-music-fidget-spinner-edc-hand-spinner-for-autism', '2017-09-15T12:42:59-04:00', '', '', '', '', '37385142409', 1, 8, 27937, '9694247113', 'Blue', '24.90', '6508094-blue', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('LED light Bluetooth Speaker Music Fidget Spinner EDC Hand Spinner For Autism', '<p><span style="color: #000000; font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">Do you love fidget spinners and also enjoys listening to music, well this unique fidget spinner is simply perfect for you. This LED Speaker fidget spin', 'AllDayFreeShipping', '2017-06-07T15:33:39-04:00', 'led-light-bluetooth-speaker-music-fidget-spinner-edc-hand-spinner-for-autism', '2017-09-15T12:42:59-04:00', '', '', '', '', '37385142281', 1, 8, 27936, '9694247113', 'Green', '24.90', '6508094-green', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('HOT Kev lar Gloves Proof Protect HPPE Safety Mesh Butcher Anti-cutting Breathable Work Gloves Polyethylene Cut Resistant Gloves', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">These cut resistant gloves let you handle your grater, knives, and mandolin without worrying if you’ll need to bandage a finger or worse…Made of f', 'AllDayFreeShipping', '2017-05-31T22:45:12-04:00', 'hot-kev-lar-gloves-proof-protect-hppe-safety-mesh-butcher-anti-cutting-breathable-work-gloves-polyethylene-cut-resistant-gloves', '2017-08-10T20:04:43-04:00', '', '', '', '', '36829847561', 1, 8, 27935, '9616337545', 'Default Title', '23.97', '4442940-hppe-anti-cut-gloves', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Back Mirror Bicycle End Flexible Cycling Wrist Band Strap Reflex Rear View Rearview', '<p style=\'margin-bottom: 20px; color: rgb(85, 85, 85); font-family: Arial, "Helvetica Neue", Helvetica, sans-serif; font-size: 17px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; line-height: inherit;\'><span style="margi', 'AllDayFreeShipping', '2017-06-03T18:29:31-04:00', 'back-mirror-bicycle-end-flexible-cycling-wrist-band-strap-reflex-rear-view-rearview', '2017-09-21T21:08:42-04:00', '', '', '', '', '37085312521', 1, 8, 27934, '9636416649', 'Default Title', '19.98', '4634376', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Amazon Fire TV Stick KODI 17.3 Firestick MOVIES & TV! Fast Shipping!', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span class="a-list-item">The next generation of our bestselling Fire TV Stick. The most powerful streaming media stick under $50–now with the Alexa Voice Remote.</span></li>\n<li><span class="a-l', 'AllDayFreeShipping', '2017-07-02T22:06:00-04:00', 'amazon-fire-tv-stick-kodi-17-3-firestick-movies-tv-fast-shipping', '2017-07-02T23:44:30-04:00', '', '', '', '', '39515597129', 1, 8, 27933, '9924767049', 'Include Adult Content', '115.00', '', '2', '408', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Amazon Fire TV Stick KODI 17.3 Firestick MOVIES & TV! Fast Shipping!', '<ul class="a-unordered-list a-vertical a-spacing-none">\n<li><span class="a-list-item">The next generation of our bestselling Fire TV Stick. The most powerful streaming media stick under $50–now with the Alexa Voice Remote.</span></li>\n<li><span class="a-l', 'AllDayFreeShipping', '2017-07-02T22:06:00-04:00', 'amazon-fire-tv-stick-kodi-17-3-firestick-movies-tv-fast-shipping', '2017-07-02T23:44:30-04:00', '', '', '', '', '39515597065', 1, 8, 27932, '9924767049', 'Family', '85.00', '', '1', '408', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('2pcs/set BBQ grill mat for barbecue grill sheet cooking and baking and microwave oven', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">These mats are perfect for anyone who enjoys barbecues, now you can grill and make your favorite meals without causing a mess and reducing flare-u', 'AllDayFreeShipping', '2017-05-15T16:50:16-04:00', '2pcs-set-bbq-grill-mat-for-barbecue-grill-sheet-cooking-and-baking-and-microwave-oven', '2017-09-21T14:04:43-04:00', '', '', '', '', '35597103561', 1, 8, 27931, '9441300745', 'Default Title', '19.95', '749496', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('2016 Nut 3 Nut3s Multifunctional Smart Finder (WiFi Bluetooth Tracker)', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Brand Name:</strong> MLLSE</span><br><span><strong>Function:</strong> Message Reminder</span><br><span><strong>Application A', 'Kenya Tracking Accessories', '2017-05-30T09:39:43+03:00', '2016-nut-3-nut3s-multifunctional-smart-finder-wifi-bluetooth-tracker', '2017-06-12T21:30:43+03:00', '', '', '', '', '43615041493', 1, 6, 866, '10635414485', 'White', '29.99', '5637835-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('2016 Nut 3 Nut3s Multifunctional Smart Finder (WiFi Bluetooth Tracker)', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Brand Name:</strong> MLLSE</span><br><span><strong>Function:</strong> Message Reminder</span><br><span><strong>Application A', 'Kenya Tracking Accessories', '2017-05-30T09:39:43+03:00', '2016-nut-3-nut3s-multifunctional-smart-finder-wifi-bluetooth-tracker', '2017-06-12T21:30:43+03:00', '', '', '', '', '43615041557', 1, 6, 867, '10635414485', 'Yellow', '29.99', '5637835-yellow', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369365', 1, 6, 868, '10635101269', 'Four White', '49.99', '2643263-four-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369429', 1, 6, 869, '10635101269', 'Four Pink', '49.99', '2643263-four-pink', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369493', 1, 6, 870, '10635101269', 'Four Blue', '49.99', '2643263-four-blue', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369557', 1, 6, 871, '10635101269', 'Four Green', '49.99', '2643263-four-green', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369621', 1, 6, 872, '10635101269', '1 each in 4 colors', '49.99', '2643263-1-each-in-4-colors', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369685', 1, 6, 873, '10635101269', 'Leave Messages', '49.99', '2643263-leave-messages', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('4Pieces Nut 3 Mini Smart Bluetooth Key Finder', '<p><span><strong>Language:</strong> Spanish,Polish,French,Portuguese,Turkish,English,Italian,Russian,Norwegian,German</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Function:</strong> Remote Control</span><br><span><strong>Applic', 'Kenya Tracking Accessories', '2017-05-30T09:01:00+03:00', '4pieces-nut-3-mini-smart-bluetooth-key-finder', '2017-06-04T00:30:59+03:00', '', '', '', '', '43614369749', 1, 6, 874, '10635101269', 'Random', '49.99', '2643263-random', '7', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('A8 Mini Global Tracker Locator', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Item Size:</strong> 3.2*4.3*1.4cm</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Special Feature:</s', 'Kenya Tracking Accessories', '2017-06-01T16:06:05+03:00', 'a8-mini-global-tracker-locator-lbs-personal-tracker-gsm-gprs-for-home-monitoring-children-elder-pet-car-security-tracking-no-gps', '2017-06-04T00:30:59+03:00', '', '', '', '', '43900457621', 1, 6, 875, '10660378517', 'Default Title', '17.99', '4188033', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Black Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:23:16+03:00', 'superior-sports-health-pedometer', '2017-06-10T00:23:44+03:00', '', '', '', '', '44067454613', 1, 6, 876, '10674243541', 'Black', '12.99', '6684254-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Black Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:23:16+03:00', 'superior-sports-health-pedometer', '2017-06-10T00:23:44+03:00', '', '', '', '', '44067454677', 1, 6, 877, '10674243541', 'Red', '12.99', '6684254-red', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Blue Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:24:12+03:00', 'superior-sports-health-pedometer-4', '2017-06-04T02:26:26+03:00', '', '', '', '', '44067496533', 1, 6, 878, '10674244885', 'Default Title', '12.99', '6684254-blue', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Calorie and Heart rate Monitor Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:35:11+03:00', 'calorie-and-heart-rate-monitor-watch', '2017-06-04T02:35:13+03:00', '', '', '', '', '44067984725', 1, 6, 879, '10674263381', 'Default Title', '13.99', '6684255', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM02EW GPS Tracker Mini Locater GSM GPS Tracker For Car Vehicle Tracking Device With Online Tracking System', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Special Feature:</strong> Internet Connected</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Gps Modu', 'Kenya Tracking Accessories', '2017-06-01T15:17:10+03:00', 'goome-gm02ew-gps-tracker-mini-locater-gsm-gps-tracker-for-car-vehicle-tracking-device-with-online-tracking-system', '2017-06-14T22:25:11+03:00', '', '', '', '', '43896825493', 1, 6, 880, '10660046997', 'Default Title', '24.99', '6600027-no-box', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626261', 1, 6, 881, '10660400085', 'China / Electric wire only', '32.99', '4995248-china-electric-wire-only', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626325', 1, 6, 882, '10660400085', 'China / No USB wire and box', '38.99', '4995248-china-no-usb-wire-and-box', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626389', 1, 6, 883, '10660400085', 'China / USB wire and box', '33.99', '4995248-china-usb-wire-and-box', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626453', 1, 6, 884, '10660400085', 'Russian Federation / Electric wire only', '32.99', '4995248-russian-federation-electric-wire-only', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626517', 1, 6, 885, '10660400085', 'Russian Federation / No USB wire and box', '38.99', '4995248-russian-federation-no-usb-wire-and-box', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-13T23:55:08+03:00', '', '', '', '', '43900626581', 1, 6, 886, '10660400085', 'Russian Federation / USB wire and box', '33.99', '4995248-russian-federation-usb-wire-and-box', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Green Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:21:10+03:00', 'superior-sports-health-pedometer-3', '2017-06-04T02:29:30+03:00', '', '', '', '', '44067379093', 1, 6, 887, '10674240341', 'Default Title', '12.99', '6684254-green', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('GT02A- Guaranteed 100% 4 band car GPS tracker  with Google link real time tracking', '<p style=\'box-sizing: content-box; user-select: text; margin-bottom: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: "Open Sans", Arial, Helvetica, sans-serif, SimSu', 'Kenya Tracking Accessories', '2017-06-01T15:10:22+03:00', 'gt02a-guaranteed-100-4-band-car-gps-tracker-with-google-link-real-time-tracking', '2017-06-14T19:37:07+03:00', '', '', '', '', '43896315861', 1, 6, 888, '10659999701', 'Default Title', '26.99', '1319614', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067922901', 1, 6, 889, '10674260309', 'Black', '14.99', '6684279-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067922965', 1, 6, 890, '10674260309', 'Blue', '14.99', '6684279-blue', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067923029', 1, 6, 891, '10674260309', 'Orange', '14.99', '6684279-orange', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067923093', 1, 6, 892, '10674260309', 'Red', '14.99', '6684279-red', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-13T17:33:01+03:00', '', '', '', '', '43615187605', 1, 6, 893, '10635467925', 'Black', '5.99', '1626889-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-13T17:33:01+03:00', '', '', '', '', '43615187669', 1, 6, 894, '10635467925', 'Green', '5.99', '1626889-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-13T17:33:01+03:00', '', '', '', '', '43615187733', 1, 6, 895, '10635467925', 'Rose Red', '5.99', '1626889-rose-red', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Kebidu Hot Anti-lost Bluetooth Tracker', '<p><span><strong>Brand Name:</strong> kebidu</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Function:</strong> Passometer,Remote Control</span><br><span><strong>Application Age Group:</strong> Child</span><br><span>', 'Kenya Tracking Accessories', '2017-05-30T09:47:43+03:00', 'kebidu-hot-anti-lost-bluetooth-tracker', '2017-06-13T17:33:01+03:00', '', '', '', '', '43615187797', 1, 6, 896, '10635467925', 'White', '5.99', '1626889-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Mini Waterproof Pet GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Brand Name:</strong> greattop</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> D6', 'Kenya Tracking Accessories', '2017-06-01T16:00:24+03:00', 'mini-waterproof-pet-gps-tracker', '2017-06-14T19:19:03+03:00', '', '', '', '', '43900067861', 1, 6, 897, '10660336725', 'Default Title', '56.99', '2617998', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orange Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:20:52+03:00', 'superior-sports-health-pedometer-2', '2017-06-04T02:28:31+03:00', '', '', '', '', '44067368533', 1, 6, 898, '10674239637', 'Default Title', '12.99', '6684254-orange', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330645', 1, 6, 899, '10635525397', 'White', '32.99', '1981160-white', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330709', 1, 6, 900, '10635525397', 'Green', '32.99', '1981160-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330773', 1, 6, 901, '10635525397', 'Gray', '32.99', '1981160-gray', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1');
INSERT INTO `rev_shopify_product` (`title`, `body_html`, `vendor`, `created_at`, `handle`, `updated_at`, `published_at`, `template_suffix`, `published_scope`, `tags`, `variants_id`, `user_id`, `store_id`, `id`, `product_id`, `variants_title`, `variants_price`, `variants_sku`, `variants_position`, `variants_grams`, `variants_inventory_policy`, `variants_compare_at_price`, `variants_fulfillment_service`, `variants_inventory_management`, `variants_option1`, `variants_created_at`, `variants_updated_at`, `variants_taxable`, `variants_inventory_quantity`, `variants_weight`, `variants_weight_unit`, `variants_old_inventory_quantity`, `variants_requires_shipping`) VALUES
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330837', 1, 6, 902, '10635525397', 'Pink', '32.99', '1981160-pink', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330901', 1, 6, 903, '10635525397', '4 Kinds Colour', '74.99', '1981160-4-kinds-colour', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615330965', 1, 6, 904, '10635525397', 'White And Green', '43.99', '1981160-white-and-green', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orginal Smart Nut 3 Finder Wireless Bluetooth Activity Tracker Nut3 Anti-lost Key Aralm Tag for Smart Phone Pet Bag Wallet', '<p><span><strong>Language:</strong> English</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Type:</strong> Home Use</span><br><span><strong>Brand Name:</strong> NUT</span><br><span><strong>Application Age Group:</str', 'Kenya Tracking Accessories', '2017-05-30T09:58:47+03:00', 'orginal-smart-nut-3-finder-wireless-bluetooth-activity-tracker-nut3-anti-lost-key-aralm-tag-for-smart-phone-pet-bag-wallet', '2017-06-12T23:33:39+03:00', '', '', '', '', '43615331029', 1, 6, 905, '10635525397', '2 White And 2 Green', '74.99', '1981160-2-white-and-2-green', '7', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383765', 1, 6, 906, '10630155861', 'Red', '8.99', '6601377-red', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383829', 1, 6, 907, '10630155861', 'Blue', '8.99', '6601377-blue', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383893', 1, 6, 908, '10630155861', 'Green', '8.99', '6601377-green', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('PINDO Bluetooth Trackers', '<p><span><strong>Language:</strong> English</span><br><span><strong>Brand Name:</strong> PINDO</span><br><span><strong>Compatibility:</strong> All Compatible</span><br><span><strong>Application Age Group:</strong> Child</span><br><span><strong>Type:</stro', 'Kenya Tracking Accessories', '2017-05-29T21:48:44+03:00', 'pindo-trackers', '2017-06-13T19:38:53+03:00', '', '', '', '', '43603383957', 1, 6, 909, '10630155861', 'White', '8.99', '6601377-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Pulse Heart Rate Monitor Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:34:15+03:00', 'pulse-heart-rate-monitor-watch', '2017-06-04T02:34:17+03:00', '', '', '', '', '44067960981', 1, 6, 910, '10674261909', 'Default Title', '12.99', '6684257', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Red Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:20:05+03:00', 'superior-sports-health-pedometer-1', '2017-06-04T02:27:45+03:00', '', '', '', '', '44067321749', 1, 6, 911, '10674238229', 'Default Title', '12.99', '6684254-red', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Sports Pulse Heart Rate Monitor Fitness Exercise Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:32:57+03:00', 'sports-pulse-heart-rate-monitor-fitness-exercise-watch', '2017-06-04T02:32:59+03:00', '', '', '', '', '44067895893', 1, 6, 912, '10674259349', 'Default Title', '13.99', '6684283', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('VJOYCAR Waterproof GPS Tracker Mini', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V</span><br><span><strong>Brand Name:</strong> VJOYCAR</span><br><span><strong>Out Power:</strong> 60-80mA</span><', 'Kenya Tracking Accessories', '2017-06-01T15:57:25+03:00', 'vjoycar-waterproof-gps-tracker-mini', '2017-06-09T14:44:34+03:00', '', '', '', '', '43899842197', 1, 6, 913, '10660313045', 'Default Title', '44.99', '4245232', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-14T00:06:51+03:00', '', '', '', '', '43601484245', 1, 6, 914, '10629258709', 'Black', '4.99', '6010647-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-14T00:06:51+03:00', '', '', '', '', '43601484309', 1, 6, 915, '10629258709', 'Green', '4.99', '6010647-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-14T00:06:51+03:00', '', '', '', '', '43601484373', 1, 6, 916, '10629258709', 'Red', '4.99', '6010647-red', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Wireless Tracker For Children', '<p><span><strong>1pcs Mini Bluetooth Tracker Wireless Key Finder GPS Locator Anti-Lost Alarm Reminder For Chlid wallet Pet phone Car lost remind<br></strong></span></p>\n<p><span><strong>Brand Name:</strong> kebidumei</span><br><span><strong>Language:</str', 'Kenya Tracking Accessories', '2017-05-29T20:01:18+03:00', 'wireless-tracker-for-children', '2017-06-14T00:06:51+03:00', '', '', '', '', '43601484437', 1, 6, 917, '10629258709', 'White', '4.99', '6010647-white', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('A8 Mini Global Tracker Locator', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Item Size:</strong> 3.2*4.3*1.4cm</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Special Feature:</s', 'Kenya Tracking Accessories', '2017-06-01T16:06:05+03:00', 'a8-mini-global-tracker-locator-lbs-personal-tracker-gsm-gprs-for-home-monitoring-children-elder-pet-car-security-tracking-no-gps', '2017-06-16T23:08:23+03:00', '', '', '', '', '43900457621', 37, 6, 4779, '10660378517', 'Default Title', '17.99', '4188033', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Black Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:23:16+03:00', 'superior-sports-health-pedometer', '2017-06-16T14:06:26+03:00', '', '', '', '', '44067454613', 37, 6, 4780, '10674243541', 'Black', '12.99', '6684254-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Black Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:23:16+03:00', 'superior-sports-health-pedometer', '2017-06-16T14:06:26+03:00', '', '', '', '', '44067454677', 37, 6, 4781, '10674243541', 'Red', '12.99', '6684254-red', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Blue Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:24:12+03:00', 'superior-sports-health-pedometer-4', '2017-06-04T02:26:26+03:00', '', '', '', '', '44067496533', 37, 6, 4782, '10674244885', 'Default Title', '12.99', '6684254-blue', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Calorie and Heart rate Monitor Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:35:11+03:00', 'calorie-and-heart-rate-monitor-watch', '2017-06-04T02:35:13+03:00', '', '', '', '', '44067984725', 37, 6, 4783, '10674263381', 'Default Title', '13.99', '6684255', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM02EW GPS Tracker Mini Locater GSM GPS Tracker For Car Vehicle Tracking Device With Online Tracking System', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Special Feature:</strong> Internet Connected</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Gps Modu', 'Kenya Tracking Accessories', '2017-06-01T15:17:10+03:00', 'goome-gm02ew-gps-tracker-mini-locater-gsm-gps-tracker-for-car-vehicle-tracking-device-with-online-tracking-system', '2017-06-17T00:58:17+03:00', '', '', '', '', '43896825493', 37, 6, 4784, '10660046997', 'Default Title', '23.99', '6600027-no-box', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626261', 37, 6, 4785, '10660400085', 'China / Electric wire only', '31.99', '4995248-china-electric-wire-only', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626325', 37, 6, 4786, '10660400085', 'China / No USB wire and box', '37.99', '4995248-china-no-usb-wire-and-box', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626389', 37, 6, 4787, '10660400085', 'China / USB wire and box', '31.99', '4995248-china-usb-wire-and-box', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626453', 37, 6, 4788, '10660400085', 'Russian Federation / Electric wire only', '31.99', '4995248-russian-federation-electric-wire-only', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626517', 37, 6, 4789, '10660400085', 'Russian Federation / No USB wire and box', '37.99', '4995248-russian-federation-no-usb-wire-and-box', '5', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Goome GM06NW GSM GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> GM06NW</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V', 'Kenya Tracking Accessories', '2017-06-01T16:08:39+03:00', 'goome-gm06nw-gsm-gps-tracker', '2017-06-17T00:40:12+03:00', '', '', '', '', '43900626581', 37, 6, 4790, '10660400085', 'Russian Federation / USB wire and box', '31.99', '4995248-russian-federation-usb-wire-and-box', '6', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Green Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:21:10+03:00', 'superior-sports-health-pedometer-3', '2017-06-04T02:29:30+03:00', '', '', '', '', '44067379093', 37, 6, 4791, '10674240341', 'Default Title', '12.99', '6684254-green', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('GT02A- Guaranteed 100% 4 band car GPS tracker  with Google link real time tracking', '<p style=\'box-sizing: content-box; user-select: text; margin-bottom: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; font-family: "Open Sans", Arial, Helvetica, sans-serif, SimSu', 'Kenya Tracking Accessories', '2017-06-01T15:10:22+03:00', 'gt02a-guaranteed-100-4-band-car-gps-tracker-with-google-link-real-time-tracking', '2017-06-17T07:18:20+03:00', '', '', '', '', '43896315861', 37, 6, 4792, '10659999701', 'Default Title', '26.99', '1319614', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067922901', 37, 6, 4793, '10674260309', 'Black', '14.99', '6684279-black', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067922965', 37, 6, 4794, '10674260309', 'Blue', '14.99', '6684279-blue', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067923029', 37, 6, 4795, '10674260309', 'Orange', '14.99', '6684279-orange', '3', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Infrared Digital Heart Rate Monitor', '<p><span><strong>Item Type:</strong> Digital Wristwatches</span><br><span><strong>Case Shape:</strong> Round</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Dial Diameter:</strong', 'Kenya Tracking Accessories', '2017-06-04T02:33:30+03:00', 'infrared-digital-heart-rate-monitor', '2017-06-04T02:33:34+03:00', '', '', '', '', '44067923093', 37, 6, 4796, '10674260309', 'Red', '14.99', '6684279-red', '4', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Mini Waterproof Pet GPS Tracker', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Voltage:</strong> 5V</span><br><span><strong>Brand Name:</strong> greattop</span><br><span><strong>Screen Size:</strong> Under 2 Inches</span><br><span><strong>Model Name:</strong> D6', 'Kenya Tracking Accessories', '2017-06-01T16:00:24+03:00', 'mini-waterproof-pet-gps-tracker', '2017-06-17T01:50:05+03:00', '', '', '', '', '43900067861', 37, 6, 4801, '10660336725', 'Default Title', '59.99', '2617998', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Orange Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:20:52+03:00', 'superior-sports-health-pedometer-2', '2017-06-04T02:28:31+03:00', '', '', '', '', '44067368533', 37, 6, 4802, '10674239637', 'Default Title', '12.99', '6684254-orange', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Pulse Heart Rate Monitor Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:34:15+03:00', 'pulse-heart-rate-monitor-watch', '2017-06-15T05:06:44+03:00', '', '', '', '', '44067960981', 37, 6, 4814, '10674261909', 'Default Title', '13.99', '6684257', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Red Superior Sports Health Pedometer', '<p><span><strong>Brand Name:</strong> SENORS</span><br><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Sport</span><br><span><strong>Movement:</strong> Smart,Digital</span><br><span><strong>Case Material:</strong> Rubber</sp', 'Kenya Tracking Accessories', '2017-06-04T02:20:05+03:00', 'superior-sports-health-pedometer-1', '2017-06-04T02:27:45+03:00', '', '', '', '', '44067321749', 37, 6, 4815, '10674238229', 'Default Title', '12.99', '6684254-red', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('Sports Pulse Heart Rate Monitor Fitness Exercise Watch', '<p><span><strong>Gender:</strong> lovers\'</span><br><span><strong>Style:</strong> Fashion &amp; Casual</span><br><span><strong>Movement:</strong> Digital</span><br><span><strong>Case Material:</strong> Alloy</span><br><span><strong>Band Length:</strong> 2', 'Kenya Tracking Accessories', '2017-06-04T02:32:57+03:00', 'sports-pulse-heart-rate-monitor-fitness-exercise-watch', '2017-06-15T05:05:34+03:00', '', '', '', '', '44067895893', 37, 6, 4816, '10674259349', 'Default Title', '14.99', '6684283', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('VJOYCAR Waterproof GPS Tracker Mini', '<p><span><strong>GPS type:</strong> GPS Tracker</span><br><span><strong>Gps Module:</strong> Yes</span><br><span><strong>Voltage:</strong> 12V</span><br><span><strong>Brand Name:</strong> VJOYCAR</span><br><span><strong>Out Power:</strong> 60-80mA</span><', 'Kenya Tracking Accessories', '2017-06-01T15:57:25+03:00', 'vjoycar-waterproof-gps-tracker-mini', '2017-06-15T14:48:54+03:00', '', '', '', '', '43899842197', 37, 6, 4817, '10660313045', 'Default Title', '44.99', '4245232', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('100PCS Glow in the Dark Stones Green Decor Garden Outdoor Pebble Luminous Rocks Blue Pretty Stylish Attractive Creative', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">These eco-friendly Luminous pebbles require no electricity and look stunning in the day and night. Decorate your garden path, bird fountain or flo', 'AllDayFreeShipping', '2017-05-31T22:50:59-04:00', '100pcs-glow-in-the-dark-stones-green-decor-garden-outdoor-pebble-luminous-rocks-blue-pretty-stylish-attractive-creative', '2017-09-21T01:26:34-04:00', '', '', '', '', '36830453961', 1, 8, 27929, '9616385737', 'Blue', '19.99', '1475476-blue', '1', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1'),
('100PCS Glow in the Dark Stones Green Decor Garden Outdoor Pebble Luminous Rocks Blue Pretty Stylish Attractive Creative', '<p><span style="color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: 15px; white-space: pre-wrap;">These eco-friendly Luminous pebbles require no electricity and look stunning in the day and night. Decorate your garden path, bird fountain or flo', 'AllDayFreeShipping', '2017-05-31T22:50:59-04:00', '100pcs-glow-in-the-dark-stones-green-decor-garden-outdoor-pebble-luminous-rocks-blue-pretty-stylish-attractive-creative', '2017-09-21T01:26:34-04:00', '', '', '', '', '36830454089', 1, 8, 27930, '9616385737', 'Green', '19.99', '1475476-green', '2', '0', 'deny', '', 'manual', '', '', '', '', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rev_storinfo`
--

CREATE TABLE `rev_storinfo` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_apikey` varchar(255) NOT NULL,
  `store_app_password` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_storinfo`
--

INSERT INTO `rev_storinfo` (`id`, `store_name`, `store_apikey`, `store_app_password`, `store_url`, `user_id`, `create_time`) VALUES
(6, 'lostandfounditems', '752f1c75a0c4f2bb9e95eed895faa6fb', '3f069346da3ab8d0b19b04893f27ac1e', 'https://lostandfounditems.myshopify.com/', 37, '2017-05-30 15:22:00'),
(8, 'AllDayFreeShipping', '2eac3486958d276e3a41dd6a6d50456a', '4f7087ae3a73c2ebf2f76782ec9260c2', 'https://alldayfreeshipping.myshopify.com', 1, '2017-09-12 19:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `rev_stripe_payment_history`
--

CREATE TABLE `rev_stripe_payment_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `str_id` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `account_balance` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `reg_discount` varchar(255) NOT NULL,
  `subscription` varchar(255) NOT NULL,
  `str_sub_id` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_stripe_payment_history`
--

INSERT INTO `rev_stripe_payment_history` (`id`, `user_id`, `str_id`, `created_at`, `account_balance`, `created`, `currency`, `description`, `discount`, `reg_discount`, `subscription`, `str_sub_id`) VALUES
(14, 31, 'cus_Ag8197MgIovbmz', '2017-05-18 10:21:36', '0', '1495102895', 'usd', 'Recurring Stripe Payment', '', '0', 'plan1A', ''),
(16, 36, 'cus_AitkeRlWNYye1S', '2017-05-25 19:49:21', '0', '1495741759', 'usd', 'Recurring Stripe Payment', '', '0', 'plan1A', ''),
(25, 13, 'cus_AmP3YqDK4MIHrx', '2017-06-04 04:22:05', '0', '1496550123', 'usd', 'Recurring Stripe Payment', '', '0', 'plan1A', 'sub_AmP31Fl1Ms0fbL'),
(26, 13, 'cus_AmP98tytZVZ8W6', '2017-06-04 04:27:50', '0', '1496550469', 'usd', 'Recurring Stripe Payment', '', '0', 'plan1A', 'sub_AmP9nHI0OmmK4P'),
(27, 13, 'cus_AmPDduYoKNaQpO', '2017-06-04 04:31:33', '0', '1496550692', 'usd', 'Recurring Stripe Payment', '', '0', 'plan1A', 'sub_AmPD2MZhIsLSfU'),
(28, 13, 'cus_AmPLlgE7qYKikp', '2017-06-04 04:40:15', '0', '1496551214', 'usd', 'Plan Upgrade', '', '0', 'plan2A', 'sub_AmPLmDa5Q4pNSR');

-- --------------------------------------------------------

--
-- Table structure for table `rev_supplier_orders`
--

CREATE TABLE `rev_supplier_orders` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rev_user`
--

CREATE TABLE `rev_user` (
  `user_interanal_id` int(11) NOT NULL,
  `user_first_name` varchar(30) NOT NULL,
  `user_middle_name` varchar(50) NOT NULL,
  `user_last_name` varchar(50) NOT NULL,
  `user_mobile_number` varchar(20) NOT NULL,
  `user_email_id` varchar(50) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL,
  `user_account_created_by` int(11) NOT NULL,
  `user_account_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail_verfication_code` longtext NOT NULL,
  `affiliate_account` int(11) NOT NULL,
  `subscription` varchar(255) NOT NULL,
  `byaffiliate_refaral` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rev_user`
--

INSERT INTO `rev_user` (`user_interanal_id`, `user_first_name`, `user_middle_name`, `user_last_name`, `user_mobile_number`, `user_email_id`, `user_username`, `user_password`, `user_status`, `user_account_created_by`, `user_account_created_on`, `mail_verfication_code`, `affiliate_account`, `subscription`, `byaffiliate_refaral`) VALUES
(1, 'Samiran', '', 'Rahaman', '111111111', 'rizvibiz@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, '2016-08-16 14:00:00', '0', 0, 'affiliate', 0),
(52, 'Syed', '', 'Rizvi', '8133777784', 'rizvibiz@gmail.com', 'root', '7219ebd7e7e02b1b38887927edfc7e4d', 0, 0, '2017-09-17 17:56:27', 'gdiMlxJ6', 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rev_admin`
--
ALTER TABLE `rev_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_facebook_ads_campain`
--
ALTER TABLE `rev_facebook_ads_campain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_facebook_info`
--
ALTER TABLE `rev_facebook_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_feedback_betaform`
--
ALTER TABLE `rev_feedback_betaform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_miscellaneous`
--
ALTER TABLE `rev_miscellaneous`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_orders`
--
ALTER TABLE `rev_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_setup_productlist`
--
ALTER TABLE `rev_setup_productlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_shopify_product`
--
ALTER TABLE `rev_shopify_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_storinfo`
--
ALTER TABLE `rev_storinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_stripe_payment_history`
--
ALTER TABLE `rev_stripe_payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_supplier_orders`
--
ALTER TABLE `rev_supplier_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rev_user`
--
ALTER TABLE `rev_user`
  ADD PRIMARY KEY (`user_interanal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rev_admin`
--
ALTER TABLE `rev_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rev_facebook_ads_campain`
--
ALTER TABLE `rev_facebook_ads_campain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5153;
--
-- AUTO_INCREMENT for table `rev_facebook_info`
--
ALTER TABLE `rev_facebook_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rev_feedback_betaform`
--
ALTER TABLE `rev_feedback_betaform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rev_miscellaneous`
--
ALTER TABLE `rev_miscellaneous`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `rev_orders`
--
ALTER TABLE `rev_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26651;
--
-- AUTO_INCREMENT for table `rev_setup_productlist`
--
ALTER TABLE `rev_setup_productlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `rev_shopify_product`
--
ALTER TABLE `rev_shopify_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27943;
--
-- AUTO_INCREMENT for table `rev_storinfo`
--
ALTER TABLE `rev_storinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rev_stripe_payment_history`
--
ALTER TABLE `rev_stripe_payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `rev_supplier_orders`
--
ALTER TABLE `rev_supplier_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `rev_user`
--
ALTER TABLE `rev_user`
  MODIFY `user_interanal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
