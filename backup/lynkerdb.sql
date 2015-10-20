-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2015 at 09:48 PM
-- Server version: 5.5.44-cll-lve
-- PHP Version: 5.5.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lynkerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE IF NOT EXISTS `companies` (
  `company_id` int(15) NOT NULL,
  `company_signup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `company_name` varchar(100) NOT NULL,
  `company_key` varchar(100) NOT NULL,
  `company_status` varchar(10) NOT NULL,
  `company_location` varchar(100) NOT NULL,
  `company_office` varchar(300) NOT NULL,
  `company_contact` varchar(300) NOT NULL,
  `company_domain` varchar(60) NOT NULL,
  `company_logo` varchar(300) NOT NULL,
  `company_cover` varchar(300) NOT NULL,
  `company_summary` mediumtext NOT NULL,
  `company_website` varchar(600) NOT NULL,
  `company_linkedin` varchar(300) NOT NULL,
  `company_angellist` varchar(300) NOT NULL,
  `company_twitter` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_instagram` varchar(100) NOT NULL,
  `company_admins` varchar(300) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_signup`, `company_updated`, `company_name`, `company_key`, `company_status`, `company_location`, `company_office`, `company_contact`, `company_domain`, `company_logo`, `company_cover`, `company_summary`, `company_website`, `company_linkedin`, `company_angellist`, `company_twitter`, `company_facebook`, `company_instagram`, `company_admins`) VALUES
(6, '2015-08-14 10:04:59', '2015-07-22 14:54:19', 'NorthernSpark', 'comp_5dd0e2d2-f84e-4e57-b862-4f725fea1020', 'active', 'London', 'London', '', 'northernspark.co.uk', 'https://logo.clearbit.com/northernspark.co.uk', '', '', 'http://northernspark.co.uk', '', '', 'NorthernSparkUK', '273236889360778, NorthernSparkUK', '', ''),
(26, '2015-08-14 10:04:09', '2015-08-13 15:43:10', 'Lynker', 'comp_88b15c7f-0db6-4f0f-ad84-bb4b34a66328', 'active', 'London', 'London', '', 'lynkerapp.com', 'https://logo.clearbit.com/lynkerapp.com', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/t31.0-8/s720x720/11834884_622617334546891_388196212669691255_o.jpg', 'Lynker aims to change the world, not replace business cards or Vcards, but to create a new behavior. There is a gap and very real need for people from around the world to be able to share their details to whom they please within seconds, no fuss or bother.Â \n\nThe world has changed dramatically in the last decade. People are not found by just an address, an email or phone number, but by social media.Â \n\nAn online identity is being created. We call it a â€˜Lynkerâ€™Â \n\nIt is fundamental to how we all now act professionally and socially. These social and business media apps add so much value but the range and diversity can be hard to manage.Â \n\nLynker aims to set a new behavior, to identify who is with you in the meeting room, conference or bar, to allow you to select the person you are chatting to and exchange a Lynker (whatever details are relevant for that situation) in seconds. It is a unique approach, has huge benefits, and is totally free.Â \n\n\nhttp://lynkerapp.com', 'http://lynkerapp.com', 'lynker', 'lynker', 'LynkerApp', '521312434677382,lynkerapp', '', ''),
(32, '2015-08-14 10:05:51', '2015-08-13 16:26:46', '55factory', 'comp_de761a95-740c-413f-aefd-b5fb7cd30954', 'active', 'London', 'London', '', '55factory.net', 'https://logo.clearbit.com/55factory.net', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/t31.0-8/s720x720/10954563_1031955403487510_8966344912473262283_o.jpg', '#VivienneWestwood #Art #Fashion #Culture #Music 55Pages issue 8 out now Follow us on insta @55factory @christophersims @55factory_sara', 'www.55factory.net,www.twitter.com/55factory,www.youtube.com/user/55tvc,http://instagram.com/55factory,http://55factory.tumblr.com/', '', '', '55factory', '227310953951963,55factory', '23092260,55factory', ''),
(33, '2015-08-14 10:05:39', '2015-08-13 17:01:15', 'Uber', 'comp_3f5d6a4e-c284-4f78-bfdf-7669b45af907', 'active', 'San Francisco ', '1455 Market Street, San Francisco, CA 94103, USA', '+1 877-223-8023', 'uber.com', 'https://logo.clearbit.com/uber.com', 'https://scontent.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/s720x720/11112911_983724481667837_3709836589265986142_n.png?oh=3c4cca083af8ce597c7ba759c0c0661d&oe=563BF1AB', 'Uber is a technology platform that is evolving the way the world moves. By seamlesslyÂ connecting riders to drivers through our apps, we make cities more accessible, opening upÂ more possibilities for riders and more business for drivers. From our founding in 2009 to ourÂ launches in over 200 cities today, Uber&#39;s rapidly expanding global presence continues to bringÂ people and their cities closer.', 'http://uber.com', 'uber.com', 'uber', 'Uber', '120945717945722,uber', '463005569,uber', ''),
(37, '2015-08-14 10:05:35', '2015-08-13 18:15:31', 'SoundCloud', 'comp_0d345764-7432-459d-8883-4dcb2ebb866a', 'active', 'Berlin', 'Rheinsberger StraÃŸe 76, 10115 Berlin, Germany', '+1 415-222-9670', 'soundcloud.com', 'https://logo.clearbit.com/soundcloud.com', 'https://scontent.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/s720x720/10418412_10152228913791059_3435874583580573960_n.png?oh=0c19df6a4f7bd65927ae0ac37a9938bc&oe=567DEF7E', 'Capture a voice, moment or music in seconds or upload audio youâ€™ve already created.\n\nEveryone has sounds to share.\nNow you can share yours.', 'http://soundcloud.com', 'soundcloud', 'soundcloud', 'SoundCloud', '7919071058,soundcloud', '20120087,soundcloud', ''),
(36, '2015-08-14 10:05:29', '2015-08-13 18:15:03', 'Twitter', 'comp_b81a7a92-ac43-487a-81ca-6385a7903776', 'active', 'San Francisco', 'San Francisco, CA, USA', '+1 415-222-9670', 'twitter.com', 'https://logo.clearbit.com/twitter.com', 'https://scontent.xx.fbcdn.net/hphotos-xpt1/v/t1.0-9/s720x720/11707807_939130852810403_5728139329586533340_n.jpg?oh=5f9c610c4b7bd7d62436c2e6ac6adb06&oe=563605AB', 'Twitter is a real-time information network that connects you to the latest stories, ideas, opinions and news about what you find interesting. Simply find the accounts you find most compelling and follow the conversations.', 'https://twitter.com/', 'twitter', 'twitter', 'twitter', '278029242253904,twitterinc', '1122075692,twitterphobia', ''),
(35, '2015-08-14 10:05:24', '2015-08-13 18:14:16', 'Dribbble', 'comp_dc7ce389-283d-4a59-a34a-7044d442a595', 'active', 'Salem', '16 Front Street #202, Salem, MA 01970, USA', '+000141640848', 'dribbble.com', 'https://logo.clearbit.com/dribbble.com', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/t31.0-8/q81/s720x720/1506076_191436521052921_135269150_o.jpg', 'Dribbble is a community of designers sharing screenshots of their work, process, and projects.', 'http://dribbble.com', 'deloitte', 'deloitte-touche', 'dribbble', '173102012886372,dribbble', '320460923,dribbble', ''),
(34, '2015-08-14 10:05:45', '2015-08-13 18:12:42', 'Deloitte', 'comp_e5e333da-2c7d-4286-b89f-80a450b072ec', 'active', 'New York', 'Rockefeller Center, 30 Rockefeller Plaza, New York, NY 10112, USA', '+000141640848', 'deloitte.com', 'https://logo.clearbit.com/deloitte.com', 'https://scontent.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/s720x720/11701207_10153411995379259_4745891041920084825_n.jpg?oh=4d7a568403195e576b78718f026c872d&oe=564D3019', 'Deloitte services include audit, consulting, financial advisory, risk management and tax.', 'http://mycareer.deloitte.com/us/en', 'deloitte', 'deloitte-touche', 'DeloitteUS', '108029944258,deloitteuniversity', '2866331,deloitte', ''),
(49, '2015-08-14 10:04:05', '2015-08-13 21:12:02', 'Nike', 'comp_d6e60ccb-1240-45ca-9d47-4545f94d78b6', 'active', 'Beaverton', '1 One Bowerman Drive, Beaverton, OR 97005, USA', '+1 503-671-4503', 'nike.com', 'https://logo.clearbit.com/nike.com', 'https://scontent.xx.fbcdn.net/hphotos-prn2/v/t1.0-9/s720x720/539069_10151647887303445_1841310459_n.png?oh=daabfb3bac2f47390fa9590f82cec50f&oe=567DC981', 'Nike is an American company that designs, develops, and markets footwear, apparel, equipment, and accessory products.', 'http://www.nike.com,http://nike.com', 'nike', 'nike', 'Nike', '15087023444,nike', '13460080,nike', ''),
(45, '2015-08-14 10:05:05', '2015-08-13 20:07:54', 'Samsung Electronics', 'comp_7d1b2bcd-3c2b-46d4-8596-bcc662d87049', 'active', 'Seoul', 'Gangnam-gu, Seoul, South Korea', '+82 31-200-1114', 'samsung.com', 'https://logo.clearbit.com/samsung.com', 'https://scontent.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/s720x720/1511111_10152742753451693_3980446597008041636_n.jpg?oh=2dbeb507ad73810e52964399441f9b3a&oe=567BB7D5', 'Samsung Electronics is a South Korean multinational electronics company.', 'http://Samsung.com,www.samsung.com/us', 'samsung', 'samsung-electronics', 'Samsungtweets', '117058896692,samsungusa', '', ''),
(46, '2015-08-14 10:04:45', '2015-08-13 20:09:33', 'Barclays Plc', 'comp_b8665e8c-0825-4d1a-913c-f095b72c3e85', 'active', 'London', '1 Churchill Place, Canary Wharf, London E14, UK', '+44 20 7116 1000', 'barclays.com', 'http://www.telecoz.com/images/posts/originals/10837-1.jpg', '', 'Barclays PLC is a global financial services company that provides various financial products and services worldwide.', 'http://barclays.com/IB', 'barclays-bank', '', 'Barclaysplc', '', '', ''),
(47, '2015-08-14 10:04:33', '2015-08-13 20:20:58', 'Airbnb', 'comp_2f14b698-286f-4add-9a42-00b1bfb2adb6', 'active', 'San Francisco', '888 Brannan Street, San Francisco, CA 94103, USA', '+1 415-800-5959', 'airbnb.com', 'https://logo.clearbit.com/airbnb.com', 'https://scontent.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/q82/s720x720/11825804_10153524494067458_8491014897428210724_n.jpg?oh=f9586707bd2f5d4b0e71e1a839663ec5&oe=56795442', 'Airbnb is an online community marketplace for people to list, discover, and book accommodation around the world.', 'http://www.airbnb.com,http://www.airbnb.com', 'airbnb', 'airbnb', 'Airbnb', '324826532457,airbnb', '639837,airbnb', ''),
(48, '2015-08-14 10:04:39', '2015-08-13 20:34:49', 'HBO', 'comp_f45c8f6a-5f4b-4691-a322-607f1bc0079d', 'active', 'New York', '1100 6th Avenue, New York, NY 10036, USA', '+1 212-512-1675', 'hbo.com', 'https://logo.clearbit.com/hbo.com', 'https://scontent.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/s720x720/11825878_10153601420078933_659126422252812308_n.png?oh=da793d2673147399be6363cb5a0961ec&oe=56794ECE', 'HBO&#39;s official website contains schedule information, original video content, episode guides, polls, bulletin boards, and more!', 'http://hbo.com,http://hbo.com,http://twitter.com/hbo,http://twitter.com/hbogo,http://youtube.com/hbo,http://itunes.com/hbo,', 'hbo', 'hbo', 'HBO', '113408673932,hbo', '199393179,hbo', ''),
(50, '2015-08-14 10:04:52', '2015-08-13 21:15:39', 'Panasonic USA', 'comp_517252c7-ff78-44f0-91c1-e972264931ef', 'active', 'Shah Alam', 'Shah Alam, Selangor, Malaysia', '+0358913888', 'panasonic.com', 'https://logo.clearbit.com/panasonic.com', 'https://scontent.xx.fbcdn.net/hphotos-xat1/v/t1.0-9/s720x720/11800517_10153748674959311_5456271281694981335_n.jpg?oh=cfbe508edda58cdc87a22cc2ca919ab0&oe=567AB246', 'Panasonic Corporation manufactures and sells various electronic and electric products under the Panasonic brand name worldwide.', 'http://panasonic.com,www.Panasonic.com,www.Facebook.com/Lumix,www.Twitter.com/PanasonicUSA,www.Facebook.com/PanasonicWorldwideOlympicPartner,www.Flickr.com/Groups/LumixLovers,http://www.facebook.com/ourplacephotos,', 'panasonic-canada', 'nike', 'PanasonicUSA', '144105014310,panasonic', '', ''),
(51, '2015-08-14 10:03:58', '2015-08-13 21:15:53', 'Engadget', 'comp_14b4099d-32ab-4ed1-a2c8-a801d11e245f', 'active', 'San Francisco', 'San Francisco, CA, USA', '+0358913888', 'engadget.com', 'https://logo.clearbit.com/engadget.com', 'https://scontent.xx.fbcdn.net/hphotos-xat1/t31.0-8/s720x720/11212159_10153407868952370_4212812539215936467_o.jpg', 'Engadget is a web magazine with obsessive daily coverage of everything new in gadgets and consumer electronics', 'http://engadget.com,http://www.engadget.com', 'engadget', 'engadget', 'engadget', '5738237369,engadget', '520771652,engadget', ''),
(62, '2015-08-27 09:13:35', '2015-08-27 09:13:35', 'The Guardian', 'comp_4b2e7740-4f63-41c9-a183-0fc2ad22276a', 'active', 'London', 'Home & Country Magazine, 104 New King&#39;s Road, Fulham, London SW6 4LY, UK', '', 'theguardian.com', 'https://logo.clearbit.com/theguardian.com', 'https://scontent.xx.fbcdn.net/hphotos-xaf1/t31.0-8/p240x240/10947384_10153082796981323_2904465683199102921_o.png', 'The Guardian is a British national newspaper that offers daily roundups of news.', 'http://theguardian.com,http://www.theguardian.com', 'itbc-global-limited', '', 'guardian', '10513336322,theguardian', '', ''),
(54, '2015-08-25 19:52:27', '2015-08-25 19:52:27', 'Alpha Hospitals', 'comp_28544920-7fd7-418a-b386-25e949cf0624', 'active', '', '', '', 'alphahospitals.co.uk', 'https://logo.clearbit.com/alphahospitals.co.uk', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s720x720/1798309_663343450390578_1711497397_n.png?oh=854e99e31e2ae527de37e46354548ed7&oe=56391A6A', 'Alpha Hospitals is one of the UKâ€™s leading providers of low and medium secure mental health care facilities and services.', 'http://alphahospitals.co.uk,http://www.alphahospitals.co.uk/', 'alpha-hospitals-ltd', '', 'Alpha_Hospitals', '662958083762448,alphahospitals', '', ''),
(55, '2015-08-25 19:54:51', '2015-08-25 19:54:51', 'Facebook', 'comp_9c5aa3e6-ada7-4733-9720-9d70ecf3952a', 'active', 'Menlo Park', '1 Hacker Way, Menlo Park, CA 94025, USA', '+1 650-543-4800', 'facebook.com', 'https://logo.clearbit.com/facebook.com', '', 'Facebook&#39;s mission is to give people the power to share and make the world more open and connected. Millions of people use Facebook everyday to keep up with friends, upload an unlimited number of photos, share links and videos, and learn more about the people they meet.', 'http://www.facebook.com', 'facebook', 'facebook', 'facebook', 'ref', '', ''),
(56, '2015-08-25 19:55:20', '2015-08-25 19:55:20', 'The Verge', 'comp_50352b4e-a9e4-4f5c-88b8-d55938763a96', 'active', 'Menlo Park', '1 Hacker Way, Menlo Park, CA 94025, USA', '+1 650-543-4800', 'theverge.com', 'https://logo.clearbit.com/theverge.com', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/s720x720/10626578_767222496647429_3412035779801116428_n.png?oh=f7e0cc8356c3a1f48c9cec7fdc956924&oe=56693930', 'The Verge is an American news and media network publishing articles on technology, science, art, business, U.S., world politics and culture.', 'http://theverge.com,http://www.theverge.com', 'the-verge', 'facebook', 'verge', '193742123995472,verge', '', ''),
(57, '2015-08-25 21:55:00', '2015-08-25 21:55:00', 'TechCrunch', 'comp_0e42121a-49a9-431d-b466-e71f08356614', 'active', 'San Francisco', '410 Townsend Street, San Francisco, CA 94107, USA', '', 'techcrunch.com', 'https://logo.clearbit.com/techcrunch.com', 'https://scontent.xx.fbcdn.net/hphotos-xta1/t31.0-8/s720x720/11148559_10153342032647952_4344003044663896479_o.png', 'AllPeers is an open-source application allowing users to share large files with their peers inside a browser.', 'http://techcrunch.com,http://www.techcrunch.com/,http://www.crunchbase.com/,http://uk.techcrunch.com/,http://fr.techcrunch.com/,http://jp.techcrunch.com/,', 'techcrunch', 'techcrunch', 'TechCrunch', '8062627951,techcrunch', '', ''),
(58, '2015-08-25 22:05:05', '2015-08-25 22:05:05', 'University of Greenwich', 'comp_000d7702-176d-4830-802d-20e9f7eb297d', 'active', 'London', 'Old Royal Naval College, King William Walk, London SE10 9NN, UK', '', 'gre.ac.uk', 'https://logo.clearbit.com/gre.ac.uk', 'https://scontent.xx.fbcdn.net/hphotos-xtp1/v/t1.0-9/s720x720/11267371_10153180410400547_2968117624946745751_n.png?oh=0e3e09c8dbebcc519b5c9b0cb924bf84&oe=5678B18E', 'The Public Relations team at the University of Greenwich provides a 24-hour communications service for the media and university staff across all our campuses.', 'http://www.gre.ac.uk,http://www.greenwich.ac.uk', 'university-of-greenwich', '', 'UniGreenwich', '50211435546,www.gre.ac.uk', '', ''),
(59, '2015-08-26 07:50:48', '2015-08-26 06:51:42', 'GitHub', 'comp_542072b5-0b5d-42cd-ba1e-a14af8bf66aa', 'active', 'San Francisco', '88 Colin P Kelly Junior Street, San Francisco, CA 94107, USA', '+1 415-867-5309', 'github.com', 'https://logo.clearbit.com/github.com', '', 'Social coding.', 'http://github.com', '', '', 'github', '', '', ''),
(65, '2015-09-02 17:34:57', '2015-09-02 17:34:57', 'Cream Ibiza', 'comp_9826fb1b-110c-4bea-ac1d-f0a8ee37edb1', 'active', 'Beverly Hills', '9348 Civic Center Drive, Beverly Hills, CA 90210, USA', '', 'cream.co.uk', 'https://logo.clearbit.com/cream.co.uk', 'https://scontent.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/s720x720/11156413_865553606840362_530987668765559863_n.png?oh=0d9d6ad718082baae65ebd2bc38275af&oe=5680C24D', '#CreamIbiza15 âžž Every Thursday at @Amnesia_Ibiza... 11th June to 17th Sept.', 'http://cream.co.uk,http://www.cream.co.uk', '', '', 'CreamIbiza', '350717291657332,creammallorca', '', ''),
(66, '2015-09-06 12:49:22', '2015-09-06 12:49:22', 'Wigwamm', 'comp_b6f6b9b3-533e-4370-9fd5-e1ac136852da', 'active', '', 'London', '', 'wigwamm.com', 'https://logo.clearbit.com/wigwamm.com', '', 'The Property Buying Agent in an App - think Citymapper for real estate.\n\nDonâ€™t just search. Find.\n\nDonâ€™t want to search 1 million properties on Rightmove. Just want to find one to call home.\n\nProperty search + AI = the Wigwamm advantage to buying property.\n\n\nOther stuff Wigwamm has built:\n\nOur app, PropertyShare, will allow an agent to list property, at the property, and compel property owners to instruct them immediately. With an in-built booking system, there are no more booking enquiries or no-shows. \n\nSimone (https://itunes.apple.com/app/simone-helps-real-estate-agents/id819491003) helps agents take better real estate photos, with their iPhone. This will be integrated into PropertyShare\n\nAgents are tied to their desks no more. Be out with clients and impress them with the future of real estate marketing.\n\nAll of the above is just a distraction. Wigwamm, our auction for rental property is the holy grail: bringing the rental transaction/negotiation online.', 'http://wigwamm.com', 'wigwamm', 'wigwamm', 'WigwammCo', '', '', ''),
(67, '2015-09-08 12:03:07', '2015-09-08 12:03:07', 'Companhia Fluminense de Refrigerantes | Coca-Cola', 'comp_a64bc1e9-37fa-4233-ab92-e2d00342680b', 'active', 'Atlanta', '1 Coca Cola Plaza, Atlanta, GA 30313, USA', '', 'cocacola.com', '', '', 'A global leader in the beverage industry, the Coca-Cola company offers hundreds of brands, including soft drinks, fruit juices, sports drinks and other beverages in more than 200 countries. Coca-Cola is meeting the tastes of people around the globe.', 'http://cocacola.com', 'companhia-fluminense-de-refrigerantes-coca-cola', '', '', '', '', ''),
(68, '2015-09-08 12:04:20', '2015-09-08 12:04:20', 'Transport for London', 'comp_953ca3e9-3597-44cc-915c-6a38381be829', 'active', 'London', 'Windsor House, 42-50 Victoria Street, Westminster, London SW1H 0TL, UK', '+44 20 7038 5000', 'tfl.gov.uk', 'https://logo.clearbit.com/tfl.gov.uk', '', 'London Transportation Accessible for All', 'http://tfl.gov.uk', 'transport-for-london', '', 'TfLOfficial', '', '', ''),
(69, '2015-09-08 12:21:07', '2015-09-08 12:21:07', 'BBC', 'comp_f8a764d8-6083-4dc1-9bad-d2b0aeff5496', 'active', 'London', 'London, UK', '+44 1752 260323', 'bbc.co.uk', 'https://logo.clearbit.com/bbc.co.uk', 'https://scontent.xx.fbcdn.net/hphotos-xfp1/t31.0-8/s720x720/11894294_10153065158307217_4628031192183325962_o.jpg', 'BBC is a large-scale broadcasting corporation that offers content to inform, educate, and entertain people.', 'http://bbc.co.uk,www.bbc.co.uk/news', 'bbc', 'bbc', 'BBC', '228735667216,bbcnews', '', ''),
(70, '2015-09-08 12:23:48', '2015-09-08 12:23:48', 'Amazon', 'comp_61dade6d-8fca-43ce-b0c9-1b43c8df6092', 'active', 'Seattle', '123 Boren Avenue North, Seattle, WA 98109, USA', '+1 206-266-1000', 'amazon.com', 'https://logo.clearbit.com/amazon.com', 'https://scontent.xx.fbcdn.net/hphotos-xal1/v/t1.0-9/s720x720/11990580_10153278882858124_4857896447612503224_n.jpg?oh=4f897a082354c1711f4130e60c833748&oe=566BDF39', 'Amazon.com strives to be Earth&#39;s most customer-centric company where people can find and discover virtually anything they want to buy online. By giving customers more of what they want - low prices, vast selection, and convenience - Amazon.com continues to grow and evolve as a world-class e-commerce platform.', 'http://amazon.com,www.amazon.com,www.amazon.co.uk,www.amazon.de,www.amazon.co.jp,www.amazon.ca,www.amazon.fr,www.amazon.cn', 'amazon', 'amazon', 'amazon', '9465008123,amazon', '', ''),
(71, '2015-09-08 12:25:01', '2015-09-08 12:25:01', 'British Airways', 'comp_5459b0da-a16c-4fda-b980-5633bccc6444', 'active', 'Harmondsworth', 'Harmondsworth, West Drayton, Greater London UB7 0GA, UK', '', 'britishairways.com', 'https://logo.clearbit.com/britishairways.com', 'https://scontent.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/s720x720/999778_10152162463950830_1060657362_n.jpg?oh=652aca713dcbcb581797acc53b508881&oe=56A65BEC', 'Official British Airways Twitter account. We love reading your Tweets & are here 24 hours a day, 7 days a week to help. You can also visit', 'http://britishairways.com,http://ba.uk/Qkb3Qg', 'british-airways', '', 'British_Airways', '76903425829,britishairways', '', ''),
(72, '2015-09-08 12:27:05', '2015-09-08 12:27:05', 'The Independent', 'comp_678cf59d-e57f-48b3-8119-9ec70d85cfdb', 'active', 'London', 'Northcliffe House, 2 Derry Street, Kensington, London W8 5TT, UK', '+44 20 7005 2000', 'independent.co.uk', 'https://logo.clearbit.com/independent.co.uk', 'https://scontent.xx.fbcdn.net/hphotos-xpf1/t31.0-8/s720x720/11012497_10152730526416636_1504473963373238016_o.png', 'The Independent is a British national morning newspaper published by Independent Print Limited.', 'http://independent.co.uk,www.independent.co.uk', 'the-independent', '', 'Independent', '13312631635,theindependentonline', '', ''),
(73, '2015-09-08 12:30:33', '2015-09-08 12:30:33', 'Forbes', 'comp_12925407-38dc-49fe-8015-1d8132c28a47', 'active', 'New York', '60 5th Avenue, New York, NY 10011, USA', '+1 800-295-0893', 'forbes.com', 'https://logo.clearbit.com/forbes.com', 'https://scontent.xx.fbcdn.net/hphotos-xpl1/v/t1.0-9/s720x720/10308059_10152394797292509_6407156456196245741_n.jpg?oh=d50dd6b50dd74c531b64f6a2ad05045a&oe=56A391C3', 'Forbes is an American business website that features articles on finance, industry, investing, and marketing topics.', 'http://forbes.com,www.forbes.com,twitter.com/forbes', 'forbes-magazine', 'forbes', 'Forbes', '30911162508,forbes', '', ''),
(74, '2015-09-25 16:58:49', '2015-09-25 16:58:49', 'Libero.it', 'comp_bca38ba2-4375-4e41-a768-0f50ff170cc5', 'active', '', 'Italy', '', 'libero.it', 'https://logo.clearbit.com/libero.it', 'https://scontent.xx.fbcdn.net/hphotos-xpa1/v/l/t1.0-9/s720x720/10390247_10152029697697693_445252662661287038_n.jpg?oh=fea64b96bffd8d0d8988569b80302583&oe=56623709', 'Mail, Portal, Hosting & Cloud Solutions', 'http://libero.it', 'finaxis-spa', '', 'libero_it', '42532172692,libero.it', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `connections`
--

CREATE TABLE IF NOT EXISTS `connections` (
  `connection_id` int(30) NOT NULL,
  `connection_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `connection_key` varchar(200) NOT NULL,
  `connection_sender_key` varchar(200) NOT NULL,
  `connection_sender_privileges` varchar(200) NOT NULL,
  `connection_sender_notifications` varchar(100) NOT NULL,
  `connection_recipient_key` varchar(200) NOT NULL,
  `connection_recipient_privileges` varchar(200) NOT NULL,
  `connection_recipient_notifications` varchar(100) NOT NULL,
  `connection_type` varchar(10) NOT NULL,
  `connection_hidden` varchar(5) NOT NULL,
  `connection_status` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connections`
--

INSERT INTO `connections` (`connection_id`, `connection_timestamp`, `connection_key`, `connection_sender_key`, `connection_sender_privileges`, `connection_sender_notifications`, `connection_recipient_key`, `connection_recipient_privileges`, `connection_recipient_notifications`, `connection_type`, `connection_hidden`, `connection_status`) VALUES
(211, '2015-08-29 08:20:37', 'con_gpmqeABveJydfjyZUbVC550r6rHEBHELXW36', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'basic,work_email,work_phone,mobile_phone,insagram', '', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,mobile_phone,work_email,twitter,facebook,instagram', '', 'user', 'false', 'accepted'),
(212, '2015-08-24 08:18:41', 'con_Oj4V8CcDwpvDkZkpQvMPoukt9xabGCzkRtaP', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,email', '', 'user_7oqzxLqo7hEvPJRCDYK57fmJyhBtQbuMpKhR', '', '', 'user', 'false', 'pending'),
(213, '2015-09-06 18:09:41', 'con_MpqAVg9kXtaKgeUzwRtRQZi0OXMRCZ6felJ5', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,email,phone,twitter,work_email,mobile_phone,skype', '', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,email,facebook,twitter,insagram,skype,phone', '', 'user', 'false', 'accepted'),
(220, '2015-08-26 01:43:08', 'con_s3a0LA6Fr9CvVyZ5fpPimTXgu85BYwZkt4b9', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'user_bS9F7Vhqwi6xu2WTf6icCUdgOvhixIOyvR8s', 'basic', 'user', 'false', 'accepted'),
(221, '2015-08-26 01:50:30', 'con_5ITFmUiLJ3dgdOWRWxbO5ubwkewizwqu9d0l', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'user_FwpK2qqpAYZeBt8MfSSkjgMgwmPzfyHKY2qU', 'basic', 'user', 'false', 'accepted'),
(222, '2015-08-26 02:06:23', 'con_WwbeZYP6O7Ju7bi9C4CM9eM0KzT8tq7kL8tF', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'user_ZC2CqZoBRRSyqXitG0TSfXEQbL6073bXz3uQ', 'basic', 'user', 'false', 'accepted'),
(223, '2015-08-26 02:13:44', 'con_5waGY5BzD2SdDbxGcTO0W0PwExvYTZSSlSqb', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_VAV3VxPVjCs7sf57GHZSI7reIM8VIRvvlko7', 'basic', 'basic', 'user', 'false', 'accepted'),
(224, '2015-08-26 03:00:16', 'con_Wj2beW2d5zSu6vGgZrHFBwL2UtLr0J5MX0S3', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_CvefUg2AmGyq9gqo34q7uCOEeY9dCbv9wzeg', 'basic', 'basic', 'user', 'false', 'accepted'),
(225, '2015-08-26 06:44:27', 'con_JDB4I5XPs9rrchhLGzZ7tTqujS3Cpav3E00h', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_4aXW3qux37qaI4rzMD4ApK432gDciXkcXc3U', 'basic', 'basic', 'user', 'false', 'accepted'),
(226, '2015-08-26 06:51:39', 'con_FvTLVS2rpHFOQAjg2HDtGJ4pluFZH52duKPj', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_YwVxad8k9JE7xbTVzHjpZFqQRK54A9SuwDRw', 'basic', 'basic', 'user', 'false', 'accepted'),
(227, '2015-08-26 07:47:01', 'con_IBpPPlF9iPPhjt4YSxBowwOlc9aRjeFSJUyp', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_G8BTj03z0BhcTtvZcTug69Rb9OaxREopGPcU', 'basic', 'basic', 'user', 'false', 'accepted'),
(228, '2015-08-29 09:11:10', 'con_Qqxq3u3OrcLzKusiXOxP3qztDcBiDddkxAEq', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,skype,mobile_phone', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic,mobile_phone,work_email,facebook', 'basic', 'user', 'false', 'accepted'),
(229, '2015-08-27 01:51:37', 'con_KDKeatCKb2iIW3J0GydHl5SMjY5WrQS6pxap', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'basic', 'basic', 'user', 'false', 'accepted'),
(230, '2015-08-27 02:05:08', 'con_5w8jvOQDxzVSfdmLa6xhkWM4dZiLwpivLgJ7', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'basic', 'basic', 'user', 'false', 'accepted'),
(231, '2015-08-27 02:29:42', 'con_d6T3Vq5Yf7Dt54qs4jMGOjaZZE7xSYmWY6PJ', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', '', 'basic', 'basic', 'user', 'false', 'accepted'),
(232, '2015-08-27 02:34:16', 'con_3AQzixcaMhS09OwYQZYUr8fxwmG754WXuCrC', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic', 'basic', 'user', 'false', 'accepted'),
(233, '2015-08-27 02:51:26', 'con_gApmlCzv9gCtT9xhq77KbTE5k44FEdAKDT2U', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic', 'basic', 'user', 'false', 'accepted'),
(234, '2015-08-27 04:16:12', 'con_XOCSmLYxDD7EMWdYR7DI0PaSmg7G0aPOPhw2', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic', 'basic', 'user', 'false', 'accepted'),
(235, '2015-08-27 04:22:59', 'con_uWQfQluc3kZHff2jgPgsSgefGDcCCTGWFs7q', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic', 'basic', 'user', 'false', 'accepted'),
(237, '2015-09-24 15:23:36', 'con_Qiih8xD5gCshDSziY9xdhOhTzD9tlvR6HZeF', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,insagram,skype,mobile_phone,facebook', '', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'basic,work_email,facebook,mobile_phone,twitter', '', 'user', 'false', 'accepted'),
(238, '2015-08-27 10:34:38', 'con_uzQ53cQjK27Y4DcpYF6crjvfcY0ZxzXRYDLV', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_MlKMBFkmtiVXTVEGQPW69ecxy0TTEOAlZbYv', 'basic,work_email', 'Cunt', 'user', 'false', 'accepted'),
(239, '2015-08-27 15:08:16', 'con_ZPxb89MgXEAiK0GSGiSelDoCR7vUbzX5ip6h', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic,work_email', 'Mental Health Support Worker', 'user', 'false', 'accepted'),
(240, '2015-08-27 15:22:11', 'con_BiTA0Pc8oOldS30zHUQzkWsYHzeihW9I6X90', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,email,facebook,twitter,insagram,mobile_phone', '', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'basic,email', '', 'user', 'false', 'accepted'),
(241, '2015-08-28 01:48:21', 'con_Z98X5UBUmBAg8lDlOPtkica6t9T8to8mraal', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,email', '', 'user_yY8zYrKz4e65fXji2i47ALMov4hkx3BWRzqJ', '', '', 'user', 'false', 'pending'),
(242, '2015-08-28 09:55:48', 'con_F8vGwZByc04T4fFa9BkTaGtEdcXyGCLhEbS0', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,email,skype', '', 'user_sajbsPRbMDsPIKqOiEAv9RIssqIKUqgdqqiL', '', '', 'user', 'false', 'pending'),
(243, '2015-08-28 11:16:28', 'con_P7MUY6BDL3j6bPEOPKqxPfTBvVZMigu2i8Lb', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,email,mobile_phone', '', 'user_AE68OMKGTK0hVIRuax9JGo25bVPMIrI90EcE', '', '', 'user', 'false', 'pending'),
(244, '2015-09-08 08:29:32', 'con_GOTlqGaIQpj7kWtUmUZv8u7VPaZlOqRp8EEt', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,mobile_phone,work_email,facebook,twitter,insagram,skype', '', 'user_VZx94z8zHDkXyCYfOt7Vt426Dq7hAdRq3jt0', '', '', 'user', 'false', 'blocked'),
(245, '2015-09-02 08:31:37', 'con_6q5Pzee4b5cdJ06zXiIpxAW7AYF4lZiljh5O', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,facebook,mobile_phone,skype', '', 'user_4FRaqKCCEWax0SiZfxRzrDTgDcddUMvTodTD', 'basic,work_email,facebook,mobile_phone', 'Chef', 'user', 'false', 'accepted'),
(247, '2015-09-02 16:40:03', 'con_fvB7OHbReWljE0c0AKRZDtcMSekHCiYLEuIm', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_5jZKJsVFGUagJVqqLsiADsScd90hy6hufb9U', 'basic,work_email', '', 'user', 'false', 'accepted'),
(248, '2015-09-02 17:13:11', 'con_yEsCa8pmiqBJR9roZ0sJBpQlxG7ZOZjcuCIz', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_hGTb6a3b9TyKpSMI4FAz6Uu24QKgo2KvCuBy', 'basic,work_email', '', 'user', 'false', 'accepted'),
(249, '2015-09-02 20:04:02', 'con_cGA9af6euf0UtUEcqSJ3Dkw7CXPkzvAG26F6', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,facebook,mobile_phone,skype', '', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', 'basic,work_email', 'Social Media & Digital Exec', 'user', 'false', 'accepted'),
(250, '2015-09-02 20:52:56', 'con_ufQ5EsyMfSuxm7GmCplV76Ww8uxgbBZzKJuj', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,skype,mobile_phone', '', 'user_FgBb6ZWvT6YlkLaBZdumgRKf9ULCDjqdqSfr', 'basic,work_email', 'DJ', 'user', 'false', 'accepted'),
(251, '2015-09-02 20:04:14', 'con_GscGZbHDSKc9tfMQmJYgB9WwqOplZrsAMy7G', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,skype,mobile_phone,facebook', '', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'basic,work_email', 'Musician', 'user', 'false', 'accepted'),
(252, '2015-09-03 08:06:18', 'con_GwRy0u6uMlBJ8SHD6g3IoHdVtvzER3EstqQj', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_UoYRdw2E45uTyfvmZH6l8DSDKq8FtpOdCHUJ', 'basic,work_email', 'Child Molester', 'user', 'false', 'accepted'),
(253, '2015-09-03 08:37:43', 'con_UcM2l93Y6c5jfAyeikDVOHOQwB6sySRiUya7', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_vYLiC7TxvvpY8mo3wfQ2ZzdiiZkg237mVMzo', 'basic,work_email', 'Child Molester', 'user', 'false', 'accepted'),
(254, '2015-09-03 08:57:45', 'con_Q8Sou28p0oCcCOmTgv7rxWf54B8UhahYd5cx', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_kjJUyUJ05EbaR5LuuADTRuJE4z4Cp7aDlPsJ', 'basic,work_email', 'Child Molestor', 'user', 'false', 'accepted'),
(255, '2015-09-03 09:06:39', 'con_gZx3ASubkClKQAkQ90Hcyybip3p2MxdXmEUR', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', '', 'user_kjJUyUJ05EbaR5LuuADTRuJE4z4Cp7aDlPsJ', 'basic,work_email', 'Child Molestor', 'user', 'false', 'accepted'),
(262, '2015-09-03 15:19:07', 'con_IGY6DD0j5GlIOBpapSViw4eVYo7f03IzAxv8', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,facebook,mobile_phone,skype', '', 'user_gjDdQCXJaDGc3IQFj2ABmp0BwJo0KaLRogY4', 'basic,work_email,skype', 'Creative Director/Photographer ', 'user', 'false', 'accepted'),
(266, '2015-09-05 06:59:40', 'con_Rgai6S7AEWSigOvjP6R2KxjoBTIC93KUdK4a', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'basic,work_email,mobile_phone', 'false', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'basic,_phone,work_email,twitter', 'false', 'user', 'false', 'accepted'),
(267, '2015-09-06 12:55:58', 'con_i3AjgKWkYhhdTQvyjgryPtX9TCGzkoVxglKr', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,mobile_phone,skype', 'false', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(268, '2015-09-09 12:28:49', 'con_LULOg0lvQiSj3cXq8ScpjhGrlF7aOgZu5B9b', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,mobile_phone,skype', 'false', 'user_iTRTkRQbSP8OeW8OV5xhvsg3lZXrufFD4rme', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(269, '2015-09-17 16:04:23', 'con_YMDp0C2tDebUD59vvYsBPYMvCuUWMXvFE3Uv', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,facebook,mobile_phone', 'false', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'basic,work_email,work_phone,skype', 'false', 'user', 'false', 'accepted'),
(270, '2015-09-14 13:15:51', 'con_8ZOyExw6R7UfAqLrvJvXlSH7vVmsLaFJ4j9y', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', 'user_OL8I4hi6D0rIYzvGIQ7MDlBYLcChaQlSsosq', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(271, '2015-09-17 23:31:05', 'con_CJBlcDYr7sRXeBPGi3oYdfyM7390Dhx7V4mX', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', 'user_WyFD2Hqj7AOaKtqQvbo7Py4PDUfPKBZB0z5W', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(272, '2015-09-18 08:50:14', 'con_jHT4kX5cM3iUBEv2rpKKhTJMdlslqXIEzwCP', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email,mobile_phone,facebook,skype', 'false', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(273, '2015-09-21 13:53:02', 'con_Qh6aujWcMJGmh2fBURByVQ0hdyu6Io2pzXuX', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'basic,_phone,work_email,facebook,twitter,skype', 'false', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', '', 'false', 'user', 'false', 'pending'),
(274, '2015-09-21 17:52:47', 'con_MC4prIcF6aim96lS3Zukm8St6MA2yIrfbluw', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', 'user_och3fvz5zpZPEA3okxmzuWZamArhkbuydBwi', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(275, '2015-09-21 19:22:43', 'con_VZfp0qxtC2iy0JHDbHr7QPRRCKHgyAYoq4Ck', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', 'user_FyZsXtkkrWAfcBa8qz8oX6FzApmwGcydBszt', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(276, '2015-09-21 23:20:58', 'con_exvmQKXCtUuJI4kJ78RGTQ7QiloM2rAaOZry', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,skype', 'false', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', '', 'false', 'user', 'false', 'pending'),
(277, '2015-09-23 00:17:00', 'con_CI3XIq6pXjzrgIzOJfcKXAKbgKSx3UfAtco6', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,mobile_phone,work_email,facebook,twitter,skype', 'false', 'user_jkczl3JbeVJYQ9xJ8DbEtOdYHjGSLmsZBuqR', '', 'false', 'user', 'false', 'pending'),
(278, '2015-09-23 00:29:34', 'con_6eyJ7V7WQWaPIE7A82BjJJlJwhSdK0pK9Mka', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'basic,mobile_phone,work_email,instagram', 'false', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,skype', 'false', 'user', 'false', 'accepted'),
(279, '2015-09-24 15:31:27', 'con_UKP4eqWMqmm5SeRceEQsAKuWomPvpfMdRs7Z', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'basic,_phone,work_email,facebook,twitter,skype', 'false', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,instagram,skype', 'false', 'user', 'false', 'accepted'),
(280, '2015-09-24 16:33:16', 'con_P5ec5o0EjbHU6v8ixjQ7EtCR2jCSHj0mi5pe', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,instagram,skype', 'false', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', '', 'false', 'user', 'false', 'pending'),
(281, '2015-09-25 00:58:05', 'con_tzFjbZods0HTSxQyGsrxfYu9rmLupBxH07V6', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,instagram,skype', 'false', 'user_VZx94z8zHDkXyCYfOt7Vt426Dq7hAdRq3jt0', '', 'false', 'user', 'false', 'pending'),
(283, '2015-09-25 14:45:16', 'con_QhcbMlBZ3phVfeOEEATrm6HUOLZDQKhASoGw', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,instagram,skype', 'false', 'user_yH7Vj4eKgyoEYYFVDWb2ZUgAorrMwCKYeLJp', '', 'false', 'user', 'false', 'pending'),
(284, '2015-09-25 14:47:49', 'con_yjxyld26mQEBe4oDJsQfiOLq8tSA3ELvSaT4', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,instagram,skype', 'false', 'user_SmRkQpouvAOS3Tdz5b2tcfPOfQLXCUbkbWvS', '', 'false', 'user', 'false', 'pending'),
(285, '2015-09-25 16:58:42', 'con_Ggod3kY2boeJqrVe6J9WrJ6WrZaOVrXsxbvu', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,twitter,instagram,skype', 'false', 'user_XH2r540re90D45djgHkpHe9xWcIgIBWAdOS8', '', 'false', 'user', 'false', 'pending'),
(286, '2015-09-25 17:25:24', 'con_5XRMhmx09y8X7oUdWvvgcHTrd2lDrbCq3j3a', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'basic,twitter,instagram,angellist,work_email', 'false', 'user_yLOQ9oc3W5v9HT5tWtUQpQLMf8CbHIS6pBQs', 'basic,work_email', 'false', 'user', 'false', 'accepted'),
(287, '2015-09-26 01:04:41', 'con_daeToY3ZqHBsGSHdBCFkkxWbh8lefFIjGR7Y', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,instagram,skype', 'false', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', '', 'false', 'user', 'false', 'pending'),
(288, '2015-09-26 03:11:17', 'con_McEho2qYKMjQgEorhm9xRC8EB4M9LAitCRAU', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,instagram,skype', 'false', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', '', 'false', 'user', 'false', 'pending'),
(289, '2015-09-26 03:12:17', 'con_goAVzMLg5WuJm7jey7p0UqQrFBfIVM325ySu', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,mobile_phone,work_email,instagram,skype', 'false', 'user_gp9d93w6e7AAVfiGjT8gk0XiqmiK8aIepHis', '', 'false', 'user', 'false', 'pending'),
(290, '2015-09-26 03:43:06', 'con_kIgFDXPR58HZCQ2RrTK8QVMhb5BP5WrfzxL3', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'basic,work_email', 'false', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', '', 'false', 'user', 'false', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `correspondence`
--

CREATE TABLE IF NOT EXISTS `correspondence` (
  `correspondence_id` int(10) NOT NULL,
  `correspondence_key` varchar(50) NOT NULL,
  `correspondence_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `correspondence_type` varchar(50) NOT NULL,
  `correspondence_subject` varchar(100) NOT NULL,
  `correspondence_content` longtext NOT NULL,
  `correspondence_sender` varchar(100) NOT NULL,
  `correspondence_recipient` varchar(200) NOT NULL,
  `correspondence_hidden` varchar(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `correspondence`
--

INSERT INTO `correspondence` (`correspondence_id`, `correspondence_key`, `correspondence_timestamp`, `correspondence_type`, `correspondence_subject`, `correspondence_content`, `correspondence_sender`, `correspondence_recipient`, `correspondence_hidden`) VALUES
(33, 'mail_Iic9hOh2wkC40iPh0CR5xuShUZJfcmRKvTOD', '2015-09-03 08:57:46', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(32, 'mail_EYTCCyLG0oqYIOyIAGig7Xx7PAbl0OxwGg39', '2015-09-03 08:37:44', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(31, 'mail_ROOTB3pddBrrpfOJKiXTqrIAdebVU8PGQxqh', '2015-09-03 08:06:18', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(30, 'mail_IRiC2G8f7SRaQf0Ujbb8uKaA4K2gzig85tAW', '2015-09-02 18:06:39', '', 'Welcome to Lynker', 'Hi <strong>James</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(29, 'mail_5mzCuQEfWKtIWJjuDkxjHSDB2xJdQWXQeriC', '2015-09-02 18:02:47', '', 'Welcome to Lynker', 'Hi <strong>Pete</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(25, 'mail_Zx66L5TLamLvAw7bUr6Z8QV578f4oEwd2sdI', '2015-09-02 11:29:28', '', 'Rebecca Pharani has invited you to connect on Lynker', '<strong>Rebecca Pharani</strong>  (bex_pharani@hotmail.com) has invited you to connect on Lynker.</center>', 'info@lynkerapp.com', '', 'false'),
(26, 'mail_lqw5BqG3uPHgcY5oiYPmEbMp6PRXUOf65B5A', '2015-09-02 16:40:03', '', 'Welcome to Lynker', 'Hi <strong>James</strong>, <p>Welcome to Lynker...', 'info@lynkerapp.com', '', 'false'),
(27, 'mail_Eq7AYzxLYZsFZrFeePYlJ79tLgkbaswJLxaB', '2015-09-02 17:13:11', '', 'Welcome to Lynker', 'Hi <strong>Pete</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(28, 'mail_sbZxdMCz2qF0Sd7pQLuDZamEMbf8cQuyVkV4', '2015-09-02 17:35:33', '', 'Welcome to Lynker', 'Hi <strong>Adam</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(34, 'mail_79Bxeh5cR24PYGvtjmyvahYLk5ZmDjRFmi3r', '2015-09-03 09:06:40', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(35, 'mail_MwIIuDS34XA6aKKP5WiXwMrCezv5OQmvdZ5B', '2015-09-03 09:08:45', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(36, 'mail_DrzzJdHx3M7Me3VJc7ksBMjwJDmBEyicTLFx', '2015-09-03 09:17:49', '', 'Welcome to Lynker', 'Hi <strong>Frank</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(37, 'mail_uK5b3M7mOI0KUDdTKHwtEyZJXWo0yU5Ww4Xt', '2015-09-03 09:20:07', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(38, 'mail_OoT7sPW6FHjBTqHTMwT6YWcHUUb3teGcwq9O', '2015-09-03 09:22:45', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', '', 'false'),
(39, 'mail_mGoweuKHsBeolmhoIvydt4AAqM57DDkRayhi', '2015-09-03 09:23:44', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(40, 'mail_6GUKQoqZb4ZIYUgzOYiDt9XRgGcJqlfmT52z', '2015-09-03 09:37:39', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(41, 'mail_Cj53M4rmTbyGEQsXpcRqazp5q0umhG4JQZGu', '2015-09-03 13:07:19', '', 'Welcome to Lynker', 'Hi <strong>Christopher</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'mail@christophersims.com', 'false'),
(42, 'mail_cITepF6dlsUHCv7fc803FodBPiwfR2vXEe2Y', '2015-09-03 15:29:43', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(43, 'mail_T88UXrYpwE8Re7sUZTaOwRBAM4LqY29HZcwO', '2015-09-03 15:39:04', '', 'Rebecca Pharani has invited you to connect on Lynker', '<strong>Rebecca Pharani</strong>  (bex_pharani@hotmail.com) has invited you to connect on Lynker.</center>', 'info@lynkerapp.com', '', 'false'),
(44, 'mail_XVrAuO9ClT6tj6z4g3ri4r2dA57csc8gXqKm', '2015-09-04 10:40:11', '', 'Rebecca Pharani has invited you to connect on Lynker', '<strong>Rebecca Pharani</strong>  (bex_pharani@hotmail.com) has invited you to connect on Lynker.</center>', 'info@lynkerapp.com', '', 'false'),
(45, 'mail_3mjMrfKZdq6ryUjwZDBV8m6jdhQ4MMgF0qoh', '2015-09-04 16:47:49', '', 'Rebecca Pharani has invited you to connect on Lynker', '<strong>Rebecca Pharani</strong>  (bex_pharani@hotmail.com) has invited you to connect on Lynker.</center>', 'info@lynkerapp.com', '', 'false'),
(46, 'mail_9kyOQVD2vhZQzOqj2wxcbTS0tfIpwuTzFmiq', '2015-09-06 12:49:45', '', 'Welcome to Lynker', 'Hi <strong>Rayhan</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'rayhan@wigwamm.com', 'false'),
(47, 'mail_hW7y48iSftQpEoWjZADUzt60UU0eMhEU5Bm3', '2015-09-09 06:08:30', '', 'Welcome to Lynker', 'Hi <strong>Meryam</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'meryam.farhat@gmail.com', 'false'),
(48, 'mail_3oisDP7qUpr0lFPJJVDCWEqPOMj4LJfIXp0r', '2015-09-12 11:52:21', '', 'Welcome to Lynker', 'Hi <strong>Benjamin</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'beny.scott@gmail.com', 'false'),
(49, 'mail_TeuwP2fwKQ6MZFLRdlrtaVG6KApf8frVjPhY', '2015-09-14 13:15:52', '', 'Welcome to Lynker', 'Hi <strong>Meryam</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'meryam.farhat@aexp.com', 'false'),
(50, 'mail_z7c9xt8UqkvpT4ZQPTerBPiiSfGcEEG9BMc3', '2015-09-14 13:42:09', '', 'Lynker feedback message from Meryam Farhat', 'test from Meryam Farhat <strong><p>- Meryam Farhat</strong> (meryam.farhat@aexp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk,joe@lynkerapp.com,scunliffe@deloitte.co.uk', 'false'),
(51, 'mail_KwHlUu7eGUCHGf2VAYgfom0pj62LOautB6Il', '2015-09-14 13:43:02', '', 'Lynker feedback message from Meryam Farhat', 'test 2 from Mery <strong><p>- Meryam Farhat</strong> (meryam.farhat@aexp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk,joe@lynkerapp.com,scunliffe@deloitte.co.uk', 'false'),
(52, 'mail_5m5cixuVYUiX95LriIdp9eCQIzeTdSJd6Ffi', '2015-09-17 23:09:29', '', 'Lynker feedback message from Joe Barbour', 'Test feedback message <strong><p>- Joe Barbour</strong> (joe@lynkerapp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk,joe@lynkerapp.com,scunliffe@deloitte.co.uk', 'false'),
(53, 'mail_JU8meyDpEsgEpFJJ8SVIgBkppbPj9odM8c5h', '2015-09-17 23:09:50', '', 'Lynker feedback message from Joe Barbour', 'Question test  <strong><p>- Joe Barbour</strong> (joe@lynkerapp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk,joe@lynkerapp.com,scunliffe@deloitte.co.uk', 'false'),
(54, 'mail_EARGRkMXl0BsW2Ugof54hY8SchlOq2AUshve', '2015-09-17 23:20:00', '', 'Lynker feedback message from Joe Barbour', 'Posting a question <strong><p>- Joe Barbour</strong> (joe@lynkerapp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk,joe@lynkerapp.com,scunliffe@deloitte.co.uk', 'false'),
(55, 'mail_b5C5ZRY6g7ysg3JWUKqRxQLQbEqvRhxTc4O2', '2015-09-17 23:22:50', '', 'Lynker feedback ticket from Joe Barbour', 'Test question from app <strong><p>- Joe Barbour</strong> (joe@lynkerapp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@lynkerapp.com', 'false'),
(56, 'mail_kVhd3HzRvGC8cXcwOH8BldcexqCPxWzLMGQJ', '2015-09-17 23:25:57', '', 'Lynker question ticket from Joe Barbour', 'Question test message! <strong><p>- Joe Barbour</strong> (joe@lynkerapp.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@lynkerapp.com', 'false'),
(57, 'mail_X6Q4DJVOGbfjlBITLCau57UOFPaMQbZE7JyF', '2015-09-17 23:31:06', '', 'Welcome to Lynker', 'Hi <strong>Test</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joe@55factory.net', 'false'),
(58, 'mail_SAir7xlJ6DsvlOCBEoP5prJjEiFZUMTCd6Tf', '2015-09-18 08:13:35', '', 'Welcome to Lynker', 'Hi <strong>James</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'jm.hart92@gmail.com', 'false'),
(59, 'mail_PVTFBwZJmhHltXKB6s3b3U7y9y9E3ZQHPzel', '2015-09-21 13:53:02', '', 'Scott Cunliffe has invited you to connect on Lynker', '<strong>Scott Cunliffe</strong>  (scott.j.cunliffe@gmail.com) has invited you to connect on Lynker.</center>', 'info@lynkerapp.com', '', 'false'),
(60, 'mail_RjZyHSpKT8IgrfSdITxlT6MBbEgitVte9mCG', '2015-09-21 17:52:47', '', 'Welcome to Lynker', 'Hi <strong>Ronald</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(61, 'mail_9QZFk2wTQaCddETH62FBMjoLg4LuFcpIXje8', '2015-09-21 19:22:44', '', 'Welcome to Lynker', 'Hi <strong>Timmy</strong>, <p>Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(79, 'mail_oMZj8i0ouBbuyrX0YwTS5wBWssWEi2cAE3JG', '2015-09-23 00:17:00', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@lynkerapp.com) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/joe&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(80, 'mail_hTQDcLwK4BmRaaq6dfhcELTFsG3cWhO85yC7', '2015-09-23 00:29:00', '', 'Rebecca Pharani has invited you to connect on Lynker', '<strong>Rebecca Pharani</strong> (bex_pharani@hotmail.com) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/bex&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Rebecca</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(81, 'mail_iOzXQoEo36x56rt9Bq5kW5PAM8C5FRoSwMFg', '2015-09-23 00:29:34', '', 'You are now connected with Joe Barbour', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has accepted your invitation to connect. You can now view their profile in the Lynker app! <p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Open Joe&#39;s Profile</a></div>', 'info@lynkerapp.com', 'bex_pharani@hotmail.com', 'false'),
(82, 'mail_3ofrQCObwT9Uc5aEQ50TZizvvhSt4m20Ebik', '2015-09-23 01:56:09', '', 'Lynker question ticket from Rebecca Pharani', 'Test question for Joe  <strong><p>- Rebecca Pharani</strong> (bex_pharani@hotmail.com)<p><p><pre></pre>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(83, 'mail_mzEcxhgeU9KrciPc6O8IlHOQt7aaCEST8oVz', '2015-09-24 13:36:27', '', 'Scott Cunliffe has invited you to connect on Lynker', '<strong>Scott Cunliffe</strong> (scott.j.cunliffe@gmail.com) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/scott.j.cunliffe&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Scott</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(84, 'mail_qdvc9JpX3qrLKwabD3rg9XfayboqiGRyOgFM', '2015-09-24 15:31:28', '', 'You are now connected with Joe Barbour', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has accepted your invitation to connect. You can now view their profile in the Lynker app! <p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Open Joe&#39;s Profile</a></div>', 'info@lynkerapp.com', 'scott.j.cunliffe@gmail.com', 'false'),
(85, 'mail_JALeqamZaFECOZshuAEL5TTduhuLT32ttDBI', '2015-09-24 16:33:16', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(86, 'mail_09mL8JpEdlQfFMrb59Od7Cc6X7mJlxAdBMPz', '2015-09-25 00:58:05', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false'),
(88, 'mail_4PRTWI3EV6RMyimzziy2gOlcgpZgZYeXDVHr', '2015-09-25 14:45:16', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'robbar66@googlemail.com', 'false'),
(89, 'mail_Ugai6RZIh5ppmxMVKdQwEqEZXZELGLowWtES', '2015-09-25 14:47:49', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'joebaba9@gmail.com', 'false'),
(90, 'mail_guOc6mBY4GTX5VcaGsUorpuTj5QE94uks9rp', '2015-09-25 16:58:42', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'benve95@hotmail.com', 'false'),
(91, 'mail_jac3IMvPeSMHdyzypZMX5R8fqW4GzfzMgGFT', '2015-09-25 17:25:24', '', 'Welcome to Lynker', 'Thanks for downloading Lynker!<p>The concept behind Lynker was to reinvent not only the address book but the way people connect and exchange personal details. With that in mind we have come up with a solution we believe to be super easy, fast and even fun!<p>So now you have signed up to Lynker now what you ask? Well we recommend you firstly build up your profile, add your phone number, Skype, Facebook etc and the it&#39;s time to start sharing them with people.<p>THEN, it&#39;s time to start connecting! You of course can connect with people in you existing address book just by going to invite. You can also invite people by email but the best way is using &#39;nearby&#39;. Nearby allow you with twos tap to connect with people in close proximity to you. Amazing right?Thanks for downloading Lynker, and if you have any questions please either reply to this email or send a message via the feedback section in the app<p><p>If you have any questions about this email or Lynker in general just reply to this email.<p><p>Kind Regards, <br/> - <strong>Joe</strong> (Co-founder of Lynker)<p><p>', 'info@lynkerapp.com', 'benvenuto-federico@libero.it', 'false'),
(92, 'mail_qC3OXbFBA3tLUMy40r3ruv8rkzuRs2mMufrh', '2015-09-26 01:04:41', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'jm.hart92@gmail.com', 'false'),
(78, 'mail_FMKESDLWFZhSPUxR24ZmOzj96JVVi70OPFmx', '2015-09-23 00:05:24', '', 'Joe Barbour has just joined Lynker!', 'Your Twitter friend <strong>Joe Barbour</strong> (joe@northernspark.co.uk), has just joined Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'jnewhook@me.com', 'false'),
(93, 'mail_6gI2PfRWFZILTEt2vz2spJlyjDSQoWDo7hjL', '2015-09-26 03:11:17', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'jnewhook@me.com', 'false'),
(94, 'mail_yRTIKqJHFgEsc8Y77Z4ZxDUp5xfppTWMEKqf', '2015-09-26 03:12:17', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'adams1881@icloud.com', 'false'),
(95, 'mail_IXPtkaVgeyIZy49MRkkSo0WGtfgKgMXUEHdP', '2015-09-26 03:43:06', '', 'Joe Barbour has invited you to connect on Lynker', '<strong>Joe Barbour</strong> (joe@northernspark.co.uk) has invited you to connect on Lynker, why not connect with them?<p><div style=&#39;margin-top:50px; margin-bottom:30px; font-weight:400; font-size:11px;&#39; align=&#39;center&#39;><a href=&#39;http://lynkerapp.com/IFOQlKVm&#39; target=&#39;_blank&#39; style=&#39;padding:14px; text-decoration:none; color:white; background-color:#F23E5B; border-radius:4;&#39;>Lynk-up with Joe</a></div>', 'info@lynkerapp.com', 'joe@northernspark.co.uk', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `device_id` int(20) NOT NULL,
  `device_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device_key` varchar(100) NOT NULL,
  `device_user` varchar(100) NOT NULL,
  `device_name` varchar(100) NOT NULL,
  `device_token` varchar(100) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `device_enabled` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`device_id`, `device_timestamp`, `device_key`, `device_user`, `device_name`, `device_token`, `device_type`, `device_enabled`) VALUES
(21, '2015-09-05 10:58:45', 'device_x5HysckxU4cvhCV5lOGHp079rC2mKt58oCAJ', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'iPhone INurEndo Old', '97967c673db9d37ec9de8bc26f629883d9c56a3886d282090799cdb360ca6ecb', 'iPhone', 'false'),
(22, '2015-07-22 18:24:31', 'device_gHEFbq6FukjKmtV4ZgsQZ0aB2tB0vffBMJbS', 'user_8s27CMc3wOkttAot464LOr7xcwImCx4ATVBq', 'iPhone INurEndo Old', '10628ee81ee3110707d5e7117f660cb3c05e167c33f7c7b4a6782e5a46f88257', 'iPhone', 'true'),
(23, '2015-07-22 18:39:09', 'device_HhVC4lSQcjPIixPr4ALeLvIUfAVIzxIcFyED', 'user_jm0L4WpHLmoc4tyKsI7eeM2uOx8dhg0vtR7r', 'iPhone INurEndo Old', '82a49600370805173557edd1fac590c67299f19a7f48f9f56fb3998c49442b7b', 'iPhone', 'true'),
(24, '2015-08-02 05:14:33', 'device_ezRFpd3PksEPxEUPBFhpZhXZegy9ClKLPwl5', 'user_k5BHoy5vIblMivP3cwJaoyS0G6yAXpPcjkKx', 'iPhone INurEndo Old', 'ac6b45d73e6e91ecec9925c48b91ac83979129b4cbe52f7a16afe71642b3a88b', 'iPhone', 'true'),
(25, '2015-08-02 05:30:26', 'device_zxD6ywKYMqpud6xVXDWewFI3rKSV7t6AUzxi', 'user_k5BHoy5vIblMivP3cwJaoyS0G6yAXpPcjkKx', 'iPhone INurEndo Old', '7d9d22dc40fe640c0c74b7cf256169fa46c3b559db1a7f5f35d1b1367645e6f3', 'iPhone', 'true'),
(26, '2015-08-03 08:30:43', 'device_vXXbxSkXFpuAhiTE7KwJFl0A0mmswbrR3eXv', 'user_k5BHoy5vIblMivP3cwJaoyS0G6yAXpPcjkKx', 'iPhone INurEndo Old', '9556ee7cc46a78cf9164aef8d210f3822ad498fb41faaa56b5545ba8528c6bc5', 'iPhone', 'true'),
(28, '2015-09-02 18:02:55', 'device_LsHXbHvxTsBhkOouAm5UtcAVbsXTCDIiVk6W', 'user_FgBb6ZWvT6YlkLaBZdumgRKf9ULCDjqdqSfr', 'Test iPhone', 'cca0f0fa5d2e520dc4e2b7ac2665cb2e77eb48a5e96cc81f2e79ebeda5d5931c', 'iPhone', 'true'),
(29, '2015-09-22 19:36:18', 'device_QU4MhWRwsMxDwB5XoLmGMWu5Mfyll4m2OhI0', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'iPhoneINurENDO 6', 'c4c5fde3ac9a03b783287c26eea9876db1451694eb4eed8b3a41e7ed2ba88286', 'iPhone', 'true'),
(30, '2015-09-22 19:35:19', 'device_CJ7WSBScYoyfuf9Dm4o8R0JBAsKBZLqwqmi8', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'iPhoneINurENDO 6', '78f8d27ee6874d9b7833904380a94ab2175d4b1a5942d3b602834ef7fa280d5f', 'iPhone', 'true'),
(31, '2015-08-26 01:22:25', 'device_tQGjkbEgT97gkEDrkmY8ALZoYGUIl6XFLuT2', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'iPhone INurEndo Old', 'fbcdf52c3ea8febf28aa784412129de22b8d800f036a998e777284c663217d1b', 'iPhone', 'true'),
(32, '2015-09-22 05:10:51', 'device_qvu89lMEgWbFKyMgfSxC8DoTyqXcHHg28E5b', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'George&#39;s iPhone', '0e90851523a0dd7d64ef0ad8f5aea3429b709b75b074388b327a7a98849a5502', 'iPhone', 'true'),
(33, '2015-08-27 05:38:09', 'device_6SDWvCACvfCKHaH7uvRGw6zf4ChChrci9G5y', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'iPhone INurEndo Old', '0524dbc1433461efa8e8a04fafbb1648a577c0615bdbbf0ddeae92583e0aec02', 'iPhone', 'true'),
(34, '2015-08-27 06:33:19', 'device_u2wRkts0QdIbfVZTFQ7JR4WvcdWhT6ye2VVg', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'iPhone INurEndo Old', '981bef1be4040b5932d48a573a1bec2b7e0792c645ac43ce0e56ce1c739f8423', 'iPhone', 'true'),
(35, '2015-09-22 10:13:27', 'device_o3CgbkZtt3mhrzKvgqz0sr59z5df4KWiEptJ', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'Scott Cunliffe', 'd3b06678084462d1aeb7daefcfd103c4508ce1b3ccf1e1d389ee307b7e35e4dd', 'iPhone', 'true'),
(36, '2015-08-29 05:14:41', 'device_YybCJuv3lca98x6XgG3pSPKyoSUYuT0il2PW', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'iPhone INurEndo Old', '7017fd8829e424ca58825305583f53b54536ad752795937725b0f44cbb536538', 'iPhone', 'true'),
(37, '2015-08-29 17:49:04', 'device_lH8vDAt369fKCKMpv3tjmOUvM0y0rICChE2P', 'user_4FRaqKCCEWax0SiZfxRzrDTgDcddUMvTodTD', 'federico&#39;s iPhone', '561b7fb33fcc5f4ea4705cd8859a7ffb0f5a39d0ebcac8aa2e36638849810f44', 'iPhone', 'true'),
(38, '2015-09-02 17:35:39', 'device_i9hbZtyDovVgfjB2dLJrR9oeBbEs08Ud72e2', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', 'iPhone (4)', 'fa3817a02cc5f81ff9cb95d0f07af36256a46d2fac36690a6a48dd9d9843bc28', 'iPhone', 'true'),
(39, '2015-09-05 06:59:22', 'device_HteGTpKlimkG2DYbsH4sRfXO6RFX4ItB6xcT', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'James Newhook', '2e77867877925a0b0a333d64d5f6a93016d0882127e092eed2d96885a5a3ddaa', 'iPhone', 'true'),
(40, '2015-09-06 12:49:51', 'device_zVG5ov0VRG4wSRAVkRpJVXMLt25jWLrrCXlQ', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', 'She Bangs, Oh Baby', 'e0870eb785ef2c885e37a7b0581e3d7435a80c464f8ed7b8ce1b91df1374ef1f', 'iPhone', 'true'),
(41, '2015-09-14 13:18:17', 'device_QBbhUgxaju86XhI0wTaHREr8DhSqoRX8m3f7', 'user_OL8I4hi6D0rIYzvGIQ7MDlBYLcChaQlSsosq', 'Mery&#39;s iPhone', 'b89308680feff9a4e808ad9078560ed0f271d88b34f61d5e54772951cf353bb4', 'iPhone', 'true'),
(42, '2015-09-12 11:52:32', 'device_F9iewv2uWViVHqVjXiKU6IVi5o8jsGKXJX26', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'Banjamin&#39;s iPhone', 'f35d55732a6a125618b1858357e122712b7c6348d13d8a324876279b17d89262', 'iPhone', 'true'),
(43, '2015-09-18 08:13:40', 'device_FtlhQ2uJCCxsvELsR6EiEfVLWRZPRvIrOUzz', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', 'James-Hart', '8c710565ece19887d2ab3d65cb628a865b1ccf0fb0d5eccb07ba58c65b5259ae', 'iPhone', 'true'),
(44, '2015-09-23 02:20:47', 'device_7bCJABZ8mWOHV0rZQHHuqwYioVqJAIfyOH8i', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'iPhoneINurENDO 6', '3504c780458998382c485ca8c21ea129350c7b93b950db662c5ced58c0074629', 'iPhone', 'true'),
(45, '2015-09-26 00:46:33', 'device_i7eue8r6WR9lDhZzGudhuhgBD2JFiBjrCoPG', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'iPhoneINurENDO 6', '5a9fad42db188ef16e3e0de79b676e15978135be8c80e38a6e10685f49eba23b', 'iPhone', 'true'),
(46, '2015-09-26 00:34:00', 'device_Z0tTk228DiMH7WSH0AGAkJ3ZgaYXzhwp9Pcj', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'iPhoneINurENDO 6', 'bbfb75097fc52b39625785a98e03cd28a2dd64690f0c0b7ccc4587fcf7134584', 'iPhone', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE IF NOT EXISTS `networks` (
  `network_id` int(50) NOT NULL,
  `network_key` varchar(60) NOT NULL,
  `network_type` varchar(20) NOT NULL,
  `network_user` varchar(80) NOT NULL,
  `network_status` varchar(10) NOT NULL,
  `network_token` varchar(100) NOT NULL,
  `network_username` varchar(50) NOT NULL,
  `network_page` varchar(200) NOT NULL,
  `network_data` mediumtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`network_id`, `network_key`, `network_type`, `network_user`, `network_status`, `network_token`, `network_username`, `network_page`, `network_data`) VALUES
(13, 'nw_i0hJUr0xocljclmETazZYaQroGo', 'twitter', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'revoked', '', '', '', ''),
(12, 'nw_JTKvalAhsbVvrkgR9bWp0Rm8AHE', 'facebook', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'active', 'CAAVRq7jrQKgBADSA6ZCGzy9pOe8zQz1eQqzVuWr1NLHeVOThPbsC5EdK7PMGsxpSaC3fYZAX7njhoYbZBuJS7r6el5KcMv8FsXz', '10204030157652530', 'https://www.facebook.com/app_scoped_user_id/10204030157652530/', 'joebaba9@gmail.com'),
(11, 'nw_CoKrkzuIMt5elP4FVoPCXBeHy7I', 'instagram', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'active', '463375653.b882fcd.d4295a53494a4006a20a7a8c1492e9e5', 'thebarbican19', 'http://instagram.com/thebarbican19', ''),
(17, 'nw_zMHp83fhJFDRZMY3abJgZXgBu4u27GIAohPq', 'soundcloud', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'active', '', '17145637', 'https://angel.co/', ''),
(18, 'nw_zQquJYWkOz2srWDWtjY4W3AI4oy0qY2TEldf', 'instagram', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'active', '', 'thebarbican19', 'passed_page', ''),
(19, 'nw_dZIwL9Mwps4ChYvIzh42PlqqoHHmKpyOf7aV', 'facebook', 'user_4FRaqKCCEWax0SiZfxRzrDTgDcddUMvTodTD', 'active', '', 'federico.benvenuto.96', '', ''),
(20, 'nw_AmbD4mtkXvBee3tO30F72qxgg5rQr7lRooqi', 'facebook', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'active', '', '412443168', 'passed_page', 'joebaba9@gmail.com'),
(24, 'nw_a8r56P4L9fCy8xetRlxTdG6dPzcM0Z352o0Y', 'twitter', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'active', '', 'Cunliffe81', 'passed_page', ''),
(21, 'nw_kGkPT2dtBIOGwpSoVIsRdAoOtMFppXmzuyee', 'twitter', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'active', '', 'jamesnewhook', 'passed_page', ''),
(22, 'nw_GSYbCuLWXH5TxF4RvvPzICB8bCGJcKBMuqT0', 'facebook', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'active', '', '10205055030355261', 'passed_page', 'georgeketchen@hotmail.com'),
(23, 'nw_JixCeFgIZiYjhKsXyqsBcYxrRJoT9P6OXxg3', 'facebook', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'active', 'CAAVRq7jrQKgBAIGmtVZCaEbz4oJZBf3aIKZCWVKZAxgt3GJXJ5iUZCUCESyp3R5HVwNKxZBa9po96kB2HFUlgS95EC6x4OoLKC0', '10152959530986211', 'https://www.facebook.com/app_scoped_user_id/10152959530986211/', 'scott.j.cunliffe@googlemail.com'),
(25, 'nw_zodQTy3ewtbqU2WMk7J7PA8tQM3kZEKtSSaF', 'twitter', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'revoked', '', '', '', ''),
(29, 'nw_5eFAS6VCEKFHRY7X3uTqVsweTEwpXbzWfasY', 'twitter', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'active', '', 'benyscott', 'http://twitter.com/benyscott', ''),
(30, 'nw_BsWZW9Xje75QxQg8uSfGAigFWoofxMxY5jOV', 'facebook', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'active', 'b', '10208005878043770', 'https://www.facebook.com/app_scoped_user_id/10208005878043770/', 'beny.scott@free.fr'),
(31, 'nw_WxtFyj3E8ss8mqGLv3GI50IzKwQLyUiqlFZP', 'instagram', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'active', '', 'benyscott', 'http://instagram.com/benyscott', ''),
(33, 'nw_bzrgBMMeRagiu0w6avIJO6YuRm2FMU7SosZP', 'instagram', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'active', '463375653.b882fcd.d4295a53494a4006a20a7a8c1492e9e5', 'thebarbican19', 'http://instagram.com/thebarbican19', ''),
(34, 'nw_rzcMBFODk2xYBSQZhCzQhvBVSzMoSHaebgRC', 'facebook', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'active', 'CAAVRq7jrQKgBADSA6ZCGzy9pOe8zQz1eQqzVuWr1NLHeVOThPbsC5EdK7PMGsxpSaC3fYZAX7njhoYbZBuJS7r6el5KcMv8FsXz', '10204030157652530', 'https://www.facebook.com/app_scoped_user_id/10204030157652530/', 'joebaba9@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(20) NOT NULL,
  `notification_key` varchar(200) NOT NULL,
  `notification_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notification_user` varchar(200) NOT NULL,
  `notification_message` varchar(1000) NOT NULL,
  `notification_type` varchar(10) NOT NULL,
  `notification_data` varchar(300) NOT NULL,
  `notification_status` varchar(10) NOT NULL,
  `notification_hidden` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_key`, `notification_timestamp`, `notification_user`, `notification_message`, `notification_type`, `notification_data`, `notification_status`, `notification_hidden`) VALUES
(249, 'alert_eP5iSPIoKOqHaq3KmGE5xK56pOZKm26vK2Et', '2015-08-24 08:04:57', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Rebecca Pharani] has invited you to connect', 'invite', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(250, 'alert_jf0IeAzWVWvO3fsurjajeLjdKSQC0vIaADJI', '2015-08-25 02:53:30', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[Joe Barbour] accepted your invite to connect.', 'response', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(251, 'alert_7Zt8eGtVedxZXeGHu9yjXZEb2oBFp7OlWcp0', '2015-08-24 08:18:41', 'user_7oqzxLqo7hEvPJRCDYK57fmJyhBtQbuMpKhR', '[Joe Barbour] has invited you to connect', 'invite', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'pending', 'false'),
(254, 'alert_wfBJ0fgvlctf8PWiRHTham3spcupTZHf5dTV', '2015-08-25 02:53:28', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'Hello Lovely!', 'general', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(256, 'alert_ZMWpwxRkZpB8x8g4bHdhzVu8K7lhQHWFpJYP', '2015-08-25 04:12:32', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Joe Barbour] has invited you to connect', 'invite', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'viewed', 'false'),
(257, 'alert_rXZOt7gKbpvzOi4JT5RDYSsA3cRsVfoc3hRq', '2015-09-06 18:07:14', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', '[Joe Barbour] accepted your invite to connect.', 'response', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(276, 'alert_mdVaD3DSAsO43WgKtsY4xGGpkr3XD8SUfIVI', '2015-08-27 14:14:47', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'There is a new version of [Lynker 9] available for download!', 'appstore', 'http://apps-ios.crashlytics.com/projects/55bfb1c1f0de9e4b4c00000f', 'viewed', 'false'),
(277, 'alert_lj2CUm2odUKFDZhClky6eEpmgVddTX057SBV', '2015-08-26 01:28:17', 'user_BFItMz3kkClrWkC50DCtfvvz2kBPK42cAEAh', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(278, 'alert_BEPyoQ5rSiG9AxoRXYHuSFvspq44JtygYhIg', '2015-08-26 01:29:52', 'user_f3fF2ymGFCcYHAz7yJz5FbEKl3K3vXWEV2bM', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(279, 'alert_bwfPbQfeQGXGOZW9Y7JOOEdJLUtuQTJRjPBk', '2015-08-26 01:32:45', 'user_QpHocL6cizqXgI7UBHBp6SJ2G8vVMLXt2zK8', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(280, 'alert_KwfUXyfQpCBOqtUEpCeq8SmRLTGryywdUB3M', '2015-08-26 01:34:36', 'user_P4Quc5vqmd3AZ67R0tZy62LHpxzCeqZTpFer', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(281, 'alert_GOMXjcKfsdzPP2soh8RQ3Ks8OEL8VDiwlWkz', '2015-08-26 01:37:25', 'user_oFo97590degbaWCtLHPi8seQ7iiLE6pWFDVC', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(282, 'alert_qPQGmiow0VLgSyERrxfTGs9ihcUpKAq5gbBt', '2015-08-26 01:39:47', 'user_jpTeoGqbEdiocqwY8TVSRJJGGzYWQoU5CE9Q', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(283, 'alert_a8gwoCw0tsIeIkAWsfBlBW849aVhudZyf6Ut', '2015-08-26 01:43:08', 'user_bS9F7Vhqwi6xu2WTf6icCUdgOvhixIOyvR8s', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(284, 'alert_ILQXXk9oQtPy7M5VQx3JYrxX5HP6VlPy2vmQ', '2015-08-26 01:50:30', 'user_FwpK2qqpAYZeBt8MfSSkjgMgwmPzfyHKY2qU', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(285, 'alert_IvKbZW3IRSAu7mxUXR22YQxBXT7gWMxz8cB2', '2015-08-26 02:06:23', 'user_ZC2CqZoBRRSyqXitG0TSfXEQbL6073bXz3uQ', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(286, 'alert_r8Ry2i8VYEBu5VpXh9QjUpmDuvTQeS3zUKYL', '2015-08-26 02:13:44', 'user_VAV3VxPVjCs7sf57GHZSI7reIM8VIRvvlko7', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(287, 'alert_4wFJoXxmXTAIpu5bkUGjwuzeyScUqxaoXJ3b', '2015-08-26 03:00:16', 'user_CvefUg2AmGyq9gqo34q7uCOEeY9dCbv9wzeg', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(288, 'alert_iohpuLhLmOEJsHdG4v4PiErETEsAzjdLxk0V', '2015-08-26 06:44:27', 'user_4aXW3qux37qaI4rzMD4ApK432gDciXkcXc3U', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(289, 'alert_aG4pw8GbDru7xpMzkwXWjpZUggG8LhgLSb5f', '2015-08-26 06:51:39', 'user_YwVxad8k9JE7xbTVzHjpZFqQRK54A9SuwDRw', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(290, 'alert_924zb8GCoRsSbQAlA7IRSYb9aJZz8Ga8C8xD', '2015-08-26 07:47:01', 'user_G8BTj03z0BhcTtvZcTug69Rb9OaxREopGPcU', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(291, 'alert_mQSIMJ9tZRz2jrgBkizCqxWJxighGr4XbQxO', '2015-08-27 15:24:28', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(292, 'alert_pXx4O0XE85XqK7iRvFwwLVcxazKEWf8g3zaK', '2015-08-27 15:11:03', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[George Ketchen] has just joined Lynker!', 'referal', 'user_JKqMELbBzUFSdg8r77GVCqmBoOKs3yrC9KkH', 'viewed', 'false'),
(294, 'alert_v8rCru285AoJhUHqsDx0SYP0rlmmBor0qLxG', '2015-08-27 08:54:37', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(295, 'alert_OxeCq3DovdKbO3MDdfHrcJAcaL7jFVGjoPLD', '2015-08-27 10:34:38', 'user_MlKMBFkmtiVXTVEGQPW69ecxy0TTEOAlZbYv', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(297, 'alert_KS0bRjvHEOO2Dp2yyoYsEE8RRLSU3ypIkfJ3', '2015-08-27 15:24:32', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', '[Joe Barbour] has invited you to connect', 'invite', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'viewed', 'false'),
(298, 'alert_6mGKSWW59BzcDuiWViqg9z3eDyb084L8gmOY', '2015-08-27 15:27:04', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', '[George Ketchen] accepted your invite to connect.', 'response', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'viewed', 'false'),
(321, 'alert_cEHkTYA36Hk4h58FLgQGCb2xjgvSpBgvbOGU', '2015-09-02 11:29:36', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[Joe Barbour] has shared their facebook and insagram details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(322, 'alert_O3qmFWxf5ildeT46BplwSzF80hH0dDHSA396', '2015-09-07 11:29:56', 'user_VZx94z8zHDkXyCYfOt7Vt426Dq7hAdRq3jt0', '[Joe Barbour] has invited you to connect', 'invite', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(323, 'alert_UfypbMXkAW0k9Kb8yYkCo0kR4MajwkjgqLAv', '2015-08-29 07:30:51', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Rebecca Pharani] has shared their mobile phone details with you', 'update', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(324, 'alert_TLQSoJsIVTbD7CdmtI4BDz2EMPt2vUaewUWJ', '2015-08-29 08:20:45', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Rebecca Pharani] has shared their insagram details with you', 'update', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(325, 'alert_BUzLMk0POiYXqG8AhrCT37mrHWXu8LTzwmgd', '2015-08-31 09:51:41', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', '[Joe Barbour] has shared their facebook details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(326, 'alert_3UfFksoI2qacsd5Ggyc8VB02SfKhWqePejqp', '2015-08-29 17:48:57', 'user_4FRaqKCCEWax0SiZfxRzrDTgDcddUMvTodTD', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(327, 'alert_4ddgjwWaRxkA04DiS59cBP9t4akRJCKHGOPU', '2015-08-29 18:11:21', 'user_4FRaqKCCEWax0SiZfxRzrDTgDcddUMvTodTD', '[Joe Barbour] has shared their , facebook, mobile phone and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(328, 'alert_67CZvZ7h92AtIlCZufjmOeDXsi4uLChHEOy4', '2015-09-03 07:44:26', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', '[Rebecca Pharani] has invited you to connect', 'invite', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(329, 'alert_Dk2RGcOlhclyI5E2OC34jFpdcAO5VHmtWeey', '2015-09-02 16:40:02', 'user_5jZKJsVFGUagJVqqLsiADsScd90hy6hufb9U', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(330, 'alert_w6YxC9jv2ZZlubkvfrDSDTrmjc0XRhZhdSEJ', '2015-09-02 17:13:11', 'user_hGTb6a3b9TyKpSMI4FAz6Uu24QKgo2KvCuBy', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(331, 'alert_ZxZlYcRYkUkHrS2jhiXpEVXSvHTi7Xa0k4dd', '2015-09-02 17:35:32', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(332, 'alert_APFQZtmHcEeq0CHd96QDZKkuOGvUZDDumdfc', '2015-09-02 18:02:47', 'user_FgBb6ZWvT6YlkLaBZdumgRKf9ULCDjqdqSfr', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(333, 'alert_K3EI4LRsrk7J3OecpgEt3Yyuou2oJm4pky3e', '2015-09-02 18:06:38', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(334, 'alert_l8V23LKuIAcXStR3rFmHfdgyjBR7IfoYhdUf', '2015-09-04 16:46:56', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', '[Joe Barbour] has shared user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM skype and mobile phone details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(335, 'alert_gsrFr7f50lIE4CceLLfcjqdITZqc4wmfPDK6', '2015-09-17 19:44:38', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', '[Joe Barbour] has shared user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM , facebook, mobile phone and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(336, 'alert_wqGjgyaPs07YDzy0zsPWK48at9gBgedGuKQB', '2015-09-04 16:47:01', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', '[Joe Barbour] has shared user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM facebook details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(337, 'alert_WXA6gBUp6bIEyAdrkYEFO586qkRAkwk8jL8u', '2015-09-02 20:52:56', 'user_FgBb6ZWvT6YlkLaBZdumgRKf9ULCDjqdqSfr', '[Joe Barbour] has shared user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM skype and mobile phone details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'pending', 'false'),
(338, 'alert_IoF4kUSQuaGpGkyc7beAAkYRhUWWjhBWv8UK', '2015-09-08 00:13:38', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[Scott Cunliffe] accepted your invite to connect', 'response', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'viewed', 'false'),
(339, 'alert_zgDFI5yfRJGFewuDdJ7uvoITw5mf2zHvJf5i', '2015-09-03 08:06:18', 'user_UoYRdw2E45uTyfvmZH6l8DSDKq8FtpOdCHUJ', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(340, 'alert_2PHQapQ7fIBJHtbt2EG9qGxFmizMgmrc2YS6', '2015-09-03 08:37:43', 'user_vYLiC7TxvvpY8mo3wfQ2ZzdiiZkg237mVMzo', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(341, 'alert_VhS6ucpWLDspkiES06Vda4F7SZJooWXa4Fap', '2015-09-03 09:06:39', 'user_kjJUyUJ05EbaR5LuuADTRuJE4z4Cp7aDlPsJ', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'pending', 'false'),
(342, 'alert_f0TfFRWYv4PwbpFRJo07LgfOyZ6ivoTEiGJP', '2015-09-03 09:08:45', 'user_rafbhJacllKqRyUYTcTE7Z9H73iKsR9MReP3', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(343, 'alert_OLsppRDVhMIIi4cbmkqAv0hRgtTVfR2TtpcL', '2015-09-03 09:17:48', 'user_FocobRwj3bu53aScodAYkkUEpcxBUMKu6MHb', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(344, 'alert_QQz8kPvycW7brxEHP5WIWVkraR4EPWeADDyO', '2015-09-03 09:22:45', 'user_6bIOzBRiszlGDCA0zcE77uvuomKjME0MJzsd', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'pending', 'false'),
(345, 'alert_ttLVSlr7tlITO9OxCZTeuIlp3tAp2vJkOq6x', '2015-09-03 09:23:43', 'user_FteMfOvkeCDZctIZc7fCqcvbSk2OMfriDz0I', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(346, 'alert_TVm4OKT63D2fe84dX6KK4DfiaBRsCURlJ4fo', '2015-09-03 09:37:38', 'user_p0CA4sZ7QLc7qSgMLwpSXSadDCltMK22Bytz', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(347, 'alert_8wVoibjgBHQ2oC5Y2qWdoJF9gxtV2pv5KgmX', '2015-09-03 13:07:18', 'user_gjDdQCXJaDGc3IQFj2ABmp0BwJo0KaLRogY4', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(348, 'alert_RbvmTTlvT4OTrkT6Yem9cmg5sjzm0qfIvEZf', '2015-09-03 15:18:01', 'user_gjDdQCXJaDGc3IQFj2ABmp0BwJo0KaLRogY4', '[Joe Barbour] has shared his facebook, mobile phone and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'pending', 'false'),
(349, 'alert_tfGf7r5vFOO68Ef4rQEp4UbBd9qaTQTgWqqT', '2015-09-03 15:29:42', 'user_EqZFdjfZu0LOYPYEtS2OyXT3xfcEEZF9fzFm', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(350, 'alert_LtGzbrVsXLdZQlcWkd5rEIBQD8GvSGfuZQT5', '2015-09-03 15:42:27', 'user_EqZFdjfZu0LOYPYEtS2OyXT3xfcEEZF9fzFm', '[Rebecca Pharani] has invited you to connect', 'invite', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(351, 'alert_DdJpO4u4dQFxDv7DdT8UWmaFQKP0vBB3Jchs', '2015-09-04 16:47:58', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[Ronald Mcdonald] accepted your invite to connect', 'response', 'user_EqZFdjfZu0LOYPYEtS2OyXT3xfcEEZF9fzFm', 'viewed', 'false'),
(352, 'alert_2K4RdBjMGePJYaVBhLhL0cXB2oCfiRmasgRz', '2015-09-06 18:07:00', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', '[Rebecca Pharani] has invited you to connect', 'invite', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(353, 'alert_R3zqX4PdrWUvgbY37IyCtzBZdOiW9yxUwWbj', '2015-09-05 06:59:31', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', '[Rebecca Pharani] has invited you to connect', 'invite', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'viewed', 'false'),
(354, 'alert_cdKJuh2ocRGVHP6ID8jo6RdhlEPObG7hOMS8', '2015-09-05 11:29:11', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[James Newhook] accepted your invite to connect', 'response', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'viewed', 'false'),
(355, 'alert_J7sjZzwVR6oGRVusbFZvpFbUBiwcYpmymIMc', '2015-09-06 12:49:45', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(356, 'alert_FRPEVHV8xcPZyT2FfKrz39DzLiAt4UMDFs8w', '2015-09-06 12:55:58', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', '[Joe Barbour] has shared his mobile phone and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'pending', 'false'),
(357, 'alert_8bVVTW8iJ9isthDh8YHSfjlckXAmoMmrTcgG', '2015-09-06 18:20:14', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Joe Barbour] has shared his , twitter, work email, mobile phone and skype details with you', 'update', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'viewed', 'false'),
(358, 'alert_7DPo5GafP2vYU7tSkWyILXraxpQRcIWacGob', '2015-09-07 17:00:30', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Antony Shaw] accepted your invite to connect', 'response', 'user_VZx94z8zHDkXyCYfOt7Vt426Dq7hAdRq3jt0', 'viewed', 'false'),
(359, 'alert_u6XV9bQbGsU2bR6FpkQPAryKoBUAaAFyAxkz', '2015-09-09 06:08:29', 'user_iTRTkRQbSP8OeW8OV5xhvsg3lZXrufFD4rme', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(360, 'alert_ImcMhf26TUlXRMcGCXZWOCphb2WJDaShmVUz', '2015-09-10 06:09:45', 'user_iTRTkRQbSP8OeW8OV5xhvsg3lZXrufFD4rme', '[Joe Barbour] has shared his mobile phone and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(361, 'alert_SsKcAZf0WiDuA9XWmkZ4b0K8XA8B5MlM90UA', '2015-09-12 10:15:17', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'There is a [new] version of [Lynker (1.0.1)] available. Tap to download it!', 'appstore', 'http://apps-ios.crashlytics.com/projects/55bfb1c1f0de9e4b4c00000f', 'viewed', 'false'),
(362, 'alert_BjgqEgtaryjatfGbEDuIRu9b9M2uKhmhvxx0', '2015-09-12 11:52:20', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(363, 'alert_Wo5WqA2GA4ZxWeA5xmddjV6RPRkA4y5QL4C2', '2015-09-17 16:05:56', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', '[Joe Barbour] has shared his facebook and mobile phone details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'viewed', 'false'),
(364, 'alert_xsE8YFBi84AGAcbfmd72tI8WpWSjFBy7T4aL', '2015-09-14 13:15:51', 'user_OL8I4hi6D0rIYzvGIQ7MDlBYLcChaQlSsosq', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(365, 'alert_AGhcT6SZdhzB42K0W4pWzcrvgIRCShzjSHqB', '2015-09-20 10:21:10', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Benjamin Scott] has shared his work phone and skype details with you', 'update', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'viewed', 'false'),
(366, 'alert_KEo5lQiyaapZ3ZW26f8gMOKQ0ooTYqczUvza', '2015-09-17 23:31:05', 'user_WyFD2Hqj7AOaKtqQvbo7Py4PDUfPKBZB0z5W', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(367, 'alert_KX2frsChQvMW2KMjYZpO48gw9Xm50aHB3AGo', '2015-09-18 08:13:34', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', 'Welcome to [Lynker]. Take the tour...', 'welcome', '', 'viewed', 'false'),
(368, 'alert_vF4LZHDhcjIRfrwAsJp6p4EPm03uQTbcq9Sf', '2015-09-18 08:50:14', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', '[Joe Barbour] has shared his , mobile phone, facebook and skype details with you', 'update', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'pending', 'false'),
(369, 'alert_ifafW5Xcy2iGHtUly07wCUlszSSRdOIqYMAK', '2015-09-21 13:53:02', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', '[Scott Cunliffe] has invited you to connect', 'invite', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'pending', 'false'),
(370, 'alert_ACQw5tcKHmCF0Q3opFSeaIS9iFB9uQSVjyhe', '2015-09-21 23:20:58', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', '[Joe Barbour] has invited you to connect', 'invite', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'pending', 'false'),
(371, 'alert_uSx0iRuilWkFrwM9bGUZKLjWgboOhjuC6Wxi', '2015-09-23 00:29:34', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', '[Joe Barbour] accepted your invite to connect', 'response', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'pending', 'false'),
(372, 'alert_VWx5R2KqdqzOOT0JFVZvbp2HmpRdw3vhQTgx', '2015-09-24 15:24:52', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '[Scott Cunliffe] has shared his twitter details with you', 'update', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'viewed', 'false'),
(373, 'alert_TC4fWeTlofL9pxgcA3IbyXsDP6BcaD8Ua74W', '2015-09-24 15:52:29', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', '[Joe Barbour] accepted your invite to connect', 'response', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'viewed', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `ticker_id` int(10) NOT NULL,
  `ticket_key` varchar(50) NOT NULL,
  `ticket_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ticket_type` varchar(20) NOT NULL,
  `ticket_device` varchar(100) NOT NULL,
  `ticket_sender` varchar(50) NOT NULL,
  `ticket_message` longtext NOT NULL,
  `ticket_responder` varchar(50) NOT NULL,
  `ticket_closed` varchar(5) NOT NULL,
  `ticket_viewed` varchar(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticker_id`, `ticket_key`, `ticket_timestamp`, `ticket_type`, `ticket_device`, `ticket_sender`, `ticket_message`, `ticket_responder`, `ticket_closed`, `ticket_viewed`) VALUES
(16, 'TICKET3ITUUQOAUQP6DG7FZQU3P', '2015-01-13 06:19:48', 'Question', '59f8a66e829610bcd1788b0478771b719f97798f680da274adb9c5375a76666c', 'USERZQ7X58R7DYFF3EDME3OQU', 'Test', '', 'false', 'false'),
(17, 'TICKETVDTJ070QCE0DCAW4CWM5L', '2015-01-19 13:22:39', 'Bug', 'cca0f0fa5d2e520dc4e2b7ac2665cb2e77eb48a5e96cc81f2e79ebeda5d5931c', 'USER0Q0C77FEFWGK6TSVESCB8', 'Test notification ', '', 'false', 'false'),
(15, 'TICKETQQAZ5JDBDYXFGA7IQRIM4', '2015-01-13 06:18:00', 'Feedback', '59f8a66e829610bcd1788b0478771b719f97798f680da274adb9c5375a76666c', 'USERZQ7X58R7DYFF3EDME3OQU', 'This is a message', '', 'false', 'false'),
(14, 'TICKETFS4LPSX43FPITVYEAE6KR', '2014-11-29 11:20:03', 'Feedback', 'cca0f0fa5d2e520dc4e2b7ac2665cb2e77eb48a5e96cc81f2e79ebeda5d5931c', 'USER0Q0C77FEFWGK6TSVESCB8', 'Test message ', '', 'false', 'false'),
(13, 'TICKETSRWIKLHPRWWZ3RUEGROE5', '2014-11-22 09:31:00', 'Bug', '486103804f641d0a7d09c7ae789d0f83dc9c26444114548767c1d3999d409069', 'USERZQ7X58R7DYFF3EDME3OQU', 'Message', '', 'false', 'false'),
(12, 'TICKETJCIJUSVO63OE0JXB24L5M', '2014-11-21 07:19:19', 'Press', '486103804f641d0a7d09c7ae789d0f83dc9c26444114548767c1d3999d409069', 'USERZQ7X58R7DYFF3EDME3OQU', 'Test message', '', 'false', 'false'),
(18, 'TICKETCLGFMV6HKW8J6ZEC5UEM8', '2015-01-30 02:21:54', 'Bug', '59f8a66e829610bcd1788b0478771b719f97798f680da274adb9c5375a76666c', 'USERZQ7X58R7DYFF3EDME3OQU', 'This is a test message', '', 'false', 'false'),
(19, 'TICKETUX035FJ0CZ08Q8X6AX28B', '2015-01-30 17:34:26', 'Select Type', '(null)', 'USERZQ7X58R7DYFF3EDME3OQU', 'Ghh', '', 'false', 'false'),
(20, 'TICKETGRC4FO5SZJ6J2666IEPBR', '2015-01-30 17:43:42', 'Bug', '(null)', 'USERZQ7X58R7DYFF3EDME3OQU', 'gdhdhd', '', 'false', 'false'),
(21, 'TICKETE8AK6ROAK7UPME7V42MPG', '2015-01-30 17:52:37', 'bug', '(null)', 'USERZQ7X58R7DYFF3EDME3OQU', 'Bbbn', '', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE IF NOT EXISTS `tokens` (
  `token_id` int(10) NOT NULL,
  `token_expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `token_queryed` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `token_status` varchar(10) NOT NULL,
  `token_access` varchar(100) NOT NULL,
  `token_user` varchar(100) NOT NULL,
  `token_device` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=533 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`token_id`, `token_expiry`, `token_queryed`, `token_status`, `token_access`, `token_user`, `token_device`) VALUES
(512, '2015-09-22 05:44:04', '0000-00-00 00:00:00', 'active', 'at_A5vryaftjJpgvHOUKSqGCBued4JWmgAObZ9z', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(513, '2015-09-22 05:55:46', '0000-00-00 00:00:00', 'active', 'at_xsfXQkEhiL3dyB5ME9OUvwPyCP8UyRGZeLRU', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(514, '2015-09-22 05:55:47', '0000-00-00 00:00:00', 'active', 'at_FTcj9cQEP9k4w3aiLeRYkh5AKzqtK6qkPwuP', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(515, '2015-09-22 05:57:58', '0000-00-00 00:00:00', 'active', 'at_00yQT5678esJstXyiQ6pbeo9ko9K9QT4HhOv', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(516, '2015-09-22 05:58:42', '0000-00-00 00:00:00', 'active', 'at_C8yDSmqE3C8GitTimSLY5cYv75ZVt5aZ7CyT', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(517, '2015-09-22 05:59:03', '0000-00-00 00:00:00', 'active', 'at_9QGtkLcSGrIPpfAm2t4QSjtUbEbde8beSHx8', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(518, '2015-09-22 10:13:24', '0000-00-00 00:00:00', 'active', 'at_QhQFGsl84g5pFSfktPU3ugE6yfc0xR0iYKSw', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', ''),
(519, '2015-09-22 19:35:35', '0000-00-00 00:00:00', 'active', 'at_ImsflCx7BUTp5SdvkYv6Cyo2vtH7BowbESgR', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(520, '2015-09-22 19:50:37', '0000-00-00 00:00:00', 'active', 'at_ZJVXPbcm48ewCLiC3bwpdWjygThkyjboTWgD', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(521, '2015-09-22 20:29:46', '0000-00-00 00:00:00', 'active', 'at_gzqrLeW9zyTbbd7ljamBLiolyjtQQIWW8dhJ', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(522, '2015-09-23 00:25:44', '0000-00-00 00:00:00', 'active', 'at_S7G60cHJvlm8rR9DBpgPOSdpptcuf5KX2lXT', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', ''),
(523, '2015-09-23 00:27:14', '0000-00-00 00:00:00', 'active', 'at_wmHhmRVoMDto05a0xvJ0RBdVbqClLIx8Z9kc', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(524, '2015-09-23 02:20:46', '0000-00-00 00:00:00', 'active', 'at_Hpgxu7uDouvpX9cpqpygqSa45Kpu8AjJPu8e', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(525, '2015-09-23 02:25:55', '0000-00-00 00:00:00', 'active', 'at_4Q3h9hFALv4icOQZUlspK0AeSb7FZqdUab2a', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(526, '2015-09-24 15:30:28', '0000-00-00 00:00:00', 'active', 'at_GhqFufbek75TZ6trUALkpfBehQLa3xlAECa3', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(527, '2015-09-24 15:30:54', '0000-00-00 00:00:00', 'active', 'at_0RHu93yTKZbwiO7TAdtVOCdVtaPMcmy886wb', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(528, '2015-09-25 17:25:24', '0000-00-00 00:00:00', 'active', 'at_tYZUSUJvhtx9ymzF9b9Yk3gmLiwFa6ptUjeH', 'user_yLOQ9oc3W5v9HT5tWtUQpQLMf8CbHIS6pBQs', ''),
(529, '2015-09-25 23:53:34', '0000-00-00 00:00:00', 'active', 'at_VERIQOtvDg7HjBZYJQLurk54PDKcWbkHJ7lv', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(530, '2015-09-26 00:48:28', '0000-00-00 00:00:00', 'active', 'at_Wl6zBPvSuc99isKvuwHzXXSGPRtfeyJ5JFuf', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', ''),
(531, '2015-09-26 01:04:00', '0000-00-00 00:00:00', 'active', 'at_MjolZvj0y5jwR8g7HmsxzdmP0PJP6SMM20YV', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', ''),
(532, '2015-09-27 04:08:08', '0000-00-00 00:00:00', 'active', 'at_MMhGV2wLSH3UuLXHB4aVcIvDGZHHR4avKl2x', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL,
  `user_signup` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_key` varchar(100) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `user_verified` varchar(5) NOT NULL,
  `user_name` varchar(300) NOT NULL,
  `user_nickname` varchar(30) NOT NULL,
  `user_emails` varchar(2000) NOT NULL,
  `user_password` varchar(300) NOT NULL,
  `user_latitude` float NOT NULL,
  `user_longitude` float NOT NULL,
  `user_gender` varchar(6) NOT NULL,
  `user_dob` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_summary` mediumtext NOT NULL,
  `user_profile` mediumtext NOT NULL,
  `user_headline` varchar(500) NOT NULL,
  `user_location` varchar(300) NOT NULL,
  `user_company` varchar(300) NOT NULL,
  `user_website` varchar(300) NOT NULL,
  `user_skype` varchar(50) NOT NULL,
  `user_phones` varchar(2000) NOT NULL,
  `user_address` varchar(800) NOT NULL,
  `user_notifications` varchar(100) NOT NULL,
  `user_invited` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_signup`, `user_updated`, `user_key`, `user_type`, `user_status`, `user_verified`, `user_name`, `user_nickname`, `user_emails`, `user_password`, `user_latitude`, `user_longitude`, `user_gender`, `user_dob`, `user_summary`, `user_profile`, `user_headline`, `user_location`, `user_company`, `user_website`, `user_skype`, `user_phones`, `user_address`, `user_notifications`, `user_invited`) VALUES
(89, '2015-09-27 04:07:38', '2015-09-27 04:07:38', 'user_IFOQlKVmqwafqYfsIHZPEJSD8zFTfyGS8pyj', 'admin', 'active', 'false', 'Joe Barbour', '', 'work|joe@northernspark.co.uk', 'a83f33683638989a6f23f2dee4ac0ad9', 51.4828, 0.020031, 'male', '0000-00-00 00:00:00', 'Founder @lynker, CloudText â€¢ Worked at @my-trade-portfolio, @55factory â€¢ 5 years experience building iOS apps, and obsessed with great design', 'https://d1ts43dypk8bqh.cloudfront.net/v1/avatars/4dbd09e9-19ca-401f-86d2-1e318871151d,http://pbs.twimg.com/profile_images/595524024635129857/TqjWY0-x_normal.png,http://graph.facebook.com/10204030157652530/picture?type=large', 'iOS Engineer', 'greenwich, London ', 'comp_5dd0e2d2-f84e-4e57-b862-4f725fea1020', 'northernspark.co.uk', 'NorthernSparkUK', 'mobile|07753 404470', 'street|116 Westcombe Hill,state|London,postcode|SE3 7DT', 'push,email,sms', 'joe@lynkerapp.com'),
(96, '2015-09-23 01:59:32', '2015-09-23 01:59:32', 'user_9KiITQQTGCcrY8GB8jDqD7pIGcMYVISYo6x7', 'user', 'active', 'false', 'Rebecca Pharani', 'bex', 'work|bex_pharani@hotmail.com', '08f45b87f591f2f717895a79c134bd90', 51.4828, 0.019841, 'male', '0000-00-00 00:00:00', 'This is my bio', 'https://d1ts43dypk8bqh.cloudfront.net/v1/avatars/22f89d44-4352-4949-9fa1-df530d7bc2d6,http://graph.facebook.com/10204030157652530/picture?type=large', 'Student', 'London', 'comp_28544920-7fd7-418a-b386-25e949cf0624', '', '', 'mobile|+447923062310', '', 'email,push', ''),
(99, '2015-09-27 21:07:56', '2015-09-27 21:07:56', 'user_b4prhitdEHQQvaS5Qu6YmoA5aXTFQLIRFXcM', 'admin', 'active', 'false', 'Joe Barbour', 'joe', 'work|joe@lynkerapp.com', 'a83f33683638989a6f23f2dee4ac0ad9', 51.4827, 0.019468, 'male', '1991-09-18 23:00:00', 'I am a self taught iOS developer, who loves startups, tech and beer.  ', 'https://d1qb2nb5cznatu.cloudfront.net/users/647198-medium_jpg?1422180391,http://graph.facebook.com/10204030157652530/picture?type=large,http://pbs.twimg.com/profile_images/595524024635129857/TqjWY0-x_normal.png,http://pbs.twimg.com/profile_images/553902180051058688/iSLgUXlp_normal.png,http://pbs.twimg.com/profile_images/618833486099677184/8TIoA4QJ_normal.jpg', 'CTO', 'Greenwich, London', 'comp_88b15c7f-0db6-4f0f-ad84-bb4b34a66328', 'http://lynkerapp.com', 'NorthernSpark', 'mobile|07753 404470', '', 'push,email', ''),
(106, '2015-09-07 11:35:22', '2015-09-07 11:35:22', 'user_VZx94z8zHDkXyCYfOt7Vt426Dq7hAdRq3jt0', 'user', 'active', 'false', 'Antony Shaw', '', 'work|antonyxshaw@gmail.com', '5d793fc5b00a2348c3fb9ab59e5ca98a', 51.4825, 0.019619, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email,push', ''),
(107, '2015-08-27 05:29:02', '2015-08-05 19:57:22', 'user_t6HdxRIErvRaljb0i6kx7IFje8Tv9GBwGez4', 'press', 'invited', 'false', 'Ryan Fowler', '', 'work|ryanfowler@techcitynews.com', '202cb962ac59075b964b07152d234b70', 0, 0, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email,push', 'joe@lynkerapp.com'),
(108, '2015-08-27 05:29:05', '2015-08-17 15:09:19', 'user_7oqzxLqo7hEvPJRCDYK57fmJyhBtQbuMpKhR', 'admin', 'active', 'false', 'Scott Cunliffe', '', 'work|scunliffe@deloitte.co.uk', '9850f621349e99671e11d6d9927fd589', 51.4811, -0.611132, '', '0000-00-00 00:00:00', '', 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/6/005/017/22b/1f3e520.jpg', '', 'London', 'comp_e5e333da-2c7d-4286-b89f-80a450b072ec', '', 'scott.j.cunliffe', 'mobile|07557798258', '', 'email,push', ''),
(136, '2015-09-22 05:11:18', '2015-09-22 05:11:18', 'user_VQmSz2K5IdKvM6Z6BB2cFgErT8XEzBBphO8K', 'user', 'active', 'false', 'George Ketchen', '', 'work|georgeketchen@hotmail.com', 'd89d16f76b91c8973004160b7768075a', 54.0322, -1.6695, 'male', '0000-00-00 00:00:00', '', 'http://graph.facebook.com/10205055030355261/picture?type=large', 'Mental Health Support Worker', '', '', '', '', 'mobile|07870229674', '', 'push', 'joe@lynkerapp.com'),
(138, '2015-09-26 14:28:25', '2015-09-26 14:28:25', 'user_DtcsOfA0DBVYUrO4zxHwtZXHsCbbXYBrhDMV', 'user', 'active', 'false', 'Scott Cunliffe', 'scott.j.cunliffe', 'work|scott.j.cunliffe@gmail.com', '9850f621349e99671e11d6d9927fd589', 51.4323, -0.503012, 'male', '0000-00-00 00:00:00', '', 'http://graph.facebook.com/10152959530986211/picture?type=large,http://pbs.twimg.com/profile_images/536896824997847040/zJoY24ik_normal.jpeg', 'Co-Founder', 'Windsor', 'comp_88b15c7f-0db6-4f0f-ad84-bb4b34a66328', 'lynkerapp.com', 'Scott.j.cunliffe', '|07557798258', '', 'email,push', ''),
(146, '2015-09-22 04:51:28', '2015-09-17 19:44:41', 'user_GUg5AVER8FyZwuPzaRxrI9BPTtmIAsTbg4bG', 'user', 'active', 'false', 'Adam McKinley', 'addmck', 'work|adam@cream.co.uk', 'df503e837be09d09f6b1e810fecceb94', 53.4034, -2.97621, '', '0000-00-00 00:00:00', '', '', 'Social Media & Digital Exec', 'Liverpool', 'comp_9826fb1b-110c-4bea-ac1d-f0a8ee37edb1', '', '', '', '', 'email,push', ''),
(148, '2015-09-12 05:31:48', '2015-09-12 05:31:48', 'user_JP4kyKixw4r0mYqQcd0W5sOJydtxuGk4qjiP', 'user', 'active', 'false', 'James Newhook', '', 'work|jnewhook@me.com', '05d9ce8e589c82650006d4e5883aa03f', 51.4735, -0.078436, '', '0000-00-00 00:00:00', '', 'http://pbs.twimg.com/profile_images/523096786588958720/yXysqLB7_normal.jpeg', 'Musician', '', '', 'vermilion.world', '', '', '', 'email,push', ''),
(157, '2015-09-06 18:21:21', '2015-09-03 14:01:02', 'user_gjDdQCXJaDGc3IQFj2ABmp0BwJo0KaLRogY4', 'user', 'active', 'false', 'Christopher George Sims', '', 'work|mail@christophersims.com,home|christophersims1@icloud.com', '73b197105b5366d300bcab1aba35fb9b', 51.4935, -0.099761, '', '0000-00-00 00:00:00', '\n', '', 'Creative Director/Photographer ', 'Finsbury Park London ', 'comp_de761a95-740c-413f-aefd-b5fb7cd30954', '', 'christophergeorge71', 'work|07956932679', '', 'email,push', ''),
(159, '2015-09-06 12:51:43', '2015-09-06 12:51:43', 'user_bz2IH4vX9Qj6RXJi5J6cAwYpHjv0lKTreP0L', 'user', 'active', 'false', 'Rayhan Rafiq Omar', '', 'work|rayhan@wigwamm.com', '5f4dcc3b5aa765d61d8327deb882cf99', 51.4368, -0.130496, '', '0000-00-00 00:00:00', '', '', 'Human', '', 'comp_b6f6b9b3-533e-4370-9fd5-e1ac136852da', '', '', '', '', 'email,push', ''),
(160, '2015-09-10 06:13:34', '2015-09-10 06:13:34', 'user_iTRTkRQbSP8OeW8OV5xhvsg3lZXrufFD4rme', 'user', 'active', 'false', 'Meryam Farhat', '', 'work|meryam.farhat@gmail.com', 'ab0ae299bcf82c0e5e6a705d6948efbc', 51.5123, -0.188004, '', '0000-00-00 00:00:00', '', '', 'Marketing Manager', 'london', '', '', 'badston', 'work|07429077153', '', 'email,push', ''),
(161, '2015-09-17 16:07:35', '2015-09-17 16:07:35', 'user_tWzlpyJVMbf3EXGgquimGD3jCEIarjKObeZu', 'user', 'active', 'false', 'Benjamin Scott', '', 'work|beny.scott@gmail.com', 'eaf10cf2734b9fd35830151b51a3df5c', 51.5267, -0.212634, 'male', '0000-00-00 00:00:00', '', 'http://pbs.twimg.com/profile_images/378800000795985417/fffca9f3fa42aa2364b82e10573b7d74_normal.jpeg,http://graph.facebook.com/10208005878043770/picture?type=large', 'Head Of Creative Design & Tech', 'London', '', '', 'benyscott', 'work|07521493527', 'street|3 Rotherhithe Old Road,state|London,postcode|SE16 2PP', 'email,push', ''),
(162, '2015-09-18 07:29:24', '2015-09-18 07:29:24', 'user_OL8I4hi6D0rIYzvGIQ7MDlBYLcChaQlSsosq', 'user', 'active', 'false', 'Meryam Farhat', '', 'work|meryam.farhat@aexp.com', 'ad0234829205b9033196ba818f7a872b', 51.5164, -0.189439, '', '0000-00-00 00:00:00', '', '', 'Senior Marketing Manager', '', '', '', '', 'work|07429077153', '', 'email,push', ''),
(164, '2015-09-18 08:17:01', '2015-09-18 08:17:01', 'user_LjVExlattGEXOc7jxFshOFgrsXiMp6s0jdAH', 'user', 'active', 'false', 'James Hart', '', 'work|jm.hart92@gmail.com', '95b4256b48b397b9b3fb18bd0fb04c68', 54.0732, -2.73512, '', '0000-00-00 00:00:00', '', '', 'Hotel Assistant Manager', '', '', '', '', '', '', 'email,push', ''),
(167, '2015-09-23 00:17:00', '2015-09-23 00:17:00', 'user_jkczl3JbeVJYQ9xJ8DbEtOdYHjGSLmsZBuqR', 'user', 'invited', 'false', 'Moss Newhook', '', 'work|jimbobmango@hotmail.com', '', 0, 0, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email', 'joe@lynkerapp.com'),
(168, '2015-09-25 14:36:35', '2015-09-25 14:36:35', 'user_yH7Vj4eKgyoEYYFVDWb2ZUgAorrMwCKYeLJp', 'user', 'invited', 'false', 'Paps Barbour', '', 'work|robbar66@googlemail.com', '', 0, 0, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email', 'joe@northernspark.co.uk'),
(170, '2015-09-25 16:58:42', '2015-09-25 16:58:42', 'user_XH2r540re90D45djgHkpHe9xWcIgIBWAdOS8', 'user', 'invited', 'false', 'Federico Benvenuto', '', 'work|benve95@hotmail.com', '', 0, 0, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email', 'joe@northernspark.co.uk'),
(171, '2015-09-25 18:42:39', '2015-09-25 18:42:39', 'user_yLOQ9oc3W5v9HT5tWtUQpQLMf8CbHIS6pBQs', 'user', 'active', 'false', 'Federico Benvenuto', '', 'work|benvenuto-federico@libero.it', 'bb2cdf2e0c7cf7518abf992c5de08a9f', 51.5249, -0.076189, '', '0000-00-00 00:00:00', '', '', 'Chef', '', 'bca38ba2-4375-4e41-a768-0f50ff170cc5', '', '', '', '', 'email,push', ''),
(172, '2015-09-26 03:12:17', '2015-09-26 03:12:17', 'user_gp9d93w6e7AAVfiGjT8gk0XiqmiK8aIepHis', 'user', 'invited', 'false', 'Adams1881', '', 'work|adams1881@icloud.com', '', 0, 0, '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', 'email', 'joe@northernspark.co.uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`connection_id`);

--
-- Indexes for table `correspondence`
--
ALTER TABLE `correspondence`
  ADD PRIMARY KEY (`correspondence_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`device_id`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`network_id`),
  ADD UNIQUE KEY `network_id` (`network_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticker_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `connections`
--
ALTER TABLE `connections`
  MODIFY `connection_id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=291;
--
-- AUTO_INCREMENT for table `correspondence`
--
ALTER TABLE `correspondence`
  MODIFY `correspondence_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `device_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `network_id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=374;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticker_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `token_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=533;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=173;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
