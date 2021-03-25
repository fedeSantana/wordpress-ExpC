

DROP TABLE IF EXISTS `webtoffee_cntctfrm_field` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_cntctfrm_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_cntctfrm_field VALUES
("1","name"),
("2","email"),
("3","subject"),
("4","message"),
("5","address"),
("6","phone"),
("7","attachment"),
("8","attachment_explanations"),
("9","send_copy"),
("10","sent_from"),
("11","date_time"),
("12","coming_from"),
("13","user_agent");/*END*/




DROP TABLE IF EXISTS `webtoffee_commentmeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_comments` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_contactformmaker` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_contactformmaker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) NOT NULL,
  `mail` varchar(256) NOT NULL,
  `form_front` longtext NOT NULL,
  `theme` int(4) NOT NULL,
  `submit_text` longtext NOT NULL,
  `url` varchar(256) NOT NULL,
  `submit_text_type` tinyint(4) NOT NULL,
  `script_mail` text NOT NULL,
  `script_mail_user` text NOT NULL,
  `counter` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `label_order` text NOT NULL,
  `label_order_current` text NOT NULL,
  `article_id` varchar(500) NOT NULL,
  `public_key` varchar(50) NOT NULL,
  `private_key` varchar(50) NOT NULL,
  `recaptcha_theme` varchar(20) NOT NULL,
  `form_fields` text NOT NULL,
  `savedb` tinyint(4) NOT NULL DEFAULT '1',
  `sendemail` tinyint(4) NOT NULL DEFAULT '1',
  `requiredmark` varchar(20) NOT NULL DEFAULT '*',
  `mail_from` varchar(128) NOT NULL,
  `mail_from_name` varchar(128) NOT NULL,
  `reply_to` varchar(128) NOT NULL,
  `send_to` varchar(128) NOT NULL,
  `autogen_layout` tinyint(4) NOT NULL DEFAULT '1',
  `custom_front` longtext NOT NULL,
  `mail_from_user` varchar(128) NOT NULL,
  `mail_from_name_user` varchar(128) NOT NULL,
  `reply_to_user` varchar(128) NOT NULL,
  `disabled_fields` varchar(200) NOT NULL,
  `mail_cc` varchar(128) NOT NULL,
  `mail_cc_user` varchar(128) NOT NULL,
  `mail_bcc` varchar(128) NOT NULL,
  `mail_bcc_user` varchar(128) NOT NULL,
  `mail_subject` varchar(128) NOT NULL,
  `mail_subject_user` varchar(128) NOT NULL,
  `mail_mode` tinyint(4) NOT NULL DEFAULT '1',
  `mail_mode_user` tinyint(4) NOT NULL DEFAULT '1',
  `wpmail` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/*END*/


INSERT INTO webtoffee_contactformmaker VALUES
("1","A mailing list","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"33\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%33 - map_33%</div></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\" disabled=\"yes\" style=\"opacity: 0.4;\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 1;\">%32 - custom_32%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 1;\">%2 - Your Name:%</div><div wdid=\"4\" class=\"wdform_row\" style=\"opacity: 1;\">%4 - E-mail:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div></div><div class=\"wdform_column\"><div wdid=\"5\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%5 - Website:%</div><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%9 - Address:%</div><div wdid=\"27\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"31\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%31 - custom_31%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"26\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%26 - Which topic best describes your question?%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"25\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%25 - When is the best time to contact you:%</div><div wdid=\"15\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%15 - Company:%</div><div wdid=\"8\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%8 - Mobile:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"3\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%3 - Name:%</div><div wdid=\"23\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%23 - Message:%</div><div wdid=\"22\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%22 - Subject:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"7\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%7 - Phone:%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","1","<p>%Your Name:% joined the mailing list from IP: %ip%</p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for joining</h1>
</div>
<p>%all%</p>","34","1","33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#5#**id**#Website:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#31#**id**#custom_31#**label**#type_editor#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#15#**id**#Company:#**label**#type_text#****#8#**id**#Mobile:#**label**#type_phone#****#6#**id**#Phone number:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#23#**id**#Message:#**label**#type_textarea#****#22#**id**#Subject:#**label**#type_text#****#24#**id**#Issue type:#**label**#type_own_select#****#7#**id**#Phone:#**label**#type_phone#****#","33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#5#**id**#Website:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#31#**id**#custom_31#**label**#type_editor#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#15#**id**#Company:#**label**#type_text#****#8#**id**#Mobile:#**label**#type_phone#****#6#**id**#Phone number:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#23#**id**#Message:#**label**#type_textarea#****#22#**id**#Subject:#**label**#type_text#****#24#**id**#Issue type:#**label**#type_own_select#****#7#**id**#Phone:#**label**#type_phone#****#","0","","","","33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*-74.0059731*:*w_center_x*:*40.7143528*:*w_center_y*:*-74.005973*:*w_long*:*40.714353*:*w_lat*:*12*:*w_zoom*:*580*:*w_width*:*200*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<hr>*:*w_editor*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<h1 data-mce-style=\"color: #000000;\" style=\"color: #000000;\">Join the mailing list</h1>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*true*:*w_first_val*:*no*:*w_required*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*77*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Message:*:*w_field_label*:*120*:*w_field_label_size*:*top*:*w_field_label_pos*:*290*:*w_size_w*:*150*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Phone:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","33,1,5,9,10,11,12,13,14,27,31,29,26,16,17,18,19,20,21,25,15,8,6,3,23,22,24,7,","","","","","","","1","1","1"),
("2","Contact Form 1","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail:%</div><div wdid=\"7\" class=\"wdform_row\">%7 - Phone:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 1;\">%8 - Mobile:%</div><div wdid=\"15\" class=\"wdform_row\" style=\"opacity: 1;\">%15 - Company:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Subject:%</div><div wdid=\"26\" class=\"wdform_row\" style=\"opacity: 1;\">%26 - Which topic best describes your question?%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Details:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"27\" class=\"wdform_row\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"31\" class=\"wdform_row\" style=\"opacity: 1;\">%31 - custom_31%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"9\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%9 - Address:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"33\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%33 - map_33%</div><div wdid=\"32\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%32 - custom_32%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#7#**id**#Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#22#**id**#Subject:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#23#**id**#Details:#**label**#type_textarea#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#","3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#7#**id**#Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#22#**id**#Subject:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#23#**id**#Details:#**label**#type_textarea#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*180*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*360*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Phone:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*yes*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:*customLeftMargin*:*w_class*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Details:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*360*:*w_size_w*:*100*:*w_size_h*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*12*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","25,2,5,6,16,17,18,19,20,21,9,10,11,12,13,14,24,29,33,32,","","","","","%Subject:%","%Subject:%","1","1","1"),
("3","Contact Form 2","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 1;\">%32 - custom_32%</div><div wdid=\"33\" class=\"wdform_row\" style=\"opacity: 1;\">%33 - map_33%</div></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 1;\">%2 - Your Name:%</div><div wdid=\"7\" class=\"wdform_row\" style=\"opacity: 1;\">%7 - Phone:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 1;\">%24 - Issue type:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Subject:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Message:%</div></div><div class=\"wdform_column\"><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail:%</div><div wdid=\"5\" class=\"wdform_row\" style=\"opacity: 1;\">%5 - Website:%</div><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 1;\">%9 - Address:%</div><div wdid=\"27\" class=\"wdform_row\" style=\"opacity: 1;\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%3 - Name:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%8 - Mobile:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%28 - Type the characters you see here:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"15\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%15 - Company:%</div><div wdid=\"26\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%26 - Which topic best describes your question?%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"31\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%31 - custom_31%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Your Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Your Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#2#**id**#Your Name:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#24#**id**#Issue type:#**label**#type_own_select#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#3#**id**#Name:#**label**#type_name#****#8#**id**#Mobile:#**label**#type_phone#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#","32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#2#**id**#Your Name:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#24#**id**#Issue type:#**label**#type_own_select#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#3#**id**#Name:#**label**#type_name#****#8#**id**#Mobile:#**label**#type_phone#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#","0","","","","32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*-74.0059731*:*w_center_x*:*40.7143528*:*w_center_y*:*-74.005973*:*w_long*:*40.714353*:*w_lat*:*11*:*w_zoom*:*580*:*w_width*:*200*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<hr>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Phone:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Message:*:*w_field_label*:*120*:*w_field_label_size*:*top*:*w_field_label_pos*:*290*:*w_size_w*:*180*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*77*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***1***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","3,8,25,28,6,15,26,16,17,18,19,20,21,29,31,","","","","","%Subject:%","%Subject:%","1","1","1"),
("4","Contact Form 3","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\" disabled=\"yes\" style=\"opacity: 0.4;\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 1;\">%32 - custom_32%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Enter your name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - Enter your E-mail:%</div><div wdid=\"7\" class=\"wdform_row\">%7 - Home Phone:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 1;\">%8 - Work Phone:%</div><div wdid=\"15\" class=\"wdform_row\" style=\"opacity: 1;\">%15 - Company:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Message Subject:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Enter your Message:%</div><div wdid=\"26\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%26 - Which topic best describes your question?%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"27\" class=\"wdform_row\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"31\" class=\"wdform_row\" style=\"opacity: 1;\">%31 - custom_31%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"9\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%9 - Address:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"33\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%33 - map_33%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Enter your name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Enter your name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#22#**id**#Message Subject:#**label**#type_text#****#23#**id**#Enter your Message:#**label**#type_textarea#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#22#**id**#Message Subject:#**label**#type_text#****#23#**id**#Enter your Message:#**label**#type_textarea#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Enter your name:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*180*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*Enter your E-mail:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Home Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Work Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Message Subject:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Enter your Message:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size_w*:*300*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*yes*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:*customLeftMargin*:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*false*:*w_act*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*12*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","1,26,25,2,5,6,16,17,18,19,20,21,9,10,11,12,13,14,24,29,33,","","","","","%Message Subject:%","%Message Subject:%","1","1","1"),
("5","Contact Form 4","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\" disabled=\"yes\" style=\"opacity: 0.4;\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%32 - custom_32%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Enter your name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - Enter your E-mail:%</div><div wdid=\"7\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%7 - Home Phone:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 1;\">%8 - Work Phone:%</div><div wdid=\"15\" class=\"wdform_row\" style=\"opacity: 1;\">%15 - Company:%</div><div wdid=\"16\" class=\"wdform_row\" style=\"opacity: 1;\">%16 - Company address:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Message Subject:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Enter your Message:%</div><div wdid=\"26\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%26 - Which topic best describes your question?%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"27\" class=\"wdform_row\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"31\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%31 - custom_31%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%9 - Address:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"33\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%33 - map_33%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Enter your name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Enter your name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#22#**id**#Message Subject:#**label**#type_text#****#23#**id**#Enter your Message:#**label**#type_textarea#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#22#**id**#Message Subject:#**label**#type_text#****#23#**id**#Enter your Message:#**label**#type_textarea#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Enter your name:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*180*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*Enter your E-mail:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Home Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Work Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Message Subject:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Enter your Message:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size_w*:*200*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*yes*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:*customLeftMargin*:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*false*:*w_act*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*12*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","1,32,7,26,25,28,31,2,5,6,9,10,11,12,13,14,24,29,33,","","","","%Message Subject:%","%Message Subject:%","","1","1","1"),
("6","Contact Form 5","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 1;\">%32 - custom_32%</div><div wdid=\"33\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%33 - map_33%</div></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail:%</div><div wdid=\"7\" class=\"wdform_row\" style=\"opacity: 1;\">%7 - Home Phone:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 1;\">%8 - Mobile:%</div><div wdid=\"5\" class=\"wdform_row\" style=\"opacity: 1;\">%5 - Website:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 1;\">%25 - When is the best time to contact you:%</div><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%9 - Address:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%28 - Type the characters you see here:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"15\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%15 - Company:%</div><div wdid=\"26\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%26 - Which topic best describes your question?%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"31\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%31 - custom_31%</div></div><div class=\"wdform_column\"><div wdid=\"22\" class=\"wdform_row\">%22 - Subject:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 1;\">%24 - Topic:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Message:%</div><div wdid=\"27\" class=\"wdform_row\" style=\"opacity: 1;\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div></div><div class=\"wdform_column\"></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#2#**id**#Your Name:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#5#**id**#Website:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#22#**id**#Subject:#**label**#type_text#****#24#**id**#Topic:#**label**#type_own_select#****#23#**id**#Message:#**label**#type_textarea#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#","32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#2#**id**#Your Name:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#5#**id**#Website:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#22#**id**#Subject:#**label**#type_text#****#24#**id**#Topic:#**label**#type_own_select#****#23#**id**#Message:#**label**#type_textarea#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#","0","","","","32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*-74.0059731*:*w_center_x*:*40.7143528*:*w_center_y*:*-74.005973*:*w_long*:*40.714353*:*w_lat*:*11*:*w_zoom*:*580*:*w_width*:*200*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<hr>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*77*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*160*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Home Phone:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*160*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***1***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*70*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Topic:*:*w_field_label*:*70*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Message:*:*w_field_label*:*120*:*w_field_label_size*:*top*:*w_field_label_pos*:*250*:*w_size_w*:*300*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","33,2,9,10,11,12,13,14,28,6,15,26,16,17,18,19,20,21,29,31,","","","","","%Subject:%","%Subject:%","1","1","1"),
("7","Contact Form 6","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\" disabled=\"yes\" style=\"opacity: 0.4;\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%32 - custom_32%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail Address:%</div><div wdid=\"26\" class=\"wdform_row\" style=\"opacity: 1;\">%26 - Which topic best describes your question?%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Enter your Message:%</div><div wdid=\"7\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%7 - Home Phone:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%8 - Work Phone:%</div><div wdid=\"15\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%15 - Company:%</div><div wdid=\"16\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%16 - Company address:%</div><div wdid=\"22\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%22 - Message Subject:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"27\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"31\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%31 - custom_31%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%9 - Address:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"33\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%33 - map_33%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail Address:#**label**#type_submitter_mail#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#23#**id**#Enter your Message:#**label**#type_textarea#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#22#**id**#Message Subject:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","32#**id**#custom_32#**label**#type_editor#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail Address:#**label**#type_submitter_mail#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#23#**id**#Enter your Message:#**label**#type_textarea#****#7#**id**#Home Phone:#**label**#type_phone#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#22#**id**#Message Subject:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*180*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail Address:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*yes*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:*customLeftMargin*:*w_class*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Enter your Message:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size_w*:*200*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Home Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Work Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Message Subject:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*12*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","1,32,7,8,15,16,17,18,19,20,21,22,25,27,28,31,2,5,6,9,10,11,12,13,14,24,29,33,","","","","","","","1","1","1"),
("8","Contact Form 7","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\" style=\"opacity: 1;\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 1;\">%3 - Enter your name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - Enter your E-mail:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Message Subject:%</div><div wdid=\"26\" class=\"wdform_row\" style=\"opacity: 1;\">%26 - CMS:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 1;\">%24 - Product:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%8 - Work Phone:%</div><div wdid=\"15\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%15 - Company:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"31\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%31 - custom_31%</div><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%2 - Your Name:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"9\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%9 - Address:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"33\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%33 - map_33%</div><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%32 - custom_32%</div><div wdid=\"7\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%7 - Home Phone:%</div></div><div class=\"wdform_column\"><div wdid=\"23\" class=\"wdform_row\">%23 - Enter your Message:%</div><div wdid=\"27\" class=\"wdform_row\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Enter your name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Enter your name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#22#**id**#Message Subject:#**label**#type_text#****#26#**id**#CMS:#**label**#type_radio#****#24#**id**#Product:#**label**#type_own_select#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#7#**id**#Home Phone:#**label**#type_phone#****#23#**id**#Enter your Message:#**label**#type_textarea#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#","3#**id**#Enter your name:#**label**#type_name#****#4#**id**#Enter your E-mail:#**label**#type_submitter_mail#****#22#**id**#Message Subject:#**label**#type_text#****#26#**id**#CMS:#**label**#type_radio#****#24#**id**#Product:#**label**#type_own_select#****#8#**id**#Work Phone:#**label**#type_phone#****#15#**id**#Company:#**label**#type_text#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#31#**id**#custom_31#**label**#type_editor#****#2#**id**#Your Name:#**label**#type_text#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#33#**id**#map_33#**label**#type_map#****#32#**id**#custom_32#**label**#type_editor#****#7#**id**#Home Phone:#**label**#type_phone#****#23#**id**#Enter your Message:#**label**#type_textarea#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Enter your name:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*155*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*Enter your E-mail:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*310*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Message Subject:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*310*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*CMS:*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*hor*:*w_flow*:*Joomla***WordPress***Drupal*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*yes*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:*customLeftMargin*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Product:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*310*:*w_size*:*Select product***Contact Form Maker***Dripping Menu***Folder Menu***Form Maker***Other*:*w_choices*:*true***false***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Work Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*360*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*11*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Home Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*300*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Enter your Message:*:*w_field_label*:*200*:*w_field_label_size*:*top*:*w_field_label_pos*:*200*:*w_size_w*:*300*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","8,15,25,31,2,5,6,16,17,18,19,20,21,9,10,11,12,13,14,29,33,32,7,","","","","","%Message Subject:%","%Message Subject:%","1","1","1"),
("9","Contact Form 8","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 1;\">%2 - Your Name:%</div><div wdid=\"7\" class=\"wdform_row\" style=\"opacity: 1;\">%7 - Phone:%</div></div><div class=\"wdform_column\"><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail:%</div><div wdid=\"5\" class=\"wdform_row\" style=\"opacity: 1;\">%5 - Website:%</div></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"22\" class=\"wdform_row\">%22 - Subject:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Message:%</div><div wdid=\"32\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%32 - custom_32%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div></div><div class=\"wdform_column\"><div wdid=\"9\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%9 - Address:%</div><div wdid=\"27\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"3\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%3 - Name:%</div><div wdid=\"8\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%8 - Mobile:%</div><div wdid=\"25\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%25 - When is the best time to contact you:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"15\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%15 - Company:%</div><div wdid=\"26\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%26 - Which topic best describes your question?%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"31\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%31 - custom_31%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%24 - Issue type:%</div><div wdid=\"33\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%33 - map_33%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Your Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Your Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","2#**id**#Your Name:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#32#**id**#custom_32#**label**#type_editor#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#3#**id**#Name:#**label**#type_name#****#8#**id**#Mobile:#**label**#type_phone#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#24#**id**#Issue type:#**label**#type_own_select#****#33#**id**#map_33#**label**#type_map#****#","2#**id**#Your Name:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#32#**id**#custom_32#**label**#type_editor#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#3#**id**#Name:#**label**#type_name#****#8#**id**#Mobile:#**label**#type_phone#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#6#**id**#Phone number:#**label**#type_text#****#15#**id**#Company:#**label**#type_text#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#31#**id**#custom_31#**label**#type_editor#****#24#**id**#Issue type:#**label**#type_own_select#****#33#**id**#map_33#**label**#type_map#****#","0","","","","2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Phone:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*180*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<hr>*:*w_editor*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*480*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Message:*:*w_field_label*:*120*:*w_field_label_size*:*top*:*w_field_label_pos*:*480*:*w_size_w*:*250*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:**:*w_editor*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*77*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***1***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*-74.0059731*:*w_center_x*:*40.7143528*:*w_center_y*:*-74.005973*:*w_long*:*40.714353*:*w_lat*:*11*:*w_zoom*:*200*:*w_width*:*200*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","32,9,10,11,12,13,14,27,3,8,25,6,15,26,16,17,18,19,20,21,29,31,24,33,","","","","","%Subject:%","%Subject:%","1","1","1"),
("10","Contact Form 9","","<div class=\"wdform-page-and-images\" style=\"display:table; border-top:0px solid black;\"><div id=\"form_id_tempform_view1\" class=\"wdform_page\" page_title=\"Untitled page\" next_title=\"Next\" next_type=\"text\" next_class=\"wdform-page-button\" next_checkable=\"false\" previous_title=\"Previous\" previous_type=\"text\" previous_class=\"wdform-page-button\" previous_checkable=\"false\"><div class=\"wdform_section\"><div class=\"wdform_column\"></div></div><div wdid=\"1\" type=\"type_section_break\" class=\"wdform_tr_section_break\">%1 - custom_1%</div><div class=\"wdform_section\"><div class=\"wdform_column\"><div wdid=\"2\" class=\"wdform_row\" style=\"opacity: 1;\">%2 - Your Name:%</div><div wdid=\"3\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%3 - Name:%</div><div wdid=\"4\" class=\"wdform_row\">%4 - E-mail:%</div><div wdid=\"5\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%5 - Website:%</div><div wdid=\"6\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%6 - Phone number:%</div><div wdid=\"7\" class=\"wdform_row\">%7 - Phone:%</div><div wdid=\"8\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%8 - Mobile:%</div><div wdid=\"9\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%9 - Address:%</div><div wdid=\"15\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%15 - Company:%</div><div wdid=\"16\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%16 - Company address:%</div><div wdid=\"24\" class=\"wdform_row\" style=\"opacity: 1;\">%24 - Issue type:%</div><div wdid=\"22\" class=\"wdform_row\">%22 - Subject:%</div><div wdid=\"23\" class=\"wdform_row\">%23 - Message:%</div><div wdid=\"25\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%25 - When is the best time to contact you:%</div><div wdid=\"26\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%26 - Which topic best describes your question?%</div><div wdid=\"27\" class=\"wdform_row\">%27 - Send a copy of this message to yourself:%</div><div wdid=\"28\" class=\"wdform_row\" style=\"opacity: 1;\">%28 - Type the characters you see here:%</div><div wdid=\"29\" class=\"wdform_row\" style=\"opacity: 0.4;\" disabled=\"yes\">%29 - Type the characters you see here%</div><div wdid=\"30\" class=\"wdform_row\">%30 - type_submit_reset_30%</div><div wdid=\"31\" class=\"wdform_row\" disabled=\"yes\" style=\"opacity: 0.4;\">%31 - custom_31%</div></div><div class=\"wdform_column\"><div wdid=\"32\" class=\"wdform_row\">%32 - custom_32%</div><div wdid=\"33\" class=\"wdform_row\">%33 - map_33%</div></div></div><div valign=\"top\" class=\"wdform_footer\" style=\"width: 100%;\"><div style=\"width: 100%;\"><div style=\"width: 100%; display: table;\"><div style=\"display: table-row-group;\"><div id=\"form_id_temppage_nav1\" style=\"display: table-row;\"></div></div></div></div></div></div></div>","4","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Thank you for contacting us</h1>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>","","3","<p>%Your Name:% sent you a message from IP: %ip%</p>
<p> </p>
<p>%all%</p>","<div class=\"content_head\" style=\"color: #565759;\">
<h1>Dear %Your Name:%</h1>
<h2>Thank you for contacting us</h2>
</div>
<p>We have received your message and will respond to you within 24 hours (Monday-Friday).</p>
<p>For urgent enquiries please call us on one of the telephone numbers below.</p>
<p>Phone: 123-987-6543</p>
<p>Fax: 123-987-6542</p>
<p> </p>
<p> </p>
<p>%all%</p>","34","1","2#**id**#Your Name:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#","2#**id**#Your Name:#**label**#type_text#****#3#**id**#Name:#**label**#type_name#****#4#**id**#E-mail:#**label**#type_submitter_mail#****#5#**id**#Website:#**label**#type_text#****#6#**id**#Phone number:#**label**#type_text#****#7#**id**#Phone:#**label**#type_phone#****#8#**id**#Mobile:#**label**#type_phone#****#9#**id**#Street Address#**label**#type_address#****#10#**id**#Street Address Line 2#**label**#type_address#****#11#**id**#City#**label**#type_address#****#12#**id**#State / Province / Region#**label**#type_address#****#13#**id**#Postal / Zip Code#**label**#type_address#****#14#**id**#Country#**label**#type_address#****#15#**id**#Company:#**label**#type_text#****#16#**id**#Street Address#**label**#type_address#****#18#**id**#City#**label**#type_address#****#20#**id**#Postal / Zip Code#**label**#type_address#****#24#**id**#Issue type:#**label**#type_own_select#****#22#**id**#Subject:#**label**#type_text#****#23#**id**#Message:#**label**#type_textarea#****#25#**id**#When is the best time to contact you:#**label**#type_checkbox#****#26#**id**#Which topic best describes your question?#**label**#type_radio#****#27#**id**#Send a copy of this message to yourself:#**label**#type_send_copy#****#28#**id**#Type the characters you see here:#**label**#type_captcha#****#29#**id**#Type the characters you see here#**label**#type_recaptcha#****#30#**id**#type_submit_reset_30#**label**#type_submit_reset#****#31#**id**#custom_31#**label**#type_editor#****#32#**id**#custom_32#**label**#type_editor#****#33#**id**#map_33#**label**#type_map#****#","0","","","","1*:*id*:*type_section_break*:*type*:*custom_1*:*w_field_label*:*<h2 style=\"font-size: 30px; font-family: Bitter, Georgia, serif; clear: both; line-height: 1.3; margin: 25px 0px;\">Contact Us</h2><div style=\"color: rgb(20, 20, 18); font-family: Source Sans Pro, Helvetica, sans-serif; font-size: 16px; line-height: 24px;\">You may contact us by filling in this form any time you need professional support or have any questions. You can also fill in the form to leave your comments or feedback.</div>*:*w_editor*:**:*new_field*:*2*:*id*:*type_text*:*type*:*Your Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*3*:*id*:*type_name*:*type*:*Name:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*****:*w_first_val*:*****:*w_title*:*Title***First***Last***Middle*:*w_mini_labels*:*77*:*w_size*:*normal*:*w_name_format*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*4*:*id*:*type_submitter_mail*:*type*:*E-mail:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*someone@example.com*:*w_first_val*:*someone@example.com*:*w_title*:*yes*:*w_required*:**:*w_unique*:**:*w_class*:**:*new_field*:*5*:*id*:*type_text*:*type*:*Website:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*example.com*:*w_first_val*:*example.com*:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*6*:*id*:*type_text*:*type*:*Phone number:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*7*:*id*:*type_phone*:*type*:*Phone:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*8*:*id*:*type_phone*:*type*:*Mobile:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*100*:*w_size*:*****:*w_first_val*:*****:*w_title*:*Area Code***Phone Number*:*w_mini_labels*:*no*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*9*:*id*:*type_address*:*type*:*Address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***no***no***no***no***no***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*15*:*id*:*type_text*:*type*:*Company:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*no*:*w_required*:*no*:*w_unique*:**:*new_field*:*16*:*id*:*type_address*:*type*:*Company address:*:*w_field_label*:*100*:*w_field_label_size*:*top*:*w_field_label_pos*:*280*:*w_size*:*Street Address***Street Address Line 2***City***State / Province / Region***Postal / Zip Code***Country*:*w_mini_labels*:*no***yes***no***yes***no***yes***no*:*w_disabled_fields*:*no*:*w_required*:*wdform_address*:*w_class*:**:*new_field*:*24*:*id*:*type_own_select*:*type*:*Issue type:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:*(Select a Topic)***Pre-Sales Question***Product Support***Site Suggestions***Other*:*w_choices*:*true***false***false***false***false*:*w_choices_checked*:*false***false***false***false***false*:*w_choices_disabled*:*no*:*w_required*:*wdform_select*:*w_class*:**:*new_field*:*22*:*id*:*type_text*:*type*:*Subject:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*180*:*w_size*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*new_field*:*23*:*id*:*type_textarea*:*type*:*Message:*:*w_field_label*:*120*:*w_field_label_size*:*top*:*w_field_label_pos*:*290*:*w_size_w*:*100*:*w_size_h*:**:*w_first_val*:**:*w_title*:*yes*:*w_required*:*no*:*w_unique*:**:*w_class*:**:*new_field*:*25*:*id*:*type_checkbox*:*type*:*When is the best time to contact you:*:*w_field_label*:*100*:*w_field_label_size*:*left*:*w_field_label_pos*:*ver*:*w_flow*:*Morning***Afternoon***Evening*:*w_choices*:*false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*26*:*id*:*type_radio*:*type*:*Which topic best describes your question?*:*w_field_label*:*280*:*w_field_label_size*:*top*:*w_field_label_pos*:*ver*:*w_flow*:*Product Support***Site Suggestions***Marketing & Sponsorship Opportunities***Referral Programs***Other*:*w_choices*:*false***false***false***false***false*:*w_choices_checked*:*1*:*w_rowcol*:*no*:*w_required*:*no*:*w_randomize*:*no*:*w_allow_other*:*0*:*w_allow_other_num*:**:*w_class*:**:*new_field*:*27*:*id*:*type_send_copy*:*type*:*Send a copy of this message to yourself:*:*w_field_label*:*260*:*w_field_label_size*:*left*:*w_field_label_pos*:*false*:*w_first_val*:*no*:*w_required*:**:*new_field*:*28*:*id*:*type_captcha*:*type*:*Type the characters you see here:*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:*6*:*w_digit*:**:*w_class*:**:*new_field*:*29*:*id*:*type_recaptcha*:*type*:*Type the characters you see here*:*w_field_label*:*250*:*w_field_label_size*:*top*:*w_field_label_pos*:**:*w_public*:**:*w_private*:*red*:*w_theme*:**:*w_class*:**:*new_field*:*30*:*id*:*type_submit_reset*:*type*:*type_submit_reset_30*:*w_field_label*:*Submit*:*w_submit_title*:*Reset*:*w_reset_title*:**:*w_class*:*true*:*w_act*:**:*new_field*:*31*:*id*:*type_editor*:*type*:*custom_31*:*w_field_label*:*<p><span style=\"color: rgb(153, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: normal; background-color: rgb(244, 244, 244);\">* Indicates required fields</span></p>*:*w_editor*:**:*new_field*:*32*:*id*:*type_editor*:*type*:*custom_32*:*w_field_label*:*<p><strong>Sample Company, Inc.</strong></p><p>1412 South Main Expressway</p><p>Sugar Land, TX 98765</p><p>Phone: 123-987-6543</p><p>Fax: 123-987-6542</p>*:*w_editor*:**:*new_field*:*33*:*id*:*type_map*:*type*:*map_33*:*w_field_label*:*44.497928*:*w_center_x*:*40.1525306*:*w_center_y*:*44.497928*:*w_long*:*40.152531*:*w_lat*:*12*:*w_zoom*:*300*:*w_width*:*400*:*w_height*:**:*w_info*:*wdform_map*:*w_class*:**:*new_field*:*","1","1","*","4","","4","*4*","1","","","","","3,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,25,26,29,31,","","","","","%Subject:%","%Subject:%","1","1","1");/*END*/




DROP TABLE IF EXISTS `webtoffee_contactformmaker_blocked` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_contactformmaker_blocked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_contactformmaker_submits` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_contactformmaker_submits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `element_label` varchar(128) NOT NULL,
  `element_value` varchar(600) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_contactformmaker_themes` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_contactformmaker_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `css` text NOT NULL,
  `default` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;/*END*/


INSERT INTO webtoffee_contactformmaker_themes VALUES
("1","Theme 01 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #013D7C;
border-radius: 5px;
color: #013D7C;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
input[type=\"radio\"]
{
border:none !important;
outline:none !important;
}
input[type=\"checkbox\"]
{
border:none !important;
outline:none !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px solid #000 !important;
padding-left:10px;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}

.sel-imul {
	display: none;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/10/01/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #FFF;
cursor: pointer;
display: inline-block;
height: 38px;
line-height: 35px;
background:url([SITE_ROOT]/images/10/next.png) no-repeat right #013D7C;
padding: 0px 36px 0 20px;
vertical-align: middle;
font-size: 18px;
border-top-right-radius: 7px;
border-bottom-right-radius: 7px;
}
.previous-page div.wdform-page-button {
color: #A2A2A2;
cursor: pointer;
display: inline-block;
height: 37px;
line-height: 35px;
background:url([SITE_ROOT]/images/09/previous.png) no-repeat left #F1F1F1;
padding: 0 20px 0 36px;
vertical-align: middle;
font-size: 18px;
border-top-left-radius: 7px;
border-bottom-left-radius: 7px;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #013D7C;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #013D7C;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;
}

.wdform_section_break {
	color: #013D7C;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section {
	display: inline-block;
}
select {
	padding: 2px;
	height: 26px;
	border: 1px solid #B7B7B7;
background: #F8F8F8;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}
select {
	outline: none;
}
.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}


.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}


.forlabs {
	float: right;
	margin-right: 20px;
}

.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #013E7D;
background-color: #FFF;
cursor: pointer;
display: inline-block;
height: 29px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 16px;
font-weight:bold;
}
.page_active {
color: #FFF;
cursor: pointer;
background-color: #013E7D;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 20px;
padding: 5px 25px 0px 25px;
line-height: 26px;
font-weight:bold;
}
.page_percentage_active {
padding: 0px;
margin: 0px;
border-spacing: 0px;
height: 16px;
line-height: 16px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
vertical-align: middle;
background: #013E7F;
color: #fff;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
}
.page_percentage_deactive {
height: 16px;
line-height: 16px;
background-color: #F1F1F1;
text-align: left !important;
margin-bottom: 1px;
border-radius: 5px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
margin: 3px 5px 3px 9px;
color: #FFF;
font-size: 12px;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("2","Theme 01 purple",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #6C005E;
border-radius: 5px;
color: #6C005E;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
input[type=\"radio\"]
{
border:none !important;
outline:none !important;
}
input[type=\"checkbox\"]
{
border:none !important;
outline:none !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px solid #000 !important;
padding-left:10px;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}

.sel-imul {
	display: none;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/10/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #FFF;
cursor: pointer;
display: inline-block;
height: 38px;
line-height: 35px;
background:url([SITE_ROOT]/images/10/next.png) no-repeat right #6C005E;
padding: 0px 36px 0 20px;
vertical-align: middle;
font-size: 18px;
border-top-right-radius: 7px;
border-bottom-right-radius: 7px;
}
.previous-page div.wdform-page-button {
color: #A2A2A2;
cursor: pointer;
display: inline-block;
height: 37px;
line-height: 35px;
background:url([SITE_ROOT]/images/09/previous.png) no-repeat left #F1F1F1;
padding: 0 20px 0 36px;
vertical-align: middle;
font-size: 18px;
border-top-left-radius: 7px;
border-bottom-left-radius: 7px;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #6C005E;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #6C005E;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;
}

.wdform_section_break {
	color: #6C005E;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section {
	display: inline-block;
}
select {
	padding: 2px;
	height: 26px;
	border: 1px solid #B7B7B7;
background: #F8F8F8;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}
select {
	outline: none;
}
.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}


.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}


.forlabs {
	float: right;
	margin-right: 20px;
}

.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #6C005E;
background-color: #FFF;
cursor: pointer;
display: inline-block;
height: 29px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 16px;
font-weight:bold;
}
.page_active {
color: #FFF;
cursor: pointer;
background-color: #6C005E;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 20px;
padding: 5px 25px 0px 25px;
line-height: 26px;
font-weight:bold;
}
.page_percentage_active {
padding: 0px;
margin: 0px;
border-spacing: 0px;
height: 16px;
line-height: 16px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
vertical-align: middle;
background: #6C005E;
color: #fff;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
}
.page_percentage_deactive {
height: 16px;
line-height: 16px;
background-color: #F1F1F1;
text-align: left !important;
margin-bottom: 1px;
border-radius: 5px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
margin: 3px 5px 3px 9px;
color: #FFF;
font-size: 12px;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("3","Theme 01 black",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #000000;
border-radius: 5px;
color: #000000;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
input[type=\"radio\"]
{
border:none !important;
outline:none !important;
}
input[type=\"checkbox\"]
{
border:none !important;
outline:none !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px solid #000 !important;
padding-left:10px;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}

.sel-imul {
	display: none;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/10/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #FFF;
cursor: pointer;
display: inline-block;
height: 38px;
line-height: 35px;
background:url([SITE_ROOT]/images/10/next.png) no-repeat right #000;
padding: 0px 36px 0 20px;
vertical-align: middle;
font-size: 18px;
border-top-right-radius: 7px;
border-bottom-right-radius: 7px;
}
.previous-page div.wdform-page-button {
color: #A2A2A2;
cursor: pointer;
display: inline-block;
height: 37px;
line-height: 35px;
background:url([SITE_ROOT]/images/09/previous.png) no-repeat left #F1F1F1;
padding: 0 20px 0 36px;
vertical-align: middle;
font-size: 18px;
border-top-left-radius: 7px;
border-bottom-left-radius: 7px;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #000;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #000;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;
}

.wdform_section_break {
	color: #000;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section {
	display: inline-block;
}
select {
	padding: 2px;
	height: 26px;
	border: 1px solid #B7B7B7;
background: #F8F8F8;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}
select {
	outline: none;
}
.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}


.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}


.forlabs {
	float: right;
	margin-right: 20px;
}

.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #000;
background-color: #FFF;
cursor: pointer;
display: inline-block;
height: 29px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 16px;
font-weight:bold;
}
.page_active {
color: #FFF;
cursor: pointer;
background-color: #000;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 20px;
padding: 5px 25px 0px 25px;
line-height: 26px;
font-weight:bold;
}
.page_percentage_active {
padding: 0px;
margin: 0px;
border-spacing: 0px;
height: 16px;
line-height: 16px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
vertical-align: middle;
background: #000;
color: #fff;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
}
.page_percentage_deactive {
height: 16px;
line-height: 16px;
background-color: #F1F1F1;
text-align: left !important;
margin-bottom: 1px;
border-radius: 5px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
margin: 3px 5px 3px 9px;
color: #FFF;
font-size: 12px;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","1"),
("4","Theme 01 transparent (black button)",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #000000;
border-radius: 5px;
color: #000000;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
input[type=\"radio\"]
{
border:none !important;
outline:none !important;
}
input[type=\"checkbox\"]
{
border:none !important;
outline:none !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px solid #000 !important;
padding-left:10px;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}

.sel-imul {
	display: none;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/10/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #FFF;
cursor: pointer;
display: inline-block;
height: 38px;
line-height: 35px;
background:url([SITE_ROOT]/images/10/next.png) no-repeat right #000;
padding: 0px 36px 0 20px;
vertical-align: middle;
font-size: 18px;
border-top-right-radius: 7px;
border-bottom-right-radius: 7px;
}
.previous-page div.wdform-page-button {
color: #A2A2A2;
cursor: pointer;
display: inline-block;
height: 37px;
line-height: 35px;
background:url([SITE_ROOT]/images/09/previous.png) no-repeat left #F1F1F1;
padding: 0 20px 0 36px;
vertical-align: middle;
font-size: 18px;
border-top-left-radius: 7px;
border-bottom-left-radius: 7px;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #000;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: transparent;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #000;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;
}

.wdform_section_break {
	color: #000;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section {
	display: inline-block;
}
select {
	padding: 2px;
	height: 26px;
	border: 1px solid #B7B7B7;
background: #F8F8F8;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}
select {
	outline: none;
}
.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}


.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}


.forlabs {
	float: right;
	margin-right: 20px;
}

.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #000;
background-color: #FFF;
cursor: pointer;
display: inline-block;
height: 29px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 16px;
font-weight:bold;
}
.page_active {
color: #FFF;
cursor: pointer;
background-color: #000;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 20px;
padding: 5px 25px 0px 25px;
line-height: 26px;
font-weight:bold;
}
.page_percentage_active {
padding: 0px;
margin: 0px;
border-spacing: 0px;
height: 16px;
line-height: 16px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
vertical-align: middle;
background: #000;
color: #fff;
border-top-left-radius: 5px;
border-bottom-left-radius: 5px;
}
.page_percentage_deactive {
height: 16px;
line-height: 16px;
background-color: #F1F1F1;
text-align: left !important;
margin-bottom: 1px;
border-radius: 5px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
margin: 3px 5px 3px 9px;
color: #FFF;
font-size: 12px;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("5","Theme 02 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #ADC0DB;
margin-bottom: 10px;
color: #ADC0DB;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/02/bg.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #285485!important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #285485!important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #285485!important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #285485!important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #285485!important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #285485!important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #285485!important;
	color: #fff;
	outline: none;
}
ui-slider {
	background: #fff !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 4px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 29px;
	background: url([SITE_ROOT]/images/02/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/02/01/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #285485;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 33px;
	background: url([SITE_ROOT]/images/02/01/next.png) top right #708EB4;
	padding: 0px 30px 0 15px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
 .next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/01/next.png) top right #144077;
}
.previous-page div.wdform-page-button {
	color: #285485;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/02/01/previous.png) top left #708EB4;
	padding: 0px 15px 0 30px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
 .previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/01/previous.png) top left #144077;
}
.button-submit {
	background: url([SITE_ROOT]/images/02/bg.png) #708EB4;
	cursor: pointer;
	font-size: 16px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 34px;
	color: #285485;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 600;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #ADC0DB;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 1px solid #C5C5C5;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/02/bg.png) #708EB4;
	text-align: left;
	padding: 10px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: center;
font-size:18px;
font-family: Segoe UI;
color:#0E3F76;
}

.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
font-family: Segoe UI;
color:#0E3F76;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 4px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/02/01/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
} 
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 11px;
	height: 10px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 1px;
	left: 1px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: rgb(158, 0, 0);
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 4px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
	color: #2564A3;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
	font-weight: bold;
}
.page_deactive:nth-child(even) {
	background-color: #DCDADB;
}
.page_deactive:nth-child(odd) {
	background-color: #D1CDCE;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #0E3F77;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 18px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 17px;
	line-height: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #0e3f77; /* Old browsers */
	background: -moz-linear-gradient(left, #0e3f77 0%, #0f437d 49%, #2f72b5 84%, #165ba9 99%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #0e3f77), color-stop(49%, #0f437d), color-stop(84%, #2f72b5), color-stop(99%, #165ba9)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #0e3f77 0%, #0f437d 49%, #2f72b5 84%, #165ba9 99%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #0e3f77 0%, #0f437d 49%, #2f72b5 84%, #165ba9 99%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #0e3f77 0%, #0f437d 49%, #2f72b5 84%, #165ba9 99%); /* IE10+ */
	background: linear-gradient(to right, #0e3f77 0%, #0f437d 49%, #2f72b5 84%, #165ba9 99%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 17px;
	line-height: 17px;
	background-color: #CCCCCC;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -2px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
font-size: 13px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 17px;
	height: 17px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("6","Theme 02 yellow",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #EADEB4;
border: 1px solid #E3E2E4;
margin-bottom: 10px;
color: #E3E2E4;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/02/bg.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #ECBD00 !important;
	color: #fff;
	outline: none;
}
ui-slider {
	background: #fff !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 4px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 29px;
	background: url([SITE_ROOT]/images/02/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/02/02/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 33px;
	background: url([SITE_ROOT]/images/02/next.png) top right #CFAB1A;
	padding: 0px 30px 0 15px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/next.png) top right  #A08104;
}
.previous-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/02/previous.png) top left #CFAB1A;
	padding: 0px 15px 0 30px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/previous.png) top left  #A08104;
}
.button-submit {
	background: url([SITE_ROOT]/images/02/bg.png) #CFAB1A;
	cursor: pointer;
	font-size: 16px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 34px;
	color: #4D4A3C;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 600;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #E2DED7;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 1px solid #CFCFCF;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/02/bg.png) #CFAB1A;
	text-align: left;
	padding: 10px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: center;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
font-weight: 600;
}

.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 4px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/02/02/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 11px;
	height: 10px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 1px;
	left: 1px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: rgb(158, 0, 0);
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 4px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #3F3927;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
	font-weight: bold;
}
.page_deactive:nth-child(even) {
	background-color: #DCDADB;
}
.page_deactive:nth-child(odd) {
	background-color: #D1CDCE;
}
.page_active {
	color: #3F3927;
	cursor: pointer;
	background-color: #ECBD00;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 18px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 17px;
	line-height: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #ECBD00 ; /* Old browsers */
	background: -moz-linear-gradient(left, #ECBD00 0%, #F5C403 49%, #F8C90B 84%, #FFCC00 99%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #ECBD00 ), color-stop(49%, #F5C403 ), color-stop(84%, #F8C90B ), color-stop(99%, #FFCC00 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #ECBD00 0%, #F5C403 49%, #F8C90B 84%, #FFCC00 99%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #ECBD00 0%, #F5C403 49%, #F8C90B 84%, #FFCC00 99%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #ECBD00 0%, #F5C403 49%, #F8C90B 84%, #FFCC00 99%); /* IE10+ */
	background: linear-gradient(to right, #ECBD00 0%, #F5C403 49%, #F8C90B 84%, #FFCC00 99%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 17px;
	line-height: 17px;
	background-color: #D9D7D8;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -2px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #292929;
	font-weight: bold;
font-size:13px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 17px;
	height: 17px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("7","Theme 02 violet",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #C9ADEF;
border: 1px solid #E3E2E4;
margin-bottom: 10px;
color: #E3E2E4;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/02/bg.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #5C00DA !important;
	color: #fff;
	outline: none;
}
ui-slider {
	background: #fff !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 4px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 29px;
	background: url([SITE_ROOT]/images/02/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/02/02/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 33px;
	background: url([SITE_ROOT]/images/02/next.png) top right #5C00DA;
	padding: 0px 30px 0 15px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/next.png) top right #3D0886;
}.previous-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/02/previous.png) top left #5C00DA;
	padding: 0px 15px 0 30px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/previous.png)  top left #3D0886;
}
.button-submit {
	background: url([SITE_ROOT]/images/02/bg.png) #5C00DA;
	cursor: pointer;
	font-size: 16px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 34px;
	color: #4D4A3C;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 600;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #E3E2E4;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 1px solid #CFCFCF;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/02/bg.png) #5C00DA;
	text-align: left;
	padding: 10px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: center;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
font-weight: 600;
}

.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 4px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/02/03/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 11px;
	height: 10px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 1px;
	left: 1px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: rgb(158, 0, 0);
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 4px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #3F3927;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
	font-weight: bold;
}
.page_deactive:nth-child(even) {
	background-color: #DCDADB;
}
.page_deactive:nth-child(odd) {
	background-color: #D1CDCE;
}
.page_active {
	color: #FFF;
	cursor: pointer;
	background-color: #5C00DA;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 18px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 17px;
	line-height: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #5C00DA ; /* Old browsers */
	background: -moz-linear-gradient(left, #5C00DA 0%, #5C00DB 49%, #6600F0 84%, #7917FF 99%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #5C00DA ), color-stop(49%, #5C00DB ), color-stop(84%, #6600F0 ), color-stop(99%, #7917FF )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #5C00DA 0%, #5C00DB 49%, #6600F0 84%, #7917FF 99%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #5C00DA 0%, #5C00DB 49%, #6600F0 84%, #7917FF 99%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #5C00DA 0%, #5C00DB 49%, #6600F0 84%, #7917FF 99%); /* IE10+ */
	background: linear-gradient(to right, #5C00DA 0%, #5C00DB 49%, #6600F0 84%, #7917FF 99%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 17px;
	line-height: 17px;
	background-color: #D9D7D8;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -2px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #fff;
	font-weight: bold;
font-size:13px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 17px;
	height: 17px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("8","Theme 02 transparent (aquamarine button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #EAF9F3;
border: 1px solid #4D4A58;
margin-bottom: 10px;
color: #4D4A58;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/02/bg.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #CEECE2 !important;
	color: #fff;
	outline: none;
}
ui-slider {
	background: #fff !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 4px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 29px;
	background: url([SITE_ROOT]/images/02/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/02/02/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 33px;
	background: url([SITE_ROOT]/images/02/next.png) top right #94FFD5;
	padding: 0px 30px 0 15px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/next.png) top right  #E4F3E2;
}
.previous-page div.wdform-page-button {
	color: #4D4A3C;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/02/previous.png) top left #94FFD5;
	padding: 0px 15px 0 30px;
	vertical-align: middle;
	font-weight: 600;
	font-size: 16px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/02/previous.png) top left  #E4F3E2;
}
.button-submit {
	background: url([SITE_ROOT]/images/02/bg.png) #94FFD5;
	cursor: pointer;
	font-size: 16px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 34px;
	color: #4D4A3C;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 600;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: transparent;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 1px solid #CFCFCF;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/02/bg.png) #CFAB1A;
	text-align: left;
	padding: 10px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: center;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
font-weight: 600;
}

.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
font-family: Segoe UI;
color: #292929;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 4px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
background: #E9E9E9;
}
input[type=\"text\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #E9E9E9;
}
input[type=\"password\"] {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #E9E9E9;
}
textarea {
	border-radius: 4px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #E9E9E9;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/02/02/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 11px;
	height: 10px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 1px;
	left: 1px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: rgb(158, 0, 0);
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 4px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #3F3927;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
	font-weight: bold;
}
.page_deactive:nth-child(even) {
	background-color: #EEEEEE;
}
.page_deactive:nth-child(odd) {
	background-color: #EEEEEE;
}
.page_active {
	color: #3F3927;
	cursor: pointer;
	background-color: #CEECE2;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 18px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 17px;
	line-height: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #95D3BE ; /* Old browsers */
	background: -moz-linear-gradient(left, #80CEB4 0%, #95D6C1 49%, #95D3BE 84%, #B3E7D6 99%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #80CEB4 ), color-stop(49%, #95D6C1 ), color-stop(84%, #95D3BE ), color-stop(99%, #B3E7D6 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #80CEB4 0%, #95D6C1 49%, #95D3BE 84%, #B3E7D6 99%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #80CEB4 0%, #95D6C1 49%, #95D3BE 84%, #B3E7D6 99%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #80CEB4 0%, #95D6C1 49%, #95D3BE 84%, #B3E7D6 99%); /* IE10+ */
	background: linear-gradient(to right, #80CEB4 0%, #95D6C1 49%, #95D3BE 84%, #B3E7D6 99%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 17px;
	line-height: 17px;
	background-color: #E0DFE0;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -2px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #292929;
	font-weight: bold;
font-size:13px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 17px;
	height: 17px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("9","Theme 03 green",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EEEF;
border: 1px solid #3A620A;
margin-bottom: 10px;
color: #3A620A;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	border-radius: 0px;
	border: 1px solid #39680B;
	background: #C9FD9C;
	height: 13px;
	width: 13px;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -5px !important;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover {
	background: #4A8C08!important;
	color: #fff;
}
a.ui-spinner-button:active {
	background: #4A8C08!important;
	color: #fff;
}
a.ui-spinner-button:focus {
	background: #4A8C08!important;
	color: #fff;
}
a.ui-slider-handle:hover {
	background: #4A8C08!important;
	color: #fff;
}
a.ui-slider-handle:active {
	background: #4A8C08!important;
	color: #fff;
}
a.ui-slider-handle:focus {
	background: #4A8C08!important;
	color: #fff;
}
ui-state-hover {
	background: #4A8C08!important;
	color: #fff;
}
.ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #C9FD9C !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 23px;
	line-height: 23px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/03/01/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 32px;
	height: 25px;
	background: url([SITE_ROOT]/images/03/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background-color: #ACABAB;
padding: 2px 15px;
vertical-align: middle;
border: none;
font-size: 15px;
}


.button-submit {
	background: #3A620A;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #fff;
	border: 2px solid #4A8C08;
	margin: 5px;
	box-shadow: 0px 0px 1px 1px #44740E;
	font-family: Segoe UI;
	}
.button-reset {
	background: #D8D6D7;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 2px solid #fff;
	margin: 5px;
	box-shadow: 0px 0px 2px 1px #969495;
	font-family: Segoe UI;
}
.wdform_page {
	background: #CDD9C3;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/03/01/bg.png);
	text-align: left;
	padding: 10px 20px 10px 50px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: right;
	color: #000;
font-size: 18px;
}

.wdform_section_break
{
margin: 16px 15px;
text-align: left;
font-size: 18px;
color: #555;
}
.wdform_section {
	display: inline-block;
	padding: 0px 15px;
}
select {
	border-radius: 0px;
	padding: 2px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
	background-color: #DFDFDF;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #fff;
	background-color: #42810e;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	background-color: #36690c;
	cursor: pointer;
	display: inline-block;
	vertical-align: bottom;
	height: 33px;
	text-align: center;
	font-size: 21px;
	padding: 5px 20px 0px 20px;
	margin-bottom: -13px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 20px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #62983A; /* Old browsers */
	background: -moz-linear-gradient(left, #61b217 0%, #62983a 39%, #62983a 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #61b217), color-stop(39%, #62983a), color-stop(100%, #62983a)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #61b217 0%, #62983a 39%, #62983a 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #61b217 0%, #62983a 39%, #62983a 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #61b217 0%, #62983a 39%, #62983a 100%); /* IE10+ */
	background: linear-gradient(to right, #61b217 0%, #62983a 39%, #62983a 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #DFDFDF;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px -34px 3px 9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 12px;
line-height: 18px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 34px;
	height: 18px;
	background: url([SITE_ROOT]/images/03/01/percentage_arrow.png);
	position: relative;
	left: -1px;
top:0px;
	z-index: 0;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("10","Theme 03 red",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EEEF;
border: 1px solid #811919;
margin-bottom: 10px;
color: #811919;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	border-radius: 0px;
	border: 1px solid #39680B;
	background: #C9FD9C;
	height: 13px;
	width: 13px;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -5px !important;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover {
	background: #5D0000 !important;
	color: #fff;
}
a.ui-spinner-button:active {
	background: #5D0000 !important;
	color: #fff;
}
a.ui-spinner-button:focus {
	background: #5D0000 !important;
	color: #fff;
}
a.ui-slider-handle:hover {
	background: #5D0000 !important;
	color: #fff;
}
a.ui-slider-handle:active {
	background: #5D0000 !important;
	color: #fff;
}
a.ui-slider-handle:focus {
	background: #5D0000 !important;
	color: #fff;
}
ui-state-hover {
	background: #5D0000 !important;
	color: #fff;
}
.ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #942323 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 23px;
	line-height: 23px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/03/02/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 32px;
	height: 25px;
	background: url([SITE_ROOT]/images/03/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background-color: #ACABAB;
padding: 2px 15px;
vertical-align: middle;
border: none;
font-size: 15px;
}

.button-submit {
background: #811919;
cursor: pointer;
font-size: 17px;
min-width: 80px;
min-height: 34px;
color: #fff;
border: 2px solid #9E1919;
margin: 5px;
box-shadow: 0px 0px 1px 1px #811818;
font-family: Segoe UI;
	}
.button-reset {
	background: #D8D6D7;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 2px solid #fff;
	margin: 5px;
	box-shadow: 0px 0px 2px 1px #969495;
	font-family: Segoe UI;
}
.wdform_page {
	background: #F0EEEF;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/03/02/bg.png);
	text-align: left;
	padding: 10px 20px 10px 50px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: right;
	color: #fff;
font-size: 18px;
}

.wdform_section_break
{
margin: 16px 15px;
text-align: left;
color: #555;
font-size: 18px;
}
.wdform_section {
	display: inline-block;
	padding: 0px 15px;
}
select {
	border-radius: 0px;
	padding: 2px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
	background-color: #DFDFDF;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #fff;
	background-color: #640B0B;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	background-color: #942323;
	cursor: pointer;
	display: inline-block;
	vertical-align: bottom;
	height: 33px;
	text-align: center;
	font-size: 21px;
	padding: 5px 20px 0px 20px;
	margin-bottom: -13px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 20px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #752D2D ; /* Old browsers */
	background: -moz-linear-gradient(left, #9A0B0B  0%, #7B2828 39%, #752D2D 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #9A0B0B ), color-stop(39%, #7B2828 ), color-stop(100%, #752D2D )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #9A0B0B 0%, #7B2828 39%, #752D2D 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #9A0B0B 0%, #7B2828 39%, #752D2D 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #9A0B0B 0%, #7B2828 39%, #752D2D 100%); /* IE10+ */
	background: linear-gradient(to right, #9A0B0B 0%, #7B2828 39%, #752D2D 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #DFDFDF;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px -34px 3px 9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 12px;
line-height:18px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 34px;
	height: 18px;
	background: url([SITE_ROOT]/images/03/02/percentage_arrow.png);
	position: relative;
	left: -1px;
top:0px;
	z-index: 0;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("11","Theme 03 dark cyan",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EEEF;
border: 1px solid #0B7A97;
margin-bottom: 10px;
color: #0B7A97;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	border-radius: 0px;
	border: 1px solid #39680B;
	background: #C9FD9C;
	height: 13px;
	width: 13px;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -5px !important;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover {
	background: #0C6177 !important;
	color: #fff;
}
a.ui-spinner-button:active {
	background: #0C6177 !important;
	color: #fff;
}
a.ui-spinner-button:focus {
	background: #0C6177 !important;
	color: #fff;
}
a.ui-slider-handle:hover {
	background: #0C6177 !important;
	color: #fff;
}
a.ui-slider-handle:active {
	background: #0C6177 !important;
	color: #fff;
}
a.ui-slider-handle:focus {
	background: #0C6177 !important;
	color: #fff;
}
ui-state-hover {
	background: #0C6177 !important;
	color: #fff;
}
.ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #2796B3 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 23px;
	line-height: 23px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/03/03/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 32px;
	height: 25px;
	background: url([SITE_ROOT]/images/03/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background-color: #ACABAB;
padding: 2px 15px;
vertical-align: middle;
border: none;
font-size: 15px;
}

.button-submit {
background: #0B7A97;
cursor: pointer;
font-size: 17px;
min-width: 80px;
min-height: 34px;
color: #fff;
border: 2px solid #18627C;
margin: 5px;
box-shadow: 0px 0px 1px 1px #56B4D5;
font-family: Segoe UI;
}
.button-reset {
	background: #D8D6D7;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 2px solid #fff;
	margin: 5px;
	box-shadow: 0px 0px 2px 1px #969495;
	font-family: Segoe UI;
}
.wdform_page {
	background: #F0EEEF;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/03/03/bg.png);
	text-align: left;
	padding: 10px 20px 10px 50px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: right;
	color: #fff;
font-size:18px;
}

.wdform_section_break
{
margin: 16px 15px;
text-align: left;
color: #555;
font-size:18px;
}
.wdform_section {
	display: inline-block;
	padding: 0px 15px;
}
select {
	border-radius: 0px;
	padding: 2px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
	background-color: #DFDFDF;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #fff;
	background-color: #0C6177;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	background-color: #2796B3;
	cursor: pointer;
	display: inline-block;
	vertical-align: bottom;
	height: 33px;
	text-align: center;
	font-size: 21px;
	padding: 5px 20px 0px 20px;
	margin-bottom: -13px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 20px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #752D2D ; /* Old browsers */
	background: -moz-linear-gradient(left, #0E6378 0%, #2C7487 39%, #2D7587 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #0E6378 ), color-stop(39%, #2C7487 ), color-stop(100%, #2D7587 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #0E6378 0%, #2C7487 39%, #2D7587 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #0E6378 0%, #2C7487 39%, #2D7587 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #0E6378 0%, #2C7487 39%, #2D7587 100%); /* IE10+ */
	background: linear-gradient(to right, #0E6378 0%, #2C7487 39%, #2D7587 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #DFDFDF;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px -34px 3px 9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 12px;
line-height:18px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 34px;
	height: 18px;
	background: url([SITE_ROOT]/images/03/03/percentage_arrow.png);
	position: relative;
	left: -1px;
top:0px;
	z-index: 0;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("12","Theme 03 transparent (salmon button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #D8D6D7;
border: 1px solid #D8D6D7;
margin-bottom: 10px;
color: #D8D6D7;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	border-radius: 0px;
	border: 1px solid #39680B;
	background: #C9FD9C;
	height: 13px;
	width: 13px;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -5px !important;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover {
	background: #FA8072 !important;
	color: #fff;
}
a.ui-spinner-button:active {
	background: #FA8072 !important;
	color: #fff;
}
a.ui-spinner-button:focus {
	background: #FA8072 !important;
	color: #fff;
}
a.ui-slider-handle:hover {
	background: #FA8072 !important;
	color: #fff;
}
a.ui-slider-handle:active {
	background: #FA8072 !important;
	color: #fff;
}
a.ui-slider-handle:focus {
	background: #FA8072 !important;
	color: #fff;
}
ui-state-hover {
	background: #FA8072 !important;
	color: #fff;
}
.ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #C9FD9C !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 23px;
	line-height: 23px;
	overflow: hidden;
	background: #fff;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/03/01/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 32px;
	height: 25px;
	background: url([SITE_ROOT]/images/03/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background-color: #ACABAB;
padding: 2px 15px;
vertical-align: middle;
border: none;
font-size: 15px;
}


.button-submit {
background: #FA8072;
cursor: pointer;
font-size: 17px;
min-width: 80px;
min-height: 34px;
color: #fff;
border: 2px solid #FFABA1;
margin: 5px;
box-shadow: 0px 0px 1px 1px #FF9689;
font-family: Segoe UI;
	}
.button-reset {
	background: #D8D6D7;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 2px solid #fff;
	margin: 5px;
	box-shadow: 0px 0px 2px 1px #969495;
	font-family: Segoe UI;
}
.wdform_page {
	background: transparent;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/03/01/bg.png);
	text-align: left;
	padding: 10px 20px 10px 50px;
	border-radius: 0px;
	-moz-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	box-shadow: 7px -9px 20px -5px rgba(0, 0, 0, 0.23), -7px 9px 20px -5px rgba(0, 0, 0, 0.23);
	width: 466px;
	text-align: right;
	color: #000;
font-size: 18px;
}

.wdform_section_break
{
margin: 16px 15px;
text-align: left;
font-size: 18px;
color: #555;
}
.wdform_section {
	display: inline-block;
	padding: 0px 15px;
}
select {
	border-radius: 0px;
	padding: 2px;
	height: 26px;
	overflow: hidden;
	border: 0px solid #ccc;
	padding: 2px;
	outline: none;
background: #ECECEC;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #ECECEC;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #ECECEC;
}
textarea {
	border-radius: 0px;
	height: 25px;
	border: 0px solid #ccc;
	padding:0 3px !important;
background: #ECECEC;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}
input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}
textarea:focus{
	border-color: #FFB471;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
	background-color: #DFDFDF;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #fff;
	background-color: #FF9A8E;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	background-color: #FA8072;
	cursor: pointer;
	display: inline-block;
	vertical-align: bottom;
	height: 33px;
	text-align: center;
	font-size: 21px;
	padding: 5px 20px 0px 20px;
	margin-bottom: -13px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 20px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #FF8F83; /* Old browsers */
	background: -moz-linear-gradient(left, #F7B4AC 0%, #F89F95 39%, #FF8F83 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #F7B4AC), color-stop(39%, #F89F95), color-stop(100%, #FF8F83)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #F7B4AC 0%, #F89F95 39%, #FF8F83 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #F7B4AC 0%, #F89F95 39%, #FF8F83 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #F7B4AC 0%, #F89F95 39%, #FF8F83 100%); /* IE10+ */
	background: linear-gradient(to right, #F7B4AC 0%, #F89F95 39%, #FF8F83 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #DFDFDF;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px -34px 3px 9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 12px;
line-height: 18px;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 34px;
	height: 18px;
	background: url([SITE_ROOT]/images/03/04/percentage_arrow.png);
	position: relative;
	left: -1px;
top:0px;
	z-index: 0;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("13","Theme 04 dark orange",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #F6CE9D;
margin-bottom: 10px;
color: #F6CE9D;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 15px;
	height: 15px;
	top: -5px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
@font-face {
	font-family: ArTarumianHandes;
	src: url([SITE_ROOT]/css/HANDES.ttf);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #EDE5DA;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #E2B983 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #E2B983 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #E2B983 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #E2B983 !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #E2B983 !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #E2B983 !important;
	color: #fff;
}
ui-state-hover {
	background: #E2B983 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 20px;
	width: 22px;
	background: url([SITE_ROOT]/images/04/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 45px;
	height: 44px;
	background: url([SITE_ROOT]/images/04/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #424242;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 35px;
	padding: 0px 20px;
	vertical-align: middle;
	font-weight: 400;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
}
div.wdform-page-button:hover {
	color: #69512F;
	border: 1px solid #D89E5F;
	background: #C8A470; /* Old browsers */
	background: -moz-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* FF3.6+ */
	background: -webkit-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* Opera 11.10+ */
	background: -ms-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* IE10+ */
	background: linear-gradient(to bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* W3C */
	box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-submit {
	color: #424242 !important;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 32px;
	padding: 0px 20px 5px;
	vertical-align: middle;
	font-weight: 400 !important;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
	font-family: Segoe UI;
background:transparent;
}
.button-submit:hover {
	color: #69512F;
	border: 1px solid #D89E5F;
	background: #C8A470; /* Old browsers */
	background: -moz-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* FF3.6+ */
	background: -webkit-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* Opera 11.10+ */
	background: -ms-linear-gradient(bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* IE10+ */
	background: linear-gradient(to bottom, #DFC091 0%, #CFAE7B 49%, #C19C67 84%, #AA824E 95%); /* W3C */
	box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 18px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #F6CE9D;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/04/01/bg.png) no-repeat;
	text-align: left;
	border-radius: 0px;
	width: 300px;
	padding: 13px;
	text-align: center;
font-size: 18px;
}
.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ccc;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus {
	border-color: #E2B983;
	outline: none;
}
input[type=\"password\"]:focus {
	border-color: #E2B983;
	outline: none;
}
textarea:focus {
	border-color: #E2B983;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/04/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 10px;
	height: 10px;
	background: #DAA157;
	background: -moz-linear-gradient(bottom, #F8DCB2 0%, #E7C187 49%, #E6BE86 84%, #DAA157 95%);
	background: -webkit-linear-gradient(bottom, #F8DCB2 0%, #E7C187 49%, #E6BE86 84%, #DAA157 95%);
	background: -o-linear-gradient(bottom, #F8DCB2 0%, #E7C187 49%, #E6BE86 84%, #DAA157 95%);
	background: -ms-linear-gradient(bottom, #F8DCB2 0%, #E7C187 49%, #E6BE86 84%, #DAA157 95%);
	background: linear-gradient(to bottom, #F8DCB2 0%, #E7C187 49%, #E6BE86 84%, #DAA157 95%);
	box-shadow: 0px 0px 5px 0px rgb(214, 214, 214) inset;
	border-radius: 7px;
	top: 1px;
	left: 1px;
	border: 1px solid #C0A77E;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 20px 0px 20px;
	font-weight: bold;
	background-color: #E2B983;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #AA824E;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 20px 0px 20px;
	margin-left: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #AA824E;
	vertical-align: middle;
	font-family: ArTarumianHandes;
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #E2B983;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 20px;
	height: 23px;
	background-color: #AA824E;
	position: relative;
	left: -14px;
	z-index: 0;
	vertical-align: middle;
	-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("14","Theme 04 light blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #CEE4E4;
margin-bottom: 10px;
color: #CEE4E4;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 15px;
	height: 15px;
	top: -5px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
@font-face {
	font-family: ArTarumianHandes;
	src: url([SITE_ROOT]/css/HANDES.ttf);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #EDE5DA;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #678B94 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #678B94 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #678B94 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #678B94 !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #678B94 !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #678B94 !important;
	color: #fff;
}
ui-state-hover {
	background: #678B94 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 20px;
	width: 22px;
	background: url([SITE_ROOT]/images/04/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 45px;
	height: 44px;
	background: url([SITE_ROOT]/images/04/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #424242;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 35px;
	padding: 0px 20px;
	vertical-align: middle;
	font-weight: 400;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
}
div.wdform-page-button:hover {
color: #fff;
border: 1px solid #88A1A6;
background: #86A0A7 ;
background: -moz-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -webkit-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -o-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -ms-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: linear-gradient(to bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-submit {
	color: #767676 !important;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 32px;
	padding: 0px 20px 5px;
	vertical-align: middle;
	font-weight: 400 !important;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
	font-family: Segoe UI;
background:transparent;
}
.button-submit:hover {
color: #fff !important;
border: 1px solid #88A1A6;
background: #86A0A7 ;
background: -moz-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -webkit-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -o-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: -ms-linear-gradient(bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
background: linear-gradient(to bottom, #A0C5CF 0%, #95B3BB 49%, #869AA0 84%, #86A0A7 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 18px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #CEE4E4;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/04/02/bg.png) no-repeat;
	text-align: left;
	border-radius: 0px;
	width: 300px;
padding: 5px;
	text-align: center;
font-size: 16px;
}
.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ccc;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus {
	border-color: #678B94;
	outline: none;
}
input[type=\"password\"]:focus {
	border-color: #678B94;
	outline: none;
}
textarea:focus {
	border-color: #678B94;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/04/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.radio-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 10px;
height: 10px;
background: #63929E ;
background: -moz-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -webkit-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -o-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -ms-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: linear-gradient(to bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
box-shadow: 0px 0px 5px 0px rgb(214, 214, 214) inset;
border-radius: 7px;
top: 1px;
left: 1px;
border: 1px solid #678B94;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 20px 0px 20px;
	font-weight: bold;
	background-color: #88B4BD;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #678B94;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 20px 0px 20px;
	margin-left: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #678B94;
	vertical-align: middle;
	font-family: ArTarumianHandes;
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #88B4BD;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 20px;
	height: 23px;
	background-color: #678B94;
	position: relative;
	left: -14px;
	z-index: 0;
	vertical-align: middle;
	-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("15","Theme 04 red",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #CEE4E4;
margin-bottom: 10px;
color: #CEE4E4;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 15px;
	height: 15px;
	top: -5px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
@font-face {
	font-family: ArTarumianHandes;
	src: url([SITE_ROOT]/css/HANDES.ttf);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #EDE5DA;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #8A6B63 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #8A6B63 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #8A6B63 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #8A6B63 !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #8A6B63 !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #8A6B63 !important;
	color: #fff;
}
ui-state-hover {
	background: #8A6B63 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 20px;
	width: 22px;
	background: url([SITE_ROOT]/images/04/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 45px;
	height: 44px;
	background: url([SITE_ROOT]/images/04/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #424242;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 35px;
	padding: 0px 20px;
	vertical-align: middle;
	font-weight: 400;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
}
div.wdform-page-button:hover {
color: #fff;
border: 1px solid #C09F97;
background: #86A0A7;
background: -moz-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -webkit-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -o-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -ms-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: linear-gradient(to bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-submit {
	color: #767676 !important;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 32px;
	padding: 0px 20px 5px;
	vertical-align: middle;
	font-weight: 400 !important;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
	font-family: Segoe UI;
background:transparent;
}
.button-submit:hover {
color: #fff !important;
border: 1px solid #C09F97;
background: #86A0A7;
background: -moz-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -webkit-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -o-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: -ms-linear-gradient(bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
background: linear-gradient(to bottom, #E0B8AF 0%, #CAA298 49%, #BD9E96 84%, #B6958E 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 18px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #E0D0CD;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
margin: 16px 10px 16px 0px;
display: inline-block;
background: url([SITE_ROOT]/images/04/03/bg.png) no-repeat;
text-align: left;
border-radius: 0px;
width: 300px;
padding: 5px 10px;
text-align: center;
font-size: 18px;
}
.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ccc;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus {
	border-color: #8A6B63;
	outline: none;
}
input[type=\"password\"]:focus {
	border-color: #8A6B63;
	outline: none;
}
textarea:focus {
	border-color: #8A6B63;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/04/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.radio-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 10px;
height: 10px;
background: #B98476 ;
background: -moz-linear-gradient(bottom, #CA9B8F 0%, #DBACA0 49%, #B98476 84%, #A38279 95%);
background: -webkit-linear-gradient(bottom, #CA9B8F 0%, #DBACA0 49%, #B98476 84%, #A38279 95%);
background: -o-linear-gradient(bottom, #CA9B8F 0%, #DBACA0 49%, #B98476 84%, #A38279 95%);
background: -ms-linear-gradient(bottom, #CA9B8F 0%, #DBACA0 49%, #B98476 84%, #A38279 95%);
background: linear-gradient(to bottom, #CA9B8F 0%, #DBACA0 49%, #B98476 84%, #A38279 95%);
box-shadow: 0px 0px 5px 0px rgb(214, 214, 214) inset;
border-radius: 7px;
top: 1px;
left: 1px;
border: 1px solid #9B766D;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 20px 0px 20px;
	font-weight: bold;
	background-color: #CCAAA3;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #8A6B63;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 20px 0px 20px;
	margin-left: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #8A6B63;
	vertical-align: middle;
	font-family: ArTarumianHandes;
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #CCAAA3;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 20px;
	height: 23px;
	background-color: #8A6B63;
	position: relative;
	left: -14px;
	z-index: 0;
	vertical-align: middle;
	-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("16","Theme 04 transparent (gray button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #FFFFFF;
border: 1px solid #A6A6A6;
margin-bottom: 10px;
color: #A6A6A6;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 15px;
	height: 15px;
	top: -5px;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
@font-face {
	font-family: ArTarumianHandes;
	src: url([SITE_ROOT]/css/HANDES.ttf);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #EDE5DA;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #B3B3B3 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #B3B3B3 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #B3B3B3 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #B3B3B3 !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #B3B3B3 !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #B3B3B3 !important;
	color: #fff;
}
ui-state-hover {
	background: #B3B3B3 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 22px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 20px;
	width: 22px;
	background: url([SITE_ROOT]/images/04/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 45px;
	height: 44px;
	background: url([SITE_ROOT]/images/04/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #424242;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 35px;
	padding: 0px 20px;
	vertical-align: middle;
	font-weight: 400;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
}
div.wdform-page-button:hover {
color: #fff;
border: 1px solid #919191;
background: #7A7A7A ;
background: -moz-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -webkit-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -o-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -ms-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: linear-gradient(to bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-submit {
	color: #767676 !important;
	cursor: pointer;
	display: inline-block;
	height: 39px;
	line-height: 32px;
	padding: 0px 20px 5px;
	vertical-align: middle;
	font-weight: 400 !important;
	font-size: 20px;
	border: 1px solid #959595;
	border-radius: 5px;
	font-family: Segoe UI;
background:transparent;
}
.button-submit:hover {
color: #fff !important;
border: 1px solid #919191;
background: #7A7A7A ;
background: -moz-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -webkit-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -o-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: -ms-linear-gradient(bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
background: linear-gradient(to bottom, #C7C7C7 0%, #A0A0A0 49%, #7A7A7A 84%, #858585 95%);
box-shadow: 0px 0px 5px 0px rgb(221, 221, 221) inset;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 18px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: transparent;
	padding: 15px 15px 15px 50px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: url([SITE_ROOT]/images/04/02/bg.png) no-repeat;
	text-align: left;
	border-radius: 0px;
	width: 300px;
padding: 5px;
	text-align: center;
font-size: 16px;
}
.wdform_section_break
{
margin: 16px 10px 16px 0px;
text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ccc;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	height: 22px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus {
	border-color: #B3B3B3;
	outline: none;
}
input[type=\"password\"]:focus {
	border-color: #B3B3B3;
	outline: none;
}
textarea:focus {
	border-color: #B3B3B3;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/02/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/04/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 14px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 8px 1px rgb(213, 213, 213) inset;
}
.radio-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 10px;
height: 10px;
background: #63929E ;
background: -moz-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -webkit-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -o-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: -ms-linear-gradient(bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
background: linear-gradient(to bottom, #84B8C5 0%, #75A1AC 49%, #63929E 84%, #377483 95%);
box-shadow: 0px 0px 5px 0px rgb(214, 214, 214) inset;
border-radius: 7px;
top: 1px;
left: 1px;
border: 1px solid #678B94;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.5;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 20px 0px 20px;
	font-weight: bold;
	background-color: #C0C0C0;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #A8A8A8;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 20px 0px 20px;
	margin-left: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #678B94;
	vertical-align: middle;
	font-family: ArTarumianHandes;
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #88B4BD;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_percentage_arrow {
	display: inline-block;
	width: 20px;
	height: 23px;
	background-color: #678B94;
	position: relative;
	left: -14px;
	z-index: 0;
	vertical-align: middle;
	-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
	transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("17","Theme 05 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #0E7297;
border: 1px solid #A0CBDB;
margin-bottom: 10px;
color: #A0CBDB;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 14px;
	height: 14px;
	top: -6px;
	border: 2px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/05/01/nextbg_hover.png) url([SITE_ROOT]/images/05/01/previousbg_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #00B4F6 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #00B4F6 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #00B4F6 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #00B4F6 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:active{
	background: #00B4F6 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:focus{
	background: #00B4F6 !important;
	color: #fff;
outline:none;
}
ui-state-hover {
	background: #00B4F6 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
border-radius: 0px;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	background: #fff;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 27px;
	background: url([SITE_ROOT]/images/05/01.png) 50% 50% no-repeat;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/05/01/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/01/nextbg.png) no-repeat;
	padding: 0px 20px 0 0;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/01/nextbg_hover.png) no-repeat;
	width: 113px;
}
.previous-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/01/previousbg.png) no-repeat;
	padding: 0px 0 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/01/previousbg_hover.png) no-repeat;
	width: 113px;
}
.button-submit {
	background: url([SITE_ROOT]/images/05/01/submit.png) no-repeat;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 32px;
	color: #fff;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 500;
	padding: 0 12px 0 24px;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #A0CBDB;
	padding:15px 20px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 0px;
	background: #006A91;
	border-radius: 0px;
padding: 6px 10px 15px;
text-align: center;
font-size: 18px;
color: #fff;
box-shadow: 0px 3px 5px #4B4B4B;
}

.wdform-field-section-break2:after {
	content: \" \";
	position: relative;
	width: 97.7%;
	right: 0px;
	bottom: 20px;
	height: 4px;
	-webkit-box-shadow: 0 2px 3px #444141;
	-moz-box-shadow: 0 2px 3px #444141;
	box-shadow: 0 2px 3px #444141;
	display: inline-block;
}

.wdform_section_break {
	margin: 16px 0px;
	border-radius: 0px;
	text-align: left;
font-size: 18px;
color: #3F3F3F;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
border: 1px solid transparent;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border: 1px solid #006A91;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #006A91;
	outline: none;
}
textarea:focus{
	border: 1px solid #006A91;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #026994;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/05/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 21px;
	position: relative;
	left: -19px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #026994;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #026994;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #006A91;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #01B4F6;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-left: 1px;
	line-height: 25px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 27px;
	line-height: 27px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #018ABE;
	background: -moz-linear-gradient(left, #0079A6 0%, #018ABE 39%, #00B6FA 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #0079A6), color-stop(39%, #018ABE ), color-stop(100%, #00B6FA ));
	background: -webkit-linear-gradient(left, #0079A6 0%, #018ABE 39%, #00B6FA 100%);
	background: -o-linear-gradient(left, #0079A6 0%, #018ABE 39%, #00B6FA 100%);
	background: -ms-linear-gradient(left, #0079A6 0%, #018ABE 39%, #00B6FA 100%);
	background: linear-gradient(to right, #0079A6 0%, #018ABE 39%, #00B6FA 100%);
	border-top-right-radius: 9px;
	border-bottom-right-radius: 9px;
	box-shadow: 2px 0px 7px #9E9B9B;
}
.page_percentage_deactive {
	height: 27px;
	line-height: 27px;
	background-color: #C4D5DF;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #ffffff;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("18","Theme 05 green",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #007326;
border: 1px solid #B6E4CF;
margin-bottom: 10px;
color: #B6E4CF;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 14px;
	height: 14px;
	top: -6px;
	border: 2px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/05/02/nextbg_hover.png) url([SITE_ROOT]/images/05/02/previousbg_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #018D08 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #018D08 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #018D08 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #018D08 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:active{
	background: #018D08 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:focus{
	background: #018D08 !important;
	color: #fff;
outline:none;
}
ui-state-hover {
	background: #018D08 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
border-radius: 0px;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	background: #fff;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 27px;
	background: url([SITE_ROOT]/images/05/01.png) 50% 50% no-repeat;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/05/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/02/nextbg.png) no-repeat;
	padding: 0px 20px 0 0;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/02/nextbg_hover.png) no-repeat;
	width: 113px;
}
.previous-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/02/previousbg.png) no-repeat;
	padding: 0px 0 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/02/previousbg_hover.png) no-repeat;
	width: 113px;
}
.button-submit {
	background: url([SITE_ROOT]/images/05/02/submit.png) no-repeat;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 32px;
	color: #fff;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 500;
	padding: 0 12px 0 24px;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #B6E4CF;
	padding: 15px 20px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2{
	margin: 16px 0px;
	background: #0D7A31;
	border-radius: 0px;
padding: 6px 10px 15px;
text-align: center;
font-size: 18px;
color: #fff;
box-shadow: 0px 3px 5px #4B4B4B;
}

.wdform-field-section-break2:after {
	content: \" \";
	position: relative;
	width: 97.7%;
	right: 0px;
	bottom: 20px;
	height: 4px;
	-webkit-box-shadow: 0 2px 3px #444141;
	-moz-box-shadow: 0 2px 3px #444141;
	box-shadow: 0 2px 3px #444141;
	display: inline-block;
}

.wdform_section_break{
	margin: 16px 0px;
	border-radius: 0px;
	text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
border: 1px solid transparent;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border: 1px solid #0D7A31;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #0D7A31;
	outline: none;
}
textarea:focus{
	border: 1px solid #0D7A31;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #0D7A31;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/05/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 21px;
	position: relative;
	left: -19px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #0D7A31;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #0D7A31;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #018D08;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #00AC0A;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-left: 1px;
	line-height: 25px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 27px;
	line-height: 27px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #018F08 ;
	background: -moz-linear-gradient(left, #018D08 0%, #018F08 39%, #00BE0A 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #018D08 ), color-stop(39%, #018F08 ), color-stop(100%, #00BE0A ));
	background: -webkit-linear-gradient(left, #018D08 0%, #018F08 39%, #00BE0A 100%);
	background: -o-linear-gradient(left, #018D08 0%, #018F08 39%, #00BE0A 100%);
	background: -ms-linear-gradient(left, #018D08 0%, #018F08 39%, #00BE0A 100%);
background: linear-gradient(to right, #018D08 0%, #018F08 39%, #00BE0A 100%);
	border-top-right-radius: 9px;
	border-bottom-right-radius: 9px;
	box-shadow: 2px 0px 7px #9E9B9B;
}
.page_percentage_deactive {
	height: 27px;
	line-height: 27px;
	background-color: #CEE0D3;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #ffffff;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("19","Theme 05 pink",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #B05785;
border: 1px solid #F6E2ED;
margin-bottom: 10px;
color: #F6E2ED;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 14px;
	height: 14px;
	top: -6px;
	border: 2px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: #fff !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/05/03/nextbg_hover.png) url([SITE_ROOT]/images/05/03/previousbg_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #B05785 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #B05785 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #B05785 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #B05785 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:active{
	background: #B05785 !important;
	color: #fff;
outline:none;
}
a.ui-slider-handle:focus{
	background: #B05785 !important;
	color: #fff;
outline:none;
}
ui-state-hover {
	background: #B05785 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
border-radius: 0px;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #E5E5E5 !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
	background: #fff;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 22px;
	width: 27px;
	background: url([SITE_ROOT]/images/05/01.png) 50% 50% no-repeat;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/05/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/03/nextbg.png) no-repeat;
	padding: 0px 20px 0 0;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/03/nextbg_hover.png) no-repeat;
	width: 113px;
}
.previous-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 32px;
	line-height: 28px;
	background: url([SITE_ROOT]/images/05/03/previousbg.png) no-repeat;
	padding: 0px 0 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	width: 90px;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/05/03/previousbg_hover.png) no-repeat;
	width: 113px;
}
.button-submit {
	background: url([SITE_ROOT]/images/05/03/submit.png) no-repeat;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 32px;
	color: #fff;
	margin: 5px;
	border: 0px;
	font-family: Segoe UI;
	font-weight: 500;
	padding: 0 12px 0 24px;
}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 0px;
	margin: 5px;
	font-family: Segoe UI;
	text-decoration: underline;
}
.wdform_page {
	background: #F6E2ED;
	padding: 15px 20px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform-field-section-break {
	text-align: center;
}
.wdform_section_break2 {
	margin: 16px 0px;
	background: #B05785;
	border-radius: 0px;
padding: 6px 10px 15px;
text-align: center;
font-size: 18px;
color: #fff;
box-shadow: 0px 3px 5px #4B4B4B;
}

.wdform-field-section-break2:after {
	content: \" \";
	position: relative;
	width: 97.7%;
	right: 0px;
	bottom: 20px;
	height: 4px;
	-webkit-box-shadow: 0 2px 3px #444141;
	-moz-box-shadow: 0 2px 3px #444141;
	box-shadow: 0 2px 3px #444141;
	display: inline-block;

}

.wdform_section_break {
	margin: 16px 0px;
	border-radius: 0px;
	text-align: left;
font-size: 18px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
border: 1px solid transparent;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
textarea {
	border-radius: 0px;
	border: 1px solid transparent;
	height: 20px;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border: 1px solid #B05785;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #B05785;
	outline: none;
}
textarea:focus{
	border: 1px solid #B05785;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #B05785;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/05/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 21px;
	position: relative;
	left: -19px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #B05785;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #B05785;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #D7639F;
	margin-left: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #E47DB3;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-left: 1px;
	line-height: 25px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 27px;
	line-height: 27px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #D863A0 ;
	background: -moz-linear-gradient(left, #D7639F 0%, #D863A0 39%, #F173B4 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #D7639F ), color-stop(39%, #D863A0 ), color-stop(100%, #F173B4 ));
	background: -webkit-linear-gradient(left, #D7639F 0%, #D863A0 39%, #F173B4 100%);
	background: -o-linear-gradient(left, #D7639F 0%, #D863A0 39%, #F173B4 100%);
	background: -ms-linear-gradient(left, #D7639F 0%, #D863A0 39%, #F173B4 100%);
background: linear-gradient(to right, #D7639F 0%, #D863A0 39%, #F173B4 100%);
	border-top-right-radius: 9px;
	border-bottom-right-radius: 9px;
	box-shadow: 2px 0px 7px #9E9B9B;
}
.page_percentage_deactive {
	height: 27px;
	line-height: 27px;
	background-color: #D6CAD2;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #ffffff;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #6E6E6E;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 27px;
	height: 27px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}","0"),
("20","Theme 06 turquoise",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #B1EBE9;
border: 1px solid #018580;
margin-bottom: 10px;
color: #018580;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #fff;
	border: 1px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: transparent !important;
	margin: 7px 0px;
border:1px solid #ABAAAA !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #029A95 !important;
	color: #fff;
	outline: none;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 4px;
	font-size: 13px;
	height: 23px;
	line-height: 20px;
	overflow: hidden;
	background: transparent;
	background-position: right 2px center;
	width: 100%;
	border: 1px solid #ABAAAA;
	border-radius: 7px;
	color: #4C4C4C;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 25px;
	width: 28px;
	background: url([SITE_ROOT]/images/06/01.png) no-repeat 0% 50%;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 66px;
	height: 49px;
	background: url([SITE_ROOT]/images/06/upload.png) no-repeat;
	display: inline-block;
}
.next-page
{
        width:inherit !important;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/06/next.png) no-repeat right #019993;
 	padding: 0px 36px 0 20px ;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #018580;

}
.next-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/06/next.png) no-repeat right #00C5BD;
}
.previous-page
{
        width:inherit !important;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #959595;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #E8E8E8;
}
.previous-page div.wdform-page-button:before {
	content: \" \";
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left;
	height: 19px;
	width: 20px;
	display: inline-block;
	vertical-align: middle;
	top: -2px;
	position: relative;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #019993;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #018580;
}
.button-submit:hover {
	background: #00C5BD;
}
.button-reset {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #959595;
	margin-left: 5px;
}
.button-reset:hover {
	background: #E8E8E8;
}
.wdform_page {
	background: #B1EBE9;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #029A95;
	color: #ffffff !important;
	font-size: 16px;
	text-align: left;
padding: 7px 30px 10px;
}

.wdform_section_break2 p{
	color: #ffffff !important;
	
}

.wdform_section_break2:after {
	content: \" \" ;
	position: relative;
	width: 16px;
	height: 13px;
	top: -3px;
	left: 1px;
	box-shadow: 0px 7px 2px #c9c9c9;
}

.wdform_section_break
{
	margin: 16px 10px 16px 0px;
color:#4C4C4C;
font-size: 16px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 5px;
	height: 27px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ABAAAA;
background: transparent;
color: #5C5C5C;
	outline: none;
}
input[type=\"text\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"password\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
textarea {
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"text\"]:focus{
	border: 1px solid #029A95;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #029A95;
	outline: none;
}
textarea:focus{
	border: 1px solid #029A95;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #029A95;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/06/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 13px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
	box-shadow: 0px 3px 9px 1px rgb(218, 218, 218) inset;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #4C4C4C;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #4C4C4C;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #029A95;
	margin-right: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #00DAD3;
	display: inline-block;
	vertical-align: bottom;
	height: 20px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-right: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #01B3AD ;
	background: -moz-linear-gradient(left, #01B3AD 0%, #01CDC6 39%, #02DED6 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #01B3AD ), color-stop(39%, #01CDC6 ), color-stop(100%, #02DED6 ));
	background: -webkit-linear-gradient(left, #01B3AD 0%, #01CDC6 39%, #02DED6 100%);
	background: -o-linear-gradient(left, #01B3AD 0%, #01CDC6 39%, #02DED6 100%);
	background: -ms-linear-gradient(left, #01B3AD 0%, #01CDC6 39%, #02DED6 100%);
linear-gradient(to right, #01B3AD 0%, #01CDC6 39%, #02DED6 100%)
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #029A95;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: left !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #ffffff;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #ffffff;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 23px;
	height: 23px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}

.wdform-section-break-div
{
border-top:1px solid #ABAAAA !important;
}","0"),
("21","Theme 06 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #BBDBE7;
border: 1px solid #25A5DF;
margin-bottom: 10px;
color: #25A5DF;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #fff;
	border: 1px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: transparent !important;
	margin: 7px 0px;
border:1px solid #ABAAAA !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #0176AA !important;
	color: #fff;
	outline: none;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 4px;
	font-size: 13px;
	height: 23px;
	line-height: 20px;
	overflow: hidden;
	background: transparent;
	background-position: right 2px center;
	width: 100%;
	border: 1px solid #ABAAAA;
	border-radius: 7px;
	color: #4C4C4C;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 25px;
	width: 28px;
	background: url([SITE_ROOT]/images/06/01.png) no-repeat 0% 50%;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 66px;
	height: 49px;
	background: url([SITE_ROOT]/images/06/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
background: url([SITE_ROOT]/images/06/next.png) no-repeat right #0D66B1;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
border: 1px solid #107DAF;
}
.next-page div.wdform-page-button:hover {
background: url([SITE_ROOT]/images/06/next.png) no-repeat right #25A5DF;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #959595;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #E8E8E8;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #0D66B1;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #107DAF;
}
.button-submit:hover {
	background: #25A5DF;
}
.button-reset {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #959595;
	margin-left: 5px;
}
.button-reset:hover {
	background: #E8E8E8;
}
.wdform_page {
	background: #BBDBE7;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #0D66B1;
	color: #ffffff;
	font-size: 16px;
	text-align: left;
padding: 7px 30px 10px;
}

.wdform_section_break2:after {
	content: \" \" ;
	position: relative;
	width: 16px;
	height: 13px;
	top: -3px;
	left: 1px;
	box-shadow: 0px 7px 2px #c9c9c9;
}

.wdform_section_break
{
	margin: 16px 10px 16px 0px;
color:#4C4C4C;
	font-size: 16px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 5px;
	height: 27px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ABAAAA;
background: transparent;
color: #5C5C5C;
	outline: none;
}
input[type=\"text\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"password\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
textarea {
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"text\"]:focus{
	border: 1px solid #0176AA ;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #0176AA ;
	outline: none;
}
textarea:focus{
	border: 1px solid #0176AA ;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #0176AA ;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/06/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 13px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
box-shadow: 0px 3px 9px 1px rgb(218, 218, 218) inset;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #4C4C4C;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #4C4C4C;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #0176AA;
	margin-right: 1px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #008AFF;
	display: inline-block;
	vertical-align: bottom;
	height: 20px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-right: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #0073D3 ;
	background: -moz-linear-gradient(left, #0073D3 0%, #008FE1 39%, #00A7ED 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #0073D3 ), color-stop(39%, #008FE1 ), color-stop(100%, #00A7ED ));
	background: -webkit-linear-gradient(left, #0073D3 0%, #008FE1 39%, #00A7ED 100%);
	background: -o-linear-gradient(left, #0073D3 0%, #008FE1 39%, #00A7ED 100%);
background: -webkit-linear-gradient(left, #0073D3 0%, #008FE1 39%, #00A7ED 100%);
}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
	background-color: #0176AA;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: left !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #ffffff;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #ffffff;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 23px;
	height: 23px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}

.wdform-section-break-div
{
border-top:1px solid #ABAAAA !important;
}","0"),
("22","Theme 06 orange",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EEEF;
border: 1px solid #FAB17A;
margin-bottom: 10px;
color: #FAB17A;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #fff;
	border: 1px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: transparent !important;
	margin: 7px 0px;
border:1px solid #ABAAAA !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #FFA15C !important;
	color: #fff;
	outline: none;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 4px;
	font-size: 13px;
	height: 23px;
	line-height: 20px;
	overflow: hidden;
	background: transparent;
	background-position: right 2px center;
	width: 100%;
	border: 1px solid #ABAAAA;
	border-radius: 7px;
	color: #4C4C4C;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 25px;
	width: 28px;
	background: url([SITE_ROOT]/images/06/01.png) no-repeat 0% 50%;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 66px;
	height: 49px;
	background: url([SITE_ROOT]/images/06/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #473C34;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/06/01/next.png) no-repeat right #FFA15C;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #C78655;
}

.next-page div.wdform-page-button:hover {
	background:url([SITE_ROOT]/images/06/01/next.png) no-repeat right #FAB17A;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #959595;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #E8E8E8;
}
.button-submit {
color: #473C34;
cursor: pointer;
display: inline-block;
height: 35px;
line-height: 35px;
background: #FFA15C;
padding: 0px 20px;
vertical-align: middle;
font-size: 18px;
border: 1px solid #C78655;
}
.button-submit:hover {
	background: #FAB17A;
}
.button-reset {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #959595;
	margin-left: 5px;
}
.button-reset:hover {
	background: #E8E8E8;
}
.wdform_page {
	background: #F0EEEF;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_section_break2{
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #FFA15C ;
	color: #030303;
	font-size: 16px;
	text-align: left;
padding: 7px 30px 10px;
}

.wdform_section_break2:after {
	content: \" \" ;
	position: relative;
	width: 16px;
	height: 13px;
	top: -3px;
	left: 1px;
	box-shadow: 0px 7px 2px #c9c9c9;
}

.wdform_section_break
{
	margin: 16px 10px 16px 0px;
color:#4C4C4C;
	font-size: 16px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 5px;
	height: 27px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ABAAAA;
background: transparent;
color: #5C5C5C;
	outline: none;
}
input[type=\"text\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"password\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
textarea {
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"text\"]:focus{
	border: 1px solid #FFA15C ;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #FFA15C ;
	outline: none;
}
textarea:focus{
	border: 1px solid #FFA15C ;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #FFA15C ;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/06/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 13px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
box-shadow: 0px 3px 9px 1px rgb(218, 218, 218) inset;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #4C4C4C;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #4C4C4C;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #342114;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #C78655;
	margin-right: 1px;
}
.page_active {
	color: #342114;
	cursor: pointer;
	background-color: #FF8A34;
	display: inline-block;
	vertical-align: bottom;
	height: 20px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-right: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #FF8932 ;
	background: -moz-linear-gradient(left, #F3BA28 0%, #FFD325 39%, #FEB824 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #F3BA28 ), color-stop(39%, #FFD325 ), color-stop(100%, #FEB824 ));
	background: -o-linear-gradient(left, #F3BA28 0%, #FFD325 39%, #FEB824 100%);
background: -ms-linear-gradient(left, #F3BA28 0%, #FFD325 39%, #FEB824 100%);
background: -webkit-linear-gradient(left, #F3BA28 0%, #FFD325 39%, #FEB824 100%);

}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
background-color: #ECBE9C;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: left !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #473C34;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #ffffff;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 23px;
	height: 23px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}

.wdform-section-break-div
{
border-top:1px solid #ABAAAA !important;
}","0"),
("23","Theme 06 transparent (light green button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #FFFFFF;
border: 1px solid #90EE90;
margin-bottom: 10px;
color: #90EE90;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #fff;
	border: 1px solid #ccc;
}
.ui-slider {
	height: 6px;
	background: transparent !important;
	margin: 7px 0px;
border:1px solid #ABAAAA !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #CECECE;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #6BD86B !important;
	color: #fff;
	outline: none;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #DCDCDC;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	padding: 2px 0px 2px 4px;
	font-size: 13px;
	height: 23px;
	line-height: 20px;
	overflow: hidden;
	background: transparent;
	background-position: right 2px center;
	width: 100%;
	border: 1px solid #ABAAAA;
	border-radius: 7px;
	color: #4C4C4C;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 25px;
	width: 28px;
	background: url([SITE_ROOT]/images/06/01.png) no-repeat 0% 50%;
	position: absolute;
	top: -1px;
	right: 0px;
	padding: 2px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}

.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 4px;
	height: 24px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
	padding-top: 3px;
	margin-top: 2px;
}
.file-picker {
	width: 66px;
	height: 49px;
	background: url([SITE_ROOT]/images/06/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
color: #473C34;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/06/01/next.png) no-repeat right #6BD86B;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #459B45;
}

.next-page div.wdform-page-button:hover {
	background:url([SITE_ROOT]/images/06/01/next.png) no-repeat right #90EE90;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	margin-right: 20px;
	margin-left: 20px;
	border: 1px solid #959595;
}
.previous-page div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left #E8E8E8;
}
.previous-page div.wdform-page-button:before {
	content: \" \";
	background: url([SITE_ROOT]/images/06/previous.png) no-repeat left;
	height: 19px;
	width: 20px;
	display: inline-block;
	vertical-align: middle;
	top: -2px;
	position: relative;
}
.button-submit {
color: #473C34;
cursor: pointer;
display: inline-block;
height: 35px;
line-height: 35px;
background: #6BD86B;
padding: 0px 20px;
vertical-align: middle;
font-size: 18px;
border: 1px solid #459B45;
}
.button-submit:hover {
	background: #90EE90;
}
.button-reset {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0 20px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #959595;
	margin-left: 5px;
}
.button-reset:hover {
	background: #E8E8E8;
}
.wdform_page {
	background: transparent;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_column>div {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_column>.wdform_row:last-child {
	border-bottom: 0px solid #E7E7E7;
}
.wdform_section_break2{
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #6BD86B ;
	color: #030303;
	font-size: 16px;
	text-align: left;
padding: 7px 30px 10px;
}

.wdform_section_break2:after {
	content: \" \" ;
	position: relative;
	width: 16px;
	height: 13px;
	top: -3px;
	left: 1px;
	box-shadow: 0px 7px 2px #c9c9c9;
}

.wdform_section_break
{
	margin: 16px 10px 16px 0px;
color:#4C4C4C;
	font-size: 16px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 5px;
	height: 27px;
	overflow: hidden;
	padding: 2px;
border: 1px solid #ABAAAA;
background: transparent;
color: #5C5C5C;
	outline: none;
}
input[type=\"text\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"password\"]{
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
textarea {
	border: 1px solid #ABAAAA;
	height: 25px;
	padding:0 3px !important;
	border-radius: 5px;
	background: transparent;
	color: #5C5C5C;
}
input[type=\"text\"]:focus{
	border: 1px solid #6BD86B ;
	outline: none;
}
input[type=\"password\"]:focus{
	border: 1px solid #6BD86B  ;
	outline: none;
}
textarea:focus{
	border: 1px solid #6BD86B ;
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #6BD86B ;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/06/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 20px;
	height: 24px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 14px;
	height: 13px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 7px;
	position: relative;
	display: inline-block;
box-shadow: 0px 3px 9px 1px rgb(218, 218, 218) inset;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #4C4C4C;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #4C4C4C;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #342114;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding: 5px 25px 0px 25px;
	font-weight: bold;
	background-color: #90EE90;
	margin-right: 1px;
}
.page_active {
	color: #342114;
	cursor: pointer;
	background-color: #6BD86B;
	display: inline-block;
	vertical-align: bottom;
	height: 20px;
	text-align: center;
	font-size: 16px;
	padding: 5px 25px 0px 25px;
	margin-right: 1px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 23px;
	line-height: 23px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	vertical-align: middle;
	background: #72DB72 ;
	background: -moz-linear-gradient(left, #8FEB8F 0%, #5CF35C 39%, #72DB72 100%);
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #8FEB8F ), color-stop(39%, #5CF35C ), color-stop(100%, #72DB72 ));
	background: -o-linear-gradient(left, #8FEB8F 0%, #5CF35C 39%, #72DB72 100%);
background: -ms-linear-gradient(left, #8FEB8F 0%, #5CF35C 39%, #72DB72 100%);
background: -webkit-linear-gradient(left, #8FEB8F 0%, #5CF35C 39%, #72DB72 100%);

}
.page_percentage_deactive {
	height: 23px;
	line-height: 23px;
background-color: #E0E0E0;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: left !important;
	margin-bottom: 0px;
}
.wdform_percentage_text {
	margin: 3px 5px 3px 9px;
	color: #473C34;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #ffffff;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 23px;
	height: 23px;
	vertical-align: middle;
}
.wdform_button button {
	background: #0E4D92;
	cursor: pointer;
	font-size: 17px;
	border-radius: 4px;
	min-width: 80px;
	min-height: 27px;
	color: #fff;
	border: 2px solid #0E3F77;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_button button:active {
	border: 2px solid #0B2D52;
	background: #0E3F77;
}

.wdform-section-break-div
{
border-top:1px solid #ABAAAA !important;
}","0"),
("24","Theme 07 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #0072A2;
margin-bottom: 10px;
color: #0072A2;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #A4A4A4;
	border: 1px solid #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #F1F1F1 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #696969;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #0072A2 !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #0072A2 !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #0072A2 !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #0072A2 !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #0072A2 !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #0072A2 !important;
	color: #fff;
}
ui-state-hover {
	background: #0072A2 !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F1F1F1;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/07/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/next.png) no-repeat right #0072A2;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border-right: 1px solid #CECECE;
} 
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #0072A2;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #267EA9;
	display: inline-block;
	text-align: left;
	font-size: 20px;
margin: 16px 0px;
}

.wdform_section_break {
	color: #267EA9;
	font-size: 20px;
margin: 16px 0px;

}
.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F1F1F1;
border: 1px solid transparent;
color: #696969;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"password\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #0072A2;
	background-color: #ECEBEB;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #0072A2;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 18px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #006C9A; /* Old browsers */
	background: -moz-linear-gradient(left, #0072A2 0%, #00709F 39%, #006A97 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #0072A2), color-stop(39%, #00709F), color-stop(100%, #006A97)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #0072A2 0%, #00709F 39%, #006A97 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #0072A2 0%, #00709F 39%, #006A97 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #0072A2 0%, #00709F 39%, #006A97 100%); /* IE10+ */
	background: linear-gradient(to right, #0072A2 0%, #00709F 39%, #006A97 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #EBEAEA;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_page_navigation:after {
	content: \" \";
	display: block;
	height: 9px;
	background: url([SITE_ROOT]/images/07/0.png) no-repeat;
	position: relative;
	background-size: cover;
	top: -9px;
}
.wdform_percentage_text {
	margin-right:9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
","0"),
("25","Theme 07 green",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #00A25B;
margin-bottom: 10px;
color: #00A25B;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #A4A4A4;
	border: 1px solid #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #F1F1F1 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #696969;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #00A25B !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #00A25B !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #00A25B !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #00A25B !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #00A25B !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #00A25B !important;
	color: #fff;
}
ui-state-hover {
	background: #00A25B !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F1F1F1;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/07/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/next.png) no-repeat right #00A25B;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/07/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border-right: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #00A25B;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #00A25B;
	display: inline-block;
	text-align: left;
	font-size: 20px;
margin: 16px 0px;
}

.wdform_section_break {
	color: #00A25B;
	font-size: 20px;
margin: 16px 0px;

}
.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F1F1F1;
border: 1px solid transparent;
color: #696969;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"password\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #00A25B;
	background-color: #ECEBEB;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #00A25B;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 18px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #00A15B ; /* Old browsers */
	background: -moz-linear-gradient(left, #00A25B 0%, #00A15A 39%, #00A15B 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #00A25B ), color-stop(39%, #00A15A ), color-stop(100%, #00A15B )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #00A25B 0%, #00A15A 39%, #00A15B 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #00A25B 0%, #00A15A 39%, #00A15B 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #00A25B 0%, #00A15A  39%, #00A15B 100%); /* IE10+ */
background: linear-gradient(to right, #00A25B 0%, #00A15A 39%, #00A15B 100%);
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #EBEAEA;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_page_navigation:after {
	content: \" \";
	display: block;
	height: 9px;
	background: url([SITE_ROOT]/images/07/0.png) no-repeat;
	position: relative;
	background-size: cover;
	top: -9px;
}
.wdform_percentage_text {
	margin-right:9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("26","Theme 07 dark violet",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #33016B;
margin-bottom: 10px;
color: #33016B;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #A4A4A4;
	border: 1px solid #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #F1F1F1 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #696969;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #33016B !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #33016B !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #33016B !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #33016B !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #33016B !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #33016B !important;
	color: #fff;
}
ui-state-hover {
	background: #33016B !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F1F1F1;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/07/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/next.png) no-repeat right #33016B;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border-right: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #33016B;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #33016B;
	display: inline-block;
	text-align: left;
	font-size: 20px;
margin: 16px 0px;
}

.wdform_section_break {
	color: #33016B;
	font-size: 20px;
margin: 16px 0px;

}
.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F1F1F1;
border: 1px solid transparent;
color: #696969;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"password\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #33016B;
	background-color: #ECEBEB;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #33016B;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 18px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #33016A ; /* Old browsers */
	background: -moz-linear-gradient(left, #33016B 0%, #320169 39%, #33016A 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #33016B ), color-stop(39%, #320169 ), color-stop(100%, #33016A )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #33016B 0%, #320169 39%, #33016A 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #33016B 0%, #320169 39%, #33016A 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #33016B 0%, #320169 39%, #33016A 100%); /* IE10+ */
background: linear-gradient(to right, #33016B 0%, #320169 39%, #33016A 100%);
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #EBEAEA;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_page_navigation:after {
	content: \" \";
	display: block;
	height: 9px;
	background: url([SITE_ROOT]/images/07/0.png) no-repeat;
	position: relative;
	background-size: cover;
	top: -9px;
}
.wdform_percentage_text {
	margin-right:9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
","0"),
("27","Theme 07 transparent (burlywood button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #E6C18B;
margin-bottom: 10px;
color: #E6C18B;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
	width: 16px;
	height: 16px;
	top: -6px;
	border: 0px;
	border-radius: 13px;
	background: #A4A4A4;
	border: 1px solid #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #F1F1F1 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #696969;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #E6C18B !important;
	color: #fff;
}
a.ui-spinner-button:active{
	background: #E6C18B !important;
	color: #fff;
}
a.ui-spinner-button:focus{
	background: #E6C18B !important;
	color: #fff;
}
a.ui-slider-handle:hover{
	background: #E6C18B !important;
	color: #fff;
}
a.ui-slider-handle:active{
	background: #E6C18B !important;
	color: #fff;
}
a.ui-slider-handle:focus{
	background: #E6C18B !important;
	color: #fff;
}
ui-state-hover {
	background: #E6C18B !important;
	color: #fff;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #ccc !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F1F1F1;
	border: 0px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/07/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/next.png) no-repeat right #E6C18B;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background:url([SITE_ROOT]/images/07/previous.png) no-repeat left #F0EFEF;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border-right: 1px solid #CECECE;
} 
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #E6C18B;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: transparent;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #267EA9;
	display: inline-block;
	text-align: left;
	font-size: 20px;
margin: 16px 0px;
}

.wdform_section_break {
	color: #267EA9;
	font-size: 20px;
margin: 16px 0px;

}
.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F1F1F1;
border: 1px solid transparent;
color: #696969;
	outline: none;
}
input[type=\"text\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"password\"] {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F1F1F1;
	border: 1px solid transparent;
color: #696969;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/03/checkbox.png);
	border-radius: 0px;
	top: -3px;
	left: 1px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #A7A7A7;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \" \";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #A7A7A7;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #A8A8A8;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	color: #E6C18B;
	background-color: #ECEBEB;
	cursor: pointer;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 25px 0px 25px;
	font-size: 12px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #E6C18B;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	font-size: 16px;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 18px;
	line-height: 18px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #F3CC92 ; /* Old browsers */
	background: -moz-linear-gradient(left, #F3CC92 0%, #F3CC92 39%, #F5CB8F 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #F3CC92 ), color-stop(39%, #F3CC92 ), color-stop(100%, #F5CB8F )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #F3CC92 0%, #F3CC92 39%, #F5CB8F 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #F3CC92 0%, #F3CC92 39%, #F5CB8F 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #F3CC92 0%, #F3CC92 39%, #F5CB8F 100%); /* IE10+ */
	background: linear-gradient(to right, #F3CC92 0%, #F3CC92 39%, #F5CB8F 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 18px;
	line-height: 20px;
	background-color: #EBEAEA;
	text-align: left !important;
	margin-bottom: 1px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: center!important;
	margin-bottom: 0px;
}
.wdform_page_navigation:after {
	content: \" \";
	display: block;
	height: 9px;
	background: url([SITE_ROOT]/images/07/0.png) no-repeat;
	position: relative;
	background-size: cover;
	top: -9px;
}
.wdform_percentage_text {
	margin-right:9px;
	color: #FFFFFF;
	font-weight: normal;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
","0"),
("28","Theme 08 transparent (black button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #000000;
margin-bottom: 10px;
color: #000000;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}
a.ui-spinner-button
{
background:none !important;
}
.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #414141;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 1px solid #EEEEEE !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/08/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/08/next.png) no-repeat right;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/08/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #000;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: transparent;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #000000;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section_break 
{
	color: #000000;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}


.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 0px solid #fff;
color: #414141;
	outline: none;
}

input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F0F0F0;
border:0px solid #fff;
color: #414141;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F0F0F0;
border:0px solid #fff;
color: #414141;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F0F0F0;
border:0px solid #fff;
color: #414141;
}
input[type=\"text\"]:focus {
	outline: none;
}
input[type=\"password\"]:focus {
	outline: none;
}
textarea:focus {
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #000;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/08/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #000000;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #000000;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #CDCDCD;
background-color: #F8F8F8;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-right:3px;
margin-bottom:3px;
font-weight: bold;
}
.page_active {
	color: #000;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #EEEEEE;
font-weight: bold;
margin-right:3px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
margin: 1px;
border-spacing: 0px;
height: 21px;
line-height: 20px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
background: #000;
}
.page_percentage_deactive {
	height: 24px;
line-height: 20px;
background-color: #FFFFFF;
text-align: left !important;
margin: 0 5px;
border: 1px solid #EEEEEE;
display: inline-block;
width: 98%;
border-bottom: none;

}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -1px;
}

.wdform_percentage_text {
	color: #FFF;
	font-weight: bold;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("29","Theme 08 deep pink",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #930049;
margin-bottom: 10px;
color: #930049;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}
a.ui-spinner-button
{
background:none !important;
}
.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #414141;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #930049 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 1px solid #EEEEEE !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/08/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/08/next.png) no-repeat right;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/08/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #930049;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #EEEEEE;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #930049;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section_break 
{
	color: #930049;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}


.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 0px solid #fff;
color: #414141;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
input[type=\"text\"]:focus {
	outline: none;
}
input[type=\"password\"]:focus {
	outline: none;
}
textarea:focus {
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #636363;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/08/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8A8A8A;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8A8A8A;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #CDCDCD;
background-color: #F8F8F8;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-right:3px;
margin-bottom:3px;
font-weight: bold;
}
.page_active {
	color: #930049;
cursor: pointer;
background-color: #fff;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #EEEEEE;
font-weight: bold;
margin-right:3px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
margin: 1px;
border-spacing: 0px;
height: 21px;
line-height: 20px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
background: #930049;
}
.page_percentage_deactive {
	height: 24px;
line-height: 20px;
background-color: #FFFFFF;
text-align: left !important;
margin: 0 5px;
border: 1px solid #EEEEEE;
display: inline-block;
width: 98%;
border-bottom: none;

}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -1px;
}

.wdform_percentage_text {
	color: #fff;
	font-weight: bold;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("30","Theme 08 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #070068;
margin-bottom: 10px;
color: #070068;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}
a.ui-spinner-button
{
background:none !important;
}
.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #414141;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #070068 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
	border: 1px solid #EEEEEE !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 0px solid #D3D3D3;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/08/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 71px;
	height: 32px;
	background: url([SITE_ROOT]/images/07/upload.png);
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/08/next.png) no-repeat right;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/08/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #070068;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #FFFFFF;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #070068;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}

.wdform_section_break 
{
	color: #070068;
	text-align: left;
	font-size: 23px;
margin: 16px 0px;
}


.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 22px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 0px solid #fff;
color: #414141;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:0px solid #fff;
color: #414141;
}
input[type=\"text\"]:focus {
	outline: none;
}
input[type=\"password\"]:focus {
	outline: none;
}
textarea:focus {
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #636363;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/08/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8A8A8A;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8A8A8A;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #8A8A8A;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #CDCDCD;
background-color: #F8F8F8;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-right:3px;
margin-bottom:3px;
font-weight: bold;
}
.page_active {
	color: #070068;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #EEEEEE;
font-weight: bold;
margin-right:3px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
margin: 1px;
border-spacing: 0px;
height: 21px;
line-height: 20px;
font-size: 15px;
float: left;
text-align: right !important;
z-index: 1;
position: relative;
background: #070068;
}
.page_percentage_deactive {
	height: 24px;
line-height: 20px;
background-color: #FFFFFF;
text-align: left !important;
margin: 0 5px;
border: 1px solid #EEEEEE;
display: inline-block;
width: 98%;
border-bottom: none;

}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: -1px;
}

.wdform_percentage_text {
	color: #fff;
	font-weight: bold;
	font-size: 13px;
	position: relative;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("31","Theme 09 light gray",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #DDDDDD;
border: 1px solid #818181;
margin-bottom: 10px;
color: #818181;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #8A8A8A !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
border-top: 1px solid #7F7F7F !important;

}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 1px solid #B7B7B7;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/09/01/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/09/next.png) no-repeat right;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/09/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #013D7C;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #DDDDDD;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
padding:10px;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;

}
.wdform_section_break2 {
	color: #013D7C;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;

}

.wdform_section_break {
	color: #013D7C;
	font-size: 23px;
margin: 16px 0px;

}

.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 1px solid #B7B7B7;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/09/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8B8B8B;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #808080;
background-color: #E5E5E5;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-left:3px;
margin-bottom:2px;
}
.page_active {
	color: #C2C2C2;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #7F7F7F;
margin-left:3px;
margin-bottom: -1px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
border-spacing: 0px;
height: 10px;
background: #727272;
float: left;
}
.page_percentage_deactive {
height: 10px;
line-height: 20px;
background-color: #E5E5E5;
text-align: left !important;
margin-bottom: 2px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
color: #fff;
font-size: 12px;
position: relative;
background: url([SITE_ROOT]/images/09/01/02.png) no-repeat;
width: 36px;
display: inline-block;
height: 36px;
top: -37px;
left: 17px;
text-align: center;
line-height: 27px;
float: right;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("32","Theme 09 yellow",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #DDDDDD;
border: 1px solid #E9B500;
margin-bottom: 10px;
color: #E9B500;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #E9B500 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
border-top: 1px solid #7F7F7F !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 1px solid #B7B7B7;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/09/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/09/next.png) no-repeat right;
	padding: 0px 36px 0  20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/09/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #E9B500;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #DDDDDD;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
padding:10px;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #013D7C;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 5px 0px;
}

.wdform_section_break {
	color: #E9B500;
	font-size: 23px;
margin: 16px 0px;

}

.wdform-section-break-div
{
border-top:1px solid #7F7F7F !important;
}

.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 1px solid #B7B7B7;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/09/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8B8B8B;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #808080;
background-color: #E5E5E5;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-left:3px;
margin-bottom:2px;
}
.page_active {
	color: #C2C2C2;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #7F7F7F;
margin-left:3px;
margin-bottom: -1px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
border-spacing: 0px;
height: 10px;
background: #E7C85C;
float: left;
}
.page_percentage_deactive {
height: 10px;
line-height: 20px;
background-color: #E5E5E5;
text-align: left !important;
margin-bottom: 2px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
color: #fff;
font-size: 12px;
position: relative;
background: url([SITE_ROOT]/images/09/02/02.png) no-repeat;
width: 36px;
display: inline-block;
height: 36px;
top: -37px;
left: 17px;
text-align: center;
line-height: 27px;
float: right;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("33","Theme 09 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #DDDDDD;
border: 1px solid #015875;
margin-bottom: 10px;
color: #015875;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #015875 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
border-top: 1px solid #7F7F7F !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 1px solid #B7B7B7;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/09/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/09/next.png) no-repeat right;
	padding: 0px 36px 0 20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	 background: url([SITE_ROOT]/images/09/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #015875;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: #DDDDDD;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
padding:10px;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #015875;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 40px 0px;
}

.wdform_section_break {
	color: #015875;
	font-size: 23px;
margin: 16px 0px;

}

.wdform-section-break-div
{
border-top:1px solid #80ABBA !important;
}

.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 1px solid #B7B7B7;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/09/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8B8B8B;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #808080;
background-color: #DEE9EC;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-left:3px;
margin-bottom:2px;
}
.page_active {
	color: #C2C2C2;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #7F7F7F;
margin-left:3px;
margin-bottom: -1px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
border-spacing: 0px;
height: 10px;
background: #5C90A2;
float: left;
}
.page_percentage_deactive {
height: 10px;
line-height: 20px;
background-color: #E5E5E5;
text-align: left !important;
margin-bottom: 2px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
color: #fff;
font-size: 12px;
position: relative;
background: url([SITE_ROOT]/images/09/03/02.png) no-repeat;
width: 36px;
display: inline-block;
height: 36px;
top: -37px;
left: 17px;
text-align: center;
line-height: 27px;
float: right;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("34","Theme 09 transparent (lightgreen button)",".radio-div input[type=\"radio\"],
.checkbox-div input[type=\"checkbox\"]
{
visibility: hidden;
}
.wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F0EFEF;
border: 1px solid #30D1B1;
margin-bottom: 10px;
color: #30D1B1;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
a.ui-spinner-button
{
border-radius:0px !important;
background: none!important;
}

a.ui-slider-handle {
width: 13px;
height: 13px;
top: -4px;
border: 0px;
border-radius: 13px;
background: #FAFAFA;
border: 3px solid #B1B1B1;
outline: none;
}

.ui-slider {
	height: 6px;
	background: #F5F5F5 !important;
	margin: 7px 0px;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
	color: #000;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 0px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}


.ui-slider-range {
	background: #E9B500 !important;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform-page-and-images {
	width: 100%;
border-top: 1px solid #7F7F7F !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 0px;
	padding: 0px 0px 0px 2px;
	font-size: 13px;
	height: 22px;
	line-height: 22px;
	overflow: hidden;
	background: #F8F8F8;
	border: 1px solid #B7B7B7;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 23px;
	width: 30px;
	background: url([SITE_ROOT]/images/09/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 0px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text]{
	margin: 0px;
}
input[type=password]{
	margin: 0px;
}
input[type=url]{
	margin: 0px;
}
input[type=email]{
	margin: 0px;
}
input.text{
	margin: 0px;
}
input.title{
	margin: 0px;
}
textarea{
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	position: absolute;
	border-radius: 0px;
	height: 23px;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	}
.file-picker {
	width: 41px;
	height: 32px;
	background: url([SITE_ROOT]/images/09/02/upload.png) no-repeat;
	display: inline-block;
}
.next-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 32px;
	background: url([SITE_ROOT]/images/09/next.png) no-repeat right;
	padding: 0px 36px 0  20px;
	vertical-align: middle;
	font-size: 18px;
        border: 1px solid #CECECE;
}
.previous-page div.wdform-page-button {
	color: #A2A2A2;
	cursor: pointer;
	display: inline-block;
	height: 35px;
	line-height: 35px;
	background: url([SITE_ROOT]/images/09/previous.png) no-repeat left;
	padding: 0 20px 0 36px;
	vertical-align: middle;
	font-size: 18px;
	border: 1px solid #CECECE;
}
.button-submit {
	color: #ffffff;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #30D1B1;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
		border: 1px solid transparent;
	margin: 5px;
}
.button-reset {
	color: #787878;
	cursor: pointer;
	display: inline-block;
	line-height: 35px;
	background: #F0EFEF;
	padding: 0px 20px;
	vertical-align: middle;
	font-size: 18px;
	min-width: 80px;
	min-height: 35px;
	font-family: Segoe UI;
	float: right;
	border: 1px solid transparent;
	margin: 5px;
}
.wdform_page {
	background: transparent;
	padding-top: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
padding:10px;
}
.wdform_column {
	padding-right: 50px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform_section_break2 {
	color: #013D7C;
	display: inline-block;
	text-align: left;
	font-size: 23px;
margin: 16px 10px 5px 0px;
}

.wdform_section_break {
	color: #E9B500;
	font-size: 23px;
margin: 16px 0px;

}

.wdform-section-break-div
{
border-top:1px solid #7F7F7F !important;
}

.wdform_section {
	display: inline-block;
}
select {
	border-radius: 0px;
	height: 24px;
	overflow: hidden;
	padding: 2px;
background: #F8F8F8;
border: 1px solid #B7B7B7;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"password\"]{
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
textarea {
	border-radius: 0px;
	height: 22px;
	padding:0 3px !important;
	background: #F8F8F8;
border:1px solid #B7B7B7;
}
input[type=\"text\"]:focus{
	outline: none;
}
input[type=\"password\"]:focus{
	outline: none;
}
textarea:focus{
	outline: none;
}

.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 30px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
cursor: pointer;
-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
filter: alpha(opacity=0);
opacity: 0;
content: \"\";
position: absolute;
width: 13px;
height: 9px;
background: url([SITE_ROOT]/images/09/checkbox.png) no-repeat;
border-radius: 0px;
top: 1px;
left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/03/date.png) no-repeat !important;
	border: 0px;
	color: transparent;
	width: 22px;
	height: 22px;
	position: relative;
	left: -22px;
	vertical-align: top;
	outline: none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 13px;
	height: 12px;
	background: transparent;
	border: 1px solid #8B8B8B;
	border-radius: 0px;
	position: relative;
	display: inline-block;
	top: 2px;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 8px;
	background: #8B8B8B;
	border-radius: 0px;
	top: 2px;
	left: 2px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 0px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
color: #808080;
background-color: #E5E5E5;
cursor: pointer;
display: inline-block;
height: 27px;
text-align: center;
vertical-align: bottom;
padding: 5px 25px 0px 25px;
font-size: 18px;
margin-left:3px;
margin-bottom:2px;
}
.page_active {
	color: #C2C2C2;
cursor: pointer;
background-color: #FFFFFF;
display: inline-block;
vertical-align: bottom;
height: 29px;
text-align: center;
font-size: 22px;
padding: 5px 25px 0px 25px;
border: 1px solid #7F7F7F;
margin-left:3px;
margin-bottom: -1px;
border-bottom: none;
line-height: 26px;
}
.page_percentage_active {
padding: 0px;
border-spacing: 0px;
height: 10px;
background: #E7C85C;
float: left;
}
.page_percentage_deactive {
height: 10px;
line-height: 20px;
background-color: #E5E5E5;
text-align: left !important;
margin-bottom: 2px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
}

.wdform_percentage_text {
color: #fff;
font-size: 12px;
position: relative;
background: url([SITE_ROOT]/images/09/02/02.png) no-repeat;
width: 36px;
display: inline-block;
height: 36px;
top: -37px;
left: 17px;
text-align: center;
line-height: 27px;
float: right;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 20px;
	height: 20px;
	vertical-align: middle;
}
.wdform_button button {
	background: #4D792C;
	cursor: pointer;
	font-size: 17px;
	border-radius: 0px;
	min-width: 80px;
	min-height: 31px;
	color: #fff;
	border: 2px solid #68943B;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("35","Theme 10 orange",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #F7D3BB;
border: 1px solid #FAAA63;
margin-bottom: 10px;
color: #FAAA63;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/01/01/next_hoverbg.png) url([SITE_ROOT]/images/01/01/previous_hover.png) url([SITE_ROOT]/images/01/01/next_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #fff;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 7px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 26px;
	line-height: 26px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 28px;
	width: 32px;
	background: url([SITE_ROOT]/images/01/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 1px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-page-and-images:after {
	width: 100%;
	content: \"\";
	display: block;
	height: 17px;
	background: url([SITE_ROOT]/images/01/0.png) no-repeat center center;
	position: relative;
	background-size: cover;
	top: -17px;
	left: -50px;
	padding-left: 100px;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 7px;
	height: 27px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
//text-overflow: ellipsis;
}
.file-picker {
	width: 38px;
	height: 34px;
	background: url([SITE_ROOT]/images/01/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #000;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/01/nextbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	border-style: solid;
	padding: 0px 15px;
	vertical-align: middle;
	border-color: transparent;
}
div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/01/01/next_hoverbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
.next-page div.wdform-page-button {
	border-width: 0px 18px 0px 0px;
	-moz-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	box-shadow: inset 51px 0px 8px -50px #636363;
}
.next-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/01/next_hover.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/01/next_hover.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/01/next_hover.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/01/next_hover.png) 0 36 0 0 stretch;
}
.next-page:before {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: 7px;
}
.previous-page div.wdform-page-button {
	border-width: 0px 0px 0px 18px;
	-moz-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	box-shadow: inset -51px 0px 8px -50px #636363;
}
.previous-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/01/previous_hover.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/01/previous_hover.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/01/previous_hover.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/01/previous_hover.png) 0 0 0 36 stretch;
}
.previous-page:after {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow1.png) no-repeat right center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: -7px;
}
.button-submit {
	background: #f58b33; /* Old browsers */
	background: -moz-linear-gradient(left, #f58b33 0%, #faaa63 20%, #faaa63 80%, #f58b33 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #f58b33), color-stop(20%, #faaa63), color-stop(80%, #faaa63), color-stop(100%, #f58b33)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #f58b33 0%, #faaa63 20%, #faaa63 80%, #f58b33 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #f58b33 0%, #faaa63 20%, #faaa63 80%, #f58b33 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #f58b33 0%, #faaa63 20%, #faaa63 80%, #f58b33 100%); /* IE10+ */
	background: linear-gradient(to right, #f58b33 0%, #faaa63 20%, #faaa63 80%, #f58b33 100%); /* W3C */
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 34px;
	color: #8D5D35;
	border: 1px solid #F0C579;
	margin: 5px;
	box-shadow: 0px 0px 1px 1px #EC8E37;
	font-family: Segoe UI;
	}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 1px solid #c9c9c9;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_page {
	background: #F7D3BB;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
	border-top: 2px solid #FFB471;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break2 {
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #e8a467; /* Old browsers */
	background: -moz-linear-gradient(left, #e8a467 1%, #ffb471 20%, #ffb471 80%, #ffcd72 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(1%, #e8a467), color-stop(20%, #ffb471), color-stop(80%, #ffb471), color-stop(100%, #ffcd72)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #e8a467 1%, #ffb471 20%, #ffb471 80%, #ffcd72 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #e8a467 1%, #ffb471 20%, #ffb471 80%, #ffcd72 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #e8a467 1%, #ffb471 20%, #ffb471 80%, #ffcd72 100%); /* IE10+ */
	background: linear-gradient(to right, #e8a467 1%, #ffb471 20%, #ffb471 80%, #ffcd72 100%); /* W3C */
	text-align: left;
	padding: 7px 30px 10px 10px;
	border-top-left-radius: 0px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
font-size:18px;
}

.wdform_section_break {
	margin: 16px 10px 16px 0px;
font-size:18px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 7px;
	height: 32px;
	overflow: hidden;
	border: 1px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #FFB471;
	outline: none;
}

input[type=\"password\"]:focus{
	border-color: #FFB471;
	outline: none;
}

textarea:focus{
	border-color: #FFB471;
	outline: none;
}


.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 70px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/01/checkbox.png);
	border-radius: 2px;
	top: 0px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/01/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 37px;
	height: 30px;
	position: relative;
	left: -35px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
	outline:none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 10px;
	background: #615F60;
	border-radius: 2px;
	top: 3px;
	left: 3px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	border-top: 1px solid #D8D6D7;
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 7px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #000;
	cursor: pointer;
	background-color: #FFD9B8;
	margin: 1px;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
}
.page_active {
	color: #000;
	cursor: pointer;
	background-color: #FFB471;
	margin: 1px;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 25px;
	line-height: 25px;
	border-top-left-radius: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #FF983C; /* Old browsers */
	background: -moz-linear-gradient(left, #f6a965 0%, #f6a965 67%, #ff983c 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #f6a965), color-stop(67%, #f6a965), color-stop(100%, #ff983c)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #f6a965 0%, #f6a965 67%, #ff983c 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #f6a965 0%, #f6a965 67%, #ff983c 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #f6a965 0%, #f6a965 67%, #ff983c 100%); /* IE10+ */
	background: linear-gradient(to right, #f6a965 0%, #f6a965 67%, #ff983c 100%); /* W3C */
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 25px;
	line-height: 25px;
	background-color: #FFD9B8;
	text-align: left !important;
	margin-bottom: 1px;
	border-top-left-radius: 17px;
	border-top-right-radius: 17px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_page_navigation span:first-child {
	border-top-left-radius: 17px;
}
.wdform_percentage_arrow {
display: inline-block;
width: 21px;
height: 25px;
background-color: #FF983D;
position: relative;
left: -15px;
z-index: 0;
vertical-align: middle;
-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
}
.wdform_percentage_text {
	margin: 3px -14px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 25px;
	height: 25px;
	vertical-align: middle;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform_button button {
	background: #e4e4e4; /* Old browsers */
	background: -moz-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e4e4e4), color-stop(100%, #cccccc)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* IE10+ */
	background: linear-gradient(to bottom, #e4e4e4 0%, #cccccc 100%); /* W3C */
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 27px;
	color: #787878;
	border: 0px;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("36","Theme 10 blue",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #D1E0F0;
border: 1px solid #075DA4;
margin-bottom: 10px;
color: #075DA4;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
height:initial !important;
}
.wdform_grading input {
	width: 100px;
}
.wdform-matrix-cell input[type=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/01/02/next_hoverbg.png) url([SITE_ROOT]/images/01/02/previous_hover.png) url([SITE_ROOT]/images/01/02/next_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #004D8E !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #004D8E !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #004D8E !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #004D8E !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #FFB471 !important;
	color: #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #fff;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 7px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 26px;
	line-height: 26px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 28px;
	width: 32px;
	background: url([SITE_ROOT]/images/01/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 1px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-page-and-images:after {
	width: 100%;
	content: \"\";
	display: block;
	height: 17px;
	background: url([SITE_ROOT]/images/01/0.png) no-repeat center center;
	position: relative;
	background-size: cover;
	top: -17px;
	left: -50px;
	padding-left: 100px;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 7px;
	height: 27px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
//text-overflow: ellipsis;
}
.file-picker {
	width: 38px;
	height: 34px;
	background: url([SITE_ROOT]/images/01/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/01/nextbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	border-style: solid;
	padding: 0px 15px;
	vertical-align: middle;
	border-color: transparent;
}
div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/01/02/next_hoverbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
color:#fff;
}
.next-page div.wdform-page-button {
	border-width: 0px 18px 0px 0px;
	-moz-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	box-shadow: inset 51px 0px 8px -50px #636363;
}
.next-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/02/next_hover.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/02/next_hover.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/02/next_hover.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/02/next_hover.png) 0 36 0 0 stretch;
}
.next-page:before {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: 7px;
}
.previous-page div.wdform-page-button {
	border-width: 0px 0px 0px 18px;
	-moz-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	box-shadow: inset -51px 0px 8px -50px #636363;
}
.previous-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/02/previous_hover.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/02/previous_hover.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/02/previous_hover.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/02/previous_hover.png) 0 0 0 36 stretch;
}
.previous-page:after {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow1.png) no-repeat right center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: -7px;
}
.button-submit {
background: #035192 ;
background: -moz-linear-gradient(left, #035192 0%, #0860A9 20%, #0860A9 80%, #035192 100%);
background: -webkit-gradient(linear, left top, right top, color-stop(0%, #035192 ), color-stop(20%, #0860A9 ), color-stop(80%, #0860A9 ), color-stop(100%, #035192 ));
background: -webkit-linear-gradient(left, #035192 0%, #0860A9 20%, #0860A9 80%, #035192 100%);
background: -o-linear-gradient(left, #035192 0%, #0860A9 20%, #0860A9 80%, #035192 100%);
background: -ms-linear-gradient(left, #035192 0%, #0860A9 20%, #0860A9 80%, #035192 100%);
background: linear-gradient(to right, #035192 0%, #0860A9 20%, #0860A9 80%, #035192 100%);
cursor: pointer;
font-size: 17px;
border-radius: 7px;
min-width: 80px;
min-height: 34px;
color: #fff;
border: 1px solid #3A8BCF;
margin: 5px;
box-shadow: 0px 0px 1px 1px #063A66;
font-family: Segoe UI;
	}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 1px solid #c9c9c9;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_page {
	background: #D1E0F0;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
	border-top: 1px solid #004D8E;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break2 {
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #0559A0 ; /* Old browsers */
	background: -moz-linear-gradient(left, #00457F 1%, #0559A0 20%, #0E6AB8 80%, #006CC7 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(1%, #00457F ), color-stop(20%, #0559A0 ), color-stop(80%, #0E6AB8 ), color-stop(100%, #006CC7 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #00457F 1%, #0559A0 20%, #0E6AB8 80%, #006CC7 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #00457F 1%, #0559A0 20%, #0E6AB8 80%, #006CC7 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #00457F 1%, #0559A0 20%, #0E6AB8 80%, #006CC7 100%); /* IE10+ */
background: linear-gradient(to right, #00457F 1%, #0559A0 20%, #0E6AB8 80%, #006CC7 100%); /* W3C */
	text-align: left;
	padding: 7px 30px 10px 10px;
	border-top-left-radius: 0px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
color:#fff;
font-size:18px;
}

.wdform_section_break {
	margin: 16px 0px;
font-size:18px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 7px;
	height: 32px;
	overflow: hidden;
	border: 1px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #004D8E;
	outline: none;
}

input[type=\"password\"]:focus{
	border-color: #004D8E;
	outline: none;
}

textarea:focus{
	border-color: #004D8E;
	outline: none;
}


.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 70px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/01/checkbox.png);
	border-radius: 2px;
	top: 0px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/01/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 37px;
	height: 30px;
	position: relative;
	left: -35px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.wdform-calendar-button:focus {
	outline:none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 10px;
	background: #615F60;
	border-radius: 2px;
	top: 3px;
	left: 3px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	border-top: 1px solid #D8D6D7;
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 7px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #0D5492;
	cursor: pointer;
	background-color: #7FA6C6;
	margin: 1px;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #004D8E;
	margin: 1px;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 25px;
	line-height: 25px;
	border-top-left-radius: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #00559D ; /* Old browsers */
	background: -moz-linear-gradient(left, #00559D 0%, #005BA7 67%, #00559D 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #00559D ), color-stop(67%, #005BA7 ), color-stop(100%, #00559D )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #00559D 0%, #005BA7 67%, #00559D 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #00559D 0%, #005BA7 67%, #00559D 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #00559D 0%, #005BA7 67%, #00559D 100%); /* IE10+ */
background: linear-gradient(to right, #00559D 0%, #005BA7 67%, #00559D 100%);
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 25px;
	line-height: 25px;
	background-color: #7FA6C6;
	text-align: left !important;
	margin-bottom: 1px;
	border-top-left-radius: 17px;
	border-top-right-radius: 17px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_page_navigation span:first-child {
	border-top-left-radius: 17px;
}
.wdform_percentage_arrow {
display: inline-block;
width: 21px;
height: 25px;
background-color: #0057A0;
position: relative;
left: -15px;
z-index: 0;
vertical-align: middle;
-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
}
.wdform_percentage_text {
	margin: 3px -14px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 25px;
	height: 25px;
	vertical-align: middle;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform_button button {
	background: #e4e4e4; /* Old browsers */
	background: -moz-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e4e4e4), color-stop(100%, #cccccc)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* IE10+ */
	background: linear-gradient(to bottom, #e4e4e4 0%, #cccccc 100%); /* W3C */
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 27px;
	color: #787878;
	border: 0px;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0"),
("37","Theme 10 green",".wdform-page-and-images .other_input
{
max-width: none;
}
button,
input,
select,
textarea
{
font-size:14px;
}
.warning,
.error
{
background-color: #D8E5DB;
border: 1px solid #007616;
margin-bottom: 10px;
color: #007616;
padding: 5px;
}
.warning *,
.error *
{
margin:0;
}
.recaptcha_input_area input
{
€ÖÛÉ|U  €ÖÛÉ|U                  P|ÈÉ|U          €8ÈÉ|U  èÖÛÉ|U           ÖÛÉ|U   @       ÖÛÉ|U          e=\"text\"] {
	width: 100px;
}
.wdform-matrix-cell select {
	width: 60px;
}
.wdform_section .wdform_column:last-child {
	padding-right: 0px !important;
}
.wdform_preload {
	display: none;
	content: url([SITE_ROOT]/images/01/03/next_hoverbg.png) url([SITE_ROOT]/images/01/03/previous_hover.png) url([SITE_ROOT]/images/01/03/next_hover.png);
}
.wdform_grading {
	padding: 3px 0px;
}
.wdform-matrix-table {
	display: table;
	border-spacing: 0px;
}
.wdform-matrix-column {
	text-align: left;
	display: table-cell;
}
.wdform-matrix-cell {
	text-align: center;
	display: table-cell;
	padding: 6px 10px;
}
.wdform-matrix-head>div {
	display: table-cell;
	text-align: center;
}
.wdform-matrix-head {
	display: table-row;
}
.wdform-matrix-row0 {
	background: #DFDFDF;
	display: table-row;
}
.wdform-matrix-row1 {
	background: #E9E9E9;
	display: table-row;
}
.selected-text {
	text-align: left;
}
.wdform-quantity {
	width: 30px;
	margin: 2px 0px;
}
.wdform_scale_rating label {
	vertical-align: middle;
}
.ui-corner-all {
	border-radius: 3px;
}
.ui-widget-content {
	border: 0px;
	background: transparent;
}
a.ui-spinner-button:hover{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:active{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
a.ui-spinner-button:focus{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:hover{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:active{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
a.ui-slider-handle:focus{
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
ui-state-hover {
	background: #006C14 !important;
	color: #fff;
	outline: none;
}
.ui-slider {
	height: 6px;
	background: #fff;
	margin: 7px 0px;
}
a.ui-slider-handle {
	border-radius: 10px;
	border: 2px solid #fff;
	background: #A4A4A4;
}
.ui-slider-horizontal .ui-slider-handle {
	top: -8px !important;
}
.ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-content .ui-state-default{
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-widget-header .ui-state-default {
	border: 1px solid #d3d3d3;
	background: #DFDDDD;
	font-weight: normal;
	color: #555555;
}
.ui-slider-range {
	background: #A4A4A4 !important;
}
.wdform-page-and-images {
	width: 100%;
	border: 0px !important;
}
.paypal-property {
	display: inline-block;
	margin-right: 15px;
	vertical-align: middle;
}
.sel-wrap {
	display: inline-block;
	vertical-align: middle;
	width:100%;
}
.sel-wrap select {
	position: absolute;
 z-index:-1;
 width: 0px !important;
}
.sel-imul {
	display: inline-block;
}
.sel-imul .sel-selected {
	cursor: pointer;
	position: relative;
	display: inline-block;
	border-radius: 7px;
	padding: 2px 0px 2px 2px;
	font-size: 13px;
	height: 26px;
	line-height: 26px;
	overflow: hidden;
	background: #fff;
	border: 1px solid #ccc;
	background-position: right 2px center;
	width: 100%;
}
.sel-imul.act .sel-selected {
	background: #fff;
}
.sel-selected .sel-arraw {
	height: 28px;
	width: 32px;
	background: url([SITE_ROOT]/images/01/01.png) 50% 50% no-repeat;
	position: absolute;
	top: 0px;
	right: 0px;
	padding: 1px;
}
.sel-imul:hover .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul.act .sel-selected .sel-arraw {
// background-color:#e0e0e0;
// border-left:1px solid #bbb;
}
.sel-imul .sel-options {
	background: #fff;
	border: 1px solid #dbdbdb;
	border-top: none;
	position: absolute;
	width: inherit;
	display: none;
	z-index: 10;
	max-height: 200px;
	overflow-y: auto;
	overflow-x: hidden;
}
.sel-options .sel-option {
	padding: 3px 4px;
	font-size: 13px;
	border: 1px solid #fff;
	border-right: none;
	border-left: none;
	text-align: left;
}
.sel-options .sel-option:hover {
	border-color: #dbdbdb;
	cursor: pointer;
}
.sel-options .sel-option.sel-ed {
	background: #dbdbdb;
	border-color: #dbdbdb;
}
input[type=text] {
	margin: 0px;
}
input[type=password] {
	margin: 0px;
}
input[type=url] {
	margin: 0px;
}
input[type=email] {
	margin: 0px;
}
input.text {
	margin: 0px;
}
input.title {
	margin: 0px;
}
textarea {
	margin: 0px;
}
select {
	margin: 0px;
}
.form-error {
	border-color: red !important;
}
.form-error:focus {
	border-color: red !important;
}
.wdform-page-and-images:after {
	width: 100%;
	content: \"\";
	display: block;
	height: 17px;
	background: url([SITE_ROOT]/images/01/0.png) no-repeat center center;
	position: relative;
	background-size: cover;
	top: -17px;
	left: -50px;
	padding-left: 100px;
}
.wdform-field {
	display: table-cell;
	padding: 5px 0px;
}
.wdform-label-section{
	text-align: left;
	display: table-cell;
}
.wdform-element-section {
	text-align: left;
	display: table-cell;
	min-width: 140px;
}
.file-upload input {
	position: absolute;
	visibility: hidden;
}
.file-upload-status {
	margin-left: 10px;
	max-width: 200px;
	font-weight: bold;
	font-size: 16px;
	color: #888;
	background: #fff;
	position: absolute;
	border-radius: 7px;
	height: 27px;
	border: 1px solid #ccc;
	padding-left: 5px;
	padding-right: 5px;
	white-space: nowrap;
	overflow: hidden;
	direction: rtl;
//text-overflow: ellipsis;
}
.file-picker {
	width: 38px;
	height: 34px;
	background: url([SITE_ROOT]/images/01/upload.png);
	display: inline-block;
}
div.wdform-page-button {
	color: #414141;
	cursor: pointer;
	display: inline-block;
	height: 36px;
	line-height: 36px;
	background: url([SITE_ROOT]/images/01/nextbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	border-style: solid;
	padding: 0px 15px;
	vertical-align: middle;
	border-color: transparent;
}
div.wdform-page-button:hover {
	background: url([SITE_ROOT]/images/01/03/next_hoverbg.png) no-repeat right center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
color:#fff;
}
.next-page div.wdform-page-button {
	border-width: 0px 18px 0px 0px;
	-moz-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/next.png) 0 36 0 0 stretch;
	box-shadow: inset 51px 0px 8px -50px #636363;
}
.next-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/03/next_hover.png) 0 36 0 0 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/03/next_hover.png) 0 36 0 0 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/03/next_hover.png) 0 36 0 0 stretch;
	border-image: url([SITE_ROOT]/images/01/03/next_hover.png) 0 36 0 0 stretch;
}
.next-page:before {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: 7px;
}
.previous-page div.wdform-page-button {
	border-width: 0px 0px 0px 18px;
	-moz-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/previous.png) 0 0 0 36 stretch;
	box-shadow: inset -51px 0px 8px -50px #636363;
}
.previous-page div.wdform-page-button:hover {
	-moz-border-image: url([SITE_ROOT]/images/01/03/previous_hover.png) 0 0 0 36 stretch;
	-webkit-border-image: url([SITE_ROOT]/images/01/03/previous_hover.png) 0 0 0 36 stretch;
	-o-border-image: url([SITE_ROOT]/images/01/03/previous_hover.png) 0 0 0 36 stretch;
	border-image: url([SITE_ROOT]/images/01/03/previous_hover.png) 0 0 0 36 stretch;
}
.previous-page:after {
	content: \"\";
	height: 56px;
	vertical-align: middle;
	background: url([SITE_ROOT]/images/01/shadow1.png) no-repeat right center;
	background-size: contain;
	width: 7px;
	display: inline-block;
	position: relative;
	left: -7px;
}
.button-submit {
background: #006C14 ;
background: -moz-linear-gradient(left, #006C14 0%, #018819 20%, #018819 80%, #006C14 100%);
background: -webkit-gradient(linear, left top, right top, color-stop(0%, #006C14 ), color-stop(20%, #018819 ), color-stop(80%, #018819 ), color-stop(100%, #006C14 ));
background: -webkit-linear-gradient(left, #006C14 0%, #018819 20%, #018819 80%, #006C14 100%);
background: -o-linear-gradient(left, #006C14 0%, #018819 20%, #018819 80%, #006C14 100%);
background: -ms-linear-gradient(left, #006C14 0%, #018819 20%, #018819 80%, #006C14 100%);
background: linear-gradient(to right, #006C14 0%, #018819 20%, #018819 80%, #006C14 100%);
cursor: pointer;
font-size: 17px;
border-radius: 7px;
min-width: 80px;
min-height: 34px;
color: #fff;
border: 1px solid #0DBB2C;
margin: 5px;
box-shadow: 0px 0px 1px 1px #006C14;
font-family: Segoe UI;
	}
.button-reset {
	background: transparent;
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 34px;
	color: #787878;
	border: 1px solid #c9c9c9;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}
.wdform_page {
	background: #D8E5DB;
	padding: 15px;
	border-radius: 0px;
	font-family: Segoe UI;
	border-top: 1px solid #006C14;
}
.wdform_column {
	padding-right: 30px !important;
	float: left;
	border-spacing: 2px;
	border-collapse: separate !important;
}
.wdform-field-section-break2 {
	background: url([SITE_ROOT]/images/01/shadow.png) no-repeat left center;
	background-size: contain;
}
.wdform_section_break2 {
	margin: 16px 10px 16px 0px;
	display: inline-block;
	background: #006312 ; /* Old browsers */
	background: -moz-linear-gradient(left, #006312 1%, #047519 20%, #057C1C 80%, #069140 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(1%, #006312 ), color-stop(20%, #047519 ), color-stop(80%, #057C1C ), color-stop(100%, #069140 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #006312 1%, #047519 20%, #057C1C 80%, #069140 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #006312 1%, #047519 20%, #057C1C 80%, #069140 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #006312 1%, #047519 20%, #057C1C 80%, #069140 100%); /* IE10+ */
background: linear-gradient(to right, #006312 1%, #047519 20%, #057C1C 80%, #069140 100%); /* W3C */
	text-align: left;
	padding: 7px 30px 10px 10px;
	border-top-left-radius: 0px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	border-bottom-left-radius: 0px;
	-moz-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	-webkit-box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
	box-shadow: inset 51px 0px 8px -50px #636363, 4px 0px 7px 0px rgba(0, 0, 0, 0.23);
color:#fff;
font-size:18px;
}

.wdform_section_break {
	margin: 16px 0px;
font-size:18px;
}
.wdform_section {
	display: table-row;
}
select {
	border-radius: 7px;
	height: 32px;
	overflow: hidden;
	border: 1px solid #ccc;
	padding: 2px;
	outline: none;
}
input[type=\"text\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"password\"]{
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
textarea {
	border-radius: 7px;
	height: 30px;
	border: 1px solid #ccc;
	padding:0 3px !important;
}
input[type=\"text\"]:focus{
	border-color: #006C14;
	outline: none;
}

input[type=\"password\"]:focus{
	border-color: #006C14;
	outline: none;
}

textarea:focus{
	border-color: #006C14;
	outline: none;
}


.input_deactive {
	color: #999999;
	font-style: italic;
}
.input_active {
	color: #000000;
	font-style: normal;
}
.am_pm_select {
	width: 70px;
	vertical-align: middle;
}
.checkbox-div input[type=checkbox] {
	position : absolute;
	z-index: -1;
}
.checkbox-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.checkbox-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 16px;
	height: 13px;
	background: url([SITE_ROOT]/images/01/checkbox.png);
	border-radius: 2px;
	top: 0px;
	left: 2px;
}
.checkbox-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .checkbox-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.checkbox-div input[type=checkbox]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.wdform-calendar-button,
.wdform-calendar-button:hover {
  display:inline-block;
	background: transparent url([SITE_ROOT]/images/01/date.png) no-repeat left 50% !important;
	border: 0px;
	color: transparent;
	width: 37px;
	height: 30px;
	position: relative;
	left: -35px;
	vertical-align: top;
}
.wdform-calendar-button:focus {
 outline:none; 
}
.wdform-calendar-button:focus {
	outline:none;
}
.radio-div input[type=radio] {
	position : absolute;
	z-index: -1;
}
.forlabs {
	float: right;
	margin-right: 20px;
}
.radio-div {
	width: 15px;
	height: 16px;
	background: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	position: relative;
	display: inline-block;
}
.radio-div label {
	cursor: pointer;
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)\";
	filter: alpha(opacity=0);
	opacity: 0;
	content: \"\";
	position: absolute;
	width: 9px;
	height: 10px;
	background: #615F60;
	border-radius: 2px;
	top: 3px;
	left: 3px;
}
.radio-div label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div .wdform-ch-rad-label:hover {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.wdform-ch-rad-label:hover + .radio-div label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=30)\";
	filter: alpha(opacity=30);
	opacity: 0.3;
}
.radio-div input[type=radio]:checked + label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\";
	filter: alpha(opacity=100);
	opacity: 1;
}
.if-ie-div-label {
	-ms-filter: \"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)\" !important;
	filter: alpha(opacity=100) !important;
	opacity: 1 !important;
}
.wdform-ch-rad-label {
	display: inline;
	margin: -4px 5px 5px 5px;
	float: left;
	color: #000;
	cursor: pointer
}
textarea {
	padding-top: 5px;
}
.wdform-date {
  display:inline-block;
	width: 105px
}
.wdform_footer {
	border-top: 1px solid #D8D6D7;
	padding-top: 5px;
	margin-top: 15px;
}
.page-numbers {
	vertical-align: middle;
}
.time_box {
	text-align: right;
	width: 30px;
	vertical-align: middle
}
.mini_label {
	font-size: 10px;
	font-family: \"Lucida Grande\", Tahoma, Arial, Verdana, sans-serif;
	color: #000;
}
.wdform-label {
	border: none;
	color: #000;
	vertical-align: top;
	line-height: 17px;
}
.wdform_colon {
	color: #000
}
.wdform_separator {
	font-style: bold;
	vertical-align: middle;
	color: #000;
}
.wdform_line {
	color: #000
}
.wdform-required {
	border: none;
	color: red;
	vertical-align: top;
}
.captcha_img {
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	cursor: pointer;
	border-radius: 7px;
}
.captcha_refresh {
	width: 30px;
	height: 30px;
	border-width: 0px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
	cursor: pointer;
	background-image: url([SITE_ROOT]/images/refresh_black.png);
}
.captcha_input {
	height: 20px;
	border-width: 1px;
	margin: 0px;
	padding: 0px;
	vertical-align: middle;
}
.file_upload {
	border: 0px solid white;
	border-radius: 0px;
	margin: 0px;
	padding: 0px;
	color: black;
	background-color: white;
}
.page_deactive {
	font-size: 12px;
 color: #006C14;
	cursor: pointer;
	background-color: #7FB589;
	margin: 1px;
	display: inline-block;
	height: 20px;
	text-align: center;
	vertical-align: bottom;
	padding-top: 5px;
	padding: 5px 30px 0px 30px;
}
.page_active {
	color: #fff;
	cursor: pointer;
	background-color: #006C14;
	margin: 1px;
	display: inline-block;
	vertical-align: bottom;
	height: 25px;
	text-align: center;
	padding: 5px 30px 0px 30px;
}
.page_percentage_active {
	padding: 0px;
	margin: 0px;
	border-spacing: 0px;
	height: 25px;
	line-height: 25px;
	border-top-left-radius: 17px;
	font-size: 15px;
	float: left;
	text-align: right !important;
	z-index: 1;
	position: relative;
	background: #008118 ; /* Old browsers */
	background: -moz-linear-gradient(left, #008118 0%, #089723 67%, #069C22 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, right top, color-stop(0%, #008118 ), color-stop(67%, #089723 ), color-stop(100%, #069C22 )); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(left, #008118 0%, #089723 67%, #069C22 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(left, #008118 0%, #089723 67%, #069C22 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(left, #008118 0%, #089723 67%, #069C22 100%); /* IE10+ */
background: linear-gradient(to right, #008118 0%, #089723 67%, #069C22 100%);
	vertical-align: middle;
}
.page_percentage_deactive {
	height: 25px;
	line-height: 25px;
	background-color: #7FB589;
	text-align: left !important;
	margin-bottom: 1px;
	border-top-left-radius: 17px;
	border-top-right-radius: 17px;
}
.page_numbers {
	font-size: 14px;
	color: #000;
}
.phone_area_code {
	width: 50px;
}
.phone_number {
	width: 100px;
}
button {
	cursor: pointer;
}
.other_input {
	border-radius: 0px;
	border-width: 1px;
	height: 16px;
	font-size: 12px;
	padding: 1px;
	margin: 1px;
	margin-left: 25px;
	z-index: 100;
	position: absolute;
}
.wdform_page_navigation {
	text-align: right !important;
	margin-bottom: 0px;
}
.wdform_page_navigation span:first-child {
	border-top-left-radius: 17px;
}
.wdform_percentage_arrow {
display: inline-block;
width: 21px;
height: 25px;
background-color: #069B22;
position: relative;
left: -15px;
z-index: 0;
vertical-align: middle;
-moz-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-webkit-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-25deg) skewY(0deg);
-o-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
-ms-transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
transform: scale(1) rotate(0deg) translateX(0px) translateY(0px) skewX(-10deg) skewY(0deg);
}
.wdform_percentage_text {
	margin: 3px -14px 3px 9px;
	color: #FFFFFF;
	font-weight: bold;
}
.wdform_percentage_title {
	color: #000000;
	font-style: italic;
	margin: 0px 0px 0px 40px;
	display: inline-block;
	line-height: 25px;
	height: 25px;
	vertical-align: middle;
}
.wdform_map {
	border: 6px solid #fff;
}
.wdform_button button {
	background: #e4e4e4; /* Old browsers */
	background: -moz-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #e4e4e4), color-stop(100%, #cccccc)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #e4e4e4 0%, #cccccc 100%); /* IE10+ */
	background: linear-gradient(to bottom, #e4e4e4 0%, #cccccc 100%); /* W3C */
	cursor: pointer;
	font-size: 17px;
	border-radius: 7px;
	min-width: 80px;
	min-height: 27px;
	color: #787878;
	border: 0px;
	margin: 5px;
	box-shadow: 0px 0px 2px #c9c9c9;
	font-family: Segoe UI;
}","0");/*END*/




DROP TABLE IF EXISTS `webtoffee_contactformmaker_views` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_contactformmaker_views` (
  `form_id` int(11) NOT NULL,
  `views` int(50) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_duplicator_packages` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_duplicator_packages VALUES
("2","20200719_expedicionciencia","8f9c1652660625528529_20200719073147","100","2020-07-19 07:31:58","unknown","O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-07-19 07:31:47\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"5.5.31\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";i:2;s:4:\"Name\";s:26:\"20200719_expedicionciencia\";s:4:\"Hash\";s:35:\"8f9c1652660625528529_20200719073147\";s:8:\"NameHash\";s:62:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:72:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"18.59 sec.\";s:7:\"ExeSize\";s:7:\"61.32KB\";s:7:\"ZipSize\";s:6:\"6.38MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":22:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:51:\"/www/expedicionciencia.org.ar/htdocs/wp-admin/core;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:1;s:4:\"File\";s:74:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:36:\"/www/expedicionciencia.org.ar/htdocs\";s:4:\"Size\";i:6688052;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:0;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:45:\"/www/expedicionciencia.org.ar/htdocs/wp-admin\";i:1;s:55:\"/www/expedicionciencia.org.ar/htdocs/wp-content/uploads\";i:2;s:57:\"/www/expedicionciencia.org.ar/htdocs/wp-content/languages\";i:3;s:54:\"/www/expedicionciencia.org.ar/htdocs/wp-content/themes\";i:4;s:48:\"/www/expedicionciencia.org.ar/htdocs/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:36:\"/www/expedicionciencia.org.ar/htdocs\";i:1;s:47:\"/www/expedicionciencia.org.ar/htdocs/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:76:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147_installer.php\";s:4:\"Size\";i:62794;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:42682275;s:4:\"File\";s:75:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:13:\"collationList\";a:2:{i:0;s:17:\"latin1_swedish_ci\";i:1;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:8:\"expecien\";s:15:\"tablesBaseCount\";i:39;s:16:\"tablesFinalCount\";i:39;s:14:\"tablesRowCount\";s:7:\"310,335\";s:16:\"tablesSizeOnDisk\";s:8:\"119.81MB\";s:18:\"varLowerCaseTables\";s:1:\"0\";s:7:\"version\";s:6:\"5.5.31\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:39:{s:17:\"wp_cntctfrm_field\";s:2:\"13\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"0\";s:19:\"wp_contactformmaker\";s:2:\"10\";s:27:\"wp_contactformmaker_blocked\";s:1:\"0\";s:27:\"wp_contactformmaker_submits\";s:1:\"0\";s:26:\"wp_contactformmaker_themes\";s:2:\"37\";s:25:\"wp_contactformmaker_views\";s:1:\"0\";s:22:\"wp_duplicator_packages\";s:1:\"2\";s:8:\"wp_links\";s:1:\"0\";s:15:\"wp_linkshortcut\";s:1:\"2\";s:16:\"wp_nf_objectmeta\";s:2:\"79\";s:13:\"wp_nf_objects\";s:1:\"5\";s:19:\"wp_nf_relationships\";s:1:\"1\";s:12:\"wp_ngg_album\";s:1:\"0\";s:14:\"wp_ngg_gallery\";s:1:\"1\";s:15:\"wp_ngg_pictures\";s:1:\"3\";s:25:\"wp_ninja_forms_fav_fields\";s:2:\"17\";s:21:\"wp_ninja_forms_fields\";s:1:\"2\";s:10:\"wp_options\";s:3:\"503\";s:11:\"wp_postmeta\";s:4:\"1273\";s:8:\"wp_posts\";s:4:\"1515\";s:24:\"wp_statistics_exclusions\";s:1:\"0\";s:24:\"wp_statistics_historical\";s:1:\"0\";s:19:\"wp_statistics_pages\";s:5:\"44478\";s:20:\"wp_statistics_search\";s:5:\"30508\";s:24:\"wp_statistics_useronline\";s:1:\"0\";s:19:\"wp_statistics_visit\";s:4:\"1492\";s:21:\"wp_statistics_visitor\";s:6:\"220761\";s:21:\"wp_term_relationships\";s:2:\"33\";s:16:\"wp_term_taxonomy\";s:1:\"5\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"5\";s:11:\"wp_usermeta\";s:3:\"280\";s:8:\"wp_users\";s:1:\"9\";s:14:\"wp_wpfm_backup\";s:1:\"0\";s:13:\"wp_wtmgdp_log\";s:1:\"0\";s:18:\"wp_yoast_seo_links\";s:3:\"100\";s:17:\"wp_yoast_seo_meta\";s:3:\"186\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:144:\"/www/expedicionciencia.org.ar/htdocs/wp-content/backups-dup-lite/tmp/20200719_expedicionciencia_8f9c1652660625528529_20200719073147_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-07-19 07:31:47\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"5.5.31\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";N;s:4:\"Name\";s:26:\"20200719_expedicionciencia\";s:4:\"Hash\";s:35:\"8f9c1652660625528529_20200719073147\";s:8:\"NameHash\";s:62:\"20200719_expedicionciencia_8f9c1652660625528529_20200719073147\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:73;s:8:\"Database\";r:85;s:13:\"BuildProgress\";r:157;}}}"),
("3","20200719_expedicionciencia","348a5bf9ed7345434382_20200719073335","60","2020-07-19 07:34:37","unknown","O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-07-19 07:33:35\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"5.5.31\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";i:3;s:4:\"Name\";s:26:\"20200719_expedicionciencia\";s:4:\"Hash\";s:35:\"348a5bf9ed7345434382_20200719073335\";s:8:\"NameHash\";s:62:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:72:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";s:4:\"59.9\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:51:\"/www/expedicionciencia.org.ar/htdocs/wp-admin/core;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:74:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:36:\"/www/expedicionciencia.org.ar/htdocs\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:45:\"/www/expedicionciencia.org.ar/htdocs/wp-admin\";i:1;s:55:\"/www/expedicionciencia.org.ar/htdocs/wp-content/uploads\";i:2;s:57:\"/www/expedicionciencia.org.ar/htdocs/wp-content/languages\";i:3;s:54:\"/www/expedicionciencia.org.ar/htdocs/wp-content/themes\";i:4;s:48:\"/www/expedicionciencia.org.ar/htdocs/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:36:\"/www/expedicionciencia.org.ar/htdocs\";i:1;s:47:\"/www/expedicionciencia.org.ar/htdocs/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:48:\"/www/expedicionciencia.org.ar/htdocs/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:76:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-07-19 07:33:35\";s:7:\"Version\";s:6:\"1.3.36\";s:9:\"VersionWP\";s:5:\"5.4.2\";s:9:\"VersionDB\";s:6:\"5.5.31\";s:10:\"VersionPHP\";s:6:\"5.6.40\";s:9:\"VersionOS\";s:5:\"Linux\";s:2:\"ID\";N;s:4:\"Name\";s:26:\"20200719_expedicionciencia\";s:4:\"Hash\";s:35:\"348a5bf9ed7345434382_20200719073335\";s:8:\"NameHash\";s:62:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:42682463;s:4:\"File\";s:75:\"20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:0;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:39:{s:17:\"wp_cntctfrm_field\";s:2:\"13\";s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"0\";s:19:\"wp_contactformmaker\";s:2:\"10\";s:27:\"wp_contactformmaker_blocked\";s:1:\"0\";s:27:\"wp_contactformmaker_submits\";s:1:\"0\";s:26:\"wp_contactformmaker_themes\";s:2:\"37\";s:25:\"wp_contactformmaker_views\";s:1:\"0\";s:22:\"wp_duplicator_packages\";s:1:\"2\";s:8:\"wp_links\";s:1:\"0\";s:15:\"wp_linkshortcut\";s:1:\"2\";s:16:\"wp_nf_objectmeta\";s:2:\"79\";s:13:\"wp_nf_objects\";s:1:\"5\";s:19:\"wp_nf_relationships\";s:1:\"1\";s:12:\"wp_ngg_album\";s:1:\"0\";s:14:\"wp_ngg_gallery\";s:1:\"1\";s:15:\"wp_ngg_pictures\";s:1:\"3\";s:25:\"wp_ninja_forms_fav_fields\";s:2:\"17\";s:21:\"wp_ninja_forms_fields\";s:1:\"2\";s:10:\"wp_options\";s:3:\"503\";s:11:\"wp_postmeta\";s:4:\"1273\";s:8:\"wp_posts\";s:4:\"1515\";s:24:\"wp_statistics_exclusions\";s:1:\"0\";s:24:\"wp_statistics_historical\";s:1:\"0\";s:19:\"wp_statistics_pages\";s:5:\"44478\";s:20:\"wp_statistics_search\";s:5:\"30508\";s:24:\"wp_statistics_useronline\";s:1:\"0\";s:19:\"wp_statistics_visit\";s:4:\"1492\";s:21:\"wp_statistics_visitor\";s:6:\"220761\";s:21:\"wp_term_relationships\";s:2:\"33\";s:16:\"wp_term_taxonomy\";s:1:\"5\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:1:\"5\";s:11:\"wp_usermeta\";s:3:\"280\";s:8:\"wp_users\";s:1:\"9\";s:14:\"wp_wpfm_backup\";s:1:\"0\";s:13:\"wp_wtmgdp_log\";s:1:\"0\";s:18:\"wp_yoast_seo_links\";s:3:\"100\";s:17:\"wp_yoast_seo_meta\";s:3:\"186\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:144:\"/www/expedicionciencia.org.ar/htdocs/wp-content/backups-dup-lite/tmp/20200719_expedicionciencia_348a5bf9ed7345434382_20200719073335_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:85;}}}s:8:\"Database\";r:107;s:13:\"BuildProgress\";r:177;}");/*END*/




DROP TABLE IF EXISTS `webtoffee_links` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/*END*/






DROP TABLE IF EXISTS `webtoffee_linkshortcut` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_linkshortcut` (
  `linkshortcut_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`linkshortcut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;/*END*/


INSERT INTO webtoffee_linkshortcut VALUES
("2","gsj","http://expedicionciencia.org.ar/horizonte-de-ciencia-golfo-san-jorge-2017/","gsj"),
("3","nqn","http://expedicionciencia.org.ar/horizonte-de-ciencia-neuquen-2017/","nqn");/*END*/




DROP TABLE IF EXISTS `webtoffee_nf_objectmeta` ;/*END*/ 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";/*END*/
SET time_zone = "+00:00";/*END*/


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;/*END*/
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;/*END*/
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;/*END*/
/*!40101 SET NAMES utf8 */;/*END*/
--
-- Database: `expecien`
--




CREATE TABLE `webtoffee_nf_objectmeta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;/*END*/


INSERT INTO webtoffee_nf_objectmeta VALUES
("19","2","date_updated","2014-09-09"),
("20","2","active","1"),
("21","2","name","Email User"),
("22","2","type","email"),
("23","2","email_format","html"),
("24","2","attach_csv","1"),
("25","2","from_name",""),
("26","2","from_address",""),
("27","2","reply_to",""),
("28","2","to","field_2"),
("29","2","cc",""),
("30","2","bcc",""),
("31","2","email_subject","Thank you for contacting us!"),
("32","2","email_message","Thank you so much for contacting us. We will get back to you shortly."),
("33","2","redirect_url",""),
("34","2","success_message_loc","ninja_forms_display_before_fields"),
("35","2","success_msg",""),
("36","3","date_updated","2014-09-09"),
("37","3","active","1"),
("38","3","name","Success Message"),
("39","3","type","success_message"),
("40","3","email_format","html"),
("41","3","attach_csv","0"),
("42","3","from_name",""),
("43","3","from_address",""),
("44","3","reply_to",""),
("45","3","to",""),
("46","3","cc",""),
("47","3","bcc",""),
("48","3","email_subject",""),
("49","3","email_message",""),
("50","3","redirect_url",""),
("51","3","success_message_loc","ninja_forms_display_after_fields"),
("52","3","success_msg","Your form has been successfully submitted."),
("53","3","text_message_number",""),
("54","3","text_message_carrier","0"),
("55","3","text_message_message",""),
("56","4","date_updated","2014-09-09"),
("57","4","active","1"),
("58","4","name","Email Admin"),
("59","4","type","email"),
("60","4","email_format","html"),
("61","4","attach_csv","1"),
("62","4","from_name",""),
("63","4","from_address",""),
("64","4","reply_to","field_2"),
("65","4","to",""),
("66","4","cc",""),
("67","4","bcc",""),
("68","4","email_subject","Ninja Form Submission"),
("69","4","email_message","[ninja_forms_all_fields]"),
("70","4","redirect_url",""),
("71","4","success_message_loc","ninja_forms_display_before_fields"),
("72","4","success_msg",""),
("73","4","text_message_number",""),
("74","4","text_message_carrier","0"),
("75","4","text_message_message",""),
("76","5","date_updated","2016-05-29 00:21:52"),
("77","5","clear_complete","1"),
("78","5","hide_complete","1"),
("79","5","show_title","0"),
("80","5","status",""),
("81","5","form_title","prueba"),
("82","6","date_updated","2016-05-29"),
("83","6","active","1"),
("84","6","name","Calvi probando"),
("85","6","type","email"),
("86","6","from_name",""),
("87","6","from_address",""),
("88","6","to","ezequielh.calvo@gmail.com"),
("89","6","email_subject",""),
("90","6","email_message",""),
("91","6","attach_csv","0"),
("92","6","email_format","html"),
("93","6","reply_to",""),
("94","6","cc",""),
("95","6","bcc",""),
("96","6","redirect_url",""),
("97","6","success_msg","");/*END*/


