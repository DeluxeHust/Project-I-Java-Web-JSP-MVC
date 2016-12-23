-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2016 at 08:31 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"snap_to_grid":"off","relation_lines":"true","angular_direct":"angular","side_menu":"false"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'CSDL Verson 2.1', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"table_structure[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"table_data[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","json_structure_or_data":"data","codegen_structure_or_data":"data","codegen_format":"0","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","ods_null":"NULL","ods_structure_or_data":"data","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","yaml_structure_or_data":"data","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","":null,"lock_tables":null,"as_separate_files":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"json_pretty_print":null,"excel_removeCRLF":null,"excel_columns":null,"ods_columns":null,"csv_removeCRLF":null,"csv_columns":null,"htmlword_columns":null,"texytext_columns":null}'),
(2, 'root', 'database', 'csdl version 5.1', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"table_structure[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"table_data[]":["Cart","CartDetail","Category","Customers","Orders","Products","Suppliers"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"zip","maxsize":"","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","json_structure_or_data":"data","codegen_structure_or_data":"data","codegen_format":"0","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","ods_null":"NULL","ods_structure_or_data":"data","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","yaml_structure_or_data":"data","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","":null,"lock_tables":null,"as_separate_files":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"json_pretty_print":null,"excel_removeCRLF":null,"excel_columns":null,"ods_columns":null,"csv_removeCRLF":null,"csv_columns":null,"htmlword_columns":null,"texytext_columns":null}'),
(3, 'root', 'server', 'verend', '{"quick_or_custom":"quick","what":"sql","db_select[]":["phpmyadmin","saleWeb","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","json_structure_or_data":"data","codegen_structure_or_data":"data","codegen_format":"0","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","ods_null":"NULL","ods_structure_or_data":"data","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","yaml_structure_or_data":"data","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","":null,"as_separate_files":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"json_pretty_print":null,"excel_removeCRLF":null,"excel_columns":null,"ods_columns":null,"csv_removeCRLF":null,"csv_columns":null,"htmlword_columns":null,"texytext_columns":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"saleWeb","table":"Bill"},{"db":"saleWeb","table":"User"},{"db":"saleWeb","table":"Suppliers"},{"db":"saleWeb","table":"Category"},{"db":"saleWeb","table":"Products"},{"db":"saleWeb","table":"CartDetail"},{"db":"saleWeb","table":"admin"},{"db":"saleWeb","table":"Cart"},{"db":"saleWeb","table":"Customers"},{"db":"saleWeb","table":"Orders"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'saleWeb', 'Bill', '{"sorted_col":"`Bill`.`BillId`  ASC"}', '2016-12-20 14:08:52'),
('root', 'saleWeb', 'Customers', '{"CREATE_TIME":"2016-10-24 23:55:40","col_order":["0","1","2","3","4","5","6"],"col_visib":["1","1","1","1","1","1","1"]}', '2016-10-25 03:01:44'),
('root', 'saleWeb', 'Products', '{"CREATE_TIME":"2016-11-17 00:11:30","col_visib":["1","1","1","1","1","1"],"sorted_col":"`PID` ASC"}', '2016-12-16 10:38:59'),
('root', 'saleWeb', 'User', '{"CREATE_TIME":"2016-12-18 12:15:14","col_order":["0","1","2","3","4","5","6"],"col_visib":["1","1","1","1","1","1","1"]}', '2016-12-20 14:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-10-25 07:51:23', '{"collation_connection":"utf8mb4_vietnamese_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `saleWeb`
--
CREATE DATABASE IF NOT EXISTS `saleWeb` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
USE `saleWeb`;

-- --------------------------------------------------------

--
-- Table structure for table `Bill`
--

CREATE TABLE `Bill` (
  `BillId` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `TotalMoney` int(11) NOT NULL,
  `ReceiverName` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PayOption` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Bill`
--

INSERT INTO `Bill` (`BillId`, `UserID`, `TotalMoney`, `ReceiverName`, `Address`, `PayOption`, `Date`) VALUES
(1, 3, 120000, 'Đào Thu Trang', 'Vĩnh Phúc', 'Tiền mặt', '2016-12-20 14:22:32'),
(3, 1, 2230000, 'Lĩnh Phan', 'Hà Nội', 'Chuyển Khoản', '2016-12-20 09:51:55'),
(4, 10, 45320000, 'Phan Hồng Lĩnh', 'United State ', 'Tiền mặt', '2016-12-20 14:25:33'),
(5, 1, 2230000, 'Lê Thị Hoài', 'Hà Nội', 'Chuyển Khoản', '2016-12-20 14:21:02'),
(6, 1, 2230000, 'Lĩnh Phan', 'Hà Nội', 'Chuyển Khoản', '2016-12-20 03:09:41'),
(7, 1, 12230000, 'Lê Thị Hiên', 'Nghệ An', 'Tiền mặt', '2016-12-20 03:12:06'),
(8, 4, 32180000, 'Phan Văn QUảng', 'Nam Đàn  - Nghệ An', 'Chuyển Khoản', '2016-12-20 14:18:56'),
(9, 7, 29490000, 'Phan Tiến Hoài', 'Phủ Lý - Nam Định', 'Tiền Mặt', '2016-12-20 14:19:02'),
(10, 11, 31450000, 'Đào Duy Khương', 'Đà Nẵng', 'Tiền Mặt', '2016-12-20 14:20:30'),
(11, 17, 6340000, 'Quân Hồng', 'Yên Trung', 'Chuyển khoản', '2016-12-20 14:19:43'),
(12, 20, 11570000, 'Nguyễn Hồng Quân', 'TP. Hồ Chí Minh', 'Chuyển khoản', '2016-12-20 14:19:37'),
(13, 12, 15980000, 'Ngô Văn Linh', 'Bách Khoa Hà Nội', 'Tiền mặt', '2016-12-20 07:47:13'),
(18, 10, 320000, 'Lan Phương', 'Nam Đàn - Nghệ An', 'Chuyển khoản', '2016-12-22 14:32:02'),
(19, 6, 22440000, 'Cristian Đỗ', 'Thượng Truy - Nam Kim', 'Tiền mặt', '2016-12-20 15:16:35'),
(20, 20, 30480000, 'Lĩnh Phan', 'Nghệ An', 'Tiền mặt', '2016-12-21 15:01:02'),
(21, 36, 9950000, 'Lan Phương', 'Bách Khoa Hà Nội', 'Chuyển khoản', '2016-12-20 09:13:08'),
(22, 36, 320000, 'Nguyễn Hồng Quân', 'Nam Đàn Nghệ An', 'Tiền mặt', '2016-12-20 09:15:51'),
(23, 12, 32600000, 'Lan Phương', 'Bách Khoa Hà Nội', 'Chuyển khoản', '2016-12-20 21:06:02'),
(24, 10, 320000, 'Đặng Văn Đình', 'Nghệ An', 'Chuyển khoản', '2016-12-20 23:20:41'),
(25, 10, 14500000, 'Lan Phương', 'Thanh Trì, Quảng Nam', 'Tiền mặt', '2016-12-20 23:25:04'),
(30, 10, 34300000, 'Đặng Văn Đình', 'Bách Khoa Hà Nội', 'Chuyển khoản', '2016-12-20 23:46:51'),
(31, 10, 13140000, 'Đỗ Thị Thu', 'Nam Định', 'Tiền mặt', '2016-12-20 23:57:58'),
(33, 10, 22440000, 'Đỗ Thị Thúy Trang', 'Lê Hồng Phong', 'Tiền mặt', '2016-12-21 00:01:56'),
(34, 12, 22540000, 'Bùi Thị Thắm', 'Lê Hồng Phong', 'Tiền mặt', '2016-12-21 00:07:11'),
(35, 40, 31690000, 'Thanh Tâm', 'Hà ĐÔng', 'Chuyển khoản', '2016-12-21 08:29:52'),
(36, 10, 18100000, 'Nguyễn Hồng Quân', 'Nam Đàn Nghệ An', 'Tiền mặt', '2016-12-21 10:33:44'),
(37, 10, 450000, 'Đặng Văn Đình', 'Bách Khoa Hà Nội', 'Chuyển khoản', '2016-12-21 20:14:36'),
(38, 10, 11000000, 'Trần Thu Hồng', 'Mỏ Địa chất', 'Tiền mặt', '2016-12-22 06:41:09'),
(39, 21, 9750000, 'Nam Nhi', 'Phú Yên', 'Tiền mặt', '2016-12-22 08:23:17'),
(40, 23, 51040000, 'Hồ Ngọc Hà', 'Ba Đình - Hà Nội', 'Tiền mặt', '2016-12-22 10:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `BillDetail`
--

CREATE TABLE `BillDetail` (
  `BillDetailId` int(11) NOT NULL,
  `BillId` int(11) NOT NULL,
  `PID` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `BillDetail`
--

INSERT INTO `BillDetail` (`BillDetailId`, `BillId`, `PID`, `Price`, `Quantify`) VALUES
(1, 1, 'as-keyboard', 320000, 2),
(2, 4, 'laptop-asus', 16200000, 2),
(3, 4, 'sp-sony', 12920000, 1),
(4, 8, 'sp-oppoF1', 6340000, 1),
(5, 8, 'sp-sony', 12920000, 2),
(6, 9, 'tablet-samsung', 7500000, 1),
(7, 9, 'sp-iphone7', 21990000, 1),
(8, 10, 'sp-galaxys7', 15340000, 2),
(9, 10, 'as-keyboard', 320000, 1),
(10, 10, 'as-sacduphong', 450000, 1),
(11, 11, 'sp-oppoF1', 6340000, 1),
(12, 12, 'as-keyboard', 320000, 1),
(13, 12, 'tablet-asus', 11000000, 1),
(14, 12, 'as-mouse', 250000, 1),
(15, 13, 'sp-galaxys7', 15340000, 1),
(16, 13, 'as-headphone', 640000, 1),
(17, 18, 'as-keyboard', 320000, 1),
(18, 19, 'as-sacduphong', 450000, 1),
(19, 19, 'sp-iphone7', 21990000, 1),
(20, 20, 'sp-galaxys7', 15340000, 1),
(21, 20, 'as-keyboard', 320000, 2),
(22, 20, 'laptop-dell', 14500000, 1),
(23, 21, 'tablet-sony', 9700000, 1),
(24, 21, 'as-mouse', 250000, 1),
(25, 22, 'as-keyboard', 320000, 1),
(26, 23, 'laptop-dell', 14500000, 1),
(27, 23, 'laptop-apple', 18100000, 1),
(28, 24, 'as-keyboard', 320000, 1),
(29, 25, 'laptop-dell', 14500000, 1),
(35, 30, 'laptop-asus', 16200000, 1),
(36, 30, 'laptop-apple', 18100000, 1),
(37, 31, 'speaker-pc', 220000, 1),
(38, 31, 'sp-sony', 12920000, 1),
(41, 33, 'as-sacduphong', 450000, 1),
(42, 33, 'sp-iphone7', 21990000, 1),
(43, 34, 'laptop-asus', 16200000, 1),
(44, 34, 'sp-oppoF1', 6340000, 1),
(45, 35, 'tablet-sony', 9700000, 1),
(46, 35, 'sp-iphone7', 21990000, 1),
(47, 36, 'laptop-apple', 18100000, 1),
(48, 37, 'as-sacduphong', 450000, 1),
(49, 38, 'tablet-asus', 11000000, 1),
(50, 39, 'tablet-sony', 9700000, 1),
(51, 39, 'op-lung-galaxy', 50000, 1),
(52, 40, 'op-lung-galaxy', 50000, 1),
(53, 40, 'laptop-dell', 14500000, 2),
(54, 40, 'sp-iphone7', 21990000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `CategoryId` char(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CategoryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`CategoryId`, `CategoryName`) VALUES
('accessories', 'Phụ Kiện'),
('laptop', 'LapTop'),
('smartphone', 'Smart Phone'),
('tablet', 'Máy tính bảng');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `PID` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `InputPrice` int(11) NOT NULL,
  `PPrice` int(11) NOT NULL,
  `Img` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `SID` int(11) NOT NULL,
  `CategoryId` char(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `PDescription` varchar(500) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`PID`, `PName`, `InputPrice`, `PPrice`, `Img`, `SID`, `CategoryId`, `PDescription`) VALUES
('as-headphone', 'Head phone cao cấp', 520000, 640000, 'as-headphone.jpg', 1, 'accessories', '<p><br></p><ul><li> Jack cắm: 3.5 mm </li><li> Độ dài dây: 1.5 m </li><li> Phím tính năng: Micro, Nút tăng giảm âm lượng, nút nhận/kết thúc cuộc gọi </li><li> Tính năng khác: Thiết kế thời trang,chất lượng âm thanh sống động </li><li> Có khả năng gập gọn khi bạn di chuyển. </li><li> Lớp đệm tai mềm cho cảm giác thoải mái khi đeo. </li><li> Tích hợp phím chức năng tiện lợi cho người dùng</li></ul><p><br></p>'),
('as-keyboard', 'Bàn phím Newmen E835P ', 300000, 320000, 'as-keyboard.jpg', 5, 'accessories', '<ul><li> Model: E835P </li><li> Kiểu kết nối: Có dây </li><li> Chuẩn kết nối: PS/2 </li><li> Phím chức năng: Standard </li> <li> Màu: Đen </li><li> Tính năng khác: Thiết kế gia cường, không thể tháo rời. Chữ khắc Laser chống mài mòn, phím mũi tên thiết kế công năng giúp sử dụng lâu dài. </li></ul>'),
('as-mouse', 'Chuột xịn NewMen', 190000, 250000, 'as-mouse.jpeg', 5, 'accessories', '<ul><li> Model: E835P </li><li> Kiểu kết nối: Có dây </li><li> Chuẩn kết nối: PS/2 </li><li> Phím chức năng: Standard </li> <li> Màu: Đen </li><li> Tính năng khác: Thiết kế gia cường, không thể tháo rời. Chữ khắc Laser chống mài mòn, phím mũi tên thiết kế công năng giúp sử dụng lâu dài. </li></ul>'),
('as-sacduphong', 'Sạc dự phòng', 370000, 450000, 'as-sacduphong.jpg', 6, 'accessories', '<ul><li> Hiệu suất sạc: 65% </li><li> Đèn LED báo hiệu: Có<li> Thời gian sạc: 3-4 giờ </li><li> Nguồn vào: 5V-2.1A </li><li> Cổng ra USB 1: 5V-2.1A </li><li> Cổng ra USB 2: Không. </li><li> Kích thước: Dài 9cm x ngang 5cm x 2.5cm </li><li> Tự ngắt khi sạc đầy điện thoại: Không </li><li> Trọng lượng: 200gr </li></ul>'),
('laptop-acer', 'Laptop Acer ES1 431', 9300000, 12000000, 'laptop-acer.jpeg', 1, 'laptop', '<ul><li>CPU: Intel, Celeron, N3050, 1.60 GHz</li><li>RAM: DDR3 (on board), 2 GB, 1600 MHz</li><li>Đĩa cứng: HDD, 500 GB</li><li>Màn hình rộng: 14 inch, HD (1366 x 768 pixels)</li><li>Cảm ứng: Không</li><li>Đồ họa: Integrated Graphics, Share (Dùng chung bộ nhớ với RAM<li>Đĩa quang: Không</li><li>Webcam: 0.3 MP</li><li>Chất liệu vỏ: Vỏ nhựa</li><li>Cổng giao tiếp: HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</li></ul>'),
('laptop-apple', 'Laptop Apple Macbook MMGL2', 15900000, 18100000, 'laptop-banner.jpg', 5, 'laptop', '<ul><li> CPU: Intel, Pentium, N3710, 1.60 GHz</li><li> RAM: DDR3L (1 khe RAM), 4 GB, 1600 MHz</li>\r\n<li> Đĩa cứng: eMMC, 32 GB</li><li> Màn hình rộng: 11.6 inch, HD (1366 x 768 pixels)</li><li> Cảm ứng: Có </li>\r\n<li> Đồ họa: Intel® HD Graphics 405 </li><li> Đĩa quang: Không</li><li> Webcam: 0.9 MP(16:9)</li><li> Chất liệu vỏ: Vỏ nhựa</li> </ul>'),
('laptop-asus', 'Laptop Asus E402SA', 12450000, 16200000, 'laptop-asus.jpg', 2, 'laptop', '<ul><li>CPU: Intel, Celeron, N3050, 1.60 GHz</li><li>RAM: DDR3 (on board), 2 GB, 1600 MHz</li><li>Đĩa cứng: HDD, 500 GB</li><li>Màn hình rộng: 14 inch, HD (1366 x 768 pixels)</li><li>Cảm ứng: Không</li><li>Đồ họa: Integrated Graphics, Share (Dùng chung bộ nhớ với RAM)<li>Đĩa quang: Không</li<li>Webcam: 0.3 MP</li><li>Chất liệu vỏ: Vỏ nhựa</li><li>Cổng giao tiếp: HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)</li></ul>'),
('laptop-dell', 'Laptop Dell Inspiron 3552', 8000000, 14500000, 'laptop-dell.jpg', 3, 'laptop', '<ul><li> CPU: Intel, Core i7, N3060, 1.60 GHz</li><li> RAM: DDR3L (1 khe RAM), 4 GB, 1600 MHz</li><li> Đĩa cứng: HDD, 500 GB</li><li> Màn hình rộng:15.6 inch, HD (1366 x 768 pixels)</li><li> Cảm ứng: Không</li><li> Đồ họa: Intel® HD Graphics, Share (Dùng chung bộ nhớ với RAM)</li><li> Đĩa quang: DVD Super Multi Double Layer</li><li> Webcam: 0.3 MP</li></ul>'),
('op-lung-galaxy', 'Ốp lưng Galaxy J5', 30000, 50000, 'op-lung.jpg', 4, 'accessories', '<ul class="policy"><li>Chất liệu nhựa dẻo dày, kiểu dáng thời trang và đẹp mắt.</li><li>Thiết kế vừa vặn và ôm sát thân máy.</li><li> Dễ dàng tháo/lắp ốp vào máy. </li></ul>'),
('sp-galaxys7', 'SamSung Galaxy S7', 10700000, 15340000, 'sp-galaxys7.jpg', 6, 'smartphone', '<ul><li> Màn hình: Super AMOLED, 5.5", Quad HD </li><li> Hệ điều hành: Android 6.0 (Marshmallow) </li><li> Camera sau: 12 MP </li><li> Camera trước: 5 MP </li><li> CPU: Exynos 8890 8 nhân 64-bit </li><li> RAM: 4 GB </li><li> Bộ nhớ trong: 32 GB </li><li> Hỗ trợ thẻ nhớ: 200 GB </li><li> Thẻ SIM: 2 SIM, SIM 2 chung khe thẻ nhớ, Nano SIM </li><li> Dung lượng pin: 3600 mAh </li></ul>'),
('sp-iphone7', 'Iphone 7Plus', 18500000, 21990000, 'sp-iphone7.jpg', 5, 'smartphone', '<ul><li>Màn hình: LED-backlit ÍP LCD, 5.5", Retina HD </li><li>Hệ điều hành: iOS 10 </li><li> Camera sau: Hai camera 12 MP </li><li>Camera trước: 7 MP </li><li>CPU: Apple A10 Fusion 4 nhân 64-bit </li><li> RAM: 3 GB </li><li>Bộ nhớ trong: 256 GB </li><li>Hỗ trợ thẻ nhớ: Không </li><li>Thẻ SIM: 1 SIM, Nano SIM </li><li>Dung lượng pin: 2900 mAh </li></ul>'),
('sp-oppoF1', 'Oppo F1 Plus', 5300000, 6340000, 'sp-oppoF1.png', 1, 'smartphone', '<ul><li> Màn hình: AMOLED, 5.5", Full HD </li><li> Hệ điều hành: Android 5.1 (Lollipop) </li><li> Camera sau: 13 MP </li><li> Camera trước: 16 MP </li><li> CPU: Helio P10 8 nhân 64-bit </li><li> RAM: 4 GB </li><li> Bộ nhớ trong: 64 GB </li><li> Hỗ trợ thẻ nhớ:128 GB </li><li> Thẻ SIM: 2 SIM, SIM 2 chung khe thẻ nhớ, Nano SIM </li><li> Dung lượng pin: 2850mAh </li></ul>'),
('sp-sony', 'Sony Xperia ZenFone4', 9560000, 12920000, 'sp-sony.jpg', 8, 'smartphone', '<ul><li> Màn hình: Super AMOLED, 5.5", Quad HD </li><li> Hệ điều hành: Android 6.0 (Marshmallow) </li><li> Camera sau: 12 MP </li><li> Camera trước: 5 MP </li><li> CPU: Exynos 8890 8 nhân 64-bit </li><li> RAM: 4 GB </li><li> Bộ nhớ trong: 32 GB </li><li> Hỗ trợ thẻ nhớ: 200 GB </li><li> Thẻ SIM: 2 SIM, SIM 2 chung khe thẻ nhớ, Nano SIM </li><li> Dung lượng pin: 3600 mAh </li></ul>'),
('speaker-pc', 'Loa vi tính Fenda U213A - 2.0', 120000, 220000, 'loamaytinh.jpg', 4, 'accessories', '<ul><li>Thiết kế đơn giản với màu đen trơn nhưng rất tinh tế và đẹp mắt.</li><li>Kích thước nhỏ gọn thuận tiện cho việc di chuyển. </li><li>Với góc nghiêng 11 độ giúp Loa phát âm thanh rộng hơn. </li><li>Kết nối dễ dàng và nhanh chóng với PC, laptop,...thông qua Jack 3.5mm. </li></ul>'),
('tablet-asus', 'Asus Tablet V5', 8600000, 11000000, 'tablet-asus.jpg', 2, 'tablet', '<ul><li> Màn hình: LED backlit LCD, 12.9" </li><li> Hệ điều hành: iOS 9 </li><li> CPU: Apple A9X 2 nhân 64-bit, 2.2 GHz </li><li> RAM: 4GB </li><li> Bộ nhớ trong: 32 GB </li><li> Camera sau: 8 MP </li><li> Camera trước: 1.2 MP </li><li> Kết nối mạng: WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G </li><li> Hỗ trợ SIM: Không </li></ul>'),
('tablet-ipad', 'Ipad Pro Tablet', 7300000, 8500000, 'tablet-ipad.jpg', 5, 'tablet', '<ul><li> Màn hình: LED backlit LCD, 12.9" </li><li> Hệ điều hành: iOS 9 </li><li> CPU: Apple A9X 2 nhân 64-bit, 2.2 GHz </li><li> RAM: 4GB </li><li> Bộ nhớ trong: 32 GB </li><li> Camera sau: 8 MP </li><li> Camera trước: 1.2 MP </li><li> Kết nối mạng: WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G </li><li> Hỗ trợ SIM: Không </li></ul>'),
('tablet-samsung', 'Samsung Galaxy Tab', 6700000, 7500000, 'samsungglx-tab.png', 8, 'tablet', '<ul><li>Màn hình: PLS LCD, 10.1" </li><li>Hệ điều hành: Android 6.0 (Marshmallow) </li><li>CPU: Exynos 7870 8 nhân, 1.6 GHz </li><li>RAM: 3 GB </li><li>Bộ nhớ trong: 16 GB </li><li>Camera sau: 8 MP </li><li>Camera trước: 2 MP </li><li>Kết nối mạng: WiFi, 3G, 4G LTE </li><li>Hỗ trợ SIM: Nano Sim </li><li>Đàm thoại: Có </li></ul>'),
('tablet-sony', 'Máy tính bảng Sony', 7200000, 9700000, 'tablet-sony.jpg', 3, 'tablet', '<ul><li>Màn hình: PLS LCD, 10.1" </li><li>Hệ điều hành: Android 6.0 (Marshmallow) </li><li>CPU: Exynos 7870 8 nhân, 1.6 GHz </li><li>RAM: 3 GB </li><li>Bộ nhớ trong: 16 GB</li><li>Camera sau: 8 MP </li><li>Camera trước: 2 MP </li><li>Kết nối mạng: WiFi, 3G, 4G LTE </li><li>Hỗ trợ SIM: Nano Sim</li<li>Đàm thoại: Có </li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `Suppliers`
--

CREATE TABLE `Suppliers` (
  `SID` int(11) NOT NULL,
  `SName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `SAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Suppliers`
--

INSERT INTO `Suppliers` (`SID`, `SName`, `SAddress`) VALUES
(1, 'ACER', 'Hoa Kỳ'),
(2, 'ASUS', 'Trung Quốc'),
(3, 'DELL', 'Hoa Kỳ'),
(4, 'SAMSUNG', 'Hàn Quốc'),
(5, 'APPLE', 'Hoa Kỳ'),
(6, 'NEWMEN', 'Việt Nam'),
(8, 'SONY', 'Nhật Bản');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `PassWord` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `FullName` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `Phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `UserName`, `PassWord`, `FullName`, `Email`, `Address`, `Phone`) VALUES
(1, 'tranluuly', '202cb962ac59075b964b07152d234b70', 'Trần Lưu Ly', 'linhphan@gmail.com', 'Nghệ An', 964976895),
(3, 'linhphanhust', '4297f44b13955235245b2497399d7a93', 'Lĩnh Phan', 'user@gmail.com', 'Hà Nội', 974345095),
(4, 'daothutrang', '202cb962ac59075b964b07152d234b70', 'Đào Thu Trang', 'trangmit28@gmail.com', 'Nam Định', 912799546),
(5, 'doanvietdung', '7c880b352b74b3ddd49f67891ad717c9', 'Đoàn VIệt Dũng', 'aido@gmail.com', 'Vĩnh Phúc', 912334332),
(6, 'u19vietnam', '900150983cd24fb0d6963f7d28e17f72', 'Trần Thành U19', 'u19vietnam@gmail.com', 'Viet Nam', 979497460),
(7, 'test123', '202cb962ac59075b964b07152d234b70', 'Đỗ Thị Thúy Trang', 'trangtrang@yahoo.com', 'United State', 931313232),
(9, 'test1233', 'e034fb6b66aacc1d48f445ddfb08da98', 'Sơn Tùng ATM', 'asd@mail', 'Viet Nam', 123456789),
(10, 'LinhPhan', '81dc9bdb52d04dc20036dbd8313ed055', 'Lĩnh Phan', 'linhphan@gmail.com', 'Nam Đàn', 1636764157),
(11, 'ngovanlinh', '79ec16df80b57696a03bb364410061f3', 'Ngô Văn Linh', 'linhvn@gmail.com', 'Ha Noi', 1642214431),
(12, 'project1', '202cb962ac59075b964b07152d234b70', 'Phan Hồng Lĩnh', 'linhphan@gmail.com', 'Việt Nam', 987654321),
(14, 'dangnguyenanh', '202cb962ac59075b964b07152d234b70', 'Đặng Nguyễn Ánh', '123@gmail.com', 'Đống Đa - Hà Nội', 123445552),
(17, 'admin', 'c561ed8f4cf2d3f2e19c4f1c898cfbcb', 'Lĩnh Phan', 'admin@yahoo.com', 'Bách Khoa', 123435323),
(20, 'nguyenhongquan', '4297f44b13955235245b2497399d7a93', 'Nguyễn Hồng Quân', 'nguyenhongquan@gmail.com', 'TP. HCM', 989213322),
(21, 'namnhi', '3fe2f302d6f395252254e304a0a1fd36', 'Nam Nhi', 'namnhi@gmail.com', 'Phú Yên', 932323231),
(23, 'ngocha123', 'a76239844ced86ef62df2544bc51f726', 'Hồ Ngọc Hà', 'linhphanhust@gmail.com', 'Ba Đình - Hà Nội', 932323232);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` char(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Name` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`, `Name`) VALUES
('admin', 'admin', 'Linh Phan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bill`
--
ALTER TABLE `Bill`
  ADD PRIMARY KEY (`BillId`),
  ADD KEY `Key2_bill` (`UserID`);

--
-- Indexes for table `BillDetail`
--
ALTER TABLE `BillDetail`
  ADD PRIMARY KEY (`BillDetailId`),
  ADD KEY `Key3_BillDetail` (`PID`),
  ADD KEY `KEY2_BillDetail` (`BillId`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `KEY2_Product` (`SID`),
  ADD KEY `KEY3_Product` (`CategoryId`);

--
-- Indexes for table `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bill`
--
ALTER TABLE `Bill`
  MODIFY `BillId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `BillDetail`
--
ALTER TABLE `BillDetail`
  MODIFY `BillDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `Suppliers`
--
ALTER TABLE `Suppliers`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bill`
--
ALTER TABLE `Bill`
  ADD CONSTRAINT `Key2_bill` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `BillDetail`
--
ALTER TABLE `BillDetail`
  ADD CONSTRAINT `KEY2_BillDetail` FOREIGN KEY (`BillId`) REFERENCES `Bill` (`BillId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Key3_BillDetail` FOREIGN KEY (`PID`) REFERENCES `Products` (`PID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `KEY2_Product` FOREIGN KEY (`SID`) REFERENCES `Suppliers` (`SID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Key3_Product` FOREIGN KEY (`CategoryId`) REFERENCES `Category` (`CategoryId`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=`` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
