/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.19-MariaDB : Database - api_collection
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`api_collection` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `api_collection`;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `isocode` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4;

/*Data for the table `countries` */

insert  into `countries`(`id`,`name`,`isocode`) values (1,'Uzbekistan','UZ'),(2,'Qatar','QA'),(3,'Saudi Arabia','SA'),(4,'Afghanistan','AF'),(5,'Lebanon','LB'),(6,'Bahrain','BH'),(7,'Cyprus','CY'),(8,'Syrian Arab Republic','SY'),(9,'Tajikistan','TJ'),(10,'Turkmenistan','TM'),(11,'United Arab Emirates','AE'),(12,'Iran, Islamic Republic of','IR'),(13,'Iraq','IQ'),(14,'Oman','OM'),(15,'Pakistan','PK'),(16,'Israel','IL'),(17,'Jordan','JO'),(18,'Kazakhstan','KZ'),(19,'Kuwait','KW'),(20,'Kyrgyzstan','KG'),(21,'Viet Nam','VN'),(22,'Maldives','MV'),(23,'Philippines','PH'),(24,'Bangladesh','BD'),(25,'Bhutan','BT'),(26,'Brunei Darussalam','BN'),(27,'Cambodia','KH'),(28,'Timor-Leste','TL'),(29,'Singapore','SG'),(30,'Sri Lanka','LK'),(31,'Thailand','TH'),(32,'Nepal','NP'),(33,'Lao People\'s Democratic Republic','LA'),(34,'Yemen','YE'),(35,'Georgia','GE'),(36,'Turkey','TR'),(37,'Armenia','AM'),(38,'Azerbaijan','AZ'),(39,'Disputed Territory','DT'),(40,'Malaysia','MY'),(41,'British Indian Ocean Territory','IO'),(42,'India','IN'),(43,'Indonesia','ID'),(44,'Myanmar','MM'),(45,'Vanuatu','VU'),(46,'Wallis and Futuna','WF'),(47,'Guam','GU'),(48,'Marshall Islands','MH'),(49,'Pitcairn','PN'),(50,'Samoa','WS'),(51,'Christmas Island','CX'),(52,'Cocos (Keeling) Islands','CC'),(53,'Fiji','FJ'),(54,'Tokelau','TK'),(55,'Tonga','TO'),(56,'Tuvalu','TV'),(57,'Nauru','NR'),(58,'New Caledonia','NC'),(59,'Niue','NU'),(60,'Norfolk Island','NF'),(61,'Northern Mariana Islands','MP'),(62,'Palau','PW'),(63,'Holy See (Vatican City State)','VA'),(64,'Malta','MT'),(65,'Monaco','MC'),(66,'Poland','PL'),(67,'Romania','RO'),(68,'San Marino','SM'),(69,'Albania','AL'),(70,'Latvia','LV'),(71,'Liechtenstein','LI'),(72,'Lithuania','LT'),(73,'Luxembourg','LU'),(74,'Belgium','BE'),(75,'Bosnia and Herzegovina','BA'),(76,'Bulgaria','BG'),(77,'Croatia','HR'),(78,'Denmark','DK'),(79,'Estonia','EE'),(80,'Faroe Islands','FO'),(81,'Finland','FI'),(82,'Guernsey','GG'),(83,'Isle of Man','IM'),(84,'Jersey','JE'),(85,'Germany','DE'),(86,'Gibraltar','GI'),(87,'Greenland','GL'),(88,'Slovakia','SK'),(89,'Slovenia','SI'),(90,'Svalbard and Jan Mayen','SJ'),(91,'Sweden','SE'),(92,'Switzerland','CH'),(93,'Andorra','AD'),(94,'Austria','AT'),(95,'Hungary','HU'),(96,'Iceland','IS'),(97,'Netherlands','NL'),(98,'Norway','NO'),(99,'Ireland','IE'),(100,'Åland Islands','AX'),(101,'Montenegro','ME'),(102,'Guyana','GY'),(103,'Falkland Islands (Malvinas)','FK'),(104,'French Guiana','GF'),(105,'Suriname','SR'),(106,'Uruguay','UY'),(107,'Paraguay','PY'),(108,'Peru','PE'),(109,'Virgin Islands, British','VG'),(110,'Virgin Islands, U.S.','VI'),(111,'Guadeloupe','GP'),(112,'Haiti','HT'),(113,'Martinique','MQ'),(114,'Montserrat','MS'),(115,'Saint Kitts and Nevis','KN'),(116,'Saint Lucia','LC'),(117,'Saint Vincent and the Grenadines','VC'),(118,'Barbados','BB'),(119,'Bermuda','BM'),(120,'Cayman Islands','KY'),(121,'Cuba','CU'),(122,'Dominica','DM'),(123,'Dominican Republic','DO'),(124,'Grenada','GD'),(125,'Trinidad and Tobago','TT'),(126,'Turks and Caicos Islands','TC'),(127,'Anguilla','AI'),(128,'Antigua and Barbuda','AG'),(129,'Aruba','AW'),(130,'Bahamas','BS'),(131,'Jamaica','JM'),(132,'Western Sahara','EH'),(133,'Algeria','DZ'),(134,'Tunisia','TN'),(135,'Morocco','MA'),(136,'Zambia','ZM'),(137,'Zimbabwe','ZW'),(138,'Guinea','GN'),(139,'Libya','LY'),(140,'Guinea-Bissau','GW'),(141,'Mali','ML'),(142,'Mauritania','MR'),(143,'Mayotte','YT'),(144,'Rwanda','RW'),(145,'Réunion','RE'),(146,'Senegal','SN'),(147,'Sierra Leone','SL'),(148,'Lesotho','LS'),(149,'Liberia','LR'),(150,'Madagascar','MG'),(151,'Malawi','MW'),(152,'Benin','BJ'),(153,'Botswana','BW'),(154,'Burkina Faso','BF'),(155,'Burundi','BI'),(156,'Cameroon','CM'),(157,'Central African Republic','CF'),(158,'Chad','TD'),(159,'Comoros','KM'),(160,'Congo','CG'),(161,'Congo, The Democratic Republic of the','CD'),(162,'Côte d\'Ivoire','CI'),(163,'Djibouti','DJ'),(164,'Eritrea','ER'),(165,'Ethiopia','ET'),(166,'Gabon','GA'),(167,'Gambia','GM'),(168,'Ghana','GH'),(169,'Somalia','SO'),(170,'Sudan','SD'),(171,'Tanzania, United Republic of','TZ'),(172,'Togo','TG'),(173,'Uganda','UG'),(174,'Mozambique','MZ'),(175,'Niger','NE'),(176,'Nigeria','NG'),(177,'Kenya','KE'),(178,'Guatemala','GT'),(179,'Belize','BZ'),(180,'El Salvador','SV'),(181,'Panama','PA'),(182,'Heard Island and McDonald Islands','HM'),(183,'Bouvet Island','BV'),(184,'Antarctica','AQ'),(185,'Belarus','BY'),(186,'Mongolia','MN'),(187,'Macao','MO'),(188,'Hong Kong','HK'),(189,'Korea, Democratic People\'s Republic of','KP'),(190,'Korea, Republic of','KR'),(191,'Saint Pierre and Miquelon','PM'),(192,'Saint Martin (French part)','MF'),(193,'Saint Barthélemy','BL'),(194,'American Samoa','AS'),(195,'Cook Islands','CK'),(196,'French Polynesia','PF'),(197,'Solomon Islands','SB'),(198,'United States Minor Outlying Islands','UM'),(199,'Australia','AU'),(200,'New Zealand','NZ'),(201,'Papua New Guinea','PG'),(202,'Kiribati','KI'),(203,'Portugal','PT'),(204,'France','FR'),(205,'Greece','GR'),(206,'Spain','ES'),(207,'Italy','IT'),(208,'Serbia','RS'),(209,'Brazil','BR'),(210,'Chile','CL'),(211,'Colombia','CO'),(212,'Ecuador','EC'),(213,'Argentina','AR'),(214,'Puerto Rico','PR'),(215,'Netherlands Antilles','AN'),(216,'Egypt','EG'),(217,'Mauritius','MU'),(218,'Seychelles','SC'),(219,'Equatorial Guinea','GQ'),(220,'South Africa','ZA'),(221,'Angola','AO'),(222,'Namibia','NA'),(223,'Mexico','MX'),(224,'Costa Rica','CR'),(225,'Honduras','HN'),(226,'Nicaragua','NI'),(227,'South Georgia and the South Sandwich Islands','GS'),(228,'Russian Federation','RU'),(229,'Ukraine','UA'),(230,'China','CN'),(231,'Taiwan, Province of China','TW'),(232,'Japan','JP'),(233,'Canada','CA'),(234,'Saint Helena, Ascension and Tristan da Cunha','SH'),(235,'Curaçao','CW'),(236,'Sint Maarten (Dutch part)','SX'),(237,'Bonaire, Sint Eustatius and Saba','BQ'),(238,'South Sudan','SS'),(239,'French Southern Territories','TF'),(240,'Micronesia, Federated States of ','FM'),(241,'Venezuela, Bolivarian Republic of','VE'),(242,'Palestine, State of','PS'),(243,'Czechia','CZ'),(244,'Cabo Verde','CV'),(245,'Eswatini','SZ'),(246,'Sao Tome and Principe','ST'),(247,'North Macedonia','MK'),(248,'Bolivia, Plurinational State of','BO'),(249,'Moldova, Republic of','MD'),(250,'United Kingdom of Great Britain and Northern Ireland','GB'),(251,'United States of America','US');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(8) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `iso_code` varchar(12) DEFAULT NULL,
  `native_name` varchar(128) DEFAULT NULL,
  `write_direction` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `languages` */

insert  into `languages`(`id`,`name`,`iso_code`,`native_name`,`write_direction`) values (6,'Amharic','am','','ltr'),(10,'Assamese','as','অসমীয়া','ltr'),(13,'Azeri','az','Azərbaycan dili','ltr'),(16,'Bulgarian','bg','Български','ltr'),(19,'Bambara','bm','','ltr'),(20,'Bengali','bn','বাংলা','ltr'),(23,'Bosnian','bs','Bosanski','ltr'),(25,'Chechen','ce','','ltr'),(29,'Czech','cs','Čeština','ltr'),(33,'German','de','Deutsch','ltr'),(34,'Divehi, Dhivehi, Maldivian','dv','ދިވެހި','ltr'),(38,'English','en','English','ltr'),(40,'Spanish','es','Español','ltr'),(43,'Persian','fa','فارسی','rtl'),(45,'Finnish','fi','Suomi','ltr'),(49,'French','fr','Français','ltr'),(56,'Gujarati','gu','ગુજરાતી','ltr'),(58,'Hausa','ha','','ltr'),(59,'Hebrew','he','עברית','rtl'),(60,'Hindi','hi','हिन्दी','ltr'),(67,'Indonesian','id','Bahasa Indonesia','ltr'),(74,'Italian','it','Italiano','ltr'),(76,'Japanese','ja','日本語','ltr'),(78,'Georgian','ka','ქართული','ltr'),(82,'Kazakh','kk','Қазақ','ltr'),(84,'Central Khmer','km','','ltr'),(85,'Kannada','kn','','ltr'),(86,'Korean','ko','한국어','ltr'),(89,'Kurdish','ku','Kurdî','ltr'),(95,'Ganda','lg','','ltr'),(105,'Macedonian','mk','Македонски','ltr'),(106,'Malayalam','ml','മലയാളം','ltr'),(108,'Marathi','mr','मराठी','ltr'),(109,'Maranao','mrn','','ltr'),(110,'Malay','ms','Bahasa Melayu','ltr'),(116,'Nepali','ne','नेपाली','ltr'),(118,'Dutch','nl','Nederlands','ltr'),(120,'Norwegian','no','Norsk','ltr'),(126,'Oromo','om','','ltr'),(131,'Polish','pl','Polski','ltr'),(132,'Pashto','ps','پښتو','rtl'),(133,'Portuguese','pt','Português','ltr'),(137,'Romanian','ro','Română','ltr'),(138,'Russian','ru','Русский','ltr'),(139,'Kinyarwanda','rw','Ikinyarwanda','ltr'),(142,'Sindhi','sd','','ltr'),(143,'Northern Sami','se','','ltr'),(145,'Sinhala, Sinhalese','si','සිංහල','ltr'),(150,'Somali','so','','ltr'),(151,'Albanian','sq','Shqip','ltr'),(152,'Serbian','sr','Српски','ltr'),(156,'Swedish','sv','Svenska','ltr'),(157,'Swahili','sw','Kiswahili','ltr'),(158,'Tamil','ta','தமிழ்','ltr'),(159,'Telugu','te','తెలుగు','ltr'),(160,'Tajik','tg','','ltr'),(161,'Thai','th','ภาษาไทย','ltr'),(164,'Tagalog','tl','','ltr'),(167,'Turkish','tr','Türkçe','ltr'),(169,'Tatar','tt','','ltr'),(172,'Uighur, Uyghur','ug','','rtl'),(173,'Ukrainian','uk','Українська','ltr'),(174,'Urdu','ur','اردو','rtl'),(175,'Uzbek','uz','','ltr'),(177,'Vietnamese','vi','Tiếng Việt','ltr'),(183,'Yoruba','yo','','ltr'),(185,'Chinese','zh','中文','ltr'),(187,'Albanian','sq','Shqip','ltr'),(188,'Amazigh','zgh','Tamaziɣt','ltr'),(190,'Dari','prs','دری','rtl');

/*Table structure for table `quran_chapters` */

DROP TABLE IF EXISTS `quran_chapters`;

CREATE TABLE `quran_chapters` (
  `id` int(5) NOT NULL,
  `name_arabic` varchar(255) DEFAULT NULL,
  `name_english` varchar(128) DEFAULT NULL,
  `name_complex` varchar(192) DEFAULT NULL,
  `bismillah_pre` int(3) NOT NULL,
  `verses` int(6) NOT NULL,
  `reveal_order` int(5) NOT NULL,
  `reveal_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`bismillah_pre`,`verses`,`reveal_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `quran_chapters` */

insert  into `quran_chapters`(`id`,`name_arabic`,`name_english`,`name_complex`,`bismillah_pre`,`verses`,`reveal_order`,`reveal_place`) values (1,'الفاتحة','Al-Fatihah','Al-Fātiĥah',0,7,5,'makkah'),(2,'البقرة','Al-Baqarah','Al-Baqarah',1,286,87,'madinah'),(3,'آل عمران','Ali \'Imran','Āli `Imrān',1,200,89,'madinah'),(4,'النساء','An-Nisa','An-Nisā',1,176,92,'madinah'),(5,'المائدة','Al-Ma\'idah','Al-Mā\'idah',1,120,112,'madinah'),(6,'الأنعام','Al-An\'am','Al-\'An`ām',1,165,55,'makkah'),(7,'الأعراف','Al-A\'raf','Al-\'A`rāf',1,206,39,'makkah'),(8,'الأنفال','Al-Anfal','Al-\'Anfāl',1,75,88,'madinah'),(9,'التوبة','At-Tawbah','At-Tawbah',0,129,113,'madinah'),(10,'يونس','Yunus','Yūnus',1,109,51,'makkah'),(11,'هود','Hud','Hūd',1,123,52,'makkah'),(12,'يوسف','Yusuf','Yūsuf',1,111,53,'makkah'),(13,'الرعد','Ar-Ra\'d','Ar-Ra`d',1,43,96,'madinah'),(14,'ابراهيم','Ibrahim','Ibrāhīm',1,52,72,'makkah'),(15,'الحجر','Al-Hijr','Al-Ĥijr',1,99,54,'makkah'),(16,'النحل','An-Nahl','An-Naĥl',1,128,70,'makkah'),(17,'الإسراء','Al-Isra','Al-\'Isrā',1,111,50,'makkah'),(18,'الكهف','Al-Kahf','Al-Kahf',1,110,69,'makkah'),(19,'مريم','Maryam','Maryam',1,98,44,'makkah'),(20,'طه','Taha','Ţāhā',1,135,45,'makkah'),(21,'الأنبياء','Al-Anbya','Al-\'Anbyā',1,112,73,'makkah'),(22,'الحج','Al-Hajj','Al-Ĥajj',1,78,103,'madinah'),(23,'المؤمنون','Al-Mu\'minun','Al-Mu\'minūn',1,118,74,'makkah'),(24,'النور','An-Nur','An-Nūr',1,64,102,'madinah'),(25,'الفرقان','Al-Furqan','Al-Furqān',1,77,42,'makkah'),(26,'الشعراء','Ash-Shu\'ara','Ash-Shu`arā',1,227,47,'makkah'),(27,'النمل','An-Naml','An-Naml',1,93,48,'makkah'),(28,'القصص','Al-Qasas','Al-Qaşaş',1,88,49,'makkah'),(29,'العنكبوت','Al-\'Ankabut','Al-`Ankabūt',1,69,85,'makkah'),(30,'الروم','Ar-Rum','Ar-Rūm',1,60,84,'makkah'),(31,'لقمان','Luqman','Luqmān',1,34,57,'makkah'),(32,'السجدة','As-Sajdah','As-Sajdah',1,30,75,'makkah'),(33,'الأحزاب','Al-Ahzab','Al-\'Aĥzāb',1,73,90,'madinah'),(34,'سبإ','Saba','Saba',1,54,58,'makkah'),(35,'فاطر','Fatir','Fāţir',1,45,43,'makkah'),(36,'يس','Ya-Sin','Yā-Sīn',1,83,41,'makkah'),(37,'الصافات','As-Saffat','Aş-Şāffāt',1,182,56,'makkah'),(38,'ص','Sad','Şād',1,88,38,'makkah'),(39,'الزمر','Az-Zumar','Az-Zumar',1,75,59,'makkah'),(40,'غافر','Ghafir','Ghāfir',1,85,60,'makkah'),(41,'فصلت','Fussilat','Fuşşilat',1,54,61,'makkah'),(42,'الشورى','Ash-Shuraa','Ash-Shūraá',1,53,62,'makkah'),(43,'الزخرف','Az-Zukhruf','Az-Zukhruf',1,89,63,'makkah'),(44,'الدخان','Ad-Dukhan','Ad-Dukhān',1,59,64,'makkah'),(45,'الجاثية','Al-Jathiyah','Al-Jāthiyah',1,37,65,'makkah'),(46,'الأحقاف','Al-Ahqaf','Al-\'Aĥqāf',1,35,66,'makkah'),(47,'محمد','Muhammad','Muĥammad',1,38,95,'madinah'),(48,'الفتح','Al-Fath','Al-Fatĥ',1,29,111,'madinah'),(49,'الحجرات','Al-Hujurat','Al-Ĥujurāt',1,18,106,'madinah'),(50,'ق','Qaf','Qāf',1,45,34,'makkah'),(51,'الذاريات','Adh-Dhariyat','Adh-Dhāriyāt',1,60,67,'makkah'),(52,'الطور','At-Tur','Aţ-Ţūr',1,49,76,'makkah'),(53,'النجم','An-Najm','An-Najm',1,62,23,'makkah'),(54,'القمر','Al-Qamar','Al-Qamar',1,55,37,'makkah'),(55,'الرحمن','Ar-Rahman','Ar-Raĥmān',1,78,97,'madinah'),(56,'الواقعة','Al-Waqi\'ah','Al-Wāqi`ah',1,96,46,'makkah'),(57,'الحديد','Al-Hadid','Al-Ĥadīd',1,29,94,'madinah'),(58,'المجادلة','Al-Mujadila','Al-Mujādila',1,22,105,'madinah'),(59,'الحشر','Al-Hashr','Al-Ĥashr',1,24,101,'madinah'),(60,'الممتحنة','Al-Mumtahanah','Al-Mumtaĥanah',1,13,91,'madinah'),(61,'الصف','As-Saf','Aş-Şaf',1,14,109,'madinah'),(62,'الجمعة','Al-Jumu\'ah','Al-Jumu`ah',1,11,110,'madinah'),(63,'المنافقون','Al-Munafiqun','Al-Munāfiqūn',1,11,104,'madinah'),(64,'التغابن','At-Taghabun','At-Taghābun',1,18,108,'madinah'),(65,'الطلاق','At-Talaq','Aţ-Ţalāq',1,12,99,'madinah'),(66,'التحريم','At-Tahrim','At-Taĥrīm',1,12,107,'madinah'),(67,'الملك','Al-Mulk','Al-Mulk',1,30,77,'makkah'),(68,'القلم','Al-Qalam','Al-Qalam',1,52,2,'makkah'),(69,'الحاقة','Al-Haqqah','Al-Ĥāqqah',1,52,78,'makkah'),(70,'المعارج','Al-Ma\'arij','Al-Ma`ārij',1,44,79,'makkah'),(71,'نوح','Nuh','Nūĥ',1,28,71,'makkah'),(72,'الجن','Al-Jinn','Al-Jinn',1,28,40,'makkah'),(73,'المزمل','Al-Muzzammil','Al-Muzzammil',1,20,3,'makkah'),(74,'المدثر','Al-Muddaththir','Al-Muddaththir',1,56,4,'makkah'),(75,'القيامة','Al-Qiyamah','Al-Qiyāmah',1,40,31,'makkah'),(76,'الانسان','Al-Insan','Al-\'Insān',1,31,98,'madinah'),(77,'المرسلات','Al-Mursalat','Al-Mursalāt',1,50,33,'makkah'),(78,'النبإ','An-Naba','An-Naba',1,40,80,'makkah'),(79,'النازعات','An-Nazi\'at','An-Nāzi`āt',1,46,81,'makkah'),(80,'عبس','\'Abasa','`Abasa',1,42,24,'makkah'),(81,'التكوير','At-Takwir','At-Takwīr',1,29,7,'makkah'),(82,'الإنفطار','Al-Infitar','Al-\'Infiţār',1,19,82,'makkah'),(83,'المطففين','Al-Mutaffifin','Al-Muţaffifīn',1,36,86,'makkah'),(84,'الإنشقاق','Al-Inshiqaq','Al-\'Inshiqāq',1,25,83,'makkah'),(85,'البروج','Al-Buruj','Al-Burūj',1,22,27,'makkah'),(86,'الطارق','At-Tariq','Aţ-Ţāriq',1,17,36,'makkah'),(87,'الأعلى','Al-A\'la','Al-\'A`lá',1,19,8,'makkah'),(88,'الغاشية','Al-Ghashiyah','Al-Ghāshiyah',1,26,68,'makkah'),(89,'الفجر','Al-Fajr','Al-Fajr',1,30,10,'makkah'),(90,'البلد','Al-Balad','Al-Balad',1,20,35,'makkah'),(91,'الشمس','Ash-Shams','Ash-Shams',1,15,26,'makkah'),(92,'الليل','Al-Layl','Al-Layl',1,21,9,'makkah'),(93,'الضحى','Ad-Duhaa','Ađ-Đuĥaá',1,11,11,'makkah'),(94,'الشرح','Ash-Sharh','Ash-Sharĥ',1,8,12,'makkah'),(95,'التين','At-Tin','At-Tīn',1,8,28,'makkah'),(96,'العلق','Al-\'Alaq','Al-`Alaq',1,19,1,'makkah'),(97,'القدر','Al-Qadr','Al-Qadr',1,5,25,'makkah'),(98,'البينة','Al-Bayyinah','Al-Bayyinah',1,8,100,'madinah'),(99,'الزلزلة','Az-Zalzalah','Az-Zalzalah',1,8,93,'madinah'),(100,'العاديات','Al-\'Adiyat','Al-`Ādiyāt',1,11,14,'makkah'),(101,'القارعة','Al-Qari\'ah','Al-Qāri`ah',1,11,30,'makkah'),(102,'التكاثر','At-Takathur','At-Takāthur',1,8,16,'makkah'),(103,'العصر','Al-\'Asr','Al-`Aşr',1,3,13,'makkah'),(104,'الهمزة','Al-Humazah','Al-Humazah',1,9,32,'makkah'),(105,'الفيل','Al-Fil','Al-Fīl',1,5,19,'makkah'),(106,'قريش','Quraysh','Quraysh',1,4,29,'makkah'),(107,'الماعون','Al-Ma\'un','Al-Mā`ūn',1,7,17,'makkah'),(108,'الكوثر','Al-Kawthar','Al-Kawthar',1,3,15,'makkah'),(109,'الكافرون','Al-Kafirun','Al-Kāfirūn',1,6,18,'makkah'),(110,'النصر','An-Nasr','An-Naşr',1,3,114,'madinah'),(111,'المسد','Al-Masad','Al-Masad',1,5,6,'makkah'),(112,'الإخلاص','Al-Ikhlas','Al-\'Ikhlāş',1,4,22,'makkah'),(113,'الفلق','Al-Falaq','Al-Falaq',1,5,20,'makkah'),(114,'الناس','An-Nas','An-Nās',1,6,21,'makkah');

/*Table structure for table `srch_result_occur_details` */

DROP TABLE IF EXISTS `srch_result_occur_details`;

CREATE TABLE `srch_result_occur_details` (
  `id` int(20) NOT NULL,
  `searched_id` int(20) NOT NULL,
  `verse` varchar(64) DEFAULT NULL,
  `ayat_id` int(10) NOT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `translation` varchar(255) DEFAULT NULL,
  `translator` varchar(255) DEFAULT NULL,
  `language` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ayat_id`),
  KEY `fk_searched_key_for_s_result` (`searched_id`),
  CONSTRAINT `fk_searched_key_for_s_result` FOREIGN KEY (`searched_id`) REFERENCES `srch_searched_keys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `srch_result_occur_details` */

insert  into `srch_result_occur_details`(`id`,`searched_id`,`verse`,`ayat_id`,`ayat`,`translation`,`translator`,`language`) values (3001,1,'26:69',113001,'وَٱتْلُ عَلَيْهِمْ نَبَأَ إِبْرَٰهِيمَ','Watlu AAalayhim nabaa <em>ibraheem</em>','Transliteration','english'),(3892,1,'37:104',123892,'وَنَـٰدَيْنَـٰهُ أَن يَـٰٓإِبْرَٰهِيمُ','Wanadaynahu an ya <em>ibraheem</em>','Transliteration','english'),(1853,1,'15:51',131853,'وَنَبِّئْهُمْ عَن ضَيْفِ إِبْرَٰهِيمَ','Wanabbi/hum AAan dayfi <em>ibraheem</em>','Transliteration','english');

/*Table structure for table `srch_searched_keys` */

DROP TABLE IF EXISTS `srch_searched_keys`;

CREATE TABLE `srch_searched_keys` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `searched_key` varchar(255) DEFAULT NULL,
  `occur_times` int(20) DEFAULT NULL,
  `searched_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `srch_searched_keys` */

insert  into `srch_searched_keys`(`id`,`searched_key`,`occur_times`,`searched_at`) values (1,'ibraheem',8,'2022-02-19 09:48:19');

/*Table structure for table `srch_word_details` */

DROP TABLE IF EXISTS `srch_word_details`;

CREATE TABLE `srch_word_details` (
  `id` int(20) NOT NULL,
  `ayaat_id` int(10) NOT NULL,
  `word` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `srch_word_details` */

insert  into `srch_word_details`(`id`,`ayaat_id`,`word`) values (1,113001,'وَٱتۡلُ'),(2,113001,'عَلَيۡهِمۡ'),(3,113001,'نَبَأَ'),(4,113001,'إِبۡرَٰهِيمَ'),(5,113001,'٦٩'),(1,123892,'وَنَٰدَيۡنَٰهُ'),(2,123892,'أَن'),(3,123892,'يَٰٓإِبۡرَٰهِيمُ'),(4,123892,'١٠٤'),(1,131853,'وَنَبِّئۡهُمۡ'),(2,131853,'عَن'),(3,131853,'ضَيۡفِ'),(4,131853,'إِبۡرَٰهِيمَ'),(5,131853,'٥١');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
