-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2019 at 06:46 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rd`
--

DELIMITER $$
--
-- Procedures
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `acl_phinxlog`
--

CREATE TABLE `acl_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `comment`, `lft`, `rght`) VALUES
(29, NULL, NULL, NULL, 'Access Providers', 'A container with rights available to Access Providers - DO NOT DELETE!!', 1, 626),
(30, NULL, NULL, NULL, 'Permanent Users', 'A container with rights for Permanent Users - DO NOT DELETE!!', 627, 632),
(31, 29, NULL, NULL, 'Controllers', 'A container with the various controllers and their actions which can be used by the Access Providers', 2, 615),
(32, 29, NULL, NULL, 'Other Rights', 'A list of other rights which can be configured for an Access Provider', 616, 625),
(33, 30, NULL, NULL, 'Controllers', 'A container with the various controllers and their actions which can be used by the Permanent Users', 628, 629),
(34, 30, NULL, NULL, 'Other Rights', 'A list of other rights which can be configured for a Permanent User', 630, 631),
(42, 32, NULL, NULL, 'View users or vouchers not created self', '', 617, 618),
(43, 31, NULL, NULL, 'Vouchers', '', 3, 32),
(44, 43, NULL, NULL, 'index', '', 4, 5),
(45, 31, NULL, NULL, 'PermanentUsers', '', 33, 78),
(46, 45, NULL, NULL, 'index', '', 34, 35),
(58, 31, NULL, NULL, 'AccessProviders', 'Access Providers can only do these actions on any access provider that is a child of the Access Provider', 79, 102),
(59, 58, NULL, NULL, 'index', 'Without this right, the Access Providers option will not be shown in the Access Provider\'s menu', 80, 81),
(60, 58, NULL, NULL, 'add', 'Without this right an Access Provider will not be able to create Access Provider children', 82, 83),
(61, 58, NULL, NULL, 'edit', '', 84, 85),
(62, 58, NULL, NULL, 'delete', '', 86, 87),
(63, 32, NULL, NULL, 'Can Change Rights', 'This is a key option to allow an Access Provider the ability to change the rights of any of his Access Provider children', 619, 620),
(64, 32, NULL, NULL, 'Can disable activity recording', 'Can disable Activity Recording on Access Provider children', 621, 622),
(65, 58, NULL, NULL, 'changePassword', '', 88, 89),
(67, 31, NULL, NULL, 'Realms', '', 103, 128),
(68, 67, NULL, NULL, 'index', '', 104, 105),
(69, 67, NULL, NULL, 'add', '', 106, 107),
(70, 67, NULL, NULL, 'edit', '', 108, 109),
(71, 67, NULL, NULL, 'delete', '', 110, 111),
(102, 31, NULL, NULL, 'Nas', 'Nas Devices - These rights are also considering the hierarchy of the Access Provider', 129, 184),
(103, 102, NULL, NULL, 'index', 'Without this right there will be no NAS Devices in the AP\'s menu', 130, 131),
(104, 102, NULL, NULL, 'add', '', 132, 133),
(105, 102, NULL, NULL, 'edit', '', 134, 135),
(106, 102, NULL, NULL, 'delete', '', 136, 137),
(107, 31, NULL, NULL, 'Tags', 'Tags for NAS Devices', 185, 204),
(108, 107, NULL, NULL, 'index', 'Without this right, there will be no NAS Device tags in the AP\'s menu', 186, 187),
(109, 107, NULL, NULL, 'add', '', 188, 189),
(110, 107, NULL, NULL, 'edit', '', 190, 191),
(111, 107, NULL, NULL, 'delete', '', 192, 193),
(112, 102, NULL, NULL, 'manage_tags', 'Attach or remove tags to NAS devices', 138, 139),
(113, 107, NULL, NULL, 'exportCsv', 'Exporting the display from the grid to CSV', 194, 195),
(114, 107, NULL, NULL, 'indexForFilter', 'A list for of tags to display on the filter field on the Access Provider grid', 196, 197),
(115, 107, NULL, NULL, 'noteIndex', 'List notes', 198, 199),
(116, 107, NULL, NULL, 'noteAdd', '', 200, 201),
(117, 107, NULL, NULL, 'noteDel', 'Remove a note of a NAS Tag', 202, 203),
(118, 102, NULL, NULL, 'export_csv', 'Exporting the display of the grid to CSV', 140, 141),
(119, 102, NULL, NULL, 'note_index', 'List notes', 142, 143),
(120, 102, NULL, NULL, 'note_add', '', 144, 145),
(121, 102, NULL, NULL, 'note_del', '', 146, 147),
(122, 67, NULL, NULL, 'exportCsv', '', 112, 113),
(123, 67, NULL, NULL, 'indexForFilter', '', 114, 115),
(124, 67, NULL, NULL, 'noteIndex', '', 116, 117),
(125, 67, NULL, NULL, 'noteAdd', '', 118, 119),
(126, 67, NULL, NULL, 'noteDel', '', 120, 121),
(127, 58, NULL, NULL, 'exportCsv', '', 90, 91),
(128, 58, NULL, NULL, 'noteIndex', '', 92, 93),
(129, 58, NULL, NULL, 'noteAdd', '', 94, 95),
(130, 58, NULL, NULL, 'noteDel', '', 96, 97),
(132, 31, NULL, NULL, 'AcosRights', 'Controller to manage the Rights Tree', 205, 210),
(133, 132, NULL, NULL, 'index_ap', 'List the rights of a specific AP', 206, 207),
(134, 132, NULL, NULL, 'edit_ap', 'Modify the rights of a specific AP by another AP', 208, 209),
(137, 31, NULL, NULL, 'Devices', 'Devices belonging to PermanentUsers', 211, 248),
(138, 137, NULL, NULL, 'index', '', 212, 213),
(149, 43, NULL, NULL, 'add', '', 6, 7),
(150, 43, NULL, NULL, 'delete', '', 8, 9),
(151, 31, NULL, NULL, 'Desktop', '', 249, 256),
(152, 151, NULL, NULL, 'desktop_shortcuts', '', 250, 251),
(153, 151, NULL, NULL, 'change_password', '', 252, 253),
(154, 151, NULL, NULL, 'save_wallpaper_selection', '', 254, 255),
(156, 43, NULL, NULL, 'viewBasicInfo', '', 10, 11),
(157, 43, NULL, NULL, 'editBasicInfo', '', 12, 13),
(158, 43, NULL, NULL, 'privateAttrIndex', '', 14, 15),
(159, 43, NULL, NULL, 'privateAttrAdd', '', 16, 17),
(160, 43, NULL, NULL, 'privateAttrEdit', '', 18, 19),
(161, 43, NULL, NULL, 'privateAttrDelete', '', 20, 21),
(162, 43, NULL, NULL, 'changePassword', '', 22, 23),
(163, 43, NULL, NULL, 'exportCsv', '', 24, 25),
(164, 43, NULL, NULL, 'exportPdf', '', 26, 27),
(165, 67, NULL, NULL, 'indexAp', '', 122, 123),
(166, 31, NULL, NULL, 'Profiles', '', 257, 274),
(167, 166, NULL, NULL, 'index', '', 258, 259),
(168, 166, NULL, NULL, 'indexAp', 'Dropdown list based on selected Access Provider owner', 260, 261),
(169, 166, NULL, NULL, 'add', '', 262, 263),
(170, 166, NULL, NULL, 'manageComponents', '', 264, 265),
(171, 166, NULL, NULL, 'delete', '', 266, 267),
(173, 166, NULL, NULL, 'noteIndex', '', 268, 269),
(174, 166, NULL, NULL, 'noteAdd', '', 270, 271),
(175, 166, NULL, NULL, 'noteDel', '', 272, 273),
(176, 31, NULL, NULL, 'Radaccts', '', 275, 286),
(177, 176, NULL, NULL, 'export_csv', '', 276, 277),
(178, 176, NULL, NULL, 'index', '', 278, 279),
(179, 176, NULL, NULL, 'delete', '', 280, 281),
(180, 176, NULL, NULL, 'kick_active', '', 282, 283),
(181, 176, NULL, NULL, 'close_open', '', 284, 285),
(182, 43, NULL, NULL, 'delete_accounting_data', '', 28, 29),
(184, 45, NULL, NULL, 'add', '', 36, 37),
(185, 45, NULL, NULL, 'delete', '', 38, 39),
(186, 45, NULL, NULL, 'viewBasicInfo', '', 40, 41),
(187, 45, NULL, NULL, 'editBasicInfo', '', 42, 43),
(188, 45, NULL, NULL, 'viewPersonalInfo', '', 44, 45),
(189, 45, NULL, NULL, 'editPersonalInfo', '', 46, 47),
(190, 45, NULL, NULL, 'privateAttrIndex', '', 48, 49),
(191, 45, NULL, NULL, 'privateAttrAdd', '', 50, 51),
(192, 45, NULL, NULL, 'privateAttrEdit', '', 52, 53),
(193, 45, NULL, NULL, 'privateAttrDelete', '', 54, 55),
(194, 45, NULL, NULL, 'changePassword', '', 56, 57),
(195, 45, NULL, NULL, 'enableDisable', '', 58, 59),
(196, 45, NULL, NULL, 'exportCsv', '', 60, 61),
(197, 45, NULL, NULL, 'noteIndex', '', 62, 63),
(198, 137, NULL, NULL, 'add', '', 214, 215),
(199, 137, NULL, NULL, 'delete', '', 216, 217),
(200, 137, NULL, NULL, 'viewBasicInfo', '', 218, 219),
(201, 137, NULL, NULL, 'editBasicInfo', '', 220, 221),
(202, 137, NULL, NULL, 'privateAttrIndex', '', 222, 223),
(203, 137, NULL, NULL, 'privateAttrAdd', '', 224, 225),
(204, 137, NULL, NULL, 'privateAttrEdit', '', 226, 227),
(205, 137, NULL, NULL, 'privateAttrDelete', '', 228, 229),
(206, 137, NULL, NULL, 'enableDisable', '', 230, 231),
(207, 137, NULL, NULL, 'exportCsv', '', 232, 233),
(208, 137, NULL, NULL, 'noteIndex', '', 234, 235),
(209, 31, NULL, NULL, 'FreeRadius', '', 287, 292),
(210, 209, NULL, NULL, 'test_radius', '', 288, 289),
(211, 209, NULL, NULL, 'index', 'Displays the stats of the FreeRADIUS server', 290, 291),
(212, 31, NULL, NULL, 'Radpostauths', '', 293, 302),
(213, 212, NULL, NULL, 'index', '', 294, 295),
(214, 212, NULL, NULL, 'add', '', 296, 297),
(215, 212, NULL, NULL, 'delete', '', 298, 299),
(221, 212, NULL, NULL, 'export_csv', '', 300, 301),
(223, 67, NULL, NULL, 'updateNaRealm', '', 124, 125),
(224, 102, NULL, NULL, 'add_direct', '', 148, 149),
(225, 102, NULL, NULL, 'add_open_vpn', '', 150, 151),
(226, 102, NULL, NULL, 'add_dynamic', '', 152, 153),
(227, 102, NULL, NULL, 'add_pptp', '', 154, 155),
(228, 102, NULL, NULL, 'view_openvpn', '', 156, 157),
(229, 102, NULL, NULL, 'edit_openvpn', '', 158, 159),
(230, 102, NULL, NULL, 'view_pptp', '', 160, 161),
(231, 102, NULL, NULL, 'edit_pptp', '', 162, 163),
(232, 102, NULL, NULL, 'view_dynamic', '', 164, 165),
(233, 102, NULL, NULL, 'edit_dynamic', '', 166, 167),
(234, 102, NULL, NULL, 'view_nas', '', 168, 169),
(235, 102, NULL, NULL, 'edit_nas', '', 170, 171),
(236, 102, NULL, NULL, 'view_photo', '', 172, 173),
(237, 102, NULL, NULL, 'upload_photo', '', 174, 175),
(238, 102, NULL, NULL, 'view_map_pref', '', 176, 177),
(239, 102, NULL, NULL, 'edit_map_pref', '', 178, 179),
(240, 102, NULL, NULL, 'delete_map', '', 180, 181),
(241, 102, NULL, NULL, 'edit_map', '', 182, 183),
(243, 67, NULL, NULL, 'view', '', 126, 127),
(246, 45, NULL, NULL, 'restrictListOfDevices', '', 64, 65),
(247, 45, NULL, NULL, 'edit_tracking', '', 66, 67),
(248, 45, NULL, NULL, 'view_tracking', '', 68, 69),
(249, 45, NULL, NULL, 'noteAdd', '', 70, 71),
(250, 45, NULL, NULL, 'noteDel', '', 72, 73),
(251, 137, NULL, NULL, 'noteAdd', '', 236, 237),
(252, 137, NULL, NULL, 'noteDel', '', 238, 239),
(253, 137, NULL, NULL, 'view_tracking', '', 240, 241),
(254, 137, NULL, NULL, 'edit_tracking', '', 242, 243),
(258, 31, NULL, NULL, 'ProfileComponents', '', 303, 318),
(259, 258, NULL, NULL, 'index', '', 304, 305),
(260, 258, NULL, NULL, 'add', '', 306, 307),
(261, 258, NULL, NULL, 'edit', '', 308, 309),
(262, 258, NULL, NULL, 'delete', '', 310, 311),
(263, 258, NULL, NULL, 'note_index', '', 312, 313),
(264, 258, NULL, NULL, 'note_add', '', 314, 315),
(265, 258, NULL, NULL, 'note_del', '', 316, 317),
(267, 31, NULL, NULL, 'NaStates', '', 319, 324),
(268, 267, NULL, NULL, 'index', '', 320, 321),
(269, 267, NULL, NULL, 'delete', '', 322, 323),
(271, 58, NULL, NULL, 'view', '', 98, 99),
(272, 58, NULL, NULL, 'enableDisable', '', 100, 101),
(275, 31, NULL, NULL, 'DynamicDetails', '', 325, 380),
(276, 275, NULL, NULL, 'exportCsv', '', 326, 327),
(277, 275, NULL, NULL, 'index', '', 328, 329),
(278, 275, NULL, NULL, 'add', '', 330, 331),
(279, 275, NULL, NULL, 'edit', '', 332, 333),
(280, 275, NULL, NULL, 'delete', '', 334, 335),
(281, 275, NULL, NULL, 'view', '', 336, 337),
(282, 275, NULL, NULL, 'uploadLogo', '', 338, 339),
(283, 275, NULL, NULL, 'indexPhoto', '', 340, 341),
(284, 275, NULL, NULL, 'uploadPhoto', '', 342, 343),
(285, 275, NULL, NULL, 'deletePhoto', '', 344, 345),
(286, 275, NULL, NULL, 'editPhoto', '', 346, 347),
(287, 275, NULL, NULL, 'indexPage', '', 348, 349),
(288, 275, NULL, NULL, 'addPage', '', 350, 351),
(289, 275, NULL, NULL, 'editPage', '', 352, 353),
(290, 275, NULL, NULL, 'deletePage', '', 354, 355),
(291, 275, NULL, NULL, 'indexPair', '', 356, 357),
(292, 275, NULL, NULL, 'addPair', '', 358, 359),
(293, 275, NULL, NULL, 'editPair', '', 360, 361),
(294, 275, NULL, NULL, 'deletePair', '', 362, 363),
(295, 275, NULL, NULL, 'noteIndex', '', 364, 365),
(296, 275, NULL, NULL, 'noteAdd', '', 366, 367),
(297, 275, NULL, NULL, 'noteDel', '', 368, 369),
(299, 45, NULL, NULL, 'autoMacOnOff', '', 74, 75),
(300, 32, NULL, NULL, 'Password Manager Only', 'Enabling this option will allow the Access Provider ONLY access to the Password Manager applet', 623, 624),
(301, 45, NULL, NULL, 'viewPassword', '', 76, 77),
(302, 31, NULL, NULL, 'Actions', '', 381, 388),
(303, 302, NULL, NULL, 'index', '', 382, 383),
(304, 302, NULL, NULL, 'add', '', 384, 385),
(305, 302, NULL, NULL, 'delete', '', 386, 387),
(309, 275, NULL, NULL, 'editSettings', '', 370, 371),
(310, 275, NULL, NULL, 'editClickToConnect', '', 372, 373),
(311, 31, NULL, NULL, 'Meshes', 'MESHdesk main controller', 389, 458),
(312, 311, NULL, NULL, 'index', '', 390, 391),
(313, 311, NULL, NULL, 'add', '', 392, 393),
(314, 311, NULL, NULL, 'delete', '', 394, 395),
(315, 311, NULL, NULL, 'note_index', '', 396, 397),
(316, 311, NULL, NULL, 'note_add', '', 398, 399),
(317, 311, NULL, NULL, 'note_del', '', 400, 401),
(318, 311, NULL, NULL, 'mesh_entries_index', '', 402, 403),
(319, 311, NULL, NULL, 'mesh_entry_add', '', 404, 405),
(320, 311, NULL, NULL, 'mesh_entry_edit', '', 406, 407),
(321, 311, NULL, NULL, 'mesh_entry_view', '', 408, 409),
(322, 311, NULL, NULL, 'mesh_entry_delete', '', 410, 411),
(323, 311, NULL, NULL, 'mesh_settings_view', '', 412, 413),
(324, 311, NULL, NULL, 'mesh_settings_edit', '', 414, 415),
(325, 311, NULL, NULL, 'mesh_exits_index', '', 416, 417),
(326, 311, NULL, NULL, 'mesh_exit_add', '', 418, 419),
(327, 311, NULL, NULL, 'mesh_exit_edit', '', 420, 421),
(328, 311, NULL, NULL, 'mesh_exit_view', '', 422, 423),
(329, 311, NULL, NULL, 'mesh_exit_delete', '', 424, 425),
(330, 311, NULL, NULL, 'mesh_nodes_index', '', 426, 427),
(332, 311, NULL, NULL, 'mesh_node_add', '', 428, 429),
(333, 311, NULL, NULL, 'mesh_node_edit', '', 430, 431),
(334, 311, NULL, NULL, 'mesh_node_view', '', 432, 433),
(335, 311, NULL, NULL, 'mesh_node_delete', '', 434, 435),
(336, 311, NULL, NULL, 'mesh_entry_points', '', 436, 437),
(337, 311, NULL, NULL, 'node_common_settings_view', '', 438, 439),
(338, 311, NULL, NULL, 'node_common_settings_edit', '', 440, 441),
(339, 311, NULL, NULL, 'static_entry_options', '', 442, 443),
(340, 311, NULL, NULL, 'static_exit_options', '', 444, 445),
(341, 311, NULL, NULL, 'map_pref_view', '', 446, 447),
(342, 311, NULL, NULL, 'map_pref_edit', '', 448, 449),
(343, 311, NULL, NULL, 'map_node_save', '', 450, 451),
(344, 311, NULL, NULL, 'map_node_delete', '', 452, 453),
(345, 311, NULL, NULL, 'nodes_avail_for_map', '', 454, 455),
(346, 31, NULL, NULL, 'NodeActions', '', 459, 466),
(347, 346, NULL, NULL, 'index', '', 460, 461),
(348, 346, NULL, NULL, 'add', '', 462, 463),
(349, 346, NULL, NULL, 'delete', '', 464, 465),
(350, 31, NULL, NULL, 'Ssids', 'Optional option for Permanent Users to limit their connections', 467, 478),
(351, 350, NULL, NULL, 'index', '', 468, 469),
(352, 350, NULL, NULL, 'indexAp', 'List might changed based on the Access Provider specified', 470, 471),
(353, 350, NULL, NULL, 'add', '', 472, 473),
(354, 350, NULL, NULL, 'delete', '', 474, 475),
(355, 350, NULL, NULL, 'edit', '', 476, 477),
(356, 31, NULL, NULL, 'LicensedDevices', 'Add-on - non standard', 479, 488),
(357, 356, NULL, NULL, 'index', '', 480, 481),
(358, 356, NULL, NULL, 'add', '', 482, 483),
(359, 356, NULL, NULL, 'delete', '', 484, 485),
(360, 356, NULL, NULL, 'edit', '', 486, 487),
(361, 31, NULL, NULL, 'NodeLists', 'Additional convenient add-on to MESHdesk', 489, 492),
(362, 361, NULL, NULL, 'index', '', 490, 491),
(363, 31, NULL, NULL, 'DynamicClients', 'Part of FreeRADIUS version 3.x', 493, 522),
(364, 363, NULL, NULL, 'index', '', 494, 495),
(365, 363, NULL, NULL, 'clients_avail_for_map', '', 496, 497),
(366, 363, NULL, NULL, 'add', '', 498, 499),
(367, 363, NULL, NULL, 'delete', '', 500, 501),
(368, 363, NULL, NULL, 'edit', '', 502, 503),
(369, 363, NULL, NULL, 'view', '', 504, 505),
(370, 363, NULL, NULL, 'view_photo', '', 506, 507),
(371, 363, NULL, NULL, 'note_index', '', 508, 509),
(372, 363, NULL, NULL, 'note_add', '', 510, 511),
(373, 363, NULL, NULL, 'note_del', '', 512, 513),
(374, 363, NULL, NULL, 'view_map_pref', '', 514, 515),
(375, 363, NULL, NULL, 'edit_map_pref', '', 516, 517),
(376, 363, NULL, NULL, 'delete_map', '', 518, 519),
(377, 363, NULL, NULL, 'edit_map', '', 520, 521),
(378, 31, NULL, NULL, 'DynamicClientStates', '', 523, 528),
(379, 378, NULL, NULL, 'index', '', 524, 525),
(380, 378, NULL, NULL, 'delete', '', 526, 527),
(381, 31, NULL, NULL, 'UnknownDynamicClients', '', 529, 536),
(382, 381, NULL, NULL, 'index', '', 530, 531),
(383, 381, NULL, NULL, 'edit', '', 532, 533),
(384, 381, NULL, NULL, 'delete', '', 534, 535),
(385, 31, NULL, NULL, 'ApProfiles', 'Access Point Profiles', 537, 590),
(386, 385, NULL, NULL, 'index', '', 538, 539),
(387, 385, NULL, NULL, 'add', '', 540, 541),
(388, 385, NULL, NULL, 'delete', '', 542, 543),
(389, 385, NULL, NULL, 'note_index', '', 544, 545),
(390, 385, NULL, NULL, 'note_add', '', 546, 547),
(391, 385, NULL, NULL, 'note_del', '', 548, 549),
(392, 385, NULL, NULL, 'ap_profile_entries_index', '', 550, 551),
(393, 385, NULL, NULL, 'ap_profile_entry_add', '', 552, 553),
(394, 385, NULL, NULL, 'ap_profile_entry_edit', '', 554, 555),
(395, 385, NULL, NULL, 'ap_profile_entry_view', '', 556, 557),
(396, 385, NULL, NULL, 'ap_profile_entry_delete', '', 558, 559),
(397, 385, NULL, NULL, 'ap_profile_exits_index', '', 560, 561),
(398, 385, NULL, NULL, 'ap_profile_exit_add', '', 562, 563),
(399, 385, NULL, NULL, 'ap_profile_exit_edit', '', 564, 565),
(400, 385, NULL, NULL, 'ap_profile_exit_view', '', 566, 567),
(401, 385, NULL, NULL, 'ap_profile_exit_delete', '', 568, 569),
(402, 385, NULL, NULL, 'ap_profile_entry_points', 'List available Entry Points', 570, 571),
(403, 385, NULL, NULL, 'ap_common_settings_view', '', 572, 573),
(404, 385, NULL, NULL, 'ap_common_settings_edit', '', 574, 575),
(405, 385, NULL, NULL, 'advanced_settings_for_model', '', 576, 577),
(406, 385, NULL, NULL, 'ap_profile_ap_index', '', 578, 579),
(407, 385, NULL, NULL, 'ap_profile_ap_add', '', 580, 581),
(408, 385, NULL, NULL, 'ap_profile_ap_delete', '', 582, 583),
(409, 385, NULL, NULL, 'ap_profile_ap_edit', '', 584, 585),
(410, 385, NULL, NULL, 'ap_profile_ap_view', '', 586, 587),
(411, 31, NULL, NULL, 'Aps', '', 591, 594),
(412, 411, NULL, NULL, 'index', '', 592, 593),
(413, 385, NULL, NULL, 'ap_profile_exit_add_defaults', '', 588, 589),
(414, 311, NULL, NULL, 'mesh_exit_add_defaults', '', 456, 457),
(435, 275, NULL, NULL, 'viewSocialLogin', '', 374, 375),
(436, 275, NULL, NULL, 'editSocialLogin', '', 376, 377),
(437, 43, NULL, NULL, 'emailVoucherDetails', '', 30, 31),
(438, 31, NULL, NULL, 'GlobalDomains', 'Add-on', 595, 598),
(439, 438, NULL, NULL, 'index', '', 596, 597),
(440, 275, NULL, NULL, 'shufflePhoto', 'New addition allow rearranging ', 378, 379),
(442, 31, NULL, NULL, 'TopUps', NULL, 599, 610),
(443, 442, NULL, NULL, 'exportCsv', NULL, 600, 601),
(444, 442, NULL, NULL, 'index', NULL, 602, 603),
(445, 442, NULL, NULL, 'add', NULL, 604, 605),
(446, 442, NULL, NULL, 'edit', NULL, 606, 607),
(447, 442, NULL, NULL, 'delete', NULL, 608, 609),
(448, 31, NULL, NULL, 'TopUpTransactions', NULL, 611, 614),
(449, 448, NULL, NULL, 'index', NULL, 612, 613),
(451, NULL, 'Realms', 38, NULL, NULL, 633, 634),
(453, NULL, 'Realms', 40, NULL, NULL, 635, 636),
(455, NULL, 'Realms', 42, NULL, NULL, 637, 638),
(456, NULL, 'Realms', 43, NULL, NULL, 639, 640),
(457, NULL, 'Realms', 44, NULL, NULL, 641, 642),
(458, NULL, 'Realms', 45, NULL, NULL, 643, 644);

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(10) NOT NULL,
  `na_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aps`
--

CREATE TABLE `aps` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mac` varchar(255) NOT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `last_contact_from_ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aps`
--

INSERT INTO `aps` (`id`, `ap_profile_id`, `name`, `description`, `mac`, `hardware`, `last_contact_from_ip`, `last_contact`, `on_public_maps`, `lat`, `lon`, `photo_file_name`, `created`, `modified`) VALUES
(27, 17, 'LAN CF 320', '', '40-A5-EF-65-88-20', 'e320n', '42.114.31.146', '2019-04-19 18:45:43', 0, NULL, NULL, 'logo.jpg', '2019-04-18 10:55:19', '2019-04-19 18:45:43'),
(28, 17, 'CF2', '', '40-A5-EF-65-8D-D0', 'e320n', '42.114.31.146', '2019-04-19 18:45:57', 0, NULL, NULL, 'logo.jpg', '2019-04-18 15:26:28', '2019-04-19 18:45:57'),
(29, 18, 'AAA', '', '40-A5-EF-65-88-22', 'e320n', NULL, NULL, 0, NULL, NULL, 'logo.jpg', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(31, 19, 'P QL', '', '40-A5-EF-65-9C-70', 'e320n', '42.114.31.146', '2019-04-19 18:46:30', 0, NULL, NULL, 'logo.jpg', '2019-04-19 14:04:55', '2019-04-19 18:46:30'),
(33, 17, 'TPLINK', '', 'B0-BE-76-AA-89-E7', 'e320n', '42.114.31.146', '2019-04-19 15:25:36', 0, NULL, NULL, 'logo.jpg', '2019-04-19 14:11:28', '2019-04-19 15:25:36'),
(34, 19, 'P NV', '', '40-A5-EF-65-9C-80', 'e320n', '42.114.31.146', '2019-04-19 18:46:10', 0, NULL, NULL, 'logo.jpg', '2019-04-19 14:13:45', '2019-04-19 18:46:10');

-- --------------------------------------------------------

--
-- Table structure for table `ap_actions`
--

CREATE TABLE `ap_actions` (
  `id` int(10) NOT NULL,
  `ap_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_loads`
--

CREATE TABLE `ap_loads` (
  `id` int(11) NOT NULL,
  `ap_id` int(11) DEFAULT NULL,
  `mem_total` int(11) DEFAULT NULL,
  `mem_free` int(11) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `system_time` varchar(255) NOT NULL,
  `load_1` float(2,2) NOT NULL,
  `load_2` float(2,2) NOT NULL,
  `load_3` float(2,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_profiles`
--

CREATE TABLE `ap_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_profiles`
--

INSERT INTO `ap_profiles` (`id`, `name`, `user_id`, `created`, `modified`, `available_to_siblings`) VALUES
(17, 'MEDIA', 183, '2019-04-17 13:59:34', '2019-04-17 13:59:34', 1),
(18, 'WIFI', 195, '2019-04-18 15:58:44', '2019-04-18 15:58:44', 1),
(19, 'Test 1', 196, '2019-04-19 14:04:07', '2019-04-19 14:04:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_entries`
--

CREATE TABLE `ap_profile_entries` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `isolate` tinyint(1) NOT NULL DEFAULT '0',
  `encryption` enum('none','wep','psk','psk2','wpa','wpa2') DEFAULT 'none',
  `key` varchar(255) NOT NULL DEFAULT '',
  `auth_server` varchar(255) NOT NULL DEFAULT '',
  `auth_secret` varchar(255) NOT NULL DEFAULT '',
  `dynamic_vlan` tinyint(1) NOT NULL DEFAULT '0',
  `frequency_band` enum('both','two','five') DEFAULT 'both',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `chk_maxassoc` tinyint(1) NOT NULL DEFAULT '0',
  `maxassoc` int(6) DEFAULT '100',
  `macfilter` enum('disable','allow','deny') DEFAULT 'disable',
  `permanent_user_id` int(11) NOT NULL,
  `rsn_preauth` tinyint(1) NOT NULL DEFAULT '0',
  `ieee80211r` tinyint(1) NOT NULL DEFAULT '0',
  `ft_over_ds` tinyint(1) NOT NULL DEFAULT '0',
  `ft_psk_generate_local` tinyint(1) NOT NULL DEFAULT '0',
  `nasid` varchar(128) NOT NULL,
  `acct_server` varchar(255) NOT NULL DEFAULT '',
  `acct_secret` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_profile_entries`
--

INSERT INTO `ap_profile_entries` (`id`, `ap_profile_id`, `name`, `hidden`, `isolate`, `encryption`, `key`, `auth_server`, `auth_secret`, `dynamic_vlan`, `frequency_band`, `created`, `modified`, `chk_maxassoc`, `maxassoc`, `macfilter`, `permanent_user_id`, `rsn_preauth`, `ieee80211r`, `ft_over_ds`, `ft_psk_generate_local`, `nasid`, `acct_server`, `acct_secret`) VALUES
(17, 14, 'Hotel California', 0, 0, 'none', '', '', '', 0, 'both', '2016-04-30 11:01:14', '2016-04-30 11:35:11', 0, 100, 'disable', 0, 0, 0, 0, 0, '', '', ''),
(18, 14, 'Test', 0, 0, 'none', '', '', '', 0, 'both', '2016-05-10 05:16:57', '2016-05-10 05:16:57', 0, 100, 'disable', 0, 0, 0, 0, 0, '', '', ''),
(21, 17, 'AP320', 0, 0, 'none', '', '', '', 0, 'two', '2019-04-17 14:02:09', '2019-04-18 09:49:46', 0, 100, 'disable', 0, 0, 0, 0, 0, '', '', ''),
(22, 17, 'DHCP LOCAL', 0, 0, 'none', '', '', '', 0, 'two', '2019-04-18 10:01:19', '2019-04-18 15:21:01', 0, 100, 'disable', 0, 0, 0, 0, 0, '', '', ''),
(23, 17, 'VLAN_2', 0, 0, 'none', '12345678', '', '', 0, 'two', '2019-04-18 12:13:05', '2019-04-19 14:56:15', 0, 100, 'disable', 0, 0, 0, 0, 0, 'aaa', '', ''),
(25, 19, 'Long Test', 0, 0, 'psk2', '123456A@', '', '', 0, 'two', '2019-04-19 14:06:10', '2019-04-19 18:42:42', 0, 100, 'disable', 0, 0, 1, 0, 0, 'Long', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_exits`
--

CREATE TABLE `ap_profile_exits` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) DEFAULT NULL,
  `type` enum('bridge','tagged_bridge','nat','captive_portal','openvpn_bridge','lan','wan') DEFAULT NULL,
  `vlan` int(4) DEFAULT NULL,
  `auto_dynamic_client` tinyint(1) NOT NULL DEFAULT '0',
  `realm_list` varchar(128) NOT NULL DEFAULT '',
  `auto_login_page` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_detail_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `openvpn_server_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_profile_exits`
--

INSERT INTO `ap_profile_exits` (`id`, `ap_profile_id`, `type`, `vlan`, `auto_dynamic_client`, `realm_list`, `auto_login_page`, `dynamic_detail_id`, `created`, `modified`, `openvpn_server_id`) VALUES
(23, 14, 'captive_portal', NULL, 1, '35', 1, 3, '2016-05-10 05:23:30', '2017-02-24 21:13:54', NULL),
(40, 14, 'openvpn_bridge', NULL, 0, '', 0, NULL, '2016-09-18 05:00:15', '2016-09-18 05:00:15', 2),
(44, 15, 'nat', NULL, 0, '', 0, NULL, '2019-04-07 04:47:52', '2019-04-07 11:49:11', NULL),
(45, 15, 'tagged_bridge', 1, 0, '', 0, NULL, '2019-04-07 06:10:08', '2019-04-07 11:18:25', NULL),
(53, 15, 'lan', NULL, 0, '', 0, NULL, '2019-04-07 11:28:21', '2019-04-07 11:38:58', NULL),
(61, 17, 'bridge', NULL, 0, '', 0, NULL, '2019-04-17 14:02:18', '2019-04-17 14:02:18', NULL),
(63, 17, 'tagged_bridge', 2, 0, '', 0, NULL, '2019-04-18 11:49:35', '2019-04-18 14:23:49', NULL),
(64, 17, 'nat', NULL, 0, '', 0, NULL, '2019-04-18 12:13:12', '2019-04-18 14:23:23', NULL),
(65, 19, 'bridge', NULL, 0, '', 0, NULL, '2019-04-19 14:06:29', '2019-04-19 14:06:29', NULL),
(66, 17, 'captive_portal', NULL, 1, '42', 1, 6, '2019-04-19 14:47:10', '2019-04-19 14:47:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_exit_ap_profile_entries`
--

CREATE TABLE `ap_profile_exit_ap_profile_entries` (
  `id` int(11) NOT NULL,
  `ap_profile_exit_id` int(11) NOT NULL,
  `ap_profile_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_profile_exit_ap_profile_entries`
--

INSERT INTO `ap_profile_exit_ap_profile_entries` (`id`, `ap_profile_exit_id`, `ap_profile_entry_id`, `created`, `modified`) VALUES
(107, 61, 21, '2019-04-17 14:02:18', '2019-04-17 14:02:18'),
(113, 63, 23, '2019-04-18 14:23:49', '2019-04-18 14:23:49'),
(114, 65, 25, '2019-04-19 14:06:29', '2019-04-19 14:06:29'),
(115, 66, 22, '2019-04-19 14:47:10', '2019-04-19 14:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_exit_captive_portals`
--

CREATE TABLE `ap_profile_exit_captive_portals` (
  `id` int(11) NOT NULL,
  `ap_profile_exit_id` int(11) NOT NULL,
  `radius_1` varchar(128) NOT NULL,
  `radius_2` varchar(128) NOT NULL DEFAULT '',
  `radius_secret` varchar(128) NOT NULL,
  `radius_nasid` varchar(128) NOT NULL,
  `uam_url` varchar(255) NOT NULL,
  `uam_secret` varchar(255) NOT NULL,
  `walled_garden` varchar(255) NOT NULL,
  `swap_octets` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `mac_auth` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_enable` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_ip` varchar(128) NOT NULL DEFAULT '',
  `proxy_port` int(11) NOT NULL DEFAULT '3128',
  `proxy_auth_username` varchar(128) NOT NULL DEFAULT '',
  `proxy_auth_password` varchar(128) NOT NULL DEFAULT '',
  `coova_optional` varchar(255) NOT NULL DEFAULT '',
  `dns_manual` tinyint(1) NOT NULL DEFAULT '0',
  `dns1` varchar(128) NOT NULL DEFAULT '',
  `dns2` varchar(128) NOT NULL DEFAULT '',
  `uamanydns` tinyint(1) NOT NULL DEFAULT '0',
  `dnsparanoia` tinyint(1) NOT NULL DEFAULT '0',
  `dnsdesk` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_profile_exit_captive_portals`
--

INSERT INTO `ap_profile_exit_captive_portals` (`id`, `ap_profile_exit_id`, `radius_1`, `radius_2`, `radius_secret`, `radius_nasid`, `uam_url`, `uam_secret`, `walled_garden`, `swap_octets`, `created`, `modified`, `mac_auth`, `proxy_enable`, `proxy_ip`, `proxy_port`, `proxy_auth_username`, `proxy_auth_password`, `coova_optional`, `dns_manual`, `dns1`, `dns2`, `uamanydns`, `dnsparanoia`, `dnsdesk`) VALUES
(1, 66, '198.27.111.78', '', 'testing123', '', 'http://198.27.111.78/cake3/rd_cake/dynamic-details/chilli-browser-detect/', 'greatsecret', '', 0, '2019-04-19 14:47:10', '2019-04-19 14:47:10', 1, 0, '', 3128, '', '', 'ssid=radiusdesk', 1, '8.8.8.8', '8.8.4.4', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_notes`
--

CREATE TABLE `ap_profile_notes` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_settings`
--

CREATE TABLE `ap_profile_settings` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `heartbeat_interval` int(5) NOT NULL DEFAULT '60',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `password_hash` varchar(100) NOT NULL DEFAULT '',
  `tz_name` varchar(128) NOT NULL DEFAULT 'America/New York',
  `tz_value` varchar(128) NOT NULL DEFAULT 'EST5EDT,M3.2.0,M11.1.0',
  `country` varchar(5) NOT NULL DEFAULT 'US',
  `gw_dhcp_timeout` int(5) NOT NULL DEFAULT '120',
  `gw_use_previous` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot_time` int(5) NOT NULL DEFAULT '600',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_profile_specifics`
--

CREATE TABLE `ap_profile_specifics` (
  `id` int(11) NOT NULL,
  `ap_profile_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_stations`
--

CREATE TABLE `ap_stations` (
  `id` int(11) NOT NULL,
  `ap_id` int(11) DEFAULT NULL,
  `ap_profile_entry_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_systems`
--

CREATE TABLE `ap_systems` (
  `id` int(11) NOT NULL,
  `ap_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ap_wifi_settings`
--

CREATE TABLE `ap_wifi_settings` (
  `id` int(11) NOT NULL,
  `ap_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ap_wifi_settings`
--

INSERT INTO `ap_wifi_settings` (`id`, `ap_id`, `name`, `value`, `created`, `modified`) VALUES
(1462, 27, 'radio0_band', '24', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1463, 27, 'radio0_channel_two', '6', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1464, 27, 'radio0_htmode', 'HT20', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1465, 27, 'radio0_disable_b', 'radio0_disable_b', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1466, 27, 'radio0_diversity', 'radio0_diversity', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1467, 27, 'radio0_ldpc', 'radio0_ldpc', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1468, 27, 'radio0_txpower', '18', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1469, 27, 'radio0_beacon_int', '100', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1470, 27, 'radio0_distance', '300', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1471, 27, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1472, 27, 'radio0_ht_capab', 'RX-STBC1', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1473, 27, 'radio0_ht_capab', 'TX-STBC', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1474, 27, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1475, 27, 'radio0_disabled', '0', '2019-04-18 10:55:19', '2019-04-18 10:55:19'),
(1489, 29, 'radio0_band', '24', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1490, 29, 'radio0_channel_two', '6', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1491, 29, 'radio0_htmode', 'HT20', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1492, 29, 'radio0_disable_b', 'radio0_disable_b', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1493, 29, 'radio0_diversity', 'radio0_diversity', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1494, 29, 'radio0_ldpc', 'radio0_ldpc', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1495, 29, 'radio0_txpower', '19', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1496, 29, 'radio0_beacon_int', '100', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1497, 29, 'radio0_distance', '300', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1498, 29, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1499, 29, 'radio0_ht_capab', 'RX-STBC1', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1500, 29, 'radio0_ht_capab', 'TX-STBC', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1501, 29, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1502, 29, 'radio0_disabled', '0', '2019-04-18 15:59:30', '2019-04-18 15:59:30'),
(1503, 28, 'radio0_band', '24', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1504, 28, 'radio0_channel_two', '6', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1505, 28, 'radio0_htmode', 'HT20', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1506, 28, 'radio0_disable_b', 'radio0_disable_b', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1507, 28, 'radio0_diversity', 'radio0_diversity', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1508, 28, 'radio0_txpower', '35', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1509, 28, 'radio0_beacon_int', '100', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1510, 28, 'radio0_distance', '300', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1511, 28, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1512, 28, 'radio0_ht_capab', 'RX-STBC1', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1513, 28, 'radio0_ht_capab', 'TX-STBC', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1514, 28, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1515, 28, 'radio0_disabled', '0', '2019-04-18 16:20:16', '2019-04-18 16:20:16'),
(1586, 33, 'radio0_band', '24', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1587, 33, 'radio0_channel_two', '6', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1588, 33, 'radio0_htmode', 'HT20', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1589, 33, 'radio0_disable_b', 'radio0_disable_b', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1590, 33, 'radio0_diversity', 'radio0_diversity', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1591, 33, 'radio0_ldpc', 'radio0_ldpc', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1592, 33, 'radio0_txpower', '19', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1593, 33, 'radio0_beacon_int', '100', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1594, 33, 'radio0_distance', '300', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1595, 33, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1596, 33, 'radio0_ht_capab', 'RX-STBC1', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1597, 33, 'radio0_ht_capab', 'TX-STBC', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1598, 33, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1599, 33, 'radio0_disabled', '0', '2019-04-19 14:11:28', '2019-04-19 14:11:28'),
(1656, 31, 'radio0_band', '24', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1657, 31, 'radio0_channel_two', '3', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1658, 31, 'radio0_htmode', 'HT20', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1659, 31, 'radio0_disable_b', 'radio0_disable_b', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1660, 31, 'radio0_diversity', 'radio0_diversity', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1661, 31, 'radio0_ldpc', 'radio0_ldpc', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1662, 31, 'radio0_txpower', '10', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1663, 31, 'radio0_beacon_int', '100', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1664, 31, 'radio0_distance', '300', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1665, 31, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1666, 31, 'radio0_ht_capab', 'RX-STBC1', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1667, 31, 'radio0_ht_capab', 'TX-STBC', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1668, 31, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1669, 31, 'radio0_disabled', '0', '2019-04-19 17:40:07', '2019-04-19 17:40:07'),
(1670, 34, 'radio0_band', '24', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1671, 34, 'radio0_channel_two', '8', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1672, 34, 'radio0_htmode', 'HT20', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1673, 34, 'radio0_disable_b', 'radio0_disable_b', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1674, 34, 'radio0_diversity', 'radio0_diversity', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1675, 34, 'radio0_ldpc', 'radio0_ldpc', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1676, 34, 'radio0_txpower', '10', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1677, 34, 'radio0_beacon_int', '100', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1678, 34, 'radio0_distance', '300', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1679, 34, 'radio0_ht_capab', 'SHORT-GI-40', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1680, 34, 'radio0_ht_capab', 'RX-STBC1', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1681, 34, 'radio0_ht_capab', 'TX-STBC', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1682, 34, 'radio0_ht_capab', 'DSSS_CCK-40', '2019-04-19 17:40:22', '2019-04-19 17:40:22'),
(1683, 34, 'radio0_disabled', '0', '2019-04-19 17:40:22', '2019-04-19 17:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(3115, NULL, 'Group', 8, NULL, 1, 4),
(3116, NULL, 'Group', 9, NULL, 5, 56),
(3117, NULL, 'Group', 10, NULL, 57, 232),
(3118, 3115, 'User', 44, NULL, 2, 3),
(3268, 3116, 'User', 182, NULL, 14, 15),
(3269, 3116, 'User', 183, NULL, 34, 35),
(3270, 3116, 'User', 184, NULL, 36, 37),
(3272, 3116, 'User', 186, NULL, 38, 39),
(3273, 3116, 'User', 187, NULL, 40, 41),
(3274, 3116, 'User', 188, NULL, 42, 43),
(3277, 3116, 'User', 191, NULL, 44, 45),
(3278, 3116, 'User', 192, NULL, 46, 47),
(3279, 3116, 'User', 193, NULL, 48, 49),
(3280, 3116, 'User', 194, NULL, 50, 51),
(3281, 3116, 'User', 195, NULL, 52, 53),
(3282, 3116, 'User', 196, NULL, 54, 55);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(16, 3116, 44, '1', '1', '1', '1'),
(17, 3116, 46, '1', '1', '1', '1'),
(18, 3116, 59, '1', '1', '1', '1'),
(19, 3116, 60, '1', '1', '1', '1'),
(20, 3116, 62, '1', '1', '1', '1'),
(21, 3116, 42, '-1', '-1', '-1', '-1'),
(22, 3116, 61, '1', '1', '1', '1'),
(23, 3116, 63, '-1', '-1', '-1', '-1'),
(24, 3116, 64, '1', '1', '1', '1'),
(25, 3116, 65, '1', '1', '1', '1'),
(61, 3116, 68, '1', '1', '1', '1'),
(62, 3116, 69, '1', '1', '1', '1'),
(63, 3116, 70, '1', '1', '1', '1'),
(64, 3116, 71, '1', '1', '1', '1'),
(75, 3116, 103, '1', '1', '1', '1'),
(76, 3116, 104, '1', '1', '1', '1'),
(77, 3116, 105, '1', '1', '1', '1'),
(78, 3116, 106, '1', '1', '1', '1'),
(79, 3116, 108, '1', '1', '1', '1'),
(80, 3116, 109, '1', '1', '1', '1'),
(81, 3116, 110, '1', '1', '1', '1'),
(82, 3116, 111, '1', '1', '1', '1'),
(83, 3116, 112, '1', '1', '1', '1'),
(86, 3116, 117, '1', '1', '1', '1'),
(87, 3116, 116, '1', '1', '1', '1'),
(88, 3116, 115, '1', '1', '1', '1'),
(89, 3116, 114, '1', '1', '1', '1'),
(90, 3116, 113, '1', '1', '1', '1'),
(91, 3116, 118, '1', '1', '1', '1'),
(92, 3116, 119, '1', '1', '1', '1'),
(93, 3116, 120, '1', '1', '1', '1'),
(94, 3116, 121, '1', '1', '1', '1'),
(95, 3116, 122, '1', '1', '1', '1'),
(96, 3116, 123, '1', '1', '1', '1'),
(97, 3116, 124, '1', '1', '1', '1'),
(98, 3116, 125, '1', '1', '1', '1'),
(99, 3116, 126, '1', '1', '1', '1'),
(100, 3116, 127, '1', '1', '1', '1'),
(101, 3116, 128, '1', '1', '1', '1'),
(102, 3116, 129, '1', '1', '1', '1'),
(103, 3116, 130, '1', '1', '1', '1'),
(108, 3116, 133, '1', '1', '1', '1'),
(109, 3116, 134, '1', '1', '1', '1'),
(112, 3116, 138, '1', '1', '1', '1'),
(113, 3116, 149, '1', '1', '1', '1'),
(114, 3116, 150, '1', '1', '1', '1'),
(115, 3116, 152, '1', '1', '1', '1'),
(116, 3255, 46, '1', '1', '1', '1'),
(117, 3255, 138, '1', '1', '1', '1'),
(118, 3255, 44, '1', '1', '1', '1'),
(119, 3254, 46, '1', '1', '1', '1'),
(120, 3116, 153, '1', '1', '1', '1'),
(121, 3116, 154, '1', '1', '1', '1'),
(122, 3254, 155, '1', '1', '1', '1'),
(123, 3116, 163, '1', '1', '1', '1'),
(124, 3116, 162, '1', '1', '1', '1'),
(125, 3116, 161, '1', '1', '1', '1'),
(126, 3116, 160, '1', '1', '1', '1'),
(127, 3116, 159, '1', '1', '1', '1'),
(128, 3116, 158, '1', '1', '1', '1'),
(129, 3116, 157, '1', '1', '1', '1'),
(130, 3116, 156, '1', '1', '1', '1'),
(131, 3116, 164, '1', '1', '1', '1'),
(132, 3116, 165, '1', '1', '1', '1'),
(133, 3255, 32, '1', '1', '-1', '-1'),
(134, 3255, 148, '-1', '-1', '-1', '-1'),
(135, 3255, 146, '-1', '-1', '-1', '-1'),
(136, 3254, 148, '1', '1', '1', '1'),
(137, 3254, 146, '1', '1', '1', '1'),
(138, 3116, 167, '1', '1', '1', '1'),
(139, 3116, 168, '1', '1', '1', '1'),
(140, 3116, 175, '1', '1', '1', '1'),
(141, 3116, 174, '1', '1', '1', '1'),
(142, 3116, 173, '1', '1', '1', '1'),
(144, 3116, 170, '1', '1', '1', '1'),
(145, 3116, 169, '1', '1', '1', '1'),
(146, 3116, 171, '1', '1', '1', '1'),
(147, 3116, 181, '1', '1', '1', '1'),
(148, 3116, 180, '1', '1', '1', '1'),
(149, 3116, 179, '1', '1', '1', '1'),
(150, 3116, 178, '1', '1', '1', '1'),
(151, 3116, 177, '1', '1', '1', '1'),
(152, 3116, 182, '1', '1', '1', '1'),
(153, 3116, 184, '1', '1', '1', '1'),
(154, 3116, 185, '1', '1', '1', '1'),
(155, 3116, 186, '1', '1', '1', '1'),
(156, 3116, 187, '1', '1', '1', '1'),
(157, 3116, 188, '1', '1', '1', '1'),
(158, 3116, 189, '1', '1', '1', '1'),
(159, 3116, 190, '1', '1', '1', '1'),
(160, 3116, 191, '1', '1', '1', '1'),
(161, 3116, 192, '1', '1', '1', '1'),
(162, 3116, 193, '1', '1', '1', '1'),
(163, 3116, 194, '1', '1', '1', '1'),
(164, 3116, 195, '1', '1', '1', '1'),
(165, 3116, 197, '1', '1', '1', '1'),
(166, 3116, 196, '1', '1', '1', '1'),
(167, 3116, 206, '1', '1', '1', '1'),
(168, 3116, 205, '1', '1', '1', '1'),
(169, 3116, 204, '1', '1', '1', '1'),
(170, 3116, 203, '1', '1', '1', '1'),
(171, 3116, 202, '1', '1', '1', '1'),
(172, 3116, 201, '1', '1', '1', '1'),
(173, 3116, 200, '1', '1', '1', '1'),
(174, 3116, 199, '1', '1', '1', '1'),
(175, 3116, 198, '1', '1', '1', '1'),
(176, 3116, 207, '1', '1', '1', '1'),
(177, 3116, 208, '1', '1', '1', '1'),
(178, 3255, 155, '1', '1', '1', '1'),
(179, 3254, 195, '1', '1', '1', '1'),
(180, 3116, 210, '1', '1', '1', '1'),
(181, 3116, 211, '1', '1', '1', '1'),
(183, 3116, 213, '1', '1', '1', '1'),
(184, 3116, 221, '1', '1', '1', '1'),
(185, 3116, 223, '1', '1', '1', '1'),
(186, 3116, 241, '1', '1', '1', '1'),
(187, 3116, 240, '1', '1', '1', '1'),
(188, 3116, 239, '1', '1', '1', '1'),
(189, 3116, 238, '1', '1', '1', '1'),
(190, 3116, 237, '1', '1', '1', '1'),
(191, 3116, 236, '1', '1', '1', '1'),
(192, 3116, 235, '1', '1', '1', '1'),
(193, 3116, 234, '1', '1', '1', '1'),
(194, 3116, 233, '1', '1', '1', '1'),
(195, 3116, 232, '1', '1', '1', '1'),
(196, 3116, 231, '1', '1', '1', '1'),
(197, 3116, 230, '1', '1', '1', '1'),
(198, 3116, 229, '1', '1', '1', '1'),
(199, 3116, 228, '1', '1', '1', '1'),
(200, 3116, 227, '1', '1', '1', '1'),
(201, 3116, 226, '1', '1', '1', '1'),
(202, 3116, 225, '1', '1', '1', '1'),
(203, 3116, 224, '1', '1', '1', '1'),
(204, 3116, 243, '1', '1', '1', '1'),
(205, 3268, 245, '-1', '-1', '-1', '-1'),
(206, 3116, 248, '1', '1', '1', '1'),
(207, 3116, 247, '1', '1', '1', '1'),
(208, 3116, 246, '1', '1', '1', '1'),
(209, 3116, 215, '1', '1', '1', '1'),
(210, 3116, 214, '1', '1', '1', '1'),
(211, 3116, 249, '1', '1', '1', '1'),
(212, 3116, 250, '1', '1', '1', '1'),
(215, 3116, 254, '1', '1', '1', '1'),
(216, 3116, 253, '1', '1', '1', '1'),
(217, 3116, 259, '1', '1', '1', '1'),
(218, 3116, 260, '1', '1', '1', '1'),
(219, 3116, 261, '1', '1', '1', '1'),
(220, 3116, 263, '1', '1', '1', '1'),
(221, 3116, 262, '1', '1', '1', '1'),
(222, 3116, 264, '1', '1', '1', '1'),
(223, 3116, 265, '1', '1', '1', '1'),
(224, 3116, 268, '1', '1', '1', '1'),
(225, 3116, 269, '1', '1', '1', '1'),
(226, 3116, 272, '1', '1', '1', '1'),
(227, 3116, 271, '1', '1', '1', '1'),
(229, 3116, 276, '1', '1', '1', '1'),
(230, 3116, 297, '1', '1', '1', '1'),
(231, 3116, 296, '1', '1', '1', '1'),
(232, 3116, 295, '1', '1', '1', '1'),
(233, 3116, 294, '1', '1', '1', '1'),
(234, 3116, 293, '1', '1', '1', '1'),
(235, 3116, 292, '1', '1', '1', '1'),
(236, 3116, 291, '1', '1', '1', '1'),
(237, 3116, 290, '1', '1', '1', '1'),
(238, 3116, 289, '1', '1', '1', '1'),
(239, 3116, 288, '1', '1', '1', '1'),
(240, 3116, 287, '1', '1', '1', '1'),
(241, 3116, 286, '1', '1', '1', '1'),
(242, 3116, 285, '1', '1', '1', '1'),
(243, 3116, 284, '1', '1', '1', '1'),
(244, 3116, 283, '1', '1', '1', '1'),
(245, 3116, 282, '1', '1', '1', '1'),
(246, 3116, 281, '1', '1', '1', '1'),
(247, 3116, 280, '1', '1', '1', '1'),
(248, 3116, 279, '1', '1', '1', '1'),
(249, 3116, 278, '1', '1', '1', '1'),
(250, 3116, 277, '1', '1', '1', '1'),
(251, 3116, 299, '1', '1', '1', '1'),
(252, 3116, 300, '-1', '-1', '-1', '-1'),
(253, 3268, 300, '-1', '-1', '-1', '-1'),
(254, 3268, 42, '1', '1', '1', '1'),
(255, 3116, 301, '1', '1', '1', '1'),
(256, 3116, 303, '1', '1', '1', '1'),
(257, 3116, 304, '1', '1', '1', '1'),
(258, 3116, 305, '1', '1', '1', '1'),
(259, 3116, 309, '1', '1', '1', '1'),
(260, 3116, 310, '1', '1', '1', '1'),
(261, 3116, 312, '1', '1', '1', '1'),
(262, 3116, 313, '1', '1', '1', '1'),
(263, 3116, 314, '1', '1', '1', '1'),
(264, 3116, 315, '1', '1', '1', '1'),
(265, 3116, 316, '1', '1', '1', '1'),
(266, 3116, 317, '1', '1', '1', '1'),
(267, 3116, 318, '1', '1', '1', '1'),
(268, 3116, 319, '1', '1', '1', '1'),
(269, 3116, 320, '1', '1', '1', '1'),
(270, 3116, 321, '1', '1', '1', '1'),
(271, 3116, 322, '1', '1', '1', '1'),
(272, 3116, 323, '1', '1', '1', '1'),
(273, 3116, 324, '1', '1', '1', '1'),
(274, 3116, 325, '1', '1', '1', '1'),
(275, 3116, 326, '1', '1', '1', '1'),
(276, 3116, 327, '1', '1', '1', '1'),
(277, 3116, 328, '1', '1', '1', '1'),
(278, 3116, 329, '1', '1', '1', '1'),
(279, 3116, 330, '1', '1', '1', '1'),
(280, 3116, 332, '1', '1', '1', '1'),
(281, 3116, 333, '1', '1', '1', '1'),
(282, 3116, 334, '1', '1', '1', '1'),
(283, 3116, 335, '1', '1', '1', '1'),
(284, 3116, 336, '1', '1', '1', '1'),
(285, 3116, 337, '1', '1', '1', '1'),
(286, 3116, 338, '1', '1', '1', '1'),
(287, 3116, 339, '1', '1', '1', '1'),
(288, 3116, 340, '1', '1', '1', '1'),
(289, 3116, 341, '1', '1', '1', '1'),
(290, 3116, 342, '1', '1', '1', '1'),
(291, 3116, 343, '1', '1', '1', '1'),
(292, 3116, 344, '1', '1', '1', '1'),
(293, 3116, 345, '1', '1', '1', '1'),
(294, 3116, 347, '1', '1', '1', '1'),
(295, 3116, 348, '1', '1', '1', '1'),
(296, 3116, 349, '1', '1', '1', '1'),
(297, 3116, 355, '1', '1', '1', '1'),
(298, 3116, 354, '1', '1', '1', '1'),
(299, 3116, 353, '1', '1', '1', '1'),
(300, 3116, 352, '1', '1', '1', '1'),
(301, 3116, 351, '1', '1', '1', '1'),
(302, 3116, 357, '1', '1', '1', '1'),
(303, 3116, 358, '1', '1', '1', '1'),
(304, 3116, 359, '1', '1', '1', '1'),
(305, 3116, 362, '1', '1', '1', '1'),
(306, 3116, 360, '1', '1', '1', '1'),
(308, 3268, 44, '1', '1', '1', '1'),
(309, 3268, 43, '1', '1', '1', '1'),
(310, 3268, 149, '1', '1', '1', '1'),
(311, 3268, 150, '1', '1', '1', '1'),
(312, 3268, 156, '1', '1', '1', '1'),
(313, 3268, 63, '-1', '-1', '-1', '-1'),
(314, 3268, 64, '1', '1', '1', '1'),
(316, 3268, 46, '1', '1', '1', '1'),
(317, 3116, 384, '1', '1', '1', '1'),
(318, 3116, 383, '1', '1', '1', '1'),
(319, 3116, 382, '1', '1', '1', '1'),
(320, 3116, 379, '1', '1', '1', '1'),
(321, 3116, 380, '1', '1', '1', '1'),
(322, 3116, 364, '1', '1', '1', '1'),
(323, 3116, 365, '1', '1', '1', '1'),
(324, 3116, 366, '1', '1', '1', '1'),
(325, 3116, 367, '1', '1', '1', '1'),
(326, 3116, 368, '1', '1', '1', '1'),
(327, 3116, 369, '1', '1', '1', '1'),
(328, 3116, 370, '1', '1', '1', '1'),
(329, 3116, 371, '1', '1', '1', '1'),
(330, 3116, 372, '1', '1', '1', '1'),
(331, 3116, 373, '1', '1', '1', '1'),
(332, 3116, 374, '1', '1', '1', '1'),
(333, 3116, 375, '1', '1', '1', '1'),
(334, 3116, 376, '1', '1', '1', '1'),
(335, 3116, 377, '1', '1', '1', '1'),
(336, 3116, 386, '1', '1', '1', '1'),
(337, 3116, 387, '1', '1', '1', '1'),
(338, 3116, 388, '1', '1', '1', '1'),
(339, 3116, 389, '1', '1', '1', '1'),
(340, 3116, 390, '1', '1', '1', '1'),
(341, 3116, 391, '1', '1', '1', '1'),
(342, 3116, 392, '1', '1', '1', '1'),
(343, 3116, 393, '1', '1', '1', '1'),
(344, 3116, 394, '1', '1', '1', '1'),
(345, 3116, 395, '1', '1', '1', '1'),
(346, 3116, 396, '1', '1', '1', '1'),
(347, 3116, 397, '1', '1', '1', '1'),
(348, 3116, 410, '1', '1', '1', '1'),
(349, 3116, 409, '1', '1', '1', '1'),
(350, 3116, 408, '1', '1', '1', '1'),
(351, 3116, 407, '1', '1', '1', '1'),
(352, 3116, 406, '1', '1', '1', '1'),
(353, 3116, 405, '1', '1', '1', '1'),
(354, 3116, 404, '1', '1', '1', '1'),
(355, 3116, 403, '1', '1', '1', '1'),
(356, 3116, 402, '1', '1', '1', '1'),
(357, 3116, 401, '1', '1', '1', '1'),
(358, 3116, 400, '1', '1', '1', '1'),
(359, 3116, 399, '1', '1', '1', '1'),
(360, 3116, 398, '1', '1', '1', '1'),
(361, 3116, 412, '1', '1', '1', '1'),
(362, 3116, 414, '1', '1', '1', '1'),
(363, 3116, 413, '1', '1', '1', '1'),
(364, 3284, 42, '1', '1', '1', '1'),
(365, 3284, 415, '1', '1', '1', '1'),
(366, 3285, 42, '1', '1', '1', '1'),
(367, 3285, 417, '1', '1', '1', '1'),
(378, 3280, 42, '1', '1', '1', '1'),
(379, 3280, 167, '1', '1', '1', '1'),
(380, 3280, 259, '1', '1', '1', '1'),
(381, 3280, 425, '1', '1', '1', '1'),
(386, 3292, 42, '1', '1', '1', '1'),
(387, 3292, 167, '-1', '-1', '-1', '-1'),
(388, 3292, 259, '-1', '-1', '-1', '-1'),
(389, 3292, 429, '1', '1', '1', '1'),
(390, 3283, 42, '1', '1', '1', '1'),
(391, 3283, 167, '-1', '-1', '-1', '-1'),
(392, 3283, 259, '-1', '-1', '-1', '-1'),
(393, 3283, 431, '1', '1', '1', '1'),
(398, 3116, 436, '1', '1', '1', '1'),
(399, 3116, 435, '1', '1', '1', '1'),
(400, 3116, 437, '1', '1', '1', '1'),
(401, 3116, 439, '1', '1', '1', '1'),
(402, 3116, 440, '1', '1', '1', '1'),
(404, 3116, 443, '1', '1', '1', '1'),
(405, 3116, 444, '1', '1', '1', '1'),
(406, 3116, 445, '1', '1', '1', '1'),
(407, 3116, 446, '1', '1', '1', '1'),
(408, 3116, 447, '1', '1', '1', '1'),
(409, 3116, 449, '1', '1', '1', '1'),
(410, 3273, 44, '1', '1', '1', '1'),
(411, 3268, 412, '-1', '-1', '-1', '-1'),
(412, 3268, 386, '-1', '-1', '-1', '-1'),
(413, 3270, 412, '1', '1', '1', '1'),
(414, 3270, 312, '-1', '-1', '-1', '-1'),
(415, 3270, 313, '-1', '-1', '-1', '-1'),
(416, 3270, 314, '-1', '-1', '-1', '-1'),
(417, 3270, 315, '-1', '-1', '-1', '-1'),
(418, 3270, 316, '-1', '-1', '-1', '-1'),
(419, 3270, 317, '-1', '-1', '-1', '-1'),
(420, 3270, 318, '-1', '-1', '-1', '-1'),
(421, 3270, 319, '-1', '-1', '-1', '-1'),
(422, 3270, 320, '-1', '-1', '-1', '-1'),
(423, 3270, 321, '-1', '-1', '-1', '-1'),
(424, 3270, 322, '-1', '-1', '-1', '-1'),
(425, 3270, 323, '-1', '-1', '-1', '-1'),
(426, 3270, 324, '-1', '-1', '-1', '-1'),
(427, 3270, 325, '-1', '-1', '-1', '-1'),
(428, 3270, 327, '-1', '-1', '-1', '-1'),
(429, 3270, 326, '-1', '-1', '-1', '-1'),
(430, 3270, 328, '-1', '-1', '-1', '-1'),
(431, 3270, 329, '-1', '-1', '-1', '-1'),
(432, 3270, 345, '-1', '-1', '-1', '-1'),
(433, 3270, 344, '-1', '-1', '-1', '-1'),
(434, 3270, 414, '-1', '-1', '-1', '-1'),
(435, 3270, 343, '-1', '-1', '-1', '-1'),
(436, 3270, 342, '-1', '-1', '-1', '-1'),
(437, 3270, 341, '-1', '-1', '-1', '-1'),
(438, 3270, 340, '-1', '-1', '-1', '-1'),
(439, 3270, 339, '-1', '-1', '-1', '-1'),
(440, 3270, 338, '-1', '-1', '-1', '-1'),
(441, 3270, 337, '-1', '-1', '-1', '-1'),
(442, 3270, 336, '-1', '-1', '-1', '-1'),
(443, 3270, 335, '-1', '-1', '-1', '-1'),
(444, 3270, 334, '-1', '-1', '-1', '-1'),
(445, 3270, 333, '-1', '-1', '-1', '-1'),
(446, 3270, 332, '-1', '-1', '-1', '-1'),
(447, 3270, 330, '-1', '-1', '-1', '-1'),
(448, 3282, 362, '-1', '-1', '-1', '-1'),
(449, 3282, 364, '-1', '-1', '-1', '-1'),
(450, 3282, 379, '-1', '-1', '-1', '-1'),
(451, 3282, 439, '-1', '-1', '-1', '-1'),
(452, 3282, 347, '-1', '-1', '-1', '-1'),
(453, 3282, 312, '-1', '-1', '-1', '-1'),
(454, 3282, 268, '-1', '-1', '-1', '-1'),
(455, 3282, 259, '-1', '-1', '-1', '-1'),
(456, 3282, 133, '-1', '-1', '-1', '-1'),
(457, 3282, 108, '-1', '-1', '-1', '-1'),
(458, 3282, 59, '-1', '-1', '-1', '-1'),
(459, 3282, 46, '-1', '-1', '-1', '-1'),
(460, 3282, 44, '-1', '-1', '-1', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `checks`
--

CREATE TABLE `checks` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `checks`
--

INSERT INTO `checks` (`id`, `name`, `value`, `created`, `modified`) VALUES
(2, 'radius_restart', '1', '2013-09-01 20:41:20', '2016-03-09 10:00:06'),
(3, 'user_stats_end_time', '2019-04-19 02:00:00', '2019-01-18 02:30:01', '2019-04-19 02:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `icon_file` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_code`, `icon_file`, `created`, `modified`) VALUES
(4, 'United Kingdom', 'GB', '/cake2/rd_cake/webroot/img/flags/GB.png', '2012-10-05 04:55:12', '2012-11-23 21:15:38'),
(5, 'South Africa', 'ZA', '/cake2/rd_cake/webroot/img/flags/ZA.png', '2012-10-07 04:30:48', '2012-10-07 04:30:48'),
(18, 'Iran', 'IR', '/cake2/rd_cake/webroot/img/flags/IR.png', '2013-01-01 15:27:17', '2013-01-01 15:27:17'),
(19, 'Portugal', 'PT', '/cake2/rd_cake/webroot/img/flags/PT.png', '2014-02-11 14:33:37', '2014-02-11 14:33:37'),
(20, 'Spain', 'ES', '/cake2/rd_cake/webroot/img/flags/ES.png', '2014-02-20 22:23:55', '2014-02-20 22:23:55'),
(21, 'Nicaragua', 'NI', '/cake2/rd_cake/webroot/img/flags/NI.png', '2014-02-21 15:20:32', '2014-02-21 15:20:32'),
(22, 'Russia', 'RU', '/cake2/rd_cake/webroot/img/flags/RU.png', '2014-02-24 09:20:42', '2014-02-24 09:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  `time_cap_type` enum('hard','soft') DEFAULT 'soft',
  `data_cap_type` enum('hard','soft') DEFAULT 'soft',
  `realm` varchar(100) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile` varchar(100) NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `device_notes`
--

CREATE TABLE `device_notes` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device_notes`
--

INSERT INTO `device_notes` (`id`, `device_id`, `note_id`, `created`, `modified`) VALUES
(2, 1, 90, '2017-05-06 09:39:49', '2017-05-06 09:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_clients`
--

CREATE TABLE `dynamic_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `nasidentifier` varchar(128) NOT NULL DEFAULT '',
  `calledstationid` varchar(128) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_ip` varchar(128) NOT NULL DEFAULT '',
  `timezone` varchar(255) NOT NULL DEFAULT '',
  `monitor` enum('off','heartbeat','socket') DEFAULT 'off',
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynamic_clients`
--

INSERT INTO `dynamic_clients` (`id`, `name`, `nasidentifier`, `calledstationid`, `last_contact`, `last_contact_ip`, `timezone`, `monitor`, `session_auto_close`, `session_dead_time`, `available_to_siblings`, `active`, `on_public_maps`, `lat`, `lon`, `photo_file_name`, `user_id`, `created`, `modified`) VALUES
(4, 'media', 'media', 'media', '2019-04-19 17:34:13', '117.7.229.156', '24', 'off', 1, 300, 0, 1, 0, 0, 0, 'logo.jpg', 182, '2019-01-17 22:14:33', '2019-01-17 22:14:33'),
(5, 'EAP1300EF', '88DC966AFFEF', '88-DC-96-6A-FF-F0', '2019-01-24 11:40:27', '183.80.4.161', '24', 'off', 1, 300, 0, 1, 0, 0, 0, 'logo.jpg', 182, '2019-01-24 10:09:06', '2019-01-24 10:09:06'),
(6, 'ROAMING', 'radius.senao.com', '88-DC-96-6A-FF-F0:HOTSPOT', '2019-01-24 16:45:50', '183.80.4.161', '24', 'off', 1, 300, 0, 1, 0, 0, 0, 'logo.jpg', 182, '2019-01-24 14:04:36', '2019-01-24 14:04:36'),
(7, 'Next', '78:A3:51:37:3D:9C', 'B8:69:F4:89:1B:D9', NULL, '', '24', 'off', 1, 300, 1, 1, 0, 0, 0, 'logo.jpg', 194, '2019-04-18 15:44:22', '2019-04-18 15:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_client_notes`
--

CREATE TABLE `dynamic_client_notes` (
  `id` int(11) NOT NULL,
  `dynamic_client_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_client_realms`
--

CREATE TABLE `dynamic_client_realms` (
  `id` int(11) NOT NULL,
  `dynamic_client_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_client_states`
--

CREATE TABLE `dynamic_client_states` (
  `id` int(11) NOT NULL,
  `dynamic_client_id` char(36) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_details`
--

CREATE TABLE `dynamic_details` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `t_c_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_c_url` char(50) NOT NULL DEFAULT '',
  `redirect_check` tinyint(1) NOT NULL DEFAULT '0',
  `redirect_url` char(200) NOT NULL DEFAULT '',
  `slideshow_check` tinyint(1) NOT NULL DEFAULT '0',
  `seconds_per_slide` int(3) NOT NULL DEFAULT '30',
  `connect_check` tinyint(1) NOT NULL DEFAULT '0',
  `connect_username` char(50) NOT NULL DEFAULT '',
  `connect_suffix` char(50) NOT NULL DEFAULT 'nasid',
  `connect_delay` int(3) NOT NULL DEFAULT '0',
  `connect_only` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_login_check` tinyint(1) NOT NULL DEFAULT '1',
  `voucher_login_check` tinyint(1) NOT NULL DEFAULT '0',
  `auto_suffix_check` tinyint(1) NOT NULL DEFAULT '0',
  `auto_suffix` char(200) NOT NULL DEFAULT '',
  `usage_show_check` tinyint(1) NOT NULL DEFAULT '1',
  `usage_refresh_interval` int(3) NOT NULL DEFAULT '120',
  `theme` char(200) NOT NULL DEFAULT 'Default',
  `register_users` tinyint(1) NOT NULL DEFAULT '0',
  `lost_password` tinyint(1) NOT NULL DEFAULT '0',
  `social_enable` tinyint(1) NOT NULL DEFAULT '0',
  `social_temp_permanent_user_id` int(11) DEFAULT NULL,
  `coova_desktop_url` varchar(255) NOT NULL DEFAULT '',
  `coova_mobile_url` varchar(255) NOT NULL DEFAULT '',
  `mikrotik_desktop_url` varchar(255) NOT NULL DEFAULT '',
  `mikrotik_mobile_url` varchar(255) NOT NULL DEFAULT '',
  `default_language` varchar(255) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `reg_auto_suffix_check` tinyint(1) NOT NULL DEFAULT '0',
  `reg_auto_suffix` char(200) NOT NULL DEFAULT '',
  `reg_mac_check` tinyint(1) NOT NULL DEFAULT '0',
  `reg_auto_add` tinyint(1) NOT NULL DEFAULT '0',
  `reg_email` tinyint(1) NOT NULL DEFAULT '0',
  `slideshow_enforce_watching` tinyint(1) NOT NULL DEFAULT '1',
  `slideshow_enforce_seconds` int(4) NOT NULL DEFAULT '10',
  `available_languages` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynamic_details`
--

INSERT INTO `dynamic_details` (`id`, `name`, `available_to_siblings`, `icon_file_name`, `phone`, `fax`, `cell`, `email`, `url`, `street_no`, `street`, `town_suburb`, `city`, `country`, `lat`, `lon`, `user_id`, `t_c_check`, `t_c_url`, `redirect_check`, `redirect_url`, `slideshow_check`, `seconds_per_slide`, `connect_check`, `connect_username`, `connect_suffix`, `connect_delay`, `connect_only`, `created`, `modified`, `user_login_check`, `voucher_login_check`, `auto_suffix_check`, `auto_suffix`, `usage_show_check`, `usage_refresh_interval`, `theme`, `register_users`, `lost_password`, `social_enable`, `social_temp_permanent_user_id`, `coova_desktop_url`, `coova_mobile_url`, `mikrotik_desktop_url`, `mikrotik_mobile_url`, `default_language`, `realm_id`, `profile_id`, `reg_auto_suffix_check`, `reg_auto_suffix`, `reg_mac_check`, `reg_auto_add`, `reg_email`, `slideshow_enforce_watching`, `slideshow_enforce_seconds`, `available_languages`) VALUES
(3, 'SA Coast - Struisbaai', 1, '1484077003.png', '27128037032', '27128037033', '27128037034', 'bredasdorp@discovercapeagulhas.co.za', 'http://www.discovercapeagulhas.co.za/', '1', 'Longstreet', 'Bredasdorp', 'Bredasdorp', 'South Africa', 0, 0, 44, 1, 'http://www.radiusdesk.com', 0, 'http://www.radiusdesk.com', 1, 30, 1, 'click_to_connect', 'ssid', 0, 0, '2013-05-23 09:57:09', '2017-05-21 14:21:28', 1, 1, 1, 'mysite', 1, 120, 'Default', 0, 1, 0, 187, '/rd_login/cc/d/index.html', '/rd_login/cc/m/index.html', '/rd_login/mt/d/index.html', '/rd_login/mt/m/index.html', 'en_GB', NULL, NULL, 0, '', 0, 0, 0, 1, 30, 'en_GB,fr_FR,en_GB'),
(6, 'MEDIA', 1, '1554865824.png', '', '', '', '', '', '', '', '', '', '', 0, 0, 182, 0, '', 0, 'https://m.me/vnpictures', 1, 30, 1, 'click_to_connect', 'nasid', 3, 0, '2019-01-18 03:30:14', '2019-04-10 03:10:24', 1, 1, 0, 'media', 1, 240, 'Default', 0, 0, 0, 259, '', '', '', '', 'en_GB', 40, 19, 0, '', 0, 0, 0, 0, 10, 'en_GB,fr_FR,it_IT,es_ES,af_ZA,en_GB'),
(7, 'KIA', 0, '1551792105.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 193, 0, '', 0, '', 0, 30, 0, '', 'nasid', 0, 0, '2019-03-02 03:07:32', '2019-03-05 13:21:45', 1, 0, 0, '', 1, 120, 'Default', 0, 0, 0, NULL, '', '', '', '', '', NULL, NULL, 0, '', 0, 0, 0, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_detail_notes`
--

CREATE TABLE `dynamic_detail_notes` (
  `id` int(11) NOT NULL,
  `dynamic_detail_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_detail_social_logins`
--

CREATE TABLE `dynamic_detail_social_logins` (
  `id` int(11) NOT NULL,
  `dynamic_detail_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `record_info` tinyint(1) NOT NULL DEFAULT '0',
  `special_key` varchar(100) NOT NULL DEFAULT '',
  `secret` varchar(100) NOT NULL DEFAULT '',
  `type` enum('voucher','user') DEFAULT 'voucher',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL,
  `dynamic_detail_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `dynamic_detail_id`, `name`, `content`, `created`, `modified`) VALUES
(7, 3, 'Welcome to Struisbaai', '<font color="0000FF"><font size="3">You are in a High Speed Internet Zone!<br></font></font><ul><li>Thanks to the vibrant community, you can now enjoy being connected 24/7 @ speeds of up to 10Mb/s</li><li>Ideal for watching HD movies over the Internet</li><li>Budget connectivity is also available <br></li></ul><p><br></p>', '2013-05-23 10:30:58', '2013-05-28 21:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pairs`
--

CREATE TABLE `dynamic_pairs` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1',
  `dynamic_detail_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynamic_pairs`
--

INSERT INTO `dynamic_pairs` (`id`, `name`, `value`, `priority`, `dynamic_detail_id`, `user_id`, `created`, `modified`) VALUES
(6, 'nasid', 'RADIUSdesk-1', 1, 3, NULL, '2013-08-21 19:49:38', '2019-01-24 04:07:45'),
(9, 'nasid', 'lion_cp1', 1, 3, NULL, '2014-08-11 12:36:28', '2014-08-11 12:36:28'),
(10, 'nasid', 'lion_cp2', 1, 3, NULL, '2014-08-11 12:36:40', '2014-08-11 12:36:40'),
(11, 'nasid', 'lion_cp3', 1, 3, NULL, '2014-08-11 12:36:54', '2014-08-11 12:36:54'),
(12, 'nasid', 'cheetah_cp1', 1, 3, NULL, '2014-08-11 12:37:15', '2014-08-11 12:37:15'),
(15, 'ssidId', '1', 1, 3, NULL, '2019-01-24 04:08:21', '2019-01-24 04:08:21'),
(17, 'quanngon', 'media', 1, 6, NULL, '2019-01-24 04:21:24', '2019-02-25 06:52:50'),
(19, 'called', '88:DC:96:6A:FF:EF', 2, 6, NULL, '2019-01-24 04:30:17', '2019-01-24 04:36:37'),
(20, 'ap_mac', '88:DC:96:6A:FF:EF', 1, 6, NULL, '2019-01-24 05:04:31', '2019-01-24 05:04:31'),
(21, 'ssid', 'wifimedia', 1, 6, NULL, '2019-01-24 06:01:33', '2019-01-24 06:02:41'),
(25, 'nasid', 'Hotel_California_AH_cp_23', 1, 3, NULL, '2019-02-10 23:34:42', '2019-02-10 23:34:42'),
(26, 'nasid', 'media', 1, 6, NULL, '2019-02-25 09:10:25', '2019-02-26 02:34:28'),
(27, 'nasid', 'Hotel_California_VS_cp_23', 1, 3, NULL, '2019-04-03 10:03:17', '2019-04-03 10:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_photos`
--

CREATE TABLE `dynamic_photos` (
  `id` int(11) NOT NULL,
  `dynamic_detail_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `fit` enum('stretch_to_fit','horizontal','vertical','original','dynamic') DEFAULT 'stretch_to_fit',
  `background_color` varchar(7) NOT NULL DEFAULT 'ffffff',
  `slide_duration` int(4) NOT NULL DEFAULT '10',
  `include_title` tinyint(1) NOT NULL DEFAULT '1',
  `include_description` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dynamic_photos`
--

INSERT INTO `dynamic_photos` (`id`, `dynamic_detail_id`, `title`, `description`, `url`, `file_name`, `created`, `modified`, `active`, `fit`, `background_color`, `slide_duration`, `include_title`, `include_description`) VALUES
(107, 3, 'Rocks rocks rocks', 'Nature\'s own obstacle course', '', '1369746199.jpg', '2013-05-28 15:03:19', '2017-02-15 10:08:58', 1, 'dynamic', '24ee0f', 10, 1, 1),
(108, 3, 'Sounds of the sea', 'Where land and water meet', '', '1369746423.jpg', '2013-05-28 15:07:03', '2017-02-13 11:53:17', 1, 'vertical', 'dde5d9', 3, 1, 1),
(109, 3, 'Fresh fish daily', 'The best yellowtail in South Africa', '', '1369745821.jpg', '2013-05-28 14:57:01', '2017-02-15 08:09:49', 1, 'horizontal', 'ffffff', 10, 0, 1),
(110, 3, 'Animals Welcome', 'Nice long beaches to go for a walk', 'http://radiusdesk.com', '1369745727.jpg', '2013-05-28 14:55:27', '2014-05-21 22:18:40', 1, 'stretch_to_fit', 'ffffff', 10, 1, 1),
(111, 3, 'Whiskey on the rocks?', '.... or your favourite softdrink', '', '1369745902.jpg', '2013-05-28 14:58:22', '2017-02-11 23:35:12', 1, 'vertical', 'cd92d6', 10, 1, 1),
(112, 3, 'Castles in the sand', 'Lots of sand for the kids to play in', '', '1369746009.jpg', '2013-05-28 15:00:09', '2013-05-28 15:00:30', 1, 'stretch_to_fit', 'ffffff', 10, 1, 1),
(113, 3, 'And a road of my own', 'With the city and the rat race behind me', '', '1369746348.jpg', '2013-05-28 15:05:48', '2017-02-11 23:33:48', 1, 'vertical', 'ffffff', 10, 1, 1),
(117, 6, '  ', '  ', '', '1547782273.gif', '2019-01-18 03:31:13', '2019-01-18 03:31:13', 1, 'stretch_to_fit', 'dddde5', 10, 1, 1),
(118, 7, 'quan tri', 'chucssfhsk', '', '1551792143.jpg', '2019-03-05 13:22:23', '2019-03-05 13:22:23', 1, 'stretch_to_fit', 'dddde5', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_messages`
--

CREATE TABLE `email_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(64) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_messages`
--

INSERT INTO `email_messages` (`id`, `name`, `title`, `message`, `created`, `modified`) VALUES
(3, 'April', 'Goed Self', 'Wasssssssaaaap!', '2016-03-14 05:43:51', '2016-03-14 05:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(8, 'Administrators', '2012-12-10 13:13:09', '2012-12-10 13:13:09'),
(9, 'Access Providers', '2012-12-10 13:13:19', '2012-12-10 13:13:19'),
(10, 'Permanent Users', '2012-12-10 13:13:28', '2012-12-10 13:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `iso_code` varchar(2) DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `rtl`, `created`, `modified`) VALUES
(4, 'English', 'en', 0, '2012-10-05 04:55:28', '2012-10-06 07:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `licensed_devices`
--

CREATE TABLE `licensed_devices` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `master_key` tinyint(1) NOT NULL DEFAULT '1',
  `provider_key` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mac_usages`
--

CREATE TABLE `mac_usages` (
  `id` int(10) NOT NULL,
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mac_usages`
--

INSERT INTO `mac_usages` (`id`, `mac`, `username`, `data_used`, `data_cap`, `time_used`, `time_cap`, `created`, `modified`) VALUES
(1, 'aa-aa-aa-aa-aa-aa', 'click_to_connect@Struisbaai', 20, 5000000, NULL, NULL, '2014-09-02 15:25:07', '2014-09-02 15:25:07'),
(2, '00-0C-29-6B-85-CF', 'dungtd', NULL, NULL, 3600, 3600, '2019-01-17 22:16:02', '2019-01-18 01:44:01'),
(3, '84-A1-34-C0-8F-3E', 'click_to_connect@media', NULL, NULL, 163, 3600, '2019-02-25 16:40:02', '2019-03-01 13:18:01'),
(4, '00-0C-29-6B-85-CF', 'click_to_connect', NULL, NULL, 18, 3600, '2019-02-25 16:42:01', '2019-02-26 09:45:01'),
(5, 'EC-1F-72-D6-4E-56', 'click_to_connect@media', NULL, NULL, 2348, 3600, '2019-02-25 17:13:01', '2019-02-26 17:08:01'),
(6, '00-0C-29-6B-85-CF', 'click_to_connect@media', NULL, NULL, 2688, 3600, '2019-02-25 17:22:01', '2019-02-25 17:55:02'),
(7, 'C8-F6-50-68-9C-A3', 'click_to_connect@media', NULL, NULL, 179, 3600, '2019-02-25 19:46:01', '2019-02-25 19:49:01'),
(8, '18-E2-9F-F7-9E-23', 'click_to_connect@media', NULL, NULL, 33, 3600, '2019-02-25 20:51:01', '2019-02-25 20:52:02'),
(9, 'D4-AE-05-8D-2F-7B', 'click_to_connect@media', NULL, NULL, 1810, 3600, '2019-02-26 08:52:02', '2019-02-26 13:43:01'),
(10, '4C-66-41-46-36-13', 'click_to_connect@media', NULL, NULL, 3600, 3600, '2019-02-26 08:55:01', '2019-03-01 09:48:01'),
(11, '84-A1-34-C0-8F-3E', 'click_to_connect', NULL, NULL, 299, 3600, '2019-02-26 09:41:01', '2019-02-26 09:46:01'),
(12, '6C-96-CF-B4-60-5A', 'click_to_connect@media', NULL, NULL, 308, 3600, '2019-03-01 09:54:01', '2019-03-01 10:12:02'),
(13, '44-6D-57-B4-16-77', 'click_to_connect@media', NULL, NULL, 3600, 3600, '2019-03-01 14:12:02', '2019-03-01 15:12:01'),
(14, 'E0-C7-67-0B-52-5F', 'click_to_connect@media', NULL, NULL, 129, 3600, '2019-03-03 14:31:01', '2019-03-03 14:34:02'),
(15, '84-A1-34-C0-8F-3E', 'dungtd', NULL, NULL, 1258, 3600, '2019-03-15 17:17:01', '2019-03-15 17:35:01'),
(16, '18-F0-E4-EB-C4-C3', 'dungtd', NULL, NULL, 3612, 3600, '2019-03-15 17:22:01', '2019-03-16 09:39:02'),
(17, 'D8-CF-9C-11-7B-8F', 'dungtd', NULL, NULL, 362, 3600, '2019-03-15 17:38:01', '2019-03-16 09:15:01'),
(18, 'D4-AE-05-8D-2F-7B', 'dungtd', NULL, NULL, 53, 3600, '2019-03-16 09:40:01', '2019-03-16 09:41:01'),
(19, '00-0C-29-6B-85-CF', '000C296B85CF', NULL, NULL, 272, 3600, '2019-04-12 17:20:02', '2019-04-12 17:20:02'),
(20, '00-0C-29-6B-85-CF', 'linh', NULL, NULL, 82, 3600, '2019-04-13 17:17:02', '2019-04-13 17:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `meshes`
--

CREATE TABLE `meshes` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ssid` varchar(32) NOT NULL,
  `bssid` varchar(32) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_entries`
--

CREATE TABLE `mesh_entries` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `isolate` tinyint(1) NOT NULL DEFAULT '0',
  `apply_to_all` tinyint(1) NOT NULL DEFAULT '0',
  `encryption` enum('none','wep','psk','psk2','wpa','wpa2') DEFAULT 'none',
  `key` varchar(255) NOT NULL DEFAULT '',
  `auth_server` varchar(255) NOT NULL DEFAULT '',
  `auth_secret` varchar(255) NOT NULL DEFAULT '',
  `dynamic_vlan` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `chk_maxassoc` tinyint(1) NOT NULL DEFAULT '0',
  `maxassoc` int(6) DEFAULT '100',
  `macfilter` enum('disable','allow','deny') DEFAULT 'disable',
  `permanent_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_exits`
--

CREATE TABLE `mesh_exits` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `type` enum('bridge','tagged_bridge','nat','captive_portal','openvpn_bridge') DEFAULT NULL,
  `auto_detect` tinyint(1) NOT NULL DEFAULT '0',
  `vlan` int(4) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `openvpn_server_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_exit_captive_portals`
--

CREATE TABLE `mesh_exit_captive_portals` (
  `id` int(11) NOT NULL,
  `mesh_exit_id` int(11) NOT NULL,
  `radius_1` varchar(128) NOT NULL,
  `radius_2` varchar(128) NOT NULL DEFAULT '',
  `radius_secret` varchar(128) NOT NULL,
  `radius_nasid` varchar(128) NOT NULL,
  `uam_url` varchar(255) NOT NULL,
  `uam_secret` varchar(255) NOT NULL,
  `walled_garden` varchar(255) NOT NULL,
  `swap_octets` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `mac_auth` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_enable` tinyint(1) NOT NULL DEFAULT '0',
  `proxy_ip` varchar(128) NOT NULL DEFAULT '',
  `proxy_port` int(11) NOT NULL DEFAULT '3128',
  `proxy_auth_username` varchar(128) NOT NULL DEFAULT '',
  `proxy_auth_password` varchar(128) NOT NULL DEFAULT '',
  `coova_optional` varchar(255) NOT NULL DEFAULT '',
  `dns_manual` tinyint(1) NOT NULL DEFAULT '0',
  `dns1` varchar(128) NOT NULL DEFAULT '',
  `dns2` varchar(128) NOT NULL DEFAULT '',
  `uamanydns` tinyint(1) NOT NULL DEFAULT '0',
  `dnsparanoia` tinyint(1) NOT NULL DEFAULT '0',
  `dnsdesk` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_exit_mesh_entries`
--

CREATE TABLE `mesh_exit_mesh_entries` (
  `id` int(11) NOT NULL,
  `mesh_exit_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_notes`
--

CREATE TABLE `mesh_notes` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_settings`
--

CREATE TABLE `mesh_settings` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `aggregated_ogms` tinyint(1) NOT NULL DEFAULT '1',
  `ap_isolation` tinyint(1) NOT NULL DEFAULT '0',
  `bonding` tinyint(1) NOT NULL DEFAULT '0',
  `bridge_loop_avoidance` tinyint(1) NOT NULL DEFAULT '0',
  `fragmentation` tinyint(1) NOT NULL DEFAULT '1',
  `distributed_arp_table` tinyint(1) NOT NULL DEFAULT '1',
  `orig_interval` int(10) NOT NULL DEFAULT '1000',
  `gw_sel_class` int(10) NOT NULL DEFAULT '20',
  `connectivity` enum('IBSS','mesh_point') DEFAULT 'mesh_point',
  `encryption` tinyint(1) NOT NULL DEFAULT '0',
  `encryption_key` varchar(63) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mesh_specifics`
--

CREATE TABLE `mesh_specifics` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nas`
--

CREATE TABLE `nas` (
  `id` int(10) NOT NULL,
  `nasname` varchar(128) NOT NULL,
  `shortname` varchar(32) DEFAULT NULL,
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(30) DEFAULT 'other',
  `ports` int(5) DEFAULT NULL,
  `secret` varchar(60) NOT NULL DEFAULT 'secret',
  `server` varchar(64) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT 'RADIUS Client',
  `connection_type` enum('direct','openvpn','pptp','dynamic') DEFAULT 'direct',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `record_auth` tinyint(1) NOT NULL DEFAULT '0',
  `ignore_acct` tinyint(1) NOT NULL DEFAULT '0',
  `dynamic_attribute` varchar(50) NOT NULL DEFAULT '',
  `dynamic_value` varchar(50) NOT NULL DEFAULT '',
  `monitor` enum('off','ping','heartbeat') DEFAULT 'off',
  `ping_interval` int(5) NOT NULL DEFAULT '600',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `last_contact` datetime DEFAULT NULL,
  `session_auto_close` tinyint(1) NOT NULL DEFAULT '0',
  `session_dead_time` int(5) NOT NULL DEFAULT '3600',
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nas`
--

INSERT INTO `nas` (`id`, `nasname`, `shortname`, `nasidentifier`, `type`, `ports`, `secret`, `server`, `community`, `description`, `connection_type`, `available_to_siblings`, `record_auth`, `ignore_acct`, `dynamic_attribute`, `dynamic_value`, `monitor`, `ping_interval`, `heartbeat_dead_after`, `last_contact`, `session_auto_close`, `session_dead_time`, `on_public_maps`, `lat`, `lon`, `photo_file_name`, `user_id`, `created`, `modified`) VALUES
(59, '127.0.0.1', 'localhost', 'localhost', 'CoovaChilli', 3799, 'testing123', '', '', 'RADIUS Client', 'direct', 0, 0, 0, '', '', 'off', 600, 600, NULL, 1, 3600, 0, -25.7382573400939, 28.3021675344951, 'logo.jpg', 44, '2013-08-24 22:02:18', '2015-07-10 23:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `na_notes`
--

CREATE TABLE `na_notes` (
  `id` int(11) NOT NULL,
  `na_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na_realms`
--

CREATE TABLE `na_realms` (
  `id` int(11) NOT NULL,
  `na_id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na_realms`
--

INSERT INTO `na_realms` (`id`, `na_id`, `realm_id`, `created`, `modified`) VALUES
(1, 58, 33, '2013-08-24 19:11:47', '2013-08-24 19:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `na_states`
--

CREATE TABLE `na_states` (
  `id` int(11) NOT NULL,
  `na_id` char(36) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na_tags`
--

CREATE TABLE `na_tags` (
  `id` int(11) NOT NULL,
  `na_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_accountings`
--

CREATE TABLE `new_accountings` (
  `mac` varchar(17) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE `nodes` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mac` varchar(255) NOT NULL,
  `hardware` varchar(255) DEFAULT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `on_public_maps` tinyint(1) NOT NULL DEFAULT '0',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `photo_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `radio0_enable` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_mesh` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_entry` tinyint(1) NOT NULL DEFAULT '1',
  `radio0_band` tinyint(3) NOT NULL DEFAULT '24',
  `radio0_two_chan` int(4) NOT NULL DEFAULT '1',
  `radio0_five_chan` int(4) NOT NULL DEFAULT '44',
  `radio1_enable` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_mesh` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_entry` tinyint(1) NOT NULL DEFAULT '1',
  `radio1_band` tinyint(3) NOT NULL DEFAULT '5',
  `radio1_two_chan` int(4) NOT NULL DEFAULT '1',
  `radio1_five_chan` int(4) NOT NULL DEFAULT '44'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_actions`
--

CREATE TABLE `node_actions` (
  `id` int(10) NOT NULL,
  `node_id` int(10) NOT NULL,
  `action` enum('execute') DEFAULT 'execute',
  `command` varchar(500) DEFAULT '',
  `status` enum('awaiting','fetched','replied') DEFAULT 'awaiting',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_ibss_connections`
--

CREATE TABLE `node_ibss_connections` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `station_node_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_loads`
--

CREATE TABLE `node_loads` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `mem_total` int(11) DEFAULT NULL,
  `mem_free` int(11) DEFAULT NULL,
  `uptime` varchar(255) DEFAULT NULL,
  `system_time` varchar(255) NOT NULL,
  `load_1` float(2,2) NOT NULL,
  `load_2` float(2,2) NOT NULL,
  `load_3` float(2,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_mesh_entries`
--

CREATE TABLE `node_mesh_entries` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `mesh_entry_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_mesh_exits`
--

CREATE TABLE `node_mesh_exits` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `mesh_exit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_mp_settings`
--

CREATE TABLE `node_mp_settings` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_neighbors`
--

CREATE TABLE `node_neighbors` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `gateway` enum('yes','no') DEFAULT 'no',
  `neighbor_id` int(11) DEFAULT NULL,
  `metric` decimal(6,4) NOT NULL,
  `hwmode` char(5) DEFAULT '11g',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_settings`
--

CREATE TABLE `node_settings` (
  `id` int(11) NOT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `power` int(3) NOT NULL DEFAULT '100',
  `all_power` tinyint(1) NOT NULL DEFAULT '1',
  `two_chan` int(3) NOT NULL DEFAULT '6',
  `five_chan` int(3) NOT NULL DEFAULT '44',
  `heartbeat_interval` int(5) NOT NULL DEFAULT '60',
  `heartbeat_dead_after` int(5) NOT NULL DEFAULT '600',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `password_hash` varchar(100) NOT NULL DEFAULT '',
  `eth_br_chk` tinyint(1) NOT NULL DEFAULT '0',
  `eth_br_with` int(11) NOT NULL DEFAULT '0',
  `eth_br_for_all` tinyint(1) NOT NULL DEFAULT '1',
  `tz_name` varchar(128) NOT NULL DEFAULT 'America/New York',
  `tz_value` varchar(128) NOT NULL DEFAULT 'EST5EDT,M3.2.0,M11.1.0',
  `country` varchar(5) NOT NULL DEFAULT 'US',
  `gw_dhcp_timeout` int(5) NOT NULL DEFAULT '120',
  `gw_use_previous` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot` tinyint(1) NOT NULL DEFAULT '1',
  `gw_auto_reboot_time` int(5) NOT NULL DEFAULT '600',
  `client_key` varchar(255) NOT NULL DEFAULT 'radiusdesk'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_stations`
--

CREATE TABLE `node_stations` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `mesh_entry_id` int(11) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `mac` varchar(17) NOT NULL,
  `tx_bytes` bigint(20) NOT NULL,
  `rx_bytes` bigint(20) NOT NULL,
  `tx_packets` int(11) NOT NULL,
  `rx_packets` int(11) NOT NULL,
  `tx_bitrate` int(11) NOT NULL,
  `rx_bitrate` int(11) NOT NULL,
  `tx_extra_info` varchar(255) NOT NULL,
  `rx_extra_info` varchar(255) NOT NULL,
  `authenticated` enum('yes','no') DEFAULT 'no',
  `authorized` enum('yes','no') DEFAULT 'no',
  `tdls_peer` varchar(255) NOT NULL,
  `preamble` enum('long','short') DEFAULT 'long',
  `tx_failed` int(11) NOT NULL,
  `inactive_time` int(11) NOT NULL,
  `WMM_WME` enum('yes','no') DEFAULT 'no',
  `tx_retries` int(11) NOT NULL,
  `MFP` enum('yes','no') DEFAULT 'no',
  `signal` int(11) NOT NULL,
  `signal_avg` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_systems`
--

CREATE TABLE `node_systems` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `node_wifi_settings`
--

CREATE TABLE `node_wifi_settings` (
  `id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `note` text NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `note`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(76, 'Sample data for RADIUSdesk', 1, 44, '2013-05-25 12:38:42', '2013-05-25 12:38:42'),
(77, 'This is a note', 1, 182, '2014-01-07 22:12:23', '2014-01-07 22:12:23'),
(78, 'Up the price a bit', 1, 44, '2015-02-01 18:34:51', '2015-02-01 18:34:51'),
(87, 'Multi\nLine\nNote', 0, 44, '2017-01-02 06:17:25', '2017-01-02 06:17:25'),
(90, 'Device Note', 1, 44, '2017-05-06 09:39:49', '2017-05-06 09:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `openvpn_clients`
--

CREATE TABLE `openvpn_clients` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `subnet` int(3) DEFAULT NULL,
  `peer1` int(3) DEFAULT NULL,
  `peer2` int(3) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `openvpn_servers`
--

CREATE TABLE `openvpn_servers` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `local_remote` enum('local','remote') DEFAULT 'local',
  `protocol` enum('udp','tcp') DEFAULT 'udp',
  `ip_address` varchar(40) NOT NULL,
  `port` int(6) NOT NULL,
  `vpn_gateway_address` varchar(40) NOT NULL,
  `vpn_bridge_start_address` varchar(40) NOT NULL,
  `vpn_mask` varchar(40) NOT NULL,
  `config_preset` varchar(100) NOT NULL DEFAULT 'default',
  `ca_crt` text NOT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `openvpn_servers`
--

INSERT INTO `openvpn_servers` (`id`, `name`, `description`, `available_to_siblings`, `user_id`, `local_remote`, `protocol`, `ip_address`, `port`, `vpn_gateway_address`, `vpn_bridge_start_address`, `vpn_mask`, `config_preset`, `ca_crt`, `extra_name`, `extra_value`, `created`, `modified`) VALUES
(1, 'VN2', 'Tunnel to West Coast', 1, 44, 'local', 'udp', '10.245.69.255', 1194, '10.8.0.1', '10.8.0.129', '255.255.255.0', 'default', '-----BEGIN CERTIFICATE-----\nMIIE+jCCA+KgAwIBAgIJAIZVNkfIiREVMA0GCSqGSIb3DQEBCwUAMIGuMQswCQYD\nVQQGEwJaQTEQMA4GA1UECBMHR2F1dGVuZzERMA8GA1UEBxMITWV5ZXJ0b24xETAP\nBgNVBAoTCExpbm92YXRlMRUwEwYDVQQLEwxDb21wdXRlckxhYnMxFDASBgNVBAMT\nC0xpbm92YXRlIENBMREwDwYDVQQpEwhMaW5vdmF0ZTEnMCUGCSqGSIb3DQEJARYY\nZGlya3ZhbmRlcndhbHRAZ21haWwuY29tMB4XDTE2MDkxMjA4MTQwMVoXDTI2MDkx\nMDA4MTQwMVowga4xCzAJBgNVBAYTAlpBMRAwDgYDVQQIEwdHYXV0ZW5nMREwDwYD\nVQQHEwhNZXllcnRvbjERMA8GA1UEChMITGlub3ZhdGUxFTATBgNVBAsTDENvbXB1\ndGVyTGFiczEUMBIGA1UEAxMLTGlub3ZhdGUgQ0ExETAPBgNVBCkTCExpbm92YXRl\nMScwJQYJKoZIhvcNAQkBFhhkaXJrdmFuZGVyd2FsdEBnbWFpbC5jb20wggEiMA0G\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDDwCqsTqiQOWqC+nAw04GC4wDOvCWM\nMkzjGM1A7W/BJe3vt8gxFg7ffcXjJWrROQvJacv4vodNgL0lNrzltEyhTwkHhkqx\nCHQZMGPBclg0izP5Lz/6cyOd0zv5I9RQGDnBLQPq+baXVfBPudaFi8kBYPlRiFRY\nrDt2N76b13mqMHEdeANhDfwAl5T5ftmd2wKlfQo0wltFkDGmiiwStSdz5e3nDI6D\nyRuopS/hq2gGJWutlw9ucaDIYJf4X5OzvyRrEx9M5bj2MZf4QaDQphW9NMrO8TbN\n7mbh1bS0aJ9b/SSK4vegtqlGLpCx1SME00HuC1osiraHbIPZ0/8L9y4HAgMBAAGj\nggEXMIIBEzAdBgNVHQ4EFgQUYa19kSBWE/C1fEr2tI9j3Zq7238wgeMGA1UdIwSB\n2zCB2IAUYa19kSBWE/C1fEr2tI9j3Zq723+hgbSkgbEwga4xCzAJBgNVBAYTAlpB\nMRAwDgYDVQQIEwdHYXV0ZW5nMREwDwYDVQQHEwhNZXllcnRvbjERMA8GA1UEChMI\nTGlub3ZhdGUxFTATBgNVBAsTDENvbXB1dGVyTGFiczEUMBIGA1UEAxMLTGlub3Zh\ndGUgQ0ExETAPBgNVBCkTCExpbm92YXRlMScwJQYJKoZIhvcNAQkBFhhkaXJrdmFu\nZGVyd2FsdEBnbWFpbC5jb22CCQCGVTZHyIkRFTAMBgNVHRMEBTADAQH/MA0GCSqG\nSIb3DQEBCwUAA4IBAQCk3PW1kz26Qg1SkXYjK1plp3dBeQjZ2mkJ+3MZn5wau4+u\nEinJ8OxGdUoiQMliniecOhkuavibrz4vEnIGi0K5OGzA8msLLWb9glHDUSjRXwlV\nTWRgEtL8vmEjcz57vN556zwe/4rNOLLTPjcvexG41PuCw7OQGRV3+Gw2YGREvNn6\nKLjcEqBsT2ju4NJNRAyXu50t4Ugvvi7QJtL3YFniSE87ojsJ06heuDXM58LJf5jz\nPA8p+LCh6V9esHNa3AkHp0M+tHdmlrR0qtfVB8oBk8yuCJQGhlefC80RZFAnhEQN\nwuU0JY1bWFc579IdU/bBIWaxvy7ZGSXpKscbGCpu\n-----END CERTIFICATE-----\n', '', '', '2016-09-15 22:25:46', '2019-02-15 15:17:22'),
(2, 'VN1', 'Tunnel to East Coast', 1, 44, 'remote', 'udp', '45.118.145.52', 1194, '10.8.0.1', '10.8.0.129', '255.255.255.0', 'default', '-----BEGIN CERTIFICATE-----\nMIIE+jCCA+KgAwIBAgIJAIZVNkfIiREVMA0GCSqGSIb3DQEBCwUAMIGuMQswCQYD\nVQQGEwJaQTEQMA4GA1UECBMHR2F1dGVuZzERMA8GA1UEBxMITWV5ZXJ0b24xETAP\nBgNVBAoTCExpbm92YXRlMRUwEwYDVQQLEwxDb21wdXRlckxhYnMxFDASBgNVBAMT\nC0xpbm92YXRlIENBMREwDwYDVQQpEwhMaW5vdmF0ZTEnMCUGCSqGSIb3DQEJARYY\nZGlya3ZhbmRlcndhbHRAZ21haWwuY29tMB4XDTE2MDkxMjA4MTQwMVoXDTI2MDkx\nMDA4MTQwMVowga4xCzAJBgNVBAYTAlpBMRAwDgYDVQQIEwdHYXV0ZW5nMREwDwYD\nVQQHEwhNZXllcnRvbjERMA8GA1UEChMITGlub3ZhdGUxFTATBgNVBAsTDENvbXB1\ndGVyTGFiczEUMBIGA1UEAxMLTGlub3ZhdGUgQ0ExETAPBgNVBCkTCExpbm92YXRl\nMScwJQYJKoZIhvcNAQkBFhhkaXJrdmFuZGVyd2FsdEBnbWFpbC5jb20wggEiMA0G\nCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDDwCqsTqiQOWqC+nAw04GC4wDOvCWM\nMkzjGM1A7W/BJe3vt8gxFg7ffcXjJWrROQvJacv4vodNgL0lNrzltEyhTwkHhkqx\nCHQZMGPBclg0izP5Lz/6cyOd0zv5I9RQGDnBLQPq+baXVfBPudaFi8kBYPlRiFRY\nrDt2N76b13mqMHEdeANhDfwAl5T5ftmd2wKlfQo0wltFkDGmiiwStSdz5e3nDI6D\nyRuopS/hq2gGJWutlw9ucaDIYJf4X5OzvyRrEx9M5bj2MZf4QaDQphW9NMrO8TbN\n7mbh1bS0aJ9b/SSK4vegtqlGLpCx1SME00HuC1osiraHbIPZ0/8L9y4HAgMBAAGj\nggEXMIIBEzAdBgNVHQ4EFgQUYa19kSBWE/C1fEr2tI9j3Zq7238wgeMGA1UdIwSB\n2zCB2IAUYa19kSBWE/C1fEr2tI9j3Zq723+hgbSkgbEwga4xCzAJBgNVBAYTAlpB\nMRAwDgYDVQQIEwdHYXV0ZW5nMREwDwYDVQQHEwhNZXllcnRvbjERMA8GA1UEChMI\nTGlub3ZhdGUxFTATBgNVBAsTDENvbXB1dGVyTGFiczEUMBIGA1UEAxMLTGlub3Zh\ndGUgQ0ExETAPBgNVBCkTCExpbm92YXRlMScwJQYJKoZIhvcNAQkBFhhkaXJrdmFu\nZGVyd2FsdEBnbWFpbC5jb22CCQCGVTZHyIkRFTAMBgNVHRMEBTADAQH/MA0GCSqG\nSIb3DQEBCwUAA4IBAQCk3PW1kz26Qg1SkXYjK1plp3dBeQjZ2mkJ+3MZn5wau4+u\nEinJ8OxGdUoiQMliniecOhkuavibrz4vEnIGi0K5OGzA8msLLWb9glHDUSjRXwlV\nTWRgEtL8vmEjcz57vN556zwe/4rNOLLTPjcvexG41PuCw7OQGRV3+Gw2YGREvNn6\nKLjcEqBsT2ju4NJNRAyXu50t4Ugvvi7QJtL3YFniSE87ojsJ06heuDXM58LJf5jz\nPA8p+LCh6V9esHNa3AkHp0M+tHdmlrR0qtfVB8oBk8yuCJQGhlefC80RZFAnhEQN\nwuU0JY1bWFc579IdU/bBIWaxvy7ZGSXpKscbGCpu\n-----END CERTIFICATE-----\n', '', '', '2016-09-16 07:42:38', '2019-02-15 15:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `openvpn_server_clients`
--

CREATE TABLE `openvpn_server_clients` (
  `id` int(11) NOT NULL,
  `mesh_ap_profile` enum('mesh','ap_profile') DEFAULT 'mesh',
  `openvpn_server_id` int(11) DEFAULT NULL,
  `mesh_id` int(11) DEFAULT NULL,
  `mesh_exit_id` int(11) DEFAULT NULL,
  `ap_profile_id` int(11) DEFAULT NULL,
  `ap_profile_exit_id` int(11) DEFAULT NULL,
  `ap_id` int(11) DEFAULT NULL,
  `ip_address` varchar(40) NOT NULL,
  `last_contact_to_server` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permanent_users`
--

CREATE TABLE `permanent_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `auth_type` varchar(128) NOT NULL DEFAULT 'sql',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL,
  `time_cap_type` enum('hard','soft') DEFAULT 'soft',
  `data_cap_type` enum('hard','soft') DEFAULT 'soft',
  `realm` varchar(50) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile` varchar(50) NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `track_auth` tinyint(1) NOT NULL DEFAULT '0',
  `track_acct` tinyint(1) NOT NULL DEFAULT '1',
  `static_ip` varchar(50) NOT NULL DEFAULT '',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `country_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permanent_users`
--

INSERT INTO `permanent_users` (`id`, `username`, `password`, `token`, `name`, `surname`, `address`, `phone`, `email`, `auth_type`, `active`, `last_accept_time`, `last_reject_time`, `last_accept_nas`, `last_reject_nas`, `last_reject_message`, `perc_time_used`, `perc_data_used`, `data_used`, `data_cap`, `time_used`, `time_cap`, `time_cap_type`, `data_cap_type`, `realm`, `realm_id`, `profile`, `profile_id`, `from_date`, `to_date`, `track_auth`, `track_acct`, `static_ip`, `extra_name`, `extra_value`, `country_id`, `language_id`, `user_id`, `created`, `modified`) VALUES
(254, 'kien', '08f29653cc1e5f5cc84811cbbebbb28c395f054d', '5caffc26-7218-4845-8663-71e803662c24', '', '', '', '', '', 'sql', 1, '2019-04-12 09:46:16', '2019-04-03 12:23:34', '172.99.99.140', '113.22.208.71', 'RADIUS client not allowed. Contact server administrator', 72, NULL, NULL, NULL, 2594, 3600, 'hard', 'hard', 'WIFIMEDIA', 42, '1Hour', 23, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-02-18 04:47:57', '2019-04-12 09:47:02'),
(255, 'quan', '08f29653cc1e5f5cc84811cbbebbb28c395f054d', 'e1b0eea3-b3c7-403d-868d-8e5a8c77b0c0', '', '', '', '', '', 'sql', 1, '2019-02-26 09:45:45', '2019-02-18 15:33:00', '127.0.0.1', '113.22.208.231', 'Most likely PEAP failure. Run in debug', NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'WIFIMEDIA', 42, 'BW-5Mbs', 22, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-02-18 04:48:18', '2019-02-18 04:48:18'),
(256, 'tuan', '08f29653cc1e5f5cc84811cbbebbb28c395f054d', 'dcb30a33-8365-4943-960f-bee2b0165471', '', '', '', '', '', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'WIFIMEDIA', 42, 'BW-5Mbs', 22, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-02-18 04:48:33', '2019-02-18 04:48:33'),
(258, 'khanh', '2335f742b9c97449f1fe4c498796bde32bfadcdd', 'f7eb02b8-8471-4e90-9f7e-604c6c14116d', '', '', '', '', '', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'WIFIMEDIA', 42, 'BW-5Mbs', 22, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-02-18 04:49:08', '2019-04-09 15:40:22'),
(259, 'click_to_connect', '2d7b59408a4b5ce7c3362e55c55863d68ac3f396', 'a2bec517-4096-42da-bf74-fbbb03eee394', '', '', '', '', '', 'sql', 1, '2019-02-26 09:45:48', NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hard', 'soft', 'FREE', 40, '1 Hour click to connect', 19, NULL, NULL, 0, 1, '', '', '', 4, 4, 182, '2019-02-25 08:41:06', '2019-02-25 08:52:03'),
(262, 'click_to_connect@media', '5ff20e3d191056741fa62b6f44f1d145bfd613da', '7d700f90-9fda-41fa-adae-74393a38a73a', '', '', '', '', '', 'sql', 1, '2019-03-03 14:30:53', '2019-04-18 14:40:51', '58.187.221.48', '42.114.31.146', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 'hard', 'soft', 'FREE', 40, '1 Hour click to connect', 19, NULL, NULL, 0, 1, '', '', '', 4, 4, 182, '2019-02-25 09:30:54', '2019-04-13 16:15:22'),
(263, 'spmall9x@gmail.com', '08f29653cc1e5f5cc84811cbbebbb28c395f054d', 'f9726ab8-0f3b-4dc2-bb01-748c8d55a847', 'Khanh Linh', 'nh', '', '0965633390', 'spmall9x@gmail.com', 'sql', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'FREE', 40, '1 Hour click to connect', 19, NULL, NULL, 0, 1, '', 'mac', '84%3AA1%3A34%3AC0%3A8F%3A3E', 4, 4, 182, '2019-02-26 02:37:18', '2019-02-26 02:37:18'),
(269, '000C296B85CF', '08f29653cc1e5f5cc84811cbbebbb28c395f054d', '5cb067ba-44b0-415d-848a-e03d03662c24', '', '', '', '', '', 'sql', 1, '2019-04-12 17:23:18', NULL, '172.99.99.140', NULL, NULL, 0, 0, 0, 1000000000, 550, 86400, 'hard', 'hard', 'WIFIMEDIA', 42, '1G-1Day', 15, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-04-12 10:18:27', '2019-04-13 10:14:45'),
(271, 'vpn', '0ca5a8f7346856a8ef6ca12f91aa93304072293b', 'd31df875-da95-4526-abf2-97f39371aac1', '', '', '', '', '', 'sql', 1, '2019-04-18 21:43:42', '2019-04-17 16:18:32', '42.114.31.146', '172.99.99.140', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 'soft', 'soft', 'WIFIMEDIA', 42, 'BW-5Mbs', 22, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-04-13 16:17:09', '2019-04-13 16:17:09'),
(272, 'linh', 'eae5f602d0da313fb0bcd6ea0a6cd2353482002d', '5cb836b5-452c-4fdc-9aea-44b103662c24', '', '', '', '', '', 'sql', 1, '2019-04-18 15:34:19', '2019-04-17 16:19:58', '172.99.99.140', '172.99.99.140', 'N/A', 1, 0, 0, NULL, 6476, 604800, 'soft', 'hard', 'WIFIMEDIA', 42, '5c861625aeb2ff77d5ab50e5_user_guest', 34, NULL, NULL, 0, 1, '', '', '', 4, 4, 183, '2019-04-17 09:17:00', '2019-04-18 15:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_user_notes`
--

CREATE TABLE `permanent_user_notes` (
  `id` int(11) NOT NULL,
  `permanent_user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permanent_user_notifications`
--

CREATE TABLE `permanent_user_notifications` (
  `id` int(11) NOT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `method` enum('whatsapp','email','sms') DEFAULT 'email',
  `type` enum('daily','usage') DEFAULT 'daily',
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `start` int(3) DEFAULT '80',
  `increment` int(3) DEFAULT '10',
  `last_value` int(3) DEFAULT NULL,
  `last_notification` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permanent_user_notifications`
--

INSERT INTO `permanent_user_notifications` (`id`, `permanent_user_id`, `active`, `method`, `type`, `address_1`, `address_2`, `start`, `increment`, `last_value`, `last_notification`, `created`, `modified`) VALUES
(2, 187, 1, 'email', 'daily', 'dirkvanderwalt@gmail.com', '', 80, 10, NULL, NULL, '2015-07-19 19:35:19', '2015-07-20 09:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_user_settings`
--

CREATE TABLE `permanent_user_settings` (
  `id` int(11) NOT NULL,
  `permanent_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pptp_clients`
--

CREATE TABLE `pptp_clients` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `na_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(13, 'unc-1hour', 1, 44, '2016-06-27 09:35:56', '2016-06-27 09:35:56'),
(15, '1G-1Day', 1, 44, '2016-06-27 09:40:04', '2016-06-27 09:40:04'),
(17, '1G-1Day-BW-1Mbs', 1, 44, '2016-06-27 09:59:00', '2016-06-27 09:59:24'),
(18, '5M-every hour', 1, 44, '2016-06-27 10:01:02', '2016-06-27 10:01:02'),
(19, '1 Hour click to connect', 1, 44, '2016-06-27 13:13:59', '2016-06-27 13:13:59'),
(20, '500M click to connect', 1, 44, '2016-06-27 13:14:34', '2016-06-27 13:14:34'),
(22, 'BW-5Mbs', 1, 183, '2019-02-18 04:47:14', '2019-02-18 04:47:14'),
(23, '1Hour', 1, 183, '2019-04-11 16:42:17', '2019-04-11 16:42:17'),
(28, 'Nextify', 1, 183, '2019-04-17 08:59:52', '2019-04-17 08:59:52'),
(29, 'Next1', 0, 183, '2019-04-17 09:00:24', '2019-04-17 09:00:24'),
(30, 'Global', 1, 44, '2019-04-17 09:02:51', '2019-04-17 09:02:51'),
(31, 'BW512', 1, 183, '2019-04-17 09:25:43', '2019-04-17 09:25:43'),
(32, 'Next-XXXX', 1, 44, '2019-04-17 09:35:56', '2016-06-27 09:35:56'),
(33, 'VIP', 1, 194, '2019-04-17 12:05:14', '2019-04-17 12:05:14'),
(34, '5c861625aeb2ff77d5ab50e5_user_guest', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '5c861625aeb2ff77d5ab50e5_user_vip', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '5c861625aeb2ff77d5ab50e5_user_vip-1', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '5c861625aeb2ff77d5ab50e5_user_ticket', 1, 44, '2019-04-18 17:12:48', '2019-04-18 17:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `profile_components`
--

CREATE TABLE `profile_components` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_components`
--

INSERT INTO `profile_components` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(46, '250M', 1, 44, '2013-08-24 21:20:20', '2013-08-24 21:20:20'),
(48, '500M', 1, 44, '2013-08-24 21:21:09', '2013-08-24 21:21:09'),
(49, '1G', 1, 44, '2013-08-24 21:21:23', '2013-08-24 21:21:23'),
(53, '1Hour', 1, 44, '2013-08-24 21:24:08', '2013-08-24 21:24:08'),
(56, '5M-every-hour', 1, 44, '2014-05-27 19:34:26', '2014-05-27 19:34:26'),
(61, '2G', 1, 44, '2016-06-27 07:21:44', '2016-06-27 07:21:44'),
(62, '5G', 1, 44, '2016-06-27 07:52:29', '2016-06-27 07:52:29'),
(63, '1Week', 1, 44, '2016-06-27 09:03:36', '2016-06-27 09:03:36'),
(64, '1Day', 1, 44, '2016-06-27 09:06:35', '2016-06-27 09:06:35'),
(65, '1Month', 1, 44, '2016-06-27 09:15:16', '2016-06-27 09:15:16'),
(66, 'BW-1Mbs', 1, 44, '2016-06-27 09:44:24', '2016-06-27 09:44:24'),
(67, 'BW-384Kbs', 1, 44, '2016-06-27 09:49:44', '2016-06-27 09:49:44'),
(68, 'BW-512Kbs', 1, 44, '2016-06-27 09:51:38', '2016-06-27 09:51:38'),
(69, 'BW-2Mbs', 1, 44, '2016-06-27 09:53:22', '2016-06-27 09:53:22'),
(70, 'BW-4Mbs', 1, 44, '2016-06-27 09:55:00', '2016-06-27 09:55:00'),
(71, '1Hour per MAC daily', 1, 44, '2016-06-27 12:52:06', '2016-06-27 12:52:06'),
(72, '500M per MAC daily', 1, 44, '2016-06-27 13:05:57', '2016-06-27 13:05:57'),
(73, 'VLAN', 1, 182, '2019-02-16 13:33:03', '2019-02-16 13:33:03'),
(74, 'BW-5Mbs', 1, 44, '2019-02-18 11:43:15', '2019-02-18 11:43:15'),
(77, 'Next-1H', 1, 44, '2013-08-24 21:20:20', '2013-08-24 21:20:20'),
(78, '5c861625aeb2ff77d5ab50e5_group_guest', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '5c861625aeb2ff77d5ab50e5_group_vip', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '5c861625aeb2ff77d5ab50e5_group_vip-1', 1, 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '10MB', 1, 195, '2019-04-18 16:10:20', '2019-04-18 16:10:20'),
(82, '5c861625aeb2ff77d5ab50e5_group_ticket', 1, 44, '2019-04-18 17:12:48', '2019-04-18 17:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `profile_component_notes`
--

CREATE TABLE `profile_component_notes` (
  `id` int(11) NOT NULL,
  `profile_component_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_notes`
--

CREATE TABLE `profile_notes` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `radacct`
--

CREATE TABLE `radacct` (
  `radacctid` bigint(21) NOT NULL,
  `acctsessionid` varchar(64) NOT NULL DEFAULT '',
  `acctuniqueid` varchar(32) NOT NULL DEFAULT '',
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `nasportid` varchar(15) DEFAULT NULL,
  `nasporttype` varchar(32) DEFAULT NULL,
  `acctstarttime` datetime DEFAULT NULL,
  `acctupdatetime` datetime DEFAULT NULL,
  `acctstoptime` datetime DEFAULT NULL,
  `acctinterval` int(12) DEFAULT NULL,
  `acctsessiontime` int(12) UNSIGNED DEFAULT NULL,
  `acctauthentic` varchar(32) DEFAULT NULL,
  `connectinfo_start` varchar(50) DEFAULT NULL,
  `connectinfo_stop` varchar(50) DEFAULT NULL,
  `acctinputoctets` bigint(20) DEFAULT NULL,
  `acctoutputoctets` bigint(20) DEFAULT NULL,
  `calledstationid` varchar(50) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `acctterminatecause` varchar(32) NOT NULL DEFAULT '',
  `servicetype` varchar(32) DEFAULT NULL,
  `framedprotocol` varchar(32) DEFAULT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `acctstartdelay` int(12) DEFAULT NULL,
  `acctstopdelay` int(12) DEFAULT NULL,
  `xascendsessionsvrkey` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radacct`
--

INSERT INTO `radacct` (`radacctid`, `acctsessionid`, `acctuniqueid`, `username`, `groupname`, `realm`, `nasipaddress`, `nasidentifier`, `nasportid`, `nasporttype`, `acctstarttime`, `acctupdatetime`, `acctstoptime`, `acctinterval`, `acctsessiontime`, `acctauthentic`, `connectinfo_start`, `connectinfo_stop`, `acctinputoctets`, `acctoutputoctets`, `calledstationid`, `callingstationid`, `acctterminatecause`, `servicetype`, `framedprotocol`, `framedipaddress`, `acctstartdelay`, `acctstopdelay`, `xascendsessionsvrkey`) VALUES
(40, '5c49544300000001', '9d8908ccd044302db8f315595b497a78', 'dungtd', '', 'FREE', '127.0.0.1', 'media', '00000001', 'Wireless-802.11', '2019-01-24 13:03:01', '2019-01-24 13:03:01', '2019-01-24 13:05:29', NULL, 148, '', '', '', 34735005, 1945121, '00-0C-29-97-4F-71', '00-0C-29-6B-85-CF', 'User-Request', '', '', '10.1.0.2', NULL, NULL, NULL),
(41, '5c4e641100000001', '4bdf303d5b75c32082648ad515e4d429', 'dungtd', '', 'FREE', '127.0.0.1', 'media', '00000001', 'Wireless-802.11', '2019-01-28 10:10:03', '2019-01-28 10:10:03', '2019-01-28 10:13:05', NULL, 181, '', '', '', 79762284, 56702267, '00-0C-29-47-3E-5B', '84-A1-34-C0-8F-3E', 'NAS-Reboot', '', '', '10.1.1.112', NULL, NULL, NULL),
(42, '5c4e740b00000003', 'f6ab1d83f0c5968db70d2a82c0467f0e', 'dungtd', '', 'FREE', '127.0.0.1', 'media', '00000003', 'Wireless-802.11', '2019-01-28 10:17:37', '2019-01-28 10:17:37', '2019-01-28 10:21:09', NULL, 213, '', '', '', 35669, 12376, '00-0C-29-47-3E-5B', 'D8-CF-9C-11-7B-8F', 'NAS-Reboot', '', '', '10.1.0.3', NULL, NULL, NULL),
(43, '5c4e754e00000002', '9cca3387f59185e01bed3c5ad7017cb6', 'dungtd', '', 'FREE', '10.1.0.1', 'media', '00000002', 'Wireless-802.11', '2019-01-28 10:22:37', '2019-01-28 10:22:37', '2019-01-28 10:24:08', NULL, 91, '', '', '', 44299, 18182, '00-0C-29-47-3E-5B', 'D8-CF-9C-11-7B-8F', 'NAS-Reboot', '', '', '10.1.0.3', NULL, NULL, NULL),
(44, '5c4e780d00000005', '3f264523c29b99ba7c02488645137b45', 'dungtd', '', 'FREE', '10.213.100.1', 'media', '00000005', 'Wireless-802.11', '2019-01-28 10:34:19', '2019-01-28 10:49:21', '2019-01-28 10:52:17', 300, 1078, '', '', '', 12037462, 798960, '00-0C-29-47-3E-5B', '84-A1-34-C0-8F-3E', 'NAS-Reboot', '', '', '10.213.100.5', NULL, NULL, NULL),
(45, '5c4e7e3900000001', 'a71e7ecf38d5ac7cbfcf92191f5a233c', 'dungtd', '', 'FREE', '10.213.100.1', 'media', '00000001', 'Wireless-802.11', '2019-01-28 11:00:00', '2019-01-28 11:20:03', '2019-01-28 11:20:57', 301, 1256, '', '', '', 460677, 150042, '00-0C-29-47-3E-5B', '84-A1-34-C0-8F-3E', 'Lost-Carrier', '', '', '10.213.100.5', NULL, NULL, NULL),
(46, '38186B649F35EC06', 'b44ad79f518f2339f42dee428a252c08', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-16 13:47:52', '2019-02-16 13:47:52', '2019-02-16 13:48:27', NULL, 35, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 11520, 6627, '18-D6-C7-B7-7C-CE:OPENWIFI', 'D8-CF-9C-11-7B-8F', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(47, 'F588C5D80AAA3794', '9920c6ccf4732c4a1f79f86e105422cb', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-16 13:49:42', '2019-02-16 13:49:42', '2019-02-16 13:52:38', NULL, 175, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 433799, 1729935, '18-D6-C7-B7-7C-CE:OPENWIFI', 'D8-CF-9C-11-7B-8F', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(48, '004DA8BD45F48B3D', 'd590fa088c5af3fd295687bb932c64d7', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-16 13:54:03', '2019-02-16 13:54:03', '2019-02-16 14:01:14', NULL, 431, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 21362962, 535200357, '18-D6-C7-B7-7C-CE:OPENWIFI', 'D8-CF-9C-11-7B-8F', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(49, 'E8FC3E9A0B9D4C95', 'a02d9c1ebab8361a7894ccfb56beb8d0', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-16 14:02:07', '2019-02-16 14:02:07', '2019-02-16 14:02:52', NULL, 44, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 39757, 143450, '18-D6-C7-B7-7C-CE:OPENWIFI', 'D8-CF-9C-11-7B-8F', '', 'Framed-User', '', '', NULL, NULL, NULL),
(50, 'D0ED0FCC6B087E69', '72376d4fcfd8fde6de8fdd47709f3104', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 08:46:46', '2019-02-18 08:46:46', '2019-02-18 08:46:46', NULL, 0, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 1968, 3798, '18-D6-C7-B7-7C-CE:OPENWIFI', 'D8-CF-9C-11-7B-8F', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(51, '86F4C2CFAF2B3610', 'cd9fc58d72f11b4efc36587a8862ab94', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 11:36:45', '2019-02-18 11:36:45', '2019-02-18 11:40:22', NULL, 217, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 104667, 166922, '18-D6-C7-B7-7C-CE:Warning', '84-A1-34-C0-8F-3E', '', 'Framed-User', '', '', NULL, NULL, NULL),
(52, '7ECE04B5F9C675CB', '25ca59acfc7313d5c06bc52d8c03fe24', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 11:41:13', '2019-02-18 11:41:13', '2019-02-18 11:49:05', NULL, 471, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 69739, 56658, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(53, '33B1AB6EA0283EB8', 'bb711d1676c4e3004c030d73df3b1f99', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 11:49:30', '2019-02-18 11:49:30', '2019-02-18 11:50:54', NULL, 84, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 731361, 96962, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(54, 'D001F6C2CC13104B', '310a752724278ad7694f3769733dc630', 'kien', '', 'WIFIMEDIA', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 11:51:08', '2019-02-18 11:51:08', '2019-02-18 11:57:32', NULL, 383, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 0, 0, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(55, 'B33FCBB3E6332F77', 'be0b34a7d36e300ba4bd91aa496085cd', 'kien', '', 'WIFIMEDIA', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 11:57:38', '2019-02-18 11:57:38', '2019-02-18 11:59:13', NULL, 94, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 7603566, 36638078, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(56, '1AAE2B2D9FFDA018', '585d6464eb80b7fcef8b6c761148a3ab', 'kien', '', 'WIFIMEDIA', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 12:03:51', '2019-02-18 12:03:51', '2019-02-18 12:15:45', NULL, 713, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 71848905, 72078996, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'Idle-Timeout', 'Framed-User', '', '', NULL, NULL, NULL),
(57, '26181DF58DC00F61', '300e49541cbddad56f0349eaa433625c', 'quan', '', 'WIFIMEDIA', '113.22.208.231', 'media', '3', 'Wireless-802.11', '2019-02-18 12:06:12', '2019-02-18 12:06:12', '2019-02-18 13:27:12', NULL, 4860, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 14920839, 601868133, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '34-02-86-26-BC-95', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(58, '7A30BA92EDC436CD', 'eff8ba6c75d0d1a1b2e7b468a71fa583', 'kien', '', 'WIFIMEDIA', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 13:37:33', '2019-02-18 13:37:33', '2019-02-18 13:46:25', NULL, 531, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 614581, 2345540, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'User-Request', 'Framed-User', '', '', NULL, NULL, NULL),
(59, 'CC33AAC96C8FCA60', '79183bc3a10288727ace3d0c0e4f55a6', 'quan', '', 'WIFIMEDIA', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 13:59:55', '2019-02-18 13:59:55', '2019-02-18 13:59:55', NULL, 0, 'RADIUS', 'CONNECT 54Mbps 802.11g', '', 0, 0, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '18-F0-E4-EB-C4-C3', 'Clear-Stale-Session', 'Framed-User', '', '', NULL, NULL, NULL),
(60, 'AA42E7A6B128716B', '3309dc9f0ff1ec1e42165206a072f568', 'nam', '', 'FREE', '113.22.208.231', 'media', '1', 'Wireless-802.11', '2019-02-18 15:29:50', '2019-02-18 15:29:50', '2019-02-18 15:38:58', NULL, 548, 'RADIUS', 'CONNECT 54Mbps 802.11g', 'CONNECT 54Mbps 802.11g', 47832, 73834, '18-D6-C7-B7-7C-CE:Warning', '4C-66-41-46-36-13', 'Idle-Timeout', 'Framed-User', '', '', NULL, NULL, NULL),
(61, 'E81B05FFC7D1D7DE', 'a30c1e038d8de5a523babf01b801a465', 'kien', '', 'WIFIMEDIA', '113.22.208.231', 'media', '2', 'Wireless-802.11', '2019-02-18 15:41:44', '2019-02-18 15:41:44', '2019-02-18 15:41:44', NULL, 0, 'RADIUS', 'CONNECT 54Mbps 802.11g', '', 0, 0, '1A-D6-C7-B7-7C-CE:WIFIMEDIA', '84-A1-34-C0-8F-3E', 'Clear-Stale-Session', 'Framed-User', '', '', NULL, NULL, NULL),
(62, '8080001a', '9ebbda827c823723afbfd0acd34fbef9', 'dungtd', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 13:53:54', '2019-02-25 13:53:54', '2019-02-25 13:55:14', NULL, 80, '', '', '', 46280, 267436, 'hotspot1', '84-A1-34-C0-8F-3E', 'Admin-Reset', '', '', '192.168.20.249', NULL, NULL, NULL),
(63, '8080001b', 'a6ba571c4ed19778177c15f73dc29a5b', 'dungtd', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 13:55:43', '2019-02-25 13:55:43', '2019-02-25 13:57:54', NULL, 131, '', '', '', 1195, 3837, 'hotspot1', '84-A1-34-C0-8F-3E', 'Admin-Reset', '', '', '192.168.20.249', NULL, NULL, NULL),
(64, '8080001c', '449a2ed92961a2ed6d750a2c18286c9e', 'nam', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 13:56:37', '2019-02-25 13:56:37', '2019-02-25 13:57:51', NULL, 75, '', '', '', 41373, 215992, 'hotspot1', '18-F0-E4-EB-C4-C3', 'Admin-Reset', '', '', '192.168.20.248', NULL, NULL, NULL),
(65, '80800020', '97d721680e3cea54519e7459743cc629', 'dungtd', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 15:09:58', '2019-02-25 15:09:58', '2019-02-25 15:29:10', NULL, 1151, '', '', '', 308952, 866195, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.20.252', NULL, NULL, NULL),
(66, '80800029', '742b3d9ef404c78431b50a25e78fd16d', 'kien', '', 'WIFIMEDIA', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 15:17:26', '2019-02-25 15:17:26', '2019-02-25 15:22:02', NULL, 276, '', '', '', 1424, 1740, 'hotspot1', 'D8-CF-9C-11-7B-8F', 'Lost-Service', '', '', '192.168.20.246', NULL, NULL, NULL),
(67, '80c00002', 'f7c20aee6c72bfbca30593962ec82a36', 'dungtd', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-02-25 16:00:33', '2019-02-25 16:00:33', '2019-02-25 16:03:31', NULL, 178, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'NAS-Reboot', '', '', '192.168.3.252', NULL, NULL, NULL),
(68, '5c73b3f900000003', 'de2ef4a8fa1a998dc9a97e73cf862fdc', 'dungtd', '', 'FREE', '127.0.0.1', 'media', '00000003', 'Wireless-802.11', '2019-02-25 16:23:33', '2019-02-25 16:23:33', '2019-02-25 16:25:20', NULL, 107, '', '', '', 122825, 20212, '00-0C-29-97-4F-71', '00-0C-29-6B-85-CF', 'User-Request', '', '', '10.1.0.2', NULL, NULL, NULL),
(69, '5c73b7a800000003', 'ea270ffcc8d0ca35a9904696ec6734fc', 'click_to_connect@media', '', 'FREE', '127.0.0.1', 'media', '00000003', 'Wireless-802.11', '2019-02-25 16:39:17', '2019-02-25 16:39:17', '2019-02-25 16:40:55', NULL, 98, '', '', '', 3044192, 139117, '00-0C-29-97-4F-71', '00-0C-29-6B-85-CF', 'User-Request', '', '', '10.1.0.2', NULL, NULL, NULL),
(70, '5c73b82700000003', 'a987f76db9a9a8e3b98f68c4093d2995', 'click_to_connect', '', 'FREE', '127.0.0.1', 'media', '00000003', 'Wireless-802.11', '2019-02-25 16:41:30', '2019-02-25 17:01:30', '2019-02-25 17:03:57', 300, 1347, '', '', '', 1202833, 155540, '00-0C-29-97-4F-71', '00-0C-29-6B-85-CF', 'User-Request', '', '', '10.1.0.2', NULL, NULL, NULL),
(71, '5c73bef400000003', '102e7fbf403cdf5532577bcc2e477e2a', 'click_to_connect@media', '', 'FREE', '127.0.0.1', 'media', '00000003', 'Wireless-802.11', '2019-02-25 17:11:26', '2019-02-25 17:51:27', '2019-02-25 17:54:36', 301, 2590, '', '', '', 94869, 11727, '00-0C-29-97-4F-71', '00-0C-29-6B-85-CF', 'Lost-Carrier', '', '', '10.1.0.2', NULL, NULL, NULL),
(72, '80800033', 'dfc9757f5ba092a41f8beab9ad9fe2ed', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:12:52', '2019-02-25 17:12:52', '2019-02-25 17:14:58', NULL, 125, '', '', '', 3278, 66075, 'hotspot1', 'D8-CF-9C-11-7B-8F', 'Lost-Service', '', '', '192.168.20.243', NULL, NULL, NULL),
(73, '80800034', '4b84999e1d25f1820c9b9965785c339a', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:14:22', '2019-02-25 17:14:22', '2019-02-25 17:17:22', NULL, 179, '', '', '', 39803, 139377, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.20.252', NULL, NULL, NULL),
(74, '80800035', '2f4881c01d56ecc7ce27a1cd4757f052', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:16:38', '2019-02-25 17:16:38', '2019-02-25 17:18:52', NULL, 135, '', '', '', 63016, 580722, 'hotspot1', '84-A1-34-C0-8F-3E', 'Lost-Service', '', '', '192.168.20.242', NULL, NULL, NULL),
(75, '80800036', '638e83eb19007b0018beb4c5122a1a57', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:18:31', '2019-02-25 17:18:31', '2019-02-25 17:21:08', NULL, 157, '', '', '', 109935, 915511, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.20.252', NULL, NULL, NULL),
(76, '80800037', '177ba231ce1de4954a6d31f76c98e16e', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:21:38', '2019-02-25 17:21:38', '2019-02-25 17:23:40', NULL, 122, '', '', '', 0, 0, 'hotspot1', '84-A1-34-C0-8F-3E', 'Lost-Service', '', '', '192.168.20.242', NULL, NULL, NULL),
(77, '80800038', 'a47a78cc29e73ace9d864ab8a889d838', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 17:22:56', '2019-02-25 17:22:56', '2019-02-25 17:25:15', NULL, 139, '', '', '', 16589, 48575, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.20.252', NULL, NULL, NULL),
(78, '80800039', '551f26f279266bb4d9fe6eded0c66f71', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 19:45:03', '2019-02-25 19:45:03', '2019-02-25 19:48:03', NULL, 179, '', '', '', 145547, 2339961, 'hotspot1', 'C8-F6-50-68-9C-A3', 'Lost-Service', '', '', '192.168.20.240', NULL, NULL, NULL),
(79, '8080003a', 'e4751289e754d13286583b5baa7eccf5', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-25 20:50:48', '2019-02-25 20:50:48', '2019-02-25 20:51:21', NULL, 33, '', '', '', 49055, 214818, 'hotspot1', '18-E2-9F-F7-9E-23', 'Lost-Service', '', '', '192.168.20.239', NULL, NULL, NULL),
(80, '8080003b', 'ec75b439ccafa9704e3769feb2a2a79e', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 08:35:25', '2019-02-26 08:35:25', '2019-02-26 08:37:26', NULL, 121, '', '', '', 0, 0, 'hotspot1', '84-A1-34-C0-8F-3E', 'Lost-Service', '', '', '192.168.20.235', NULL, NULL, NULL),
(81, '8080003c', '5a7c0646b657aad91a525bcfbe22fe99', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 08:51:20', '2019-02-26 08:51:20', '2019-02-26 09:07:23', NULL, 963, '', '', '', 1795671, 2551033, 'hotspot1', 'D4-AE-05-8D-2F-7B', 'Lost-Service', '', '', '192.168.20.233', NULL, NULL, NULL),
(82, '8080003d', 'dc03717b72d67c79370bf198d5d9b85a', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 08:54:03', '2019-02-26 08:54:03', '2019-02-26 09:01:52', NULL, 469, '', '', '', 82544, 173446, 'hotspot1', '4C-66-41-46-36-13', 'Lost-Service', '', '', '192.168.20.234', NULL, NULL, NULL),
(83, '80800041', '67f8456ae56188b7bd9e781bd990b921', 'click_to_connect', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 09:40:58', '2019-02-26 09:40:58', '2019-02-26 09:45:56', NULL, 299, '', '', '', 103828, 409235, 'hotspot1', '84-A1-34-C0-8F-3E', 'Lost-Service', '', '', '192.168.20.231', NULL, NULL, NULL),
(84, '80f00006', 'de5dbae0c6e2abc5b7d2dfeaee6c2304', 'click_to_connect', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-02-26 09:44:41', '2019-02-26 09:44:41', '2019-02-26 09:44:59', NULL, 18, '', '', '', 23871, 432064, 'hotspot1', '00-0C-29-6B-85-CF', 'Admin-Reset', '', '', '192.168.3.254', NULL, NULL, NULL),
(85, '80f00008', '4804a1c59b9164220d8bbfc706c0b32c', 'nam', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-02-26 09:47:57', '2019-02-26 09:47:57', '2019-02-26 09:48:30', NULL, 33, '', '', '', 32056, 506487, 'hotspot1', '00-0C-29-6B-85-CF', 'Admin-Reset', '', '', '192.168.3.254', NULL, NULL, NULL),
(86, '80f00009', '12a1cf15f56a0b34a7e02dfe476ad9c4', 'nam', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-02-26 09:48:51', '2019-02-26 09:48:51', '2019-02-26 09:49:15', NULL, 24, '', '', '', 23197, 458106, 'hotspot1', '00-0C-29-6B-85-CF', 'Admin-Reset', '', '', '192.168.3.254', NULL, NULL, NULL),
(87, '80f0000a', '31e94944705f5d420720e1dd29851c19', 'click_to_connect@media', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-02-26 09:49:26', '2019-02-26 09:49:26', '2019-02-26 09:49:34', NULL, 8, '', '', '', 9624, 153774, 'hotspot1', '00-0C-29-6B-85-CF', 'Admin-Reset', '', '', '192.168.3.254', NULL, NULL, NULL),
(88, '80800043', 'eae71f40a50138e7f7039a00231285a3', 'nam', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 10:39:24', '2019-02-26 10:39:24', '2019-02-26 14:25:04', NULL, 13540, '', '', '', 82014463, 618158565, 'hotspot1', '44-6D-57-B4-16-77', 'Lost-Service', '', '', '192.168.20.226', NULL, NULL, NULL),
(89, '80800044', '5925f233af8e0ca4d94dc95bdf137dd1', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 13:28:02', '2019-02-26 13:28:02', '2019-02-26 13:42:09', NULL, 847, '', '', '', 3542775, 153721363, 'hotspot1', 'D4-AE-05-8D-2F-7B', 'Lost-Service', '', '', '192.168.20.233', NULL, NULL, NULL),
(90, '80800045', 'e77b9503ba29dd0054ccb34ee0ee5ea6', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 13:47:01', '2019-02-26 13:47:01', '2019-02-26 14:28:04', NULL, 2463, '', '', '', 9526504, 521167333, 'hotspot1', '4C-66-41-46-36-13', 'Lost-Service', '', '', '192.168.20.223', NULL, NULL, NULL),
(91, '80800046', '2d1dc326e9b4966d9168c08ca64be1d2', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 16:20:00', '2019-02-26 16:20:00', '2019-02-26 16:22:00', NULL, 121, '', '', '', 301937, 818408, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.20.252', NULL, NULL, NULL),
(92, '80800047', '00a9864a9fd980b5df9e1652a1322c14', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 16:21:14', '2019-02-26 16:21:14', '2019-02-26 16:22:02', NULL, 48, '', '', '', 3980, 65143, 'hotspot1', '84-A1-34-C0-8F-3E', 'Admin-Reset', '', '', '192.168.20.216', NULL, NULL, NULL),
(93, '80800048', 'cdf2344252d829587dd999cbfef94a0a', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 16:22:28', '2019-02-26 16:22:28', '2019-02-26 16:55:28', NULL, 1980, '', '', '', 306228, 412289, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.20.252', NULL, NULL, NULL),
(94, '80800049', '330abb3f98dd27bf2a4f05325b040cb6', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-26 17:03:30', '2019-02-26 17:03:30', '2019-02-26 17:07:37', NULL, 247, '', '', '', 48508, 223070, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.20.252', NULL, NULL, NULL),
(95, '8080004a', '3f98575383e773ccc9dab02adc4988d7', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-27 08:40:58', '2019-02-27 08:40:58', '2019-02-27 09:40:58', NULL, 3600, '', '', '', 790728, 4477955, 'hotspot1', '4C-66-41-46-36-13', 'Session-Timeout', '', '', '192.168.20.223', NULL, NULL, NULL),
(96, '8080004b', '8667d43e837f44dc4a17c1823977f086', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-02-28 15:38:10', '2019-02-28 15:38:10', '2019-02-28 16:23:17', NULL, 2707, '', '', '', 1417254, 16033695, 'hotspot1', '4C-66-41-46-36-13', 'Lost-Service', '', '', '192.168.20.194', NULL, NULL, NULL),
(97, '8080004c', 'b94e6306aec1814acfd741805653d9a5', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 08:47:54', '2019-03-01 08:47:54', '2019-03-01 09:47:54', NULL, 3600, '', '', '', 1203874, 24284279, 'hotspot1', '4C-66-41-46-36-13', 'Session-Timeout', '', '', '192.168.20.194', NULL, NULL, NULL),
(98, '8080004d', '898721d682a960df436206e127b348a1', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 09:53:18', '2019-03-01 09:53:18', '2019-03-01 09:55:29', NULL, 131, '', '', '', 3458, 65971, 'hotspot1', '6C-96-CF-B4-60-5A', 'Lost-Service', '', '', '192.168.20.191', NULL, NULL, NULL),
(99, '8080004e', '5a370804b5a9528b0346c475348ce21d', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 10:08:09', '2019-03-01 10:08:09', '2019-03-01 10:11:06', NULL, 177, '', '', '', 58579, 411357, 'hotspot1', '6C-96-CF-B4-60-5A', 'Lost-Service', '', '', '192.168.20.190', NULL, NULL, NULL),
(100, '8080004f', '9fe633d6b195a2c6571c48460d376dba', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 13:14:31', '2019-03-01 13:14:31', '2019-03-01 13:14:33', NULL, 2, '', '', '', 3354, 65143, 'hotspot1', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '192.168.20.187', NULL, NULL, NULL),
(101, '80800050', 'f94e61712c430d270918290aaa36dfb8', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 13:14:34', '2019-03-01 13:14:34', '2019-03-01 13:17:16', NULL, 161, '', '', '', 1201, 497, 'hotspot1', '84-A1-34-C0-8F-3E', 'Lost-Service', '', '', '192.168.20.187', NULL, NULL, NULL),
(102, '80800051', '69e94ef721a8febf84db27721febabae', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-01 14:11:32', '2019-03-01 14:11:32', '2019-03-01 15:11:32', NULL, 3600, '', '', '', 9323139, 58929680, 'hotspot1', '44-6D-57-B4-16-77', 'Session-Timeout', '', '', '192.168.20.184', NULL, NULL, NULL),
(103, '80800056', 'c7c086ddd4048b95c536759df7020c38', 'click_to_connect@media', '', 'FREE', '58.187.221.48', 'media', 'VLAN20', 'Wireless-802.11', '2019-03-03 14:30:53', '2019-03-03 14:30:53', '2019-03-03 14:33:02', NULL, 129, '', '', '', 3807, 65139, 'hotspot1', 'E0-C7-67-0B-52-5F', 'Lost-Service', '', '', '192.168.20.178', NULL, NULL, NULL),
(104, 'AD6544F78DEB67B0', 'cac606ff058927db7564879f46e7365c', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 17:16:42', '2019-03-15 17:16:42', '2019-03-15 17:22:04', NULL, 340, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(105, 'E24B0A862AF2BDAD', '9872045619821ae5643ed15f04158e75', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 17:15:58', '2019-03-15 17:21:20', '2019-03-15 17:21:20', NULL, 322, 'RADIUS', '', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '', NULL, NULL, NULL),
(106, '3F6EE48691A31697', 'ed219633088b5e30a2e0a0c8266d3462', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 17:21:46', '2019-03-15 17:31:46', '2019-03-15 17:34:05', 600, 746, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 356630, 9602167, '88-DC-96-6A-FF-F1:EAP', '18-F0-E4-EB-C4-C3', '', '', '', '10.245.69.25', NULL, NULL, NULL),
(107, '2C6A2599D9105ADC', 'e51922696bbf8b5cd2b1faf47769a050', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 17:24:19', '2019-03-15 17:24:19', '2019-03-15 17:34:05', NULL, 596, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 70175947, 73147846, '88-DC-96-6A-FF-F1:EAP', '84-A1-34-C0-8F-3E', '', '', '', '10.245.69.20', NULL, NULL, NULL),
(108, '73C7D77090E11F4A', '5556a0ed369eedc1d32841fc6ef817be', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 17:37:08', '2019-03-15 17:47:08', '2019-03-15 17:52:30', 600, 929, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', 'D8-CF-9C-11-7B-8F', 'User-Request', '', '', '10.245.69.33', NULL, NULL, NULL),
(109, '151DB6775CDF592F', 'b3267e0703f7cdd756ef06b65b638011', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-15 18:16:58', '2019-03-15 18:34:22', '2019-03-15 18:34:22', NULL, 1044, 'RADIUS', '', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', 'D8-CF-9C-11-7B-8F', 'User-Request', '', '', '', NULL, NULL, NULL),
(110, '05868EF046397620', 'aea1fa69c03c74c1da598da2ef3805ca', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 08:29:28', '2019-03-16 08:39:28', '2019-03-16 08:29:28', 600, 606, 'RADIUS', 'CONNECT 0Mbps 802.11b', '', 1545796, 59429229, '88-DC-96-6A-FF-F1:EAP', '18-F0-E4-EB-C4-C3', 'Clear-Stale-Session', '', '', '10.245.69.25', NULL, NULL, NULL),
(111, '3B55742FE3641FE1', 'bf5bef3f0a117008d135a13721df3dd6', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 08:45:11', '2019-03-16 08:45:11', '2019-03-16 08:45:11', NULL, 0, 'RADIUS', '', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', 'D8-CF-9C-11-7B-8F', 'User-Request', '', '', '', NULL, NULL, NULL),
(112, '5E97E457BDE3BCB7', '46df17093096449db2e80d5caeea993a', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 08:48:45', '2019-03-16 10:08:42', '2019-03-16 10:11:40', 600, 4983, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', '18-F0-E4-EB-C4-C3', 'User-Request', '', '', '10.245.69.25', NULL, NULL, NULL),
(113, '756FF105C0EB0FE8', 'bb635c0049ba112bc461bb0fde5df9ec', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 09:08:12', '2019-03-16 09:08:12', '2019-03-16 09:14:03', NULL, 362, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', 'D8-CF-9C-11-7B-8F', 'User-Request', '', '', '10.245.69.33', NULL, NULL, NULL),
(114, 'CA7E6595180B870D', '12e54b5c0a9b21b1997617318d986a37', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 09:39:48', '2019-03-16 09:39:48', '2019-03-16 09:40:33', NULL, 53, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', 'D4-AE-05-8D-2F-7B', 'User-Request', '', '', '10.245.69.36', NULL, NULL, NULL),
(115, 'E1933318292ABFFF', 'f83e0b5b6aa582cae2ab8f5f3154add6', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 09:42:02', '2019-03-16 09:42:02', '2019-03-16 09:42:26', NULL, 32, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', 'D4-AE-05-8D-2F-7B', 'User-Request', '', '', '10.245.69.36', NULL, NULL, NULL),
(116, 'D640DE20DF1DE39F', 'cd5d34b17762a0378c26b1d429f8d49e', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 09:44:21', '2019-03-16 09:54:21', '2019-03-16 09:55:03', 600, 653, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(117, 'E9FC928C77C3DFC7', '9804161543363eb5f404e0a22c6472d1', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 09:50:19', '2019-03-16 09:50:19', '2019-03-16 09:56:17', NULL, 367, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(118, 'AB7799BCD515038B', '3046fdab1121b8ea1b3da9c2232098ee', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 10:16:04', '2019-03-16 11:46:04', '2019-03-16 11:51:51', 600, 5753, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', '18-F0-E4-EB-C4-C3', 'User-Request', '', '', '10.245.69.25', NULL, NULL, NULL),
(119, 'F27736958D9ED7C3', 'e85d4180204f24b4bd6d222dc9512b87', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:17:07', '2019-03-16 12:17:07', '2019-03-16 12:26:46', NULL, 590, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(120, '95CD4BF20069A033', '04046feba76bb2c3195e03bf6a4beb2f', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:30:05', '2019-03-16 12:30:05', '2019-03-16 12:32:54', NULL, 175, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(121, 'DC5B3055A55B6149', 'aa233eaa968666aefe64215afb0ebb44', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:44:46', '2019-03-16 12:44:46', '2019-03-16 12:46:42', NULL, 125, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(122, 'EFCE780BBC719AC2', '43cb00f0338577452ef076d7953097a0', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:46:56', '2019-03-16 12:46:56', '2019-03-16 12:51:38', NULL, 296, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F1:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(123, '7C4DCC5FB594975B', 'd549287ded05ed495a561b258f8ac1bf', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:46:56', '2019-03-16 12:46:56', '2019-03-16 12:48:21', NULL, 98, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(124, '93674DEF5138325B', '4a600805b2aec2a114e03c31da08dc37', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 12:48:32', '2019-03-16 12:58:32', '2019-03-16 13:01:38', 600, 796, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(125, 'FEF905DE71F5CC73', 'e4f9886629978ffc42e52a93bdc6f147', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 13:01:59', '2019-03-16 13:01:59', '2019-03-16 13:02:27', NULL, 38, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(126, 'D54F66AFDCE29074', 'eb730dffd0213a6417a3ac6831ac7b63', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-16 14:41:20', '2019-03-16 14:41:20', '2019-03-16 14:47:15', NULL, 366, 'RADIUS', 'CONNECT 0Mbps 802.11b', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', '84-A1-34-C0-8F-3E', 'User-Request', '', '', '10.245.69.20', NULL, NULL, NULL),
(127, 'EC4C50D29148948B', 'a787bb4ae74810a192cc744542a899b3', 'dungtd', '', 'FREE', '10.245.69.32', 'media', '20', 'Wireless-802.11', '2019-03-18 09:24:24', '2019-03-18 09:34:24', '2019-03-18 09:24:24', 600, 606, 'RADIUS', 'CONNECT 0Mbps 802.11b', '', 661489, 274651, '88-DC-96-6A-FF-F1:EAP', '18-F0-E4-EB-C4-C3', 'Clear-Stale-Session', '', '', '10.245.69.25', NULL, NULL, NULL),
(128, '1BA6BD6779F734B0', 'c1ce409ad1b8011705bc6565b904879d', 'dungtd', '', 'FREE', '10.245.69.20', 'media', '20', 'Wireless-802.11', '2019-03-19 13:27:19', '2019-03-19 13:27:19', '2019-03-19 13:27:19', NULL, 0, 'RADIUS', '', 'CONNECT 0Mbps 802.11b', 0, 0, '88-DC-96-6A-FF-F0:EAP', 'D8-CF-9C-11-7B-8F', 'User-Request', '', '', '', NULL, NULL, NULL),
(129, '3271B954E5353D36', 'b211b2bc9a85abd92e91c634a071b505', 'dungtd', '', 'FREE', '10.245.69.20', 'media', '20', 'Wireless-802.11', '2019-03-19 13:27:31', '2019-03-19 13:27:31', '2019-03-19 13:27:31', NULL, 0, 'RADIUS', 'CONNECT 0Mbps 802.11b', '', 0, 0, '88-DC-96-6A-FF-F0:EAP', 'D8-CF-9C-11-7B-8F', 'Clear-Stale-Session', '', '', '10.245.69.27', NULL, NULL, NULL),
(130, '81b0000b', '68dcf1c2141bef1b71ee94cc3f5ab14e', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728653', 'Async', '2019-03-23 21:14:43', '2019-03-23 21:14:43', '2019-03-23 21:14:43', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(131, '81b0000c', 'c9efe7ae4d5bfe223d497f7d44050586', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728654', 'Async', '2019-03-23 21:14:52', '2019-03-23 21:14:52', '2019-03-23 21:14:53', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(132, '81b0000d', '61615c4f1f773d42f0c10159b2cda8e5', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728655', 'Async', '2019-03-23 21:18:26', '2019-03-23 21:18:26', '2019-03-23 21:18:26', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(133, '81b0000e', '8e32aa8eeb5e31dc07a0ad197a5cba9f', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728656', 'Async', '2019-03-23 21:18:35', '2019-03-23 21:18:35', '2019-03-23 21:18:35', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(134, '81b00015', '2cd87454bda7981f446fcde6e694b4ea', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728664', 'Async', '2019-03-23 21:20:58', '2019-03-23 21:20:58', '2019-03-23 21:20:58', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(135, '81b00016', 'da28aef5206e6cf96a23543edf53c9f2', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728665', 'Async', '2019-03-23 21:21:12', '2019-03-23 21:21:12', '2019-03-23 21:21:12', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(136, '81b00017', 'cc453a31e53e42dd2e7236fd854a923e', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728666', 'Async', '2019-03-23 21:21:36', '2019-03-23 21:21:36', '2019-03-23 21:21:36', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(137, '81b00018', 'a04f8f43a2a312cbf63ad5546f4d5a02', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728667', 'Async', '2019-03-23 21:22:14', '2019-03-23 21:22:14', '2019-03-23 21:22:14', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(138, '81b00019', '0dd263a691a89d1a61d31521ab4e5845', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728668', 'Async', '2019-03-23 21:22:23', '2019-03-23 21:22:23', '2019-03-23 21:22:23', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(139, '81b0001a', 'c38bb59cd3ddf0a1f358112f63f6ee4b', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728669', 'Async', '2019-03-23 21:25:54', '2019-03-23 21:25:54', '2019-03-23 21:25:54', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(140, '81b0001b', '7c0be0dab9dba8a9bfefe9fde54738ea', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728670', 'Async', '2019-03-23 21:26:03', '2019-03-23 21:26:03', '2019-03-23 21:26:03', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(141, '81b0001c', 'bc14e59b19fbff4adf6eb156a1784b0b', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728671', 'Async', '2019-03-23 21:26:11', '2019-03-23 21:26:11', '2019-03-23 21:26:12', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(142, '81b0001d', '034d71c734c6c731978ff64e312d3b97', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728672', 'Async', '2019-03-23 21:26:20', '2019-03-23 21:26:20', '2019-03-23 21:26:20', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(143, '81b0001e', '94b0e6662f88b52b1d085dd30ee779a4', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '12', 'Async', '2019-03-23 21:26:29', '2019-03-23 21:26:29', '2019-03-23 21:26:29', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(144, '81b0001f', '58592184e2b6bf87909755a788b5b7e0', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728674', 'Async', '2019-03-23 21:26:43', '2019-03-23 21:26:43', '2019-03-23 21:26:43', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(145, '81b00027', '63f0e96850d45a3e384e750303dead92', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728682', 'Async', '2019-03-23 21:31:01', '2019-03-23 21:31:01', '2019-03-23 21:31:01', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(146, '81b00028', '48e90cef9ea6f8dd3dce049617067c78', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728683', 'Async', '2019-03-23 21:31:09', '2019-03-23 21:31:09', '2019-03-23 21:31:10', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(147, '81b00029', '22f255f50626e2c003dd654b21e1e1a9', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728684', 'Async', '2019-03-23 21:31:18', '2019-03-23 21:31:18', '2019-03-23 21:31:19', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(148, '81b0002a', 'f36d01013a8c4c31775b693b19976dfa', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728685', 'Async', '2019-03-23 21:31:31', '2019-03-23 21:31:31', '2019-03-23 21:31:31', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(149, '81b0002b', 'a0050f1574d1c0749d5e547ce2b51086', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728686', 'Async', '2019-03-23 21:31:39', '2019-03-23 21:31:39', '2019-03-23 21:31:40', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(150, '81b0002c', '90d2db2a7903030b3c58a9f0341f2654', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728687', 'Async', '2019-03-23 21:31:48', '2019-03-23 21:31:48', '2019-03-23 21:31:49', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(151, '81b0002d', '7aa8a251d1c66b3658d992ac6d986c90', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728688', 'Async', '2019-03-23 21:31:57', '2019-03-23 21:31:57', '2019-03-23 21:31:57', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(152, '81b0002e', '975c49bb655c6cc71d0d03e156c5c173', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728689', 'Async', '2019-03-23 21:32:05', '2019-03-23 21:32:05', '2019-03-23 21:32:06', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(153, '81b0002f', '8fec1875bff7561e6ec46b2262c13737', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728690', 'Async', '2019-03-23 21:32:19', '2019-03-23 21:32:19', '2019-03-23 21:32:19', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(154, '81b00034', '3ffbc9d2976e21b36a9a3fd7283b5756', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728695', 'Async', '2019-03-23 21:33:23', '2019-03-23 21:33:23', '2019-03-23 21:33:23', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(155, '81b00035', '664d884b7cb6caf80ba53ee5dddcb94d', 'kien', '', 'WIFIMEDIA', '42.114.133.120', 'media', '15728696', 'Async', '2019-03-23 21:33:37', '2019-03-23 21:33:37', '2019-03-23 21:33:37', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(156, '80c00001', '5c3b0903b63ee79a545c8fa065f6b5f5', 'dungtd', '', 'FREE', '192.168.24.138', 'media', 'bridge_lan', 'Wireless-802.11', '2019-03-23 21:44:05', '2019-03-23 21:44:05', '2019-03-23 22:17:43', NULL, 2018, '', '', '', 559217, 16734176, 'hotspot1', '00-0C-29-6B-85-CF', 'Lost-Service', '', '', '192.168.3.253', NULL, NULL, NULL),
(157, '81b00036', '29a3e1f0d0545ef3ade6716f1318c990', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728697', 'Async', '2019-03-23 21:44:46', '2019-03-23 21:44:46', '2019-03-23 21:44:46', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(158, '81b00037', 'd9eaab9294f8fe9856b9d2cf076dbb09', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728698', 'Async', '2019-03-23 21:44:54', '2019-03-23 21:44:54', '2019-03-23 21:44:54', NULL, 1, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(159, '81b00038', '9296f2e2e509a1e7f718f5ffa189ade6', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728699', 'Async', '2019-03-23 21:45:03', '2019-03-23 21:45:03', '2019-03-23 21:45:03', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(160, '81b00039', '5bcbdeead618d46f2575901aea63e5a4', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728700', 'Async', '2019-03-23 21:45:11', '2019-03-23 21:45:11', '2019-03-23 21:45:11', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(161, '81b0003a', '4dd2c920249776118d0079489f1c9b46', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728701', 'Async', '2019-03-23 21:45:20', '2019-03-23 21:45:20', '2019-03-23 21:45:20', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(162, '81b0003b', '092fc022e02c003cc8f9830eefcf4ece', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728702', 'Async', '2019-03-23 21:45:34', '2019-03-23 21:45:34', '2019-03-23 21:45:34', NULL, 0, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Port-Error', 'Framed-User', 'PPP', '0.0.0.0', NULL, NULL, NULL),
(163, '81b00049', '7be98284173eaaed983860b3b77a4e47', 'nam', '', 'FREE', '42.114.133.120', 'media', '15728717', 'Async', '2019-03-23 21:55:11', '2019-03-23 21:55:11', '2019-03-23 21:55:19', NULL, 8, 'RADIUS', '', '', 0, 0, '42.114.133.120', '58.187.33.212', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(164, '81b0004a', 'c78ab4ebd684cc8308d291a89891fd23', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728718', 'Async', '2019-03-23 21:56:01', '2019-03-23 21:56:01', '2019-03-23 21:57:31', NULL, 90, 'RADIUS', '', '', 94752, 628263, '42.114.133.120', '58.187.33.212', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(165, '81b0004b', '580d9dd50ad24a2e1e5b51e0d87c4c48', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728719', 'Async', '2019-03-23 22:24:05', '2019-03-23 22:24:05', '2019-03-23 22:25:48', NULL, 102, 'RADIUS', '', '', 15502, 23796, '42.114.133.120', '58.187.33.212', 'Idle-Timeout', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(166, '81b0004c', '2b7da489286053e76b5b18f9ab3d4880', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728720', 'Async', '2019-03-24 10:12:25', '2019-03-24 10:12:25', '2019-03-24 10:12:59', NULL, 34, 'RADIUS', '', '', 93991, 2610222, '42.114.133.120', '58.187.33.81', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(167, '81b0004d', 'b3e17d11f66f59d07a382932fb1d61e0', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728721', 'Async', '2019-03-24 10:16:57', '2019-03-24 10:16:57', '2019-03-24 10:17:55', NULL, 58, 'RADIUS', '', '', 58261, 1730836, '42.114.133.120', '58.187.33.81', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(168, '81b00053', '12387dff21f699f49347e0ad963b03a3', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728736', 'Async', '2019-03-26 22:03:10', '2019-03-26 22:33:10', '2019-03-26 22:34:13', 300, 1863, 'RADIUS', '', '', 4883098, 126870817, '42.114.133.120', '1.55.3.244', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(169, '81b00054', 'aa881f0fdd81906aa89fed045018e0e1', 'dungtd', '', 'FREE', '42.114.133.120', 'media', '15728737', 'Async', '2019-03-26 23:00:16', '2019-03-26 23:20:16', '2019-03-26 23:23:07', 300, 1371, 'RADIUS', '', '', 4433566, 88289770, '42.114.133.120', '1.55.3.244', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(170, '81000000', 'cee88379f03babbb797766ef17428218', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728640', 'Async', '2019-03-27 16:47:55', '2019-03-27 16:47:55', '2019-03-27 16:48:18', NULL, 23, 'RADIUS', '', '', 0, 0, '113.22.208.71', '10.245.69.28', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(171, '8100000d', '0fd5010314ae37132b1b77627d1ba6c3', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728655', 'Async', '2019-03-29 21:56:30', '2019-03-29 23:51:30', '2019-03-29 23:52:19', 300, 6949, 'RADIUS', '', '', 8404637, 120501852, '113.22.208.71', '1.55.7.92', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(172, '81000014', 'e180962a2456f6eebe905a9ae8be95d5', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728663', 'Async', '2019-03-30 16:37:48', '2019-03-30 16:52:48', '2019-03-30 16:54:32', 300, 1004, 'RADIUS', '', '', 1142353, 11705526, '113.22.208.71', '118.70.126.5', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(173, '8100001b', '45cf670bc50dc949cfe9f56ef621f3b2', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728671', 'Async', '2019-03-31 22:47:52', '2019-03-31 23:07:52', '2019-03-31 23:10:55', 300, 1383, 'RADIUS', '', '', 5167599, 23434566, '113.22.208.71', '1.55.7.92', 'Idle-Timeout', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(174, '38F3AA55E8F78624', '9b21a0fff987089ea55583990a5aad71', 'kien', '', 'WIFIMEDIA', '113.22.208.71', 'media', '1', 'Wireless-802.11', '2019-04-02 17:13:21', '2019-04-02 17:13:21', '2019-04-02 17:13:21', NULL, 0, 'RADIUS', 'CONNECT 54Mbps 802.11a', '', 0, 0, '12-34-56-78-90-12:EAP320', '84-A1-34-C0-8F-3E', 'Clear-Stale-Session', 'Framed-User', '', '', NULL, NULL, NULL),
(175, '8100001c', 'e4f6dd2e75d2577efffd858160f48060', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728674', 'Async', '2019-04-02 21:36:04', '2019-04-02 22:36:04', '2019-04-02 22:38:24', 300, 3740, 'RADIUS', '', '', 4750870, 54375319, '113.22.208.71', '1.55.7.92', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(176, '8100001d', 'dbc723d746367f5760db01399ee33e8a', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728675', 'Async', '2019-04-02 22:42:07', '2019-04-02 23:07:07', '2019-04-02 23:11:31', 300, 1765, 'RADIUS', '', '', 893037, 1682143, '113.22.208.71', '1.55.7.92', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(177, '81000024', 'acd90377e807a6a6c9ad5e65f8650322', 'dungtd', '', 'FREE', '113.22.208.71', 'media', '15728683', 'Async', '2019-04-03 21:16:14', '2019-04-03 23:16:14', '2019-04-03 23:16:27', 300, 7213, 'RADIUS', '', '', 20202615, 73138204, '113.22.208.71', '1.55.7.92', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(178, '8100002c', 'ff4fb1088c3b2dd23277443275e48a9d', 'dungtd', '', 'FREE', '42.115.175.42', 'media', '15728717', 'Async', '2019-04-09 22:30:09', '2019-04-09 23:30:09', '2019-04-09 23:30:13', 300, 3603, 'RADIUS', '', '', 4857554, 35656210, '42.115.175.42', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(179, '81100001', 'a074b32b3dad187a06c98f1057162664', 'dungtd', '', 'FREE', '118.71.90.212', 'media', '15728645', 'Async', '2019-04-10 22:19:51', '2019-04-10 23:04:51', '2019-04-10 23:05:26', 300, 2736, 'RADIUS', '', '', 3289147, 22519887, '118.71.90.212', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(180, '81100008', '527ec6281d2d4ce53f5ab4f928c8b452', 'dungtd', '', 'FREE', '118.71.90.212', 'media', '15728656', 'Async', '2019-04-11 22:39:39', '2019-04-11 23:04:39', '2019-04-11 23:08:16', 300, 1718, 'RADIUS', '', '', 12952517, 57281711, '118.71.90.212', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL);
INSERT INTO `radacct` (`radacctid`, `acctsessionid`, `acctuniqueid`, `username`, `groupname`, `realm`, `nasipaddress`, `nasidentifier`, `nasportid`, `nasporttype`, `acctstarttime`, `acctupdatetime`, `acctstoptime`, `acctinterval`, `acctsessiontime`, `acctauthentic`, `connectinfo_start`, `connectinfo_stop`, `acctinputoctets`, `acctoutputoctets`, `calledstationid`, `callingstationid`, `acctterminatecause`, `servicetype`, `framedprotocol`, `framedipaddress`, `acctstartdelay`, `acctstopdelay`, `xascendsessionsvrkey`) VALUES
(181, '80f00003', '8079dc76ed52562ce2620f8fc5a27582', 'kien', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-11 23:46:17', '2019-04-11 23:46:17', '2019-04-11 23:56:09', NULL, 592, '', '', '', 55291, 285459, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(182, '80f0000f', '1368e37999daa8aaff8ff3d25ebedb8f', 'u1', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:01:43', '2019-04-12 00:01:43', '2019-04-12 00:01:55', NULL, 12, '', '', '', 371, 604, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(183, '80f00010', 'aaa01a165fb9964eb6c895d9520192c7', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:14:42', '2019-04-12 00:14:42', '2019-04-12 00:16:17', NULL, 95, '', '', '', 603, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(184, '80f00011', 'cf1aade2b907a3b784c669fae74039ea', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:16:25', '2019-04-12 00:16:25', '2019-04-12 00:18:56', NULL, 151, '', '', '', 191636, 708094, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(185, '80f00012', '146167d00020d47c19b61c258dc95415', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:19:03', '2019-04-12 00:19:03', '2019-04-12 00:21:31', NULL, 148, '', '', '', 10747433, 24306862, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(186, '80f00013', 'e1c501fc952e6c57b2a94654480aabe1', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:21:45', '2019-04-12 00:21:45', '2019-04-12 00:25:37', NULL, 232, '', '', '', 2730298, 3558577, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(187, '80f00014', '660e535d599bc48ce5c837f8c1322e3d', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:25:43', '2019-04-12 00:25:43', '2019-04-12 00:25:48', NULL, 5, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(188, '80f00016', '31e2868f0622172bdd61af72e436f450', 'u', '', '', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:27:23', '2019-04-12 00:27:23', '2019-04-12 00:27:25', NULL, 2, '', '', '', 161, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(189, '80f00017', 'ae8c9da94ed51a3eb0d1aa1bd2040a81', 'u', '', '', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:28:41', '2019-04-12 00:28:41', '2019-04-12 00:29:48', NULL, 67, '', '', '', 3754408, 4130695, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(190, '80f00018', '37abcd9e3975d00e673df0253a56b796', 'u', '', '', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:31:20', '2019-04-12 00:31:20', '2019-04-12 00:32:07', NULL, 47, '', '', '', 719147, 3433683, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(191, '80f00019', '89aa591d52b6611d6f724f0665b58669', 'u', '', 'FREE', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 00:33:51', '2019-04-12 00:33:51', '2019-04-12 00:34:56', NULL, 65, '', '', '', 3411549, 3520872, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(192, '80f00022', 'eff124dca65e64846e2ba14bb640e26e', 'kien', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 09:46:16', '2019-04-12 09:46:16', '2019-04-12 09:46:19', NULL, 3, '', '', '', 14666, 14185, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(193, '80f00024', '401e8ea620752ef0b0f0160f4a7534cb', 'u', '', 'FREE', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 09:46:40', '2019-04-12 09:46:40', '2019-04-12 09:46:42', NULL, 2, '', '', '', 5827, 4030, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(194, '80f00025', '443235df6aa09d99a7c0ba87da30a84c', 'abc', '', '', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 09:46:51', '2019-04-12 09:46:51', '2019-04-12 09:47:53', NULL, 63, '', '', '', 2799720, 3816035, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(195, '80f00026', 'd0f7539b94d987baa0dc4f83004a9090', 'abc', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 09:52:33', '2019-04-12 09:52:33', '2019-04-12 09:53:32', NULL, 59, '', '', '', 2814608, 3207844, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(196, '80f00028', '994512b347514cde6377df873b135e56', 'abc', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 09:54:43', '2019-04-12 09:54:43', '2019-04-12 10:26:55', NULL, 1933, '', '', '', 2835910, 3353894, 'hotspot1', '00-0C-29-6B-85-CF', 'Lost-Service', '', '', '192.168.3.254', NULL, NULL, NULL),
(197, '80000002', '9a9b796243a6bb0ef5a33c2e1a177802', 'abc', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 17:03:47', '2019-04-12 17:03:47', '2019-04-12 17:03:56', NULL, 10, '', '', '', 41499, 477497, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(198, '80000005', 'fc6bdefd252ca0698098f401d76feaa4', 'abc', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 17:06:56', '2019-04-12 17:06:56', '2019-04-12 17:06:58', NULL, 2, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(199, '80000007', '49a467ed9cf9b6caaf0f01135670ba10', '000C296B85CF', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 17:09:09', '2019-04-12 17:09:09', '2019-04-12 17:13:41', NULL, 272, '', '', '', 5110591, 11751738, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(200, '80000008', 'b177e4c9d29a54ebb731b1366bedc91b', '000C296B85CF', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 17:19:58', '2019-04-12 17:19:58', '2019-04-12 17:22:35', NULL, 158, '', '', '', 5276532, 12132330, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(201, '80000009', 'f6dcb3210e56e1596420169b56bca4ce', '000C296B85CF', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-12 17:23:18', '2019-04-12 17:23:18', '2019-04-12 17:25:18', NULL, 120, '', '', '', 3261907, 3569378, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(202, '80000012', 'f44c3936bc52655f01d706c85b8efacf', 'linh', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-13 17:16:33', '2019-04-13 17:16:33', '2019-04-13 17:17:55', NULL, 82, '', '', '', 7546530, 18234275, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(203, '80000016', '83054457538aec95dd0cd46d4df9b8aa', 'vpn', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-13 23:17:16', '2019-04-13 23:17:16', '2019-04-13 23:49:58', NULL, 1961, '', '', '', 49448, 49834, 'hotspot1', '00-0C-29-6B-85-CF', 'Lost-Service', '', '', '192.168.3.252', NULL, NULL, NULL),
(204, '81100022', '0cf22d36b84dbdd700d95577da37e48b', 'vpn', '', 'WIFIMEDIA', '118.71.90.212', 'media', '15728692', 'Async', '2019-04-13 23:17:33', '2019-04-13 23:47:33', '2019-04-13 23:52:08', 300, 2075, 'RADIUS', '', '', 625295, 903543, '118.71.90.212', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(205, '81100038', 'fa944273eb469914aba52e72dc76c18b', 'vpn', '', 'WIFIMEDIA', '118.71.90.212', 'media', '15728721', 'Async', '2019-04-15 21:30:49', '2019-04-15 21:30:49', '2019-04-15 21:32:25', NULL, 96, 'RADIUS', '', '', 131126, 498788, '118.71.90.212', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(206, '81100039', '51a6d4639be01ff54bd267effa5282a9', 'vpn', '', 'WIFIMEDIA', '118.71.90.212', 'media', '15728722', 'Async', '2019-04-15 21:55:00', '2019-04-15 22:55:00', '2019-04-15 22:55:08', 300, 3608, 'RADIUS', '', '', 3325478, 40271704, '118.71.90.212', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(207, '80200001', 'd2ce5a9df84075d4949c22f758ac2819', 'vpn', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:18:40', '2019-04-17 16:18:40', '2019-04-17 16:18:42', NULL, 2, '', '', '', 3526, 5332, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(208, '80200002', 'cda11cc72208cdf481caaefa7d3f5951', 'vpn', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:18:47', '2019-04-17 16:18:47', '2019-04-17 16:18:49', NULL, 2, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(209, '80200008', '58c78fa600bbfd085c51064cd9100be7', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:20:18', '2019-04-17 16:20:18', '2019-04-17 16:20:19', NULL, 1, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(210, '80200009', 'eb504114a4754b0f3e7c1d52e65e6f27', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:22:34', '2019-04-17 16:22:34', '2019-04-17 16:24:08', NULL, 93, '', '', '', 7402228, 15564692, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(211, '8020000a', '55afcd7db81a083d5a745394ba72cd2c', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:24:17', '2019-04-17 16:24:17', '2019-04-17 16:26:57', NULL, 160, '', '', '', 4856596, 14009976, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(212, '8020000b', '5428a1467b41da9e505572cc48c91994', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 16:27:04', '2019-04-17 16:27:04', '2019-04-17 17:00:20', NULL, 1997, '', '', '', 1903054, 2251025, 'hotspot1', '00-0C-29-6B-85-CF', 'Lost-Service', '', '', '192.168.3.253', NULL, NULL, NULL),
(213, '8020000c', 'ff223b151ed5b7fa2a3907c9029e52ce', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 17:39:01', '2019-04-17 17:39:01', '2019-04-17 17:42:07', NULL, 186, '', '', '', 14585871, 16453154, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(214, '8020000d', '2c2f531a4d2119241b2f61fb298e82e1', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 17:42:12', '2019-04-17 17:42:12', '2019-04-17 17:44:10', NULL, 118, '', '', '', 5938581, 13368238, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(215, '8020000e', 'ef2b3134fc32ccb492de35fb1dbca19d', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 17:44:17', '2019-04-17 17:44:17', '2019-04-17 17:45:14', NULL, 57, '', '', '', 2393494, 2545938, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.253', NULL, NULL, NULL),
(216, '8020000f', '29714c668ff8cf1787fe60d881dd90af', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-17 17:45:23', '2019-04-17 17:45:23', '2019-04-17 18:18:21', NULL, 1978, '', '', '', 7460392, 15558166, 'hotspot1', '00-0C-29-6B-85-CF', 'Lost-Service', '', '', '192.168.3.253', NULL, NULL, NULL),
(217, '80300000', '03def38de9347e04e92595a15e06b27e', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 09:41:36', '2019-04-18 09:41:36', '2019-04-18 09:41:38', NULL, 3, '', '', '', 3317, 3345, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(218, '80300001', 'b857f519acdb19d3811eeb988c746924', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 09:42:00', '2019-04-18 09:42:00', '2019-04-18 10:12:01', NULL, 1800, '', '', '', 3270676, 10562836, 'hotspot1', '00-0C-29-6B-85-CF', 'Session-Timeout', '', '', '192.168.3.254', NULL, NULL, NULL),
(219, '80400000', '19c96a0bf831049e1bae831d00c155a6', 'linh', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 15:34:19', '2019-04-18 15:34:19', '2019-04-18 15:34:20', NULL, 1, '', '', '', 483, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(220, '80400001', '2a8f1dbc1e156a539de7d2a8efe7ba95', '5c861625aeb2ff77d5ab50e5', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 15:34:47', '2019-04-18 15:34:47', '2019-04-18 15:36:59', NULL, 133, '', '', '', 13197, 13720, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(221, '80400002', 'c386ddea20cc8b98004d09b008e6d11b', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 15:37:35', '2019-04-18 15:37:35', '2019-04-18 15:37:52', NULL, 18, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(222, '80400003', 'a6de60df55b1ea52d6a98752cac48cb2', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '172.99.99.140', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-18 15:39:39', '2019-04-18 15:39:39', '2019-04-18 15:39:39', NULL, 0, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'Clear-Stale-Session', '', '', '192.168.3.254', NULL, NULL, NULL),
(223, '8040000d', '1b3775329abb9105f43a7622a824dbe6', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 15:53:18', '2019-04-18 15:53:18', '2019-04-18 15:55:35', NULL, 138, '', '', '', 2402420, 16865894, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Admin-Reboot', '', '', '192.168.88.248', NULL, NULL, NULL),
(224, '80500000', '7827757c0e0e0edf8552b9453254e49d', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 15:56:50', '2019-04-18 15:56:50', '2019-04-18 16:02:38', NULL, 348, '', '', '', 143320, 3249172, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(225, '80500006', 'b158fc07a5499365ed87318509d71449', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 16:03:34', '2019-04-18 16:03:34', '2019-04-18 16:33:34', NULL, 1800, '', '', '', 19932376, 13019272, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Session-Timeout', '', '', '192.168.88.250', NULL, NULL, NULL),
(226, '80500007', '83c790cb8c74098857d256f92e761c5f', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 16:03:47', '2019-04-18 16:03:47', '2019-04-18 16:33:47', NULL, 1800, '', '', '', 577496, 4554401, 'hotspot1', '8C-45-00-2F-5C-8C', 'Session-Timeout', '', '', '192.168.88.244', NULL, NULL, NULL),
(227, '80500008', '1ad002990686b9e4fa9099ed8f027183', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:05:01', '2019-04-18 17:05:01', '2019-04-18 17:12:30', NULL, 450, '', '', '', 6493, 35672, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Admin-Reset', '', '', '192.168.88.248', NULL, NULL, NULL),
(228, '80500009', '23240eb030ccf267cab9859547b01ce2', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:07:52', '2019-04-18 17:07:52', '2019-04-18 17:12:29', NULL, 277, '', '', '', 132393, 1261471, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(229, '8050000a', 'c4f236021f956b0d070882deb3059136', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:19:59', '2019-04-18 17:19:59', '2019-04-18 17:29:59', NULL, 600, '', '', '', 145364, 542498, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Session-Timeout', '', '', '192.168.88.248', NULL, NULL, NULL),
(230, '8050000b', 'b361f2cdb73729a5761dcde1930bd90f', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:36:18', '2019-04-18 17:36:18', '2019-04-18 17:43:15', NULL, 418, '', '', '', 378166, 2019664, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(231, '8050000d', '60eed4c7486b982bb1d944a8ec32a2e1', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:44:24', '2019-04-18 17:44:24', '2019-04-18 17:44:50', NULL, 26, '', '', '', 225412, 2944505, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(232, '8050000e', '67706433ef130ec14f5a1bb466eba764', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 17:45:46', '2019-04-18 17:45:46', '2019-04-18 18:02:04', NULL, 978, '', '', '', 231419, 647073, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(233, '8050000f', '51f2a7c618af8c8a856d161921c2b544', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:01:37', '2019-04-18 18:01:37', '2019-04-18 18:02:04', NULL, 27, '', '', '', 66017, 441932, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Admin-Reset', '', '', '192.168.88.248', NULL, NULL, NULL),
(234, '80500010', '2987ad63e2fac41a043bef8381217562', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:07:44', '2019-04-18 18:07:44', '2019-04-18 18:22:42', NULL, 898, '', '', '', 542205, 2646508, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '192.168.88.248', NULL, NULL, NULL),
(235, '80500011', '6bd15cd07051d6930baa0fbe40192da3', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:27:43', '2019-04-18 18:27:43', '2019-04-18 18:28:16', NULL, 33, '', '', '', 36597, 550247, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(236, '80500012', 'eba44e8d2da48572364ff98d7701ce7f', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:31:16', '2019-04-18 18:31:16', '2019-04-18 18:41:33', NULL, 617, '', '', '', 37579, 739566, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '192.168.88.250', NULL, NULL, NULL),
(237, '80500013', 'b2ea83252105e473a8eb3a5a946bd0a3', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:54:06', '2019-04-18 18:54:06', '2019-04-18 18:55:50', NULL, 105, '', '', '', 2137026, 6378139, 'hotspot1', '80-ED-2C-96-C2-2E', 'Admin-Reset', '', '', '192.168.88.242', NULL, NULL, NULL),
(238, '80500014', '79f087a9977c1360fd27110812c1a99e', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:56:42', '2019-04-18 18:56:42', '2019-04-18 18:57:59', NULL, 77, '', '', '', 5265824, 4249696, 'hotspot1', '80-ED-2C-96-C2-2E', 'Admin-Reset', '', '', '192.168.88.242', NULL, NULL, NULL),
(239, '80500015', '4e476b90b117c853689be6bcff5b1350', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 18:59:49', '2019-04-18 18:59:49', '2019-04-18 19:02:19', NULL, 151, '', '', '', 2715546, 4243723, 'hotspot1', '80-ED-2C-96-C2-2E', 'Admin-Reset', '', '', '192.168.88.242', NULL, NULL, NULL),
(240, '80500016', 'eb9902be84a4ea695a52208f514c8c27', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 19:02:57', '2019-04-18 19:02:57', '2019-04-18 19:03:28', NULL, 30, '', '', '', 36438, 253914, 'hotspot1', '80-ED-2C-96-C2-2E', 'Admin-Reset', '', '', '192.168.88.242', NULL, NULL, NULL),
(241, '80500017', '7d591c6202e5e6a6a8c19d5645a9ac5e', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 19:03:47', '2019-04-18 19:03:47', '2019-04-18 19:04:13', NULL, 26, '', '', '', 30707, 126390, 'hotspot1', '80-ED-2C-96-C2-2E', 'Lost-Carrier', '', '', '192.168.88.242', NULL, NULL, NULL),
(242, '80500018', 'e25ddd8416ecab90adf9b3ff30e6dc3d', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 19:03:47', '2019-04-18 19:03:47', '2019-04-18 19:04:13', NULL, 26, '', '', '', 34830, 951570, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(243, '80500019', 'fad6b986fd552ce3199259b3e9b3dd6f', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.62', 'media', 'hotspot', 'Wireless-802.11', '2019-04-18 19:05:36', '2019-04-18 19:05:36', '2019-04-18 19:05:36', NULL, 0, '', '', '', 0, 0, 'hotspot1', '80-ED-2C-96-C2-2E', 'Clear-Stale-Session', '', '', '192.168.88.242', NULL, NULL, NULL),
(244, '81300003', '0861b00d8cead8d9a171d6c97eb7b746', 'vpn', '', 'WIFIMEDIA', '42.114.31.146', 'media', '15728643', 'Async', '2019-04-18 21:43:42', '2019-04-18 23:38:42', '2019-04-18 23:39:27', 300, 6945, 'RADIUS', '', '', 10047874, 149178952, '42.114.31.146', '183.81.1.120', 'Lost-Carrier', 'Framed-User', 'PPP', '10.245.68.10', NULL, NULL, NULL),
(245, '80600000', 'cd344552d9d5d9b200af050b5ebd3aec', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:08:27', '2019-04-19 00:08:27', '2019-04-19 00:12:43', NULL, 256, '', '', '', 4743694, 3039568, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(246, '80600001', 'af322910e31277914452a2ce0cbec81d', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:13:57', '2019-04-19 00:13:57', '2019-04-19 00:17:37', NULL, 221, '', '', '', 4704781, 3151189, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(247, '80600004', 'b1fd0e48387830e16197c940d5ec0e6e', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:34:50', '2019-04-19 00:34:50', '2019-04-19 00:37:18', NULL, 147, '', '', '', 421214, 8260158, 'hotspot1', '02-1A-DB-99-45-2A', 'Lost-Carrier', '', '', '192.168.88.249', NULL, NULL, NULL),
(248, '80600005', '3c7e2cc101d876f9bd935fd82fc315d3', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:40:59', '2019-04-19 00:40:59', '2019-04-19 00:43:46', NULL, 168, '', '', '', 200885, 230364, 'hotspot1', '02-1A-DB-99-45-2A', 'Admin-Reset', '', '', '192.168.88.249', NULL, NULL, NULL),
(249, '80600006', 'e858307491be0b40732c6033cd4fc8cb', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:42:49', '2019-04-19 00:42:49', '2019-04-19 00:43:46', NULL, 57, '', '', '', 44502, 855968, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(250, '80700000', '3512b9a8ca466efd2724490047b644bb', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:46:42', '2019-04-19 00:46:42', '2019-04-19 00:58:28', NULL, 707, '', '', '', 128363, 1082223, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(251, '80700001', '6213b5ccd7482d888266a6e440f0238d', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 00:59:40', '2019-04-19 00:59:40', '2019-04-19 01:02:02', NULL, 143, '', '', '', 54292, 1250174, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(252, '80700002', 'f3ed43c52796d57cf80c0e7cfcc87256', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:03:27', '2019-04-19 01:03:27', '2019-04-19 01:05:46', NULL, 139, '', '', '', 108969, 1648770, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(253, '80700003', 'b3038623eb877d937165ea2a92dd9ca0', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:07:21', '2019-04-19 01:07:21', '2019-04-19 01:07:38', NULL, 17, '', '', '', 38582, 945657, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(254, '80700004', '35c0fdef68bf64a9ef579d70318ed5a4', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:18:26', '2019-04-19 01:18:26', '2019-04-19 01:21:19', NULL, 173, '', '', '', 8693117, 5514671, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(255, '80700005', '748e0134c435e18911a50c93e24bc0de', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:22:30', '2019-04-19 01:22:30', '2019-04-19 01:22:30', NULL, 0, '', '', '', 0, 0, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Clear-Stale-Session', '', '', '192.168.88.250', NULL, NULL, NULL),
(256, '80700005', '7e83898f89ea36e192112d74ec693adb', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', '2154823685', 'Wireless-802.11', '2019-04-19 01:22:31', '2019-04-19 01:24:01', '2019-04-19 01:24:01', NULL, 90, '', '', '', 4265245, 2874406, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(257, '80800000', '2a2e61da0654d83112ebe3f493b19a75', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:26:43', '2019-04-19 01:26:43', '2019-04-19 01:36:21', NULL, 577, '', '', '', 15691817, 28019068, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(258, '80800001', 'bba4ee3b31eef4311f99d8d16445ecdd', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:37:02', '2019-04-19 01:37:02', '2019-04-19 01:38:18', NULL, 76, '', '', '', 6641749, 5434268, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(259, '80800002', '036cc82e320897591b24e8c8faeb2bd8', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:38:58', '2019-04-19 01:38:58', '2019-04-19 01:40:37', NULL, 98, '', '', '', 5808468, 3963493, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(260, '80800003', 'db43b7b1d75b8e0cefe3c906bf31a9cc', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:41:15', '2019-04-19 01:41:15', '2019-04-19 01:42:23', NULL, 68, '', '', '', 3925911, 2704856, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(261, '80800004', '8ad9e3fa9b7ad451b4355593d7f593f4', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:43:01', '2019-04-19 01:43:01', '2019-04-19 01:43:54', NULL, 53, '', '', '', 2048668, 2309550, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(262, '80800005', '54e8b5bc7665be54a262a7c39bb38b93', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:45:19', '2019-04-19 01:45:19', '2019-04-19 01:48:07', NULL, 169, '', '', '', 6821502, 6057309, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(263, '80800006', '466d2870415cc56a3b8ec8d704172fb7', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:48:48', '2019-04-19 01:48:48', '2019-04-19 01:58:48', NULL, 600, '', '', '', 13468783, 6980775, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Session-Timeout', '', '', '192.168.88.250', NULL, NULL, NULL),
(264, '80800007', '507d866fff9ef652db361a3e4aada9a0', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 01:55:33', '2019-04-19 01:55:33', '2019-04-19 01:56:18', NULL, 45, '', '', '', 1654924, 2477580, 'hotspot1', 'DC-66-72-15-D2-B7', 'Lost-Carrier', '', '', '192.168.88.248', NULL, NULL, NULL),
(265, '80800008', '62cf2f0ad9c6c709f3fc2657c34bd46e', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:01:35', '2019-04-19 02:01:35', '2019-04-19 02:03:43', NULL, 128, '', '', '', 4681789, 4714316, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(266, '80800009', 'dabf46c68f9dcc9c4cb351c5500330bd', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:04:15', '2019-04-19 02:04:15', '2019-04-19 02:07:27', NULL, 191, '', '', '', 4656114, 2743124, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(267, '8080000a', 'b5cd08870320625543b860a869f673f5', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:08:03', '2019-04-19 02:08:03', '2019-04-19 02:08:57', NULL, 54, '', '', '', 7458732, 4036032, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(268, '8080000b', 'b6b3c3bfa1bf4fb4bd57770a3be73ad8', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:10:57', '2019-04-19 02:10:57', '2019-04-19 02:11:50', NULL, 52, '', '', '', 2975991, 1590717, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(269, '8080000c', 'f33ed456201be5a3c300747289111c19', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:12:30', '2019-04-19 02:12:30', '2019-04-19 02:15:35', NULL, 185, '', '', '', 4624991, 3440336, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(270, '8080000d', 'ba6ab325447fae46a27d93b8fe7ec443', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:16:14', '2019-04-19 02:16:14', '2019-04-19 02:17:42', NULL, 88, '', '', '', 8137140, 2932275, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(271, '8080000e', 'f0d1cdf4cd5207e1a472ddbe68ea7923', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:18:35', '2019-04-19 02:18:35', '2019-04-19 02:19:05', NULL, 29, '', '', '', 233225, 2845759, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(272, '8080000f', 'c4aee5c1aa512d1c043c36e4b137fcc1', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:20:30', '2019-04-19 02:20:30', '2019-04-19 02:21:51', NULL, 81, '', '', '', 8586036, 4227074, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(273, '80800010', 'd64c09d65b7cc379cfc480aaa0be39fd', '5c861625aeb2ff77d5ab50e5_user_ticket', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 02:23:20', '2019-04-19 02:23:20', '2019-04-19 02:33:20', NULL, 600, '', '', '', 4607049, 2921146, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Session-Timeout', '', '', '192.168.88.250', NULL, NULL, NULL),
(274, '80900000', '23cd2d70d31a4f0372f64ea8c2016518', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 05:34:19', '2019-04-19 05:34:19', '2019-04-19 05:36:48', NULL, 149, '', '', '', 4774920, 3409733, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reset', '', '', '192.168.88.250', NULL, NULL, NULL),
(275, '80900001', '54166261c8875256cfc9503999bbe7ea', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 05:37:50', '2019-04-19 05:37:50', '2019-04-19 05:39:34', NULL, 103, '', '', '', 15802942, 11094016, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(276, '80400003', 'effac4620d07500b3c7df868c7e10669', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-19 05:10:45', '2019-04-19 05:38:14', '2019-04-19 05:38:14', NULL, 1649, '', '', '', 3463937, 8252730, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(277, '80400004', 'cffe22b4707bf758a5d7078dbad65fec', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-19 05:38:22', '2019-04-19 05:38:22', '2019-04-19 05:39:43', NULL, 81, '', '', '', 9384236, 12202196, 'hotspot1', '00-0C-29-6B-85-CF', 'User-Request', '', '', '192.168.3.254', NULL, NULL, NULL),
(278, '80900002', 'c090a319ed9630f7f34b7a87bb7597da', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 05:40:50', '2019-04-19 05:40:50', '2019-04-19 05:47:19', NULL, 389, '', '', '', 6454900, 5072229, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(279, '80400005', 'c9711b8c283987275068023c82bc3bf0', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.57', 'media', 'bridge_lan', 'Wireless-802.11', '2019-04-19 05:42:46', '2019-04-19 05:42:46', '2019-04-19 05:42:46', NULL, 0, '', '', '', 0, 0, 'hotspot1', '00-0C-29-6B-85-CF', 'Clear-Stale-Session', '', '', '192.168.3.254', NULL, NULL, NULL),
(280, '80900003', 'ad0c92469bebb875039363bbb5957ec2', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 05:50:15', '2019-04-19 05:50:15', '2019-04-19 05:52:35', NULL, 139, '', '', '', 8044444, 6169271, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Carrier', '', '', '192.168.88.250', NULL, NULL, NULL),
(281, '80900004', '42d176943e9b9e494ba1cbb3413b24e6', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 05:53:09', '2019-04-19 05:53:09', '2019-04-19 06:01:36', NULL, 507, '', '', '', 21367560, 20327981, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Admin-Reboot', '', '', '192.168.88.250', NULL, NULL, NULL),
(282, '80a00000', '382959f7de9041131c512b21ebbe942c', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '192.168.1.7', 'media', 'hotspot', 'Wireless-802.11', '2019-04-19 06:03:56', '2019-04-19 06:03:56', '2019-04-19 06:34:22', NULL, 1826, '', '', '', 15823215, 10633284, 'hotspot1', 'DC-66-72-15-D2-B7', 'Lost-Carrier', '', '', '192.168.88.248', NULL, NULL, NULL),
(283, '80200000', '9fca2a38cf8773ba5928f8a3482f5d1f', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:17:16', '2019-04-19 15:17:16', '2019-04-19 15:22:15', NULL, 299, '', '', '', 1269364, 19976269, 'hotspot1', '78-4F-43-71-DF-02', 'Lost-Service', '', '', '172.16.100.4', NULL, NULL, NULL),
(284, '80200001', '62c82f57a1c74065005e60c50b0bcc72', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:18:23', '2019-04-19 15:18:23', '2019-04-19 15:25:40', NULL, 437, '', '', '', 1083805, 13110428, 'hotspot1', '90-32-4B-34-0E-FD', 'Lost-Carrier', '', '', '172.16.100.7', NULL, NULL, NULL),
(285, '80200002', 'e23fdcdaee06a36311f8e9636aa6c7e2', '5c861625aeb2ff77d5ab50e5_user_vip-1', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:23:34', '2019-04-19 15:23:34', '2019-04-19 15:27:22', NULL, 228, '', '', '', 3509195, 3710606, 'hotspot1', 'DC-2B-2A-00-9B-CB', 'Lost-Service', '', '', '172.16.100.3', NULL, NULL, NULL),
(286, '80200003', '5d4f0ef0d0eb5fe16de4aaf45059ba79', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:26:42', '2019-04-19 15:26:42', '2019-04-19 15:32:56', NULL, 373, '', '', '', 28550768, 40279349, 'hotspot1', '90-32-4B-34-0E-FD', 'Lost-Carrier', '', '', '172.16.100.7', NULL, NULL, NULL),
(287, '80200004', '49d4d4c6e3414403f6fd0356d37a91b5', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:30:31', '2019-04-19 15:30:31', '2019-04-19 16:00:31', NULL, 1800, '', '', '', 9692718, 36374397, 'hotspot1', '78-4F-43-71-DF-02', 'Session-Timeout', '', '', '172.16.100.4', NULL, NULL, NULL),
(288, '80200005', '992d17355895b24f19e00f429a6afbb6', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:34:21', '2019-04-19 15:34:21', '2019-04-19 16:02:43', NULL, 1702, '', '', '', 35861541, 37876507, 'hotspot1', '90-32-4B-34-0E-FD', 'Lost-Service', '', '', '172.16.100.7', NULL, NULL, NULL),
(289, '80200006', 'ba020fb149ff5d41115003fe9c17b640', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:34:30', '2019-04-19 15:34:30', '2019-04-19 15:37:50', NULL, 199, '', '', '', 18131692, 24754509, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '172.16.100.13', NULL, NULL, NULL),
(290, '80200007', 'bf0e3e54c0810bb31fb6f705275fdc87', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:47:12', '2019-04-19 15:47:12', '2019-04-19 15:54:20', NULL, 428, '', '', '', 410326, 4391331, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '172.16.100.13', NULL, NULL, NULL),
(291, '80200008', '37819288e5dac67a90d79accac831591', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:54:15', '2019-04-19 15:54:15', '2019-04-19 15:57:56', NULL, 221, '', '', '', 2322201, 3191915, 'hotspot1', '3C-2E-FF-22-15-6D', 'Lost-Service', '', '', '172.16.100.2', NULL, NULL, NULL),
(292, '80200009', '6e81ac8dbedc477555d1770a52ff3908', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 15:55:42', '2019-04-19 15:55:42', '2019-04-19 15:58:03', NULL, 141, '', '', '', 738780, 340136, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '172.16.100.13', NULL, NULL, NULL),
(293, '8020000a', 'de0c8be6d4669fdeace6ee2853b2ec92', '5c861625aeb2ff77d5ab50e5_user_vip', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 16:00:52', '2019-04-19 16:00:52', '2019-04-19 16:08:21', NULL, 449, '', '', '', 908841, 14420788, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '172.16.100.13', NULL, NULL, NULL),
(294, '8020000b', 'af126297a7c1c9af617bb3dc2ebd6e00', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 16:24:19', '2019-04-19 16:24:19', '2019-04-19 16:33:20', NULL, 540, '', '', '', 1278182, 15128935, 'hotspot1', 'B8-53-AC-71-D5-F2', 'Lost-Service', '', '', '172.16.100.13', NULL, NULL, NULL),
(295, '8020000c', '6aa64be92b4eaf44eb38fcbaf5e57923', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 16:32:05', '2019-04-19 16:32:05', '2019-04-19 16:42:06', NULL, 601, '', '', '', 2212034, 11162656, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '172.16.100.8', NULL, NULL, NULL),
(296, '8020000d', 'ba57cb3471ac16c2924f71f9e7af3a4f', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 16:44:43', '2019-04-19 16:44:43', '2019-04-19 16:56:36', NULL, 712, '', '', '', 914980, 7798786, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '172.16.100.8', NULL, NULL, NULL),
(297, '8020000e', 'b99d0c275468e785f2415be3fd31a17b', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 16:57:24', '2019-04-19 16:57:24', '2019-04-19 17:07:07', NULL, 583, '', '', '', 34377235, 4326312, 'hotspot1', 'EC-1F-72-D6-4E-56', 'Lost-Service', '', '', '172.16.100.8', NULL, NULL, NULL),
(298, '8020000f', '6a2b76a57d10ca7a3b2c1c05460cdfe3', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 17:04:12', '2019-04-19 17:04:12', '2019-04-19 17:34:12', NULL, 1800, '', '', '', 6066068, 46306383, 'hotspot1', '78-4F-43-71-DF-02', 'Session-Timeout', '', '', '172.16.100.4', NULL, NULL, NULL),
(299, '80200010', '34a38fade7639dbd00584a75d4c1e87a', '5c861625aeb2ff77d5ab50e5_user_guest', '', 'WIFIMEDIA', '10.214.8.10', 'media', 'vlan2000', 'Wireless-802.11', '2019-04-19 17:04:13', '2019-04-19 17:04:13', '2019-04-19 17:34:13', NULL, 1800, '', '', '', 6569136, 14661259, 'hotspot1', '02-1A-DB-99-45-2A', 'Session-Timeout', '', '', '172.16.100.9', NULL, NULL, NULL);

--
-- Triggers `radacct`
--
DELIMITER $$
CREATE TRIGGER `radacct_after_update` AFTER UPDATE ON `radacct` FOR EACH ROW BEGIN
INSERT INTO user_stats 
  SET 
  radacct_id        = OLD.radacctid,
  username          = OLD.username,
  realm             = OLD.realm,  
  nasipaddress      = OLD.nasipaddress,
  nasidentifier     = OLD.nasidentifier,
  framedipaddress   = OLD.framedipaddress,
  callingstationid  = OLD.callingstationid,
  acctinputoctets   = (NEW.acctinputoctets - OLD.acctinputoctets), 
  acctoutputoctets  = (NEW.acctoutputoctets - OLD.acctoutputoctets);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `radcheck`
--

CREATE TABLE `radcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radcheck`
--

INSERT INTO `radcheck` (`id`, `username`, `attribute`, `op`, `value`) VALUES
(10369, 'nam', 'Rd-Realm', ':=', 'FREE'),
(10371, 'nam', 'Rd-Account-Disabled', ':=', '0'),
(10372, 'nam', 'Cleartext-Password', ':=', '123456'),
(10373, 'nam', 'Rd-User-Type', ':=', 'user'),
(10374, 'nam', 'Rd-Total-Data', ':=', '0'),
(10375, 'thickbite', 'User-Profile', ':=', '1G-1Day-BW-1Mbs'),
(10376, 'thickbite', 'Rd-Realm', ':=', 'FREE'),
(10377, 'thickbite', 'Cleartext-Password', ':=', 'thickbite'),
(10378, 'thickbite', 'Rd-User-Type', ':=', 'voucher'),
(10379, 'naturalprice', 'User-Profile', ':=', '1G-1Day-BW-1Mbs'),
(10380, 'naturalprice', 'Rd-Realm', ':=', 'FREE'),
(10381, 'naturalprice', 'Cleartext-Password', ':=', 'naturalprice'),
(10382, 'naturalprice', 'Rd-User-Type', ':=', 'voucher'),
(10392, 'kien', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10393, 'kien', 'Rd-Account-Disabled', ':=', '0'),
(10394, 'kien', 'Cleartext-Password', ':=', '123456'),
(10395, 'kien', 'Rd-User-Type', ':=', 'user'),
(10396, 'quan', 'User-Profile', ':=', 'BW-5Mbs'),
(10397, 'quan', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10398, 'quan', 'Rd-Account-Disabled', ':=', '0'),
(10399, 'quan', 'Cleartext-Password', ':=', '123456'),
(10400, 'quan', 'Rd-User-Type', ':=', 'user'),
(10401, 'tuan', 'User-Profile', ':=', 'BW-5Mbs'),
(10402, 'tuan', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10403, 'tuan', 'Rd-Account-Disabled', ':=', '0'),
(10404, 'tuan', 'Cleartext-Password', ':=', '123456'),
(10405, 'tuan', 'Rd-User-Type', ':=', 'user'),
(10407, 'vuong', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10408, 'vuong', 'Rd-Account-Disabled', ':=', '0'),
(10409, 'vuong', 'Cleartext-Password', ':=', '123456'),
(10410, 'vuong', 'Rd-User-Type', ':=', 'user'),
(10411, 'khanh', 'User-Profile', ':=', 'BW-5Mbs'),
(10412, 'khanh', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10413, 'khanh', 'Rd-Account-Disabled', ':=', '0'),
(10415, 'khanh', 'Rd-User-Type', ':=', 'user'),
(10416, 'kien', 'Rd-Cap-Type-Time', ':=', 'hard'),
(10417, 'kien', 'Rd-Cap-Type-Data', ':=', 'hard'),
(10422, 'click_to_connect', 'User-Profile', ':=', '1 Hour click to connect'),
(10423, 'click_to_connect', 'Rd-Realm', ':=', 'FREE'),
(10424, 'click_to_connect', 'Rd-Cap-Type-Time', ':=', 'hard'),
(10425, 'click_to_connect', 'Rd-Account-Disabled', ':=', '0'),
(10426, 'click_to_connect', 'Cleartext-Password', ':=', 'click_to_connect'),
(10427, 'click_to_connect', 'Rd-User-Type', ':=', 'user'),
(10434, 'click_to_connect@media@media', 'User-Profile', ':=', '1 Hour click to connect'),
(10435, 'click_to_connect@media@media', 'Rd-Realm', ':=', 'FREE'),
(10436, 'click_to_connect@media@media', 'Rd-Cap-Type-Time', ':=', 'hard'),
(10437, 'click_to_connect@media@media', 'Rd-Account-Disabled', ':=', '0'),
(10438, 'click_to_connect@media@media', 'Cleartext-Password', ':=', 'click_to_connect'),
(10439, 'click_to_connect@media@media', 'Rd-User-Type', ':=', 'user'),
(10440, 'click_to_connect@media', 'User-Profile', ':=', '1 Hour click to connect'),
(10441, 'click_to_connect@media', 'Rd-Realm', ':=', 'FREE'),
(10442, 'click_to_connect@media', 'Rd-Cap-Type-Time', ':=', 'hard'),
(10443, 'click_to_connect@media', 'Rd-Account-Disabled', ':=', '0'),
(10445, 'click_to_connect@media', 'Rd-User-Type', ':=', 'user'),
(10446, 'spmall9x@gmail.com', 'User-Profile', ':=', '1 Hour click to connect'),
(10447, 'spmall9x@gmail.com', 'Rd-Realm', ':=', 'FREE'),
(10448, 'spmall9x@gmail.com', 'Rd-Account-Disabled', ':=', '0'),
(10449, 'spmall9x@gmail.com', 'Rd-Auto-Mac', ':=', '1'),
(10450, 'spmall9x@gmail.com', 'Cleartext-Password', ':=', '123456'),
(10451, 'spmall9x@gmail.com', 'Rd-User-Type', ':=', 'user'),
(10452, 'nam', 'Rd-Cap-Type-Time', ':=', 'soft'),
(10453, 'nam', 'Rd-Cap-Type-Data', ':=', 'hard'),
(10454, 'nam', 'User-Profile', ':=', '1G-1Day'),
(10471, 'khanh', 'Cleartext-Password', ':=', '111111'),
(10473, 'kien', 'User-Profile', ':=', '1Hour'),
(10475, 'dungtd', 'Rd-Cap-Type-Data', ':=', 'soft'),
(10502, '000C296B85CF', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10503, '000C296B85CF', 'Rd-Cap-Type-Time', ':=', 'hard'),
(10504, '000C296B85CF', 'Rd-Account-Disabled', ':=', '0'),
(10506, '000C296B85CF', 'Rd-User-Type', ':=', 'user'),
(10508, '000C296B85CF', 'Rd-Cap-Type-Data', ':=', 'hard'),
(10509, '000C296B85CF', 'User-Profile', ':=', '1G-1Day'),
(10510, '000C296B85CF', 'Cleartext-Password', ':=', '123456'),
(10517, 'dungtd', 'User-Profile', ':=', 'VLANx'),
(10518, 'click_to_connect@media', 'Cleartext-Password', ':=', 'qqq'),
(10519, 'dungtd', 'Cleartext-Password', ':=', '123456'),
(10520, 'vpn', 'User-Profile', ':=', 'BW-5Mbs'),
(10521, 'vpn', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10522, 'vpn', 'Rd-Account-Disabled', ':=', '0'),
(10523, 'vpn', 'Cleartext-Password', ':=', 'vpn'),
(10524, 'vpn', 'Rd-User-Type', ':=', 'user'),
(10525, 'vuong', 'Rd-Total-Data', ':=', '1073741824'),
(10526, 'funnysisters', 'User-Profile', ':=', '1G-1Day'),
(10527, 'funnysisters', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10528, 'funnysisters', 'Cleartext-Password', ':=', 'funnysisters'),
(10529, 'funnysisters', 'Rd-User-Type', ':=', 'voucher'),
(10530, 'meagerfeeling', 'User-Profile', ':=', '1G-1Day'),
(10531, 'meagerfeeling', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10532, 'meagerfeeling', 'Cleartext-Password', ':=', 'meagerfeeling'),
(10533, 'meagerfeeling', 'Rd-User-Type', ':=', 'voucher'),
(10534, 'harshfireman', 'User-Profile', ':=', '1G-1Day'),
(10535, 'harshfireman', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10536, 'harshfireman', 'Cleartext-Password', ':=', 'harshfireman'),
(10537, 'harshfireman', 'Rd-User-Type', ':=', 'voucher'),
(10538, 'deepfear', 'User-Profile', ':=', '1G-1Day'),
(10539, 'deepfear', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10540, 'deepfear', 'Cleartext-Password', ':=', 'deepfear'),
(10541, 'deepfear', 'Rd-User-Type', ':=', 'voucher'),
(10542, 'glamorousplay', 'User-Profile', ':=', '1G-1Day'),
(10543, 'glamorousplay', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10544, 'glamorousplay', 'Cleartext-Password', ':=', 'glamorousplay'),
(10545, 'glamorousplay', 'Rd-User-Type', ':=', 'voucher'),
(10546, 'vuong', 'User-Profile', ':=', 'Nextify'),
(10549, 'linh', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10550, 'linh', 'Rd-Account-Disabled', ':=', '0'),
(10552, 'linh', 'Rd-User-Type', ':=', 'user'),
(10561, 'linh', 'User-Profile', ':=', '5c861625aeb2ff77d5ab50e5_user_guest'),
(10562, 'linh', 'Rd-Cap-Type-Data', ':=', 'hard'),
(10563, '5c861625aeb2ff77d5ab50e5_user_guest', 'User-Profile', ':=', '5c861625aeb2ff77d5ab50e5_user_guest'),
(10564, '5c861625aeb2ff77d5ab50e5_user_guest', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10565, '5c861625aeb2ff77d5ab50e5_user_guest', 'Rd-Account-Disabled', ':=', '0'),
(10566, '5c861625aeb2ff77d5ab50e5_user_guest', 'Cleartext-Password', ':=', 'Accept'),
(10567, '5c861625aeb2ff77d5ab50e5_user_guest', 'Rd-User-Type', ':=', 'user'),
(10568, '5c861625aeb2ff77d5ab50e5_user_vip', 'User-Profile', ':=', '5c861625aeb2ff77d5ab50e5_user_vip'),
(10569, '5c861625aeb2ff77d5ab50e5_user_vip', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10570, '5c861625aeb2ff77d5ab50e5_user_vip', 'Rd-Account-Disabled', ':=', '0'),
(10571, '5c861625aeb2ff77d5ab50e5_user_vip', 'Cleartext-Password', ':=', 'Accept'),
(10572, '5c861625aeb2ff77d5ab50e5_user_vip', 'Rd-User-Type', ':=', 'user'),
(10573, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'User-Profile', ':=', '5c861625aeb2ff77d5ab50e5_user_vip-1'),
(10574, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10575, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'Rd-Account-Disabled', ':=', '0'),
(10576, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'Cleartext-Password', ':=', 'Accept'),
(10577, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'Rd-User-Type', ':=', 'user'),
(10578, '5c861625aeb2ff77d5ab50e5_user_ticket', 'User-Profile', ':=', '5c861625aeb2ff77d5ab50e5_user_ticket'),
(10579, '5c861625aeb2ff77d5ab50e5_user_ticket', 'Rd-Realm', ':=', 'WIFIMEDIA'),
(10580, '5c861625aeb2ff77d5ab50e5_user_ticket', 'Rd-Account-Disabled', ':=', '0'),
(10581, '5c861625aeb2ff77d5ab50e5_user_ticket', 'Cleartext-Password', ':=', 'Accept'),
(10582, '5c861625aeb2ff77d5ab50e5_user_ticket', 'Rd-User-Type', ':=', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `radgroupcheck`
--

CREATE TABLE `radgroupcheck` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '==',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radgroupcheck`
--

INSERT INTO `radgroupcheck` (`id`, `groupname`, `attribute`, `op`, `value`, `comment`, `created`, `modified`) VALUES
(43, '500M', 'Rd-Reset-Type-Data', ':=', 'never', '', '2013-08-24 21:34:24', '2013-08-24 21:35:25'),
(44, '500M', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2013-08-24 21:34:34', '2013-08-24 21:35:17'),
(45, '500M', 'Rd-Total-Data', ':=', '500000000', '', '2013-08-24 21:34:53', '2013-08-24 21:35:11'),
(49, '250M', 'Rd-Reset-Type-Data', ':=', 'never', '', '2013-08-24 21:38:07', '2013-08-24 21:38:48'),
(51, '250M', 'Rd-Total-Data', ':=', '250000000', '', '2013-08-24 21:38:21', '2013-08-24 21:38:33'),
(53, '1Hour', 'Rd-Reset-Type-Time', ':=', 'never', '', '2013-08-24 21:39:32', '2013-08-24 21:39:53'),
(62, '1Hour', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2013-08-24 21:44:42', '2013-08-24 21:44:49'),
(63, '5M-every-hour', 'Rd-Reset-Interval-Data', ':=', '3600', '', '2014-05-27 19:35:39', '2014-05-27 19:36:09'),
(64, '5M-every-hour', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2014-05-27 19:37:15', '2014-05-27 19:37:20'),
(65, '5M-every-hour', 'Rd-Total-Data', ':=', '5000000', '', '2014-05-27 19:37:31', '2014-05-27 19:37:38'),
(67, '5M-every-hour', 'Rd-Reset-Type-Data', ':=', 'dynamic', '', '2014-05-27 19:39:11', '2014-05-27 19:39:21'),
(68, '5M-every-hour', 'Rd-Mac-Counter-Data', ':=', '1', '', '2014-05-27 19:39:48', '2014-05-27 19:39:53'),
(69, '1G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2014-09-02 16:09:08', '2014-09-02 16:09:18'),
(85, '1G', 'Rd-Total-Data', ':=', '1000000000', '', '2016-06-27 07:23:15', '2016-06-27 07:23:44'),
(87, '2G', 'Rd-Reset-Type-Data', ':=', 'never', '', '2016-06-27 07:46:58', '2016-06-27 07:48:10'),
(88, '2G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 07:47:08', '2016-06-27 07:48:17'),
(89, '2G', 'Rd-Total-Data', ':=', '2000000000', '', '2016-06-27 07:47:33', '2016-06-27 07:48:41'),
(91, '5G', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 07:53:12', '2016-06-27 07:53:17'),
(92, '5G', 'Rd-Reset-Type-Data', ':=', 'never', '', '2016-06-27 07:53:24', '2016-06-27 07:54:06'),
(93, '5G', 'Rd-Total-Data', ':=', '5000000000', '', '2016-06-27 07:54:24', '2016-06-27 07:54:32'),
(95, '1Week', 'Rd-Total-Time', ':=', '604800', '', '2016-06-27 09:05:03', '2016-06-27 09:05:15'),
(96, '1Week', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:05:35', '2016-06-27 09:05:44'),
(97, '1Week', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:05:54', '2016-06-27 09:06:01'),
(99, '1Day', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:07:15', '2016-06-27 09:11:53'),
(100, '1Day', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:07:31', '2016-06-27 09:12:00'),
(101, '1Day', 'Rd-Total-Time', ':=', '86400', '', '2016-06-27 09:12:05', '2016-06-27 09:12:10'),
(102, '1Month', 'Rd-Total-Time', ':=', '2628029', '', '2016-06-27 09:15:32', '2016-06-27 09:16:42'),
(104, '1Month', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 09:17:38', '2016-06-27 09:17:54'),
(105, '1Month', 'Rd-Reset-Type-Time', ':=', 'never', '', '2016-06-27 09:17:47', '2016-06-27 09:18:01'),
(122, '1Hour per MAC daily', 'Rd-Total-Time', ':=', '3600', '', '2016-06-27 12:57:57', '2016-06-27 13:02:14'),
(123, '1Hour', 'Rd-Total-Time', ':=', '3600', '', '2016-06-27 12:58:42', '2016-06-27 12:59:25'),
(124, '250M', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 13:00:33', '2016-06-27 13:00:40'),
(125, '1Hour per MAC daily', 'Rd-Reset-Type-Time', ':=', 'daily', '', '2016-06-27 13:02:57', '2016-06-27 13:03:06'),
(126, '1Hour per MAC daily', 'Rd-Mac-Counter-Time', ':=', '1', '', '2016-06-27 13:03:59', '2016-06-27 13:04:04'),
(127, '1Hour per MAC daily', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2016-06-27 13:04:20', '2016-06-27 13:04:26'),
(129, '500M per MAC daily', 'Rd-Cap-Type-Data', ':=', 'hard', '', '2016-06-27 13:06:37', '2016-06-27 13:07:32'),
(131, '500M per MAC daily', 'Rd-Mac-Counter-Data', ':=', '1', '', '2016-06-27 13:07:06', '2016-06-27 13:07:44'),
(132, '500M per MAC daily', 'Rd-Total-Data', ':=', '500000000', '', '2016-06-27 13:07:23', '2016-06-27 13:11:26'),
(133, '500M per MAC daily', 'Rd-Reset-Type-Data', ':=', 'daily', '', '2016-06-27 13:11:05', '2016-06-27 13:11:16'),
(135, 'VLAN', 'Tunnel-Type', ':=', 'VLAN', '', '2019-02-16 13:35:40', '2019-02-16 13:36:44'),
(136, 'VLAN', 'Tunnel-Medium-Type', ':=', '6', '', '2019-02-16 13:35:47', '2019-02-16 13:36:47'),
(137, 'VLAN', 'Tunnel-Private-Group-Id', ':=', '2', '', '2019-02-16 13:36:04', '2019-02-16 13:36:12'),
(140, 'BW-5Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '5000000', '', '2019-02-18 11:43:58', '2019-02-18 11:44:24'),
(141, 'BW-5Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '5000000', '', '2019-02-18 11:57:23', '2019-02-18 11:57:23'),
(147, 'VLAN', 'Rd-Account-Disabled', ':=', '0', '', '2019-04-12 00:05:16', '2019-04-12 00:05:22'),
(148, 'VLAN', 'Rd-Cap-Type-Data', ':=', 'Hard', '', '2019-04-12 00:05:36', '2019-04-12 00:05:47'),
(152, 'VLAN', 'Rd-User-Type', ':=', 'user', '', '2019-04-12 00:26:57', '2019-04-12 00:27:05'),
(153, 'AAAA', 'Rd-Tag-C', ':=', 'Replace this value', '', '2019-04-17 15:08:28', '2019-04-17 15:08:28'),
(157, 'VLAN', 'Auth-Type', ':=', 'Accept', '', '2019-04-17 18:53:01', '2019-04-17 18:53:35'),
(158, '5c861625aeb2ff77d5ab50e5_group_guest', 'Auth-Type', ':=', 'Accept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '5c861625aeb2ff77d5ab50e5_group_guest', 'Rd-Total-Time', ':=', '604800', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '5c861625aeb2ff77d5ab50e5_group_guest', 'Rd-Reset-Type-Time', ':=', 'never', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '5c861625aeb2ff77d5ab50e5_group_guest', 'Rd-Cap-Type-Time', ':=', 'hard', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '5c861625aeb2ff77d5ab50e5_group_vip', 'Auth-Type', ':=', 'Accept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '5c861625aeb2ff77d5ab50e5_group_vip', 'Rd-Total-Time', ':=', '604800', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '5c861625aeb2ff77d5ab50e5_group_vip', 'Rd-Reset-Type-Time', ':=', 'never', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '5c861625aeb2ff77d5ab50e5_group_vip', 'Rd-Cap-Type-Time', ':=', 'hard', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Auth-Type', ':=', 'Accept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Rd-Total-Time', ':=', '604800', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Rd-Reset-Type-Time', ':=', 'never', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Rd-Cap-Type-Time', ':=', 'hard', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, '5c861625aeb2ff77d5ab50e5_group_guest', 'Idle-Timeout', ':=', '2000', '', '2019-04-18 00:06:28', '2019-04-18 00:06:37'),
(172, '5c861625aeb2ff77d5ab50e5_group_guest', 'Session-Timeout', ':=', '10000', '', '2019-04-18 00:06:45', '2019-04-18 00:06:50'),
(173, '10MB', 'Fall-Through', ':=', 'Replace this value', '', '2019-04-18 16:10:31', '2019-04-18 16:10:31'),
(174, '10MB', 'WISPr-Bandwidth-Max-Down', ':=', 'Replace this value', '', '2019-04-18 16:10:50', '2019-04-18 16:10:50'),
(175, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Auth-Type', ':=', 'Accept', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Rd-Total-Time', ':=', '604800', '', '2019-04-18 17:12:48', '2019-04-18 17:12:48'),
(177, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Rd-Reset-Type-Time', ':=', 'never', '', '2019-04-18 17:12:48', '2019-04-18 17:12:48'),
(178, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Rd-Cap-Type-Time', ':=', 'hard', '', '2019-04-18 17:12:48', '2019-04-18 17:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `radgroupreply`
--

CREATE TABLE `radgroupreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT '',
  `comment` varchar(253) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radgroupreply`
--

INSERT INTO `radgroupreply` (`id`, `groupname`, `attribute`, `op`, `value`, `comment`, `created`, `modified`) VALUES
(5, '500M', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:27:46', '2013-08-24 21:27:46'),
(9, '250M', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:28:41', '2013-08-24 21:28:41'),
(10, '1Hour', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:29:07', '2013-08-24 21:29:07'),
(12, '1G', 'Fall-Through', ':=', 'Yes', '', '2013-08-24 21:29:28', '2013-08-24 21:29:28'),
(28, '2G', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 07:47:44', '2016-06-28 22:10:39'),
(29, '5G', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 07:52:46', '2016-06-28 22:10:26'),
(30, '1Week', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:04:36', '2016-06-28 22:11:09'),
(31, '1Day', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:06:52', '2016-06-28 22:11:30'),
(32, '1Month', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:17:21', '2016-06-28 22:11:14'),
(33, 'BW-1Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:44:45', '2016-06-28 22:09:42'),
(34, 'BW-1Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '2016-06-27 09:48:41', '2016-06-27 09:48:41'),
(35, 'BW-1Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '2016-06-27 09:48:46', '2016-06-27 09:48:46'),
(36, 'BW-384Kbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:50:08', '2016-06-28 22:09:30'),
(37, 'BW-384Kbs', 'WISPr-Bandwidth-Max-Up', ':=', '384000', '', '2016-06-27 09:50:43', '2016-06-27 09:51:09'),
(38, 'BW-384Kbs', 'WISPr-Bandwidth-Max-Down', ':=', '384000', '', '2016-06-27 09:51:15', '2016-06-27 09:51:15'),
(39, 'BW-512Kbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:51:51', '2016-06-28 22:08:54'),
(40, 'BW-512Kbs', 'WISPr-Bandwidth-Max-Up', ':=', '512000', '', '2016-06-27 09:52:22', '2016-06-27 09:52:34'),
(41, 'BW-512Kbs', 'WISPr-Bandwidth-Max-Down', ':=', '512000', '', '2016-06-27 09:52:27', '2016-06-27 09:52:46'),
(42, 'BW-2Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:53:53', '2016-06-28 22:09:36'),
(43, 'BW-2Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '2000000', '', '2016-06-27 09:53:57', '2016-06-27 09:54:19'),
(44, 'BW-2Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '2000000', '', '2016-06-27 09:54:02', '2016-06-27 09:54:30'),
(45, 'BW-4Mbs', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:55:38', '2016-06-28 22:09:13'),
(46, 'BW-4Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '4000000', '', '2016-06-27 09:55:42', '2016-06-27 09:55:59'),
(47, 'BW-4Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '4000000', '', '2016-06-27 09:55:46', '2016-06-27 09:56:06'),
(48, '5M-every-hour', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 12:55:34', '2016-06-27 12:55:34'),
(49, '1Hour per MAC daily', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 12:56:33', '2016-06-28 22:11:19'),
(50, '500M per MAC daily', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 13:06:14', '2016-06-28 22:10:31'),
(51, 'VLAN', 'Fall-Through', ':=', 'Yes', '', '2019-02-16 13:36:56', '2019-02-16 13:36:56'),
(52, 'BW-5Mbs', 'Fall-Through', ':=', 'Yes', '', '2019-02-18 11:44:28', '2019-02-18 11:44:28'),
(54, 'VLAN', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '2019-04-12 00:21:16', '2019-04-12 00:21:16'),
(55, 'VLAN', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '2019-04-12 00:21:21', '2019-04-12 00:21:21'),
(56, 'Next-1Mbs', 'Fall-Through', ':=', 'Yes', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Next-1Mbs', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Next-1Mbs', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Next-384Kbs', 'Fall-Through', ':=', 'Yes', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Next-384Kbs', 'WISPr-Bandwidth-Max-Up', ':=', '384000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Next-384Kbs', 'WISPr-Bandwidth-Max-Down', ':=', '384000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Next-1H', 'Fall-Through', ':=', 'Yes', '', '2016-06-27 09:44:45', '2016-06-28 22:09:42'),
(63, 'Next-1H', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '2016-06-27 09:48:41', '2016-06-27 09:48:41'),
(64, 'Next-1H', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '2016-06-27 09:48:46', '2016-06-27 09:48:46'),
(71, '5c861625aeb2ff77d5ab50e5_group_guest', 'Fall-Through', ':=', 'Yes', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '5c861625aeb2ff77d5ab50e5_group_guest', 'WISPr-Bandwidth-Max-Down', ':=', '1000000', '', '0000-00-00 00:00:00', '2019-04-19 15:48:59'),
(73, '5c861625aeb2ff77d5ab50e5_group_guest', 'WISPr-Bandwidth-Max-Up', ':=', '1000000', '', '0000-00-00 00:00:00', '2019-04-19 15:48:59'),
(74, '5c861625aeb2ff77d5ab50e5_group_vip', 'Fall-Through', ':=', 'Yes', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '5c861625aeb2ff77d5ab50e5_group_vip', 'WISPr-Bandwidth-Max-Down', ':=', '15000000', '', '0000-00-00 00:00:00', '2019-04-19 05:52:14'),
(76, '5c861625aeb2ff77d5ab50e5_group_vip', 'WISPr-Bandwidth-Max-Up', ':=', '15000000', '', '0000-00-00 00:00:00', '2019-04-19 05:52:14'),
(77, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Fall-Through', ':=', 'Yes', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'WISPr-Bandwidth-Max-Down', ':=', '3000000', '', '0000-00-00 00:00:00', '2019-04-19 05:47:37'),
(79, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'WISPr-Bandwidth-Max-Up', ':=', '2000000', '', '0000-00-00 00:00:00', '2019-04-19 05:47:37'),
(80, '5c861625aeb2ff77d5ab50e5_group_guest', 'Session-Timeout', ':=', '1800', '', '2019-04-18 00:33:42', '2019-04-19 15:48:59'),
(81, '5c861625aeb2ff77d5ab50e5_group_vip', 'Session-Timeout', ':=', '10800', '', '2019-04-18 00:38:46', '2019-04-19 05:52:14'),
(82, '5c861625aeb2ff77d5ab50e5_group_vip-1', 'Session-Timeout', ':=', '14400', '', '2019-04-18 00:39:01', '2019-04-19 05:47:37'),
(83, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Session-Timeout', ':=', '600', '', '2019-04-18 17:12:48', '2019-04-19 05:47:41'),
(84, '5c861625aeb2ff77d5ab50e5_group_ticket', 'WISPr-Bandwidth-Max-Up', ':=', '8000000', '', '2019-04-18 17:12:48', '2019-04-19 05:47:41'),
(85, '5c861625aeb2ff77d5ab50e5_group_ticket', 'WISPr-Bandwidth-Max-Down', ':=', '8000000', '', '2019-04-18 17:12:48', '2019-04-19 05:47:41'),
(86, '5c861625aeb2ff77d5ab50e5_group_ticket', 'Fall-Through', ':=', 'Yes', '', '2019-04-18 17:12:48', '2019-04-18 17:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `radippool`
--

CREATE TABLE `radippool` (
  `id` int(11) UNSIGNED NOT NULL,
  `pool_name` varchar(30) NOT NULL,
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `calledstationid` varchar(30) NOT NULL,
  `callingstationid` varchar(30) NOT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `pool_key` varchar(30) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `permanent_user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `radpostauth`
--

CREATE TABLE `radpostauth` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT NULL,
  `pass` varchar(64) NOT NULL DEFAULT '',
  `reply` varchar(32) NOT NULL DEFAULT '',
  `nasname` varchar(128) NOT NULL DEFAULT '',
  `authdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radpostauth`
--

INSERT INTO `radpostauth` (`id`, `username`, `realm`, `pass`, `reply`, `nasname`, `authdate`) VALUES
(2, 'dvdwalt@meshdesk', NULL, 'dvdwalt', 'Access-Accept', '', '2017-05-06 22:29:02'),
(3, 'dungtd', NULL, '0x4f4fb06e2183f3405982db5a1091e9effd', 'Access-Accept', '', '2019-01-18 03:15:22'),
(4, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 03:33:18'),
(5, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 03:34:38'),
(6, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 03:38:27'),
(7, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 03:54:34'),
(8, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 03:56:01'),
(9, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 04:11:31'),
(10, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 04:15:18'),
(11, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 04:17:36'),
(12, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 04:27:16'),
(13, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 04:27:43'),
(14, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 05:09:31'),
(15, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 05:12:11'),
(16, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 05:13:20'),
(17, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:14:53'),
(18, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:22:17'),
(19, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:32:08'),
(20, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:33:07'),
(21, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:35:42'),
(22, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:40:45'),
(23, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 06:48:40'),
(24, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:00:27'),
(25, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:26:37'),
(26, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:28:32'),
(27, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:38:19'),
(28, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:54:47'),
(29, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 07:59:29'),
(30, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 08:08:39'),
(31, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 08:10:56'),
(32, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 08:13:34'),
(33, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 20:25:59'),
(34, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 20:49:45'),
(35, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 20:55:33'),
(36, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-18 22:44:30'),
(37, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-19 15:28:55'),
(38, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-19 15:39:29'),
(39, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-19 16:59:27'),
(40, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-19 17:01:25'),
(41, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-19 17:05:26'),
(42, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-24 06:03:01'),
(43, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 07:05:06'),
(44, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 07:05:06'),
(45, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 08:41:56'),
(46, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 08:41:56'),
(47, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 08:49:24'),
(48, 'dungtd', NULL, '', 'Access-Accept', '', '2019-01-24 08:49:24'),
(49, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-28 03:10:03'),
(50, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-28 03:17:37'),
(51, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-28 03:22:37'),
(52, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-28 03:34:19'),
(53, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-01-28 04:00:00'),
(54, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:31:42'),
(55, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:31:42'),
(56, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:14'),
(57, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:14'),
(58, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:18'),
(59, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:18'),
(60, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:19'),
(61, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:19'),
(62, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:23'),
(63, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:32:23'),
(64, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:37:53'),
(65, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:37:53'),
(66, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:37:54'),
(67, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:37:54'),
(68, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:37:58'),
(69, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:04'),
(70, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:04'),
(71, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:10'),
(72, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:10'),
(73, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:14'),
(74, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:38:14'),
(75, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:46'),
(76, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:46'),
(77, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:47'),
(78, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:47'),
(79, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:48'),
(80, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:48'),
(81, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:57'),
(82, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:45:57'),
(83, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:00'),
(84, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:05'),
(85, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:05'),
(86, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:11'),
(87, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:11'),
(88, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:40'),
(89, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:40'),
(90, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:44'),
(91, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:47'),
(92, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:48'),
(93, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:46:48'),
(94, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:47:52'),
(95, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:47:52'),
(96, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:49:42'),
(97, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:49:42'),
(98, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:53:59'),
(99, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:53:59'),
(100, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:54:03'),
(101, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 06:54:03'),
(102, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 07:02:07'),
(103, 'nam', NULL, '', 'Access-Accept', '', '2019-02-16 07:02:07'),
(104, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 01:46:46'),
(105, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 01:46:46'),
(106, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:36:45'),
(107, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:36:45'),
(108, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:41:13'),
(109, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:41:13'),
(110, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:49:30'),
(111, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 04:49:30'),
(112, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 04:51:08'),
(113, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 04:51:08'),
(114, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 04:57:38'),
(115, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 04:57:38'),
(116, 'kien', NULL, '', 'Access-Reject', '', '2019-02-18 05:02:15'),
(117, 'kien', NULL, '', 'Access-Reject', '', '2019-02-18 05:02:35'),
(118, 'kien', NULL, '', 'Access-Reject', '', '2019-02-18 05:02:42'),
(119, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 05:03:51'),
(120, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 05:03:51'),
(121, 'wifimedia', NULL, '', 'Access-Reject', '', '2019-02-18 05:05:23'),
(122, 'wifimedia', NULL, '', 'Access-Reject', '', '2019-02-18 05:05:34'),
(123, 'wifimedia', NULL, '', 'Access-Reject', '', '2019-02-18 05:05:40'),
(124, 'wifimedia', NULL, '', 'Access-Reject', '', '2019-02-18 05:05:44'),
(125, 'wifimedia', NULL, '', 'Access-Reject', '', '2019-02-18 05:05:51'),
(126, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 05:06:08'),
(127, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 05:06:08'),
(128, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 05:06:53'),
(129, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 05:07:22'),
(130, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 06:26:47'),
(131, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 06:26:47'),
(132, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 06:37:31'),
(133, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 06:37:31'),
(134, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 06:51:13'),
(135, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 06:51:23'),
(136, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 06:51:45'),
(137, 'media', NULL, '', 'Access-Reject', '', '2019-02-18 06:58:30'),
(138, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 06:59:40'),
(139, 'quan', NULL, '', 'Access-Accept', '', '2019-02-18 06:59:40'),
(140, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 08:29:38'),
(141, 'nam', NULL, '', 'Access-Accept', '', '2019-02-18 08:29:38'),
(142, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:22'),
(143, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:22'),
(144, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:30'),
(145, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:30'),
(146, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:44'),
(147, 'kien', NULL, '', 'Access-Accept', '', '2019-02-18 08:41:44'),
(148, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-25 06:53:54'),
(149, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-25 06:55:43'),
(150, 'nam', NULL, '123456', 'Access-Accept', '', '2019-02-25 06:56:37'),
(151, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-25 08:09:58'),
(152, 'kien', NULL, '123456', 'Access-Accept', '', '2019-02-25 08:17:26'),
(153, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-25 09:00:33'),
(154, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-25 09:23:33'),
(155, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 09:39:17'),
(156, 'click_to_connect', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 09:41:30'),
(157, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:11:26'),
(158, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:12:52'),
(159, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:14:22'),
(160, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:16:38'),
(161, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:18:31'),
(162, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:21:38'),
(163, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 10:22:56'),
(164, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 12:45:03'),
(165, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-25 13:50:48'),
(166, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 01:35:25'),
(167, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 01:51:20'),
(168, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 01:54:03'),
(169, 'click_to_connect', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:40:58'),
(170, 'click_to_connect', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:44:41'),
(171, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:45:26'),
(172, 'kien', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:45:32'),
(173, 'kien', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:45:35'),
(174, 'kien', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:45:40'),
(175, 'quan', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:45:45'),
(176, 'click_to_connect', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:45:48'),
(177, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:45:59'),
(178, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:46:04'),
(179, 'nam', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:47:57'),
(180, 'nam', NULL, '123456', 'Access-Accept', '', '2019-02-26 02:48:51'),
(181, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 02:49:26'),
(182, 'nam', NULL, '123456', 'Access-Accept', '', '2019-02-26 03:39:24'),
(183, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 06:28:02'),
(184, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 06:47:01'),
(185, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 09:20:00'),
(186, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 09:21:14'),
(187, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 09:22:28'),
(188, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-26 10:03:30'),
(189, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-27 01:40:58'),
(190, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-02-28 08:38:10'),
(191, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 01:47:54'),
(192, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 02:53:18'),
(193, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 03:08:09'),
(194, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 06:14:31'),
(195, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 06:14:34'),
(196, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-01 07:11:31'),
(197, 'click_to_connect@media', NULL, 'click_to_connect', 'Access-Accept', '', '2019-03-03 07:30:53'),
(198, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:15:58'),
(199, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:15:58'),
(200, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:16:24'),
(201, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:16:24'),
(202, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:21:38'),
(203, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:21:38'),
(204, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:24:08'),
(205, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:24:08'),
(206, 'dungtd', NULL, '', 'Access-Reject', '', '2019-03-15 10:36:36'),
(207, 'dungtd', NULL, '', 'Access-Reject', '', '2019-03-15 10:36:44'),
(208, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:37:01'),
(209, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 10:37:01'),
(210, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 11:16:58'),
(211, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-15 11:16:58'),
(212, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:29:22'),
(213, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:29:22'),
(214, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:45:11'),
(215, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:45:11'),
(216, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:48:36'),
(217, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 01:48:36'),
(218, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:08:01'),
(219, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:08:01'),
(220, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:28:14'),
(221, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:28:27'),
(222, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:28:31'),
(223, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:28:35'),
(224, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:29:43'),
(225, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:29:52'),
(226, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:30:04'),
(227, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:30:08'),
(228, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:30:35'),
(229, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:34:17'),
(230, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:35:42'),
(231, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:35:48'),
(232, 'media', NULL, '', 'Access-Reject', '', '2019-03-16 02:38:45'),
(233, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:39:39'),
(234, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:39:39'),
(235, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:41:53'),
(236, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:41:53'),
(237, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:44:10'),
(238, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:44:10'),
(239, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:48:39'),
(240, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:48:40'),
(241, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:50:09'),
(242, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 02:50:09'),
(243, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 03:11:36'),
(244, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 03:11:36'),
(245, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 03:15:58'),
(246, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 03:15:58'),
(247, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 04:16:02'),
(248, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 04:16:02'),
(249, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:16:55'),
(250, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:16:55'),
(251, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:29:58'),
(252, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:29:58'),
(253, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:44:36'),
(254, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:44:36'),
(255, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:46:41'),
(256, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:46:41'),
(257, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:46:42'),
(258, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:46:42'),
(259, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:48:21'),
(260, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 05:48:21'),
(261, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 06:01:48'),
(262, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 06:01:48'),
(263, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 07:41:08'),
(264, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-16 07:41:08'),
(265, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-18 02:24:17'),
(266, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-18 02:24:17'),
(267, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-19 06:27:19'),
(268, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-19 06:27:19'),
(269, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-19 06:27:20'),
(270, 'dungtd', NULL, '', 'Access-Accept', '', '2019-03-19 06:27:20'),
(271, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:14:43'),
(272, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:14:52'),
(273, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:18:26'),
(274, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:18:35'),
(275, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:19:35'),
(276, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:20:58'),
(277, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:21:12'),
(278, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:21:36'),
(279, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:22:14'),
(280, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:22:23'),
(281, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:25:54'),
(282, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:26:02'),
(283, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:26:11'),
(284, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:26:20'),
(285, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:26:29'),
(286, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:26:43'),
(287, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:01'),
(288, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:09'),
(289, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:18'),
(290, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:31'),
(291, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:39'),
(292, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:48'),
(293, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:31:57'),
(294, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:32:05'),
(295, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:32:19'),
(296, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:33:23'),
(297, 'kien', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:33:36'),
(298, 'dungtd', NULL, '0x5af101e5048d65d186ed4d82cabd24e43e', 'Access-Accept', '', '2019-03-23 14:44:05'),
(299, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:44:46'),
(300, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:44:54'),
(301, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:45:03'),
(302, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:45:11'),
(303, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:45:20'),
(304, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:45:34'),
(305, 'nam', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:55:11'),
(306, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 14:56:01'),
(307, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-23 15:24:05'),
(308, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-24 03:12:25'),
(309, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-24 03:16:57'),
(310, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-26 15:03:10'),
(311, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-26 16:00:15'),
(312, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-27 09:47:55'),
(313, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-29 14:56:30'),
(314, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-30 09:37:48'),
(315, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-03-31 15:47:52'),
(316, 'kien', NULL, '', 'Access-Accept', '', '2019-04-02 10:05:35'),
(317, 'kien', NULL, '', 'Access-Accept', '', '2019-04-02 10:05:35'),
(318, 'kien', NULL, '', 'Access-Accept', '', '2019-04-02 10:13:21'),
(319, 'kien', NULL, '', 'Access-Accept', '', '2019-04-02 10:13:21'),
(320, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-02 14:36:04'),
(321, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-02 15:42:07'),
(322, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-03 14:16:14'),
(323, 'dungtd', NULL, '', 'Access-Accept', '', '2019-04-09 11:51:50'),
(324, 'dungtd', NULL, '', 'Access-Accept', '', '2019-04-09 11:51:50'),
(325, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-09 15:30:09'),
(326, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-10 15:19:51'),
(327, 'dungtd', NULL, '123456', 'Access-Accept', '', '2019-04-11 15:39:39'),
(328, 'kien', NULL, '0xc173e07daaa5acbfe4f0511382a9f951a6', 'Access-Accept', '', '2019-04-11 16:46:17'),
(329, 'u1', NULL, '0xecbeb8f9539d74d1c40495ba8fbb96bf33', 'Access-Accept', '', '2019-04-11 17:01:43'),
(330, 'u', NULL, '0x9ad62cf3ed9e09ad99a282370bb948d92c', 'Access-Accept', '', '2019-04-11 17:14:42'),
(331, 'u', NULL, '0x21c8fbe7f2d584aa293fc0301123f7a0ca', 'Access-Accept', '', '2019-04-11 17:16:25'),
(332, 'u', NULL, '0xf297091fcb4633e93e2f52a661982258fb', 'Access-Accept', '', '2019-04-11 17:19:03'),
(333, 'u', NULL, '0x6f4e51f5e6e0a8a5beeedc6ad0ce8c000e', 'Access-Accept', '', '2019-04-11 17:21:45'),
(334, 'u', NULL, '0xc9f642b019b6f4516e11432df05c897653', 'Access-Accept', '', '2019-04-11 17:25:43'),
(335, 'u', NULL, '0x31a845fcd7de061b5bebbb44e714d3700b', 'Access-Accept', '', '2019-04-11 17:27:23'),
(336, 'u', NULL, '0x919c0abbba07b43b861eec9fff4b09de50', 'Access-Accept', '', '2019-04-11 17:28:40'),
(337, 'u', NULL, '0xba9d3c31036cecc66285f0b60e5d34a6e3', 'Access-Accept', '', '2019-04-11 17:31:20'),
(338, 'u', NULL, '0xfbf21f9dc47178d81f3b31467c9ab00926', 'Access-Accept', '', '2019-04-11 17:33:51'),
(339, 'kien', NULL, '0x2ff26bc91e37f03b3e6c722c6b0fe55572', 'Access-Accept', '', '2019-04-12 02:46:16'),
(340, 'u', NULL, '0xb741b3b6c616bbaa1c7fb29d90ce4feeb9', 'Access-Accept', '', '2019-04-12 02:46:40'),
(341, 'abc', NULL, '0x29f10da84d356dea29be097748d345592b', 'Access-Accept', '', '2019-04-12 02:46:51'),
(342, 'abc', NULL, '0x68fe5aa42b3d17aa88ce46cc26f015634e', 'Access-Accept', '', '2019-04-12 02:52:33'),
(343, 'abc', NULL, '0x57c433bc615f533e9aae67b325bf44e553', 'Access-Accept', '', '2019-04-12 02:54:42'),
(344, 'abc', NULL, '0xdb91f6effccaf0d13b3c69798b24fec68b', 'Access-Accept', '', '2019-04-12 10:03:46'),
(345, 'abc', NULL, '0x74bdd42386d0884dfd905697ed888a38db', 'Access-Accept', '', '2019-04-12 10:06:56'),
(346, '000C296B85CF', NULL, '0xdd81f7f40915cc1915df4d125fdf574bc5', 'Access-Accept', '', '2019-04-12 10:09:09'),
(347, '000C296B85CF', NULL, '0x17065b27ec9a2cd9f2d05ef280077f83da', 'Access-Accept', '', '2019-04-12 10:19:58'),
(348, '000C296B85CF', NULL, '0x461d1781cf264b7759499ce7cd76d6aed6', 'Access-Accept', '', '2019-04-12 10:23:18'),
(349, 'linh', NULL, '0x1a1748d0a1ee0fa298c1fd2c4f613cacd8', 'Access-Accept', '', '2019-04-13 10:16:33'),
(350, 'vpn', NULL, '0xb10efcb5ff13d91fd8982d6b61b817a6cb', 'Access-Accept', '', '2019-04-13 16:17:16'),
(351, 'vpn', NULL, 'vpn', 'Access-Accept', '', '2019-04-13 16:17:33'),
(352, 'vpn', NULL, 'vpn', 'Access-Accept', '', '2019-04-15 14:30:49'),
(353, 'vpn', NULL, 'vpn', 'Access-Accept', '', '2019-04-15 14:55:00'),
(354, 'vpn', NULL, '0xef7f2e3d611e50a979c742c67d502b5e6a', 'Access-Accept', '', '2019-04-17 09:18:40'),
(355, 'vpn', NULL, '0x51af52a59d4fdbd33c6d318298f51526dd', 'Access-Accept', '', '2019-04-17 09:18:47'),
(356, 'linh', NULL, '0x47a5dcc49ab99a769e1f43b0ca4554d0b0', 'Access-Accept', '', '2019-04-17 09:20:18'),
(357, 'linh', NULL, '0x495c6f705c9b37df7f4a21adf6b29c81b4', 'Access-Accept', '', '2019-04-17 09:22:34'),
(358, 'linh', NULL, '0x0682342d703b4a0b8e7b0fd72ad27a65c5', 'Access-Accept', '', '2019-04-17 09:24:17'),
(359, 'linh', NULL, '0x33a209803c76a87c2fea5261937379b477', 'Access-Accept', '', '2019-04-17 09:27:04'),
(360, 'linh', NULL, '0xe0bbdfcafbdc91418d3a3b98d616dd594b', 'Access-Accept', '', '2019-04-17 10:39:01'),
(361, 'linh', NULL, '0x2556b35988c643cf4c4fc74c835915f372', 'Access-Accept', '', '2019-04-17 10:42:12'),
(362, 'linh', NULL, '0x75a5b026a2cafb0dca9c36e68acda02e16', 'Access-Accept', '', '2019-04-17 10:44:17'),
(363, 'linh', NULL, '0xbb978f82463471aca346ef8dacf93a37c3', 'Access-Accept', '', '2019-04-17 10:45:23'),
(364, 'linh', NULL, '0x407abdfa54c0eb272a22e0a17dd70d5525', 'Access-Accept', '', '2019-04-18 02:41:36'),
(365, 'linh', NULL, '0x873a7442f3ad796836b8e7fc49a3489ee1', 'Access-Accept', '', '2019-04-18 02:42:00'),
(366, 'linh', NULL, '0xef073c9f00ebc1275da44fd2c041a5f699', 'Access-Accept', '', '2019-04-18 08:34:19'),
(367, '5c861625aeb2ff77d5ab50e5', NULL, '0xeb593f2000cef4f6a45e7f2c8c61a6df85', 'Access-Accept', '', '2019-04-18 08:34:47'),
(368, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, '0xc916a1ceba6d880220affba118b04c365f', 'Access-Accept', '', '2019-04-18 08:37:34'),
(369, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, '0x418905a56850c48833ba3e303c5707a761', 'Access-Accept', '', '2019-04-18 08:39:39'),
(370, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 08:53:18'),
(371, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 08:56:50'),
(372, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 09:03:34'),
(373, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 09:03:47'),
(374, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:05:01'),
(375, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:07:52'),
(376, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:19:59'),
(377, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:36:18'),
(378, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:44:12'),
(379, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:44:24'),
(380, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 10:45:46'),
(381, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:01:37'),
(382, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:07:44'),
(383, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:27:43'),
(384, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:31:16'),
(385, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:54:06'),
(386, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:56:42'),
(387, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 11:59:49'),
(388, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 12:02:57'),
(389, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 12:03:47'),
(390, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 12:03:47'),
(391, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 12:05:36'),
(392, 'vpn', NULL, 'vpn', 'Access-Accept', '', '2019-04-18 14:43:42'),
(393, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:08:27'),
(394, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:13:57'),
(395, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:34:50'),
(396, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:40:59'),
(397, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:42:49'),
(398, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:46:42'),
(399, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 17:59:40'),
(400, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:03:27'),
(401, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:07:21'),
(402, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:18:26'),
(403, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:22:30'),
(404, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:26:43'),
(405, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:37:02'),
(406, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:38:58'),
(407, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:41:15'),
(408, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:43:01'),
(409, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:45:19'),
(410, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:48:48'),
(411, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 18:55:33'),
(412, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:01:35'),
(413, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:04:15'),
(414, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:08:03'),
(415, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:10:57'),
(416, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:12:30'),
(417, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:16:14'),
(418, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:18:35'),
(419, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:20:30'),
(420, '5c861625aeb2ff77d5ab50e5_user_ticket', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 19:23:20'),
(421, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 22:34:19'),
(422, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 22:37:50'),
(423, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, '0x964f47b228d81ef7fb62adc17173514749', 'Access-Accept', '', '2019-04-18 22:38:22'),
(424, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 22:40:50'),
(425, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, '0xc788cf075263b651cc41031049b18ccd11', 'Access-Accept', '', '2019-04-18 22:42:46'),
(426, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 22:50:15'),
(427, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 22:53:09'),
(428, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-18 23:03:56'),
(429, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:17:16'),
(430, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:18:23'),
(431, '5c861625aeb2ff77d5ab50e5_user_vip-1', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:23:34'),
(432, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:26:42'),
(433, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:30:31'),
(434, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:34:21'),
(435, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:34:30'),
(436, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:47:12'),
(437, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:54:15'),
(438, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 08:55:42'),
(439, '5c861625aeb2ff77d5ab50e5_user_vip', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 09:00:52'),
(440, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 09:24:19'),
(441, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 09:32:05'),
(442, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 09:44:43'),
(443, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 09:57:24'),
(444, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 10:04:12'),
(445, '5c861625aeb2ff77d5ab50e5_user_guest', NULL, 'Accept', 'Access-Accept', '', '2019-04-19 10:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `radreply`
--

CREATE TABLE `radreply` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `attribute` varchar(64) NOT NULL DEFAULT '',
  `op` char(2) NOT NULL DEFAULT '=',
  `value` varchar(253) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `radusergroup`
--

CREATE TABLE `radusergroup` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `radusergroup`
--

INSERT INTO `radusergroup` (`id`, `username`, `groupname`, `priority`) VALUES
(26, 'unc-1hour', '1Hour', 5),
(30, '1G-1Day', '1G', 5),
(31, '1G-1Day', '1Day', 3),
(35, '1G-1Day-BW-1Mbs', '1G', 1),
(36, '1G-1Day-BW-1Mbs', '1Day', 5),
(37, '1G-1Day-BW-1Mbs', 'BW-1Mbs', 3),
(38, '5M-every hour', '5M-every-hour', 5),
(39, '1 Hour click to connect', '1Hour per MAC daily', 5),
(40, '500M click to connect', '500M per MAC daily', 5),
(42, 'BW-5Mbs', 'BW-5Mbs', 1),
(43, '1Hour', '1Hour', 5),
(46, 'Nextify', 'VLAN', 5),
(47, 'BW512', 'BW-512Kbs', 5),
(52, 'Next-XXXX', 'Next-1H', 5),
(55, '5c861625aeb2ff77d5ab50e5_user_vip-2', '5c861625aeb2ff77d5ab50e5_group_vip-2', 1),
(58, '5c861625aeb2ff77d5ab50e5_user_vip-2', '5c861625aeb2ff77d5ab50e5_group_vip-2', 1),
(62, '5c861625aeb2ff77d5ab50e5_user_vip-1', '5c861625aeb2ff77d5ab50e5_group_vip-1', 1),
(63, '5c861625aeb2ff77d5ab50e5_user_ticket', '5c861625aeb2ff77d5ab50e5_group_ticket', 1),
(64, '5c861625aeb2ff77d5ab50e5_user_guest', '5c861625aeb2ff77d5ab50e5_group_guest', 1),
(65, '5c861625aeb2ff77d5ab50e5_user_vip', '5c861625aeb2ff77d5ab50e5_group_vip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `realms`
--

CREATE TABLE `realms` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `icon_file_name` varchar(128) NOT NULL DEFAULT 'logo.jpg',
  `phone` varchar(14) NOT NULL DEFAULT '',
  `fax` varchar(14) NOT NULL DEFAULT '',
  `cell` varchar(14) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `street_no` char(10) NOT NULL DEFAULT '',
  `street` char(50) NOT NULL DEFAULT '',
  `town_suburb` char(50) NOT NULL DEFAULT '',
  `city` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `twitter` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(255) NOT NULL DEFAULT '',
  `youtube` varchar(255) NOT NULL DEFAULT '',
  `google_plus` varchar(255) NOT NULL DEFAULT '',
  `linkedin` varchar(255) NOT NULL DEFAULT '',
  `t_c_title` varchar(255) NOT NULL DEFAULT '',
  `t_c_content` text NOT NULL,
  `suffix` char(200) NOT NULL DEFAULT '',
  `suffix_permanent_users` tinyint(1) NOT NULL DEFAULT '0',
  `suffix_vouchers` tinyint(1) NOT NULL DEFAULT '0',
  `suffix_devices` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `realms`
--

INSERT INTO `realms` (`id`, `name`, `available_to_siblings`, `icon_file_name`, `phone`, `fax`, `cell`, `email`, `url`, `street_no`, `street`, `town_suburb`, `city`, `country`, `lat`, `lon`, `user_id`, `created`, `modified`, `twitter`, `facebook`, `youtube`, `google_plus`, `linkedin`, `t_c_title`, `t_c_content`, `suffix`, `suffix_permanent_users`, `suffix_vouchers`, `suffix_devices`) VALUES
(38, 'ADTEK', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 184, '2019-01-14 11:47:05', '2019-02-26 02:19:07', '', '', '', '', '', '', '', '', 0, 0, 0),
(40, 'FREE', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 182, '2019-01-18 03:29:35', '2019-02-26 02:44:32', '', '', '', '', '', '', '', 'media', 0, 0, 0),
(42, 'WIFIMEDIA', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 183, '2019-02-18 04:46:19', '2019-02-18 04:46:19', '', '', '', '', '', '', '', '', 0, 0, 0),
(43, 'QuanDH', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 195, '2019-04-18 09:00:06', '2019-04-18 09:00:06', '', '', '', '', '', '', '', '', 0, 0, 0),
(44, 'Nextify', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 194, '2019-04-18 22:58:58', '2019-04-18 22:58:58', '', '', '', '', '', '', '', '', 0, 0, 0),
(45, 'LongLV', 1, 'logo.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 196, '2019-04-19 06:59:33', '2019-04-19 11:26:51', '', '', '', '', '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `realm_notes`
--

CREATE TABLE `realm_notes` (
  `id` int(11) NOT NULL,
  `realm_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_login_users`
--

CREATE TABLE `social_login_users` (
  `id` int(11) NOT NULL,
  `provider` enum('Facebook','Google','Twitter') DEFAULT 'Facebook',
  `uid` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `locale` varchar(5) NOT NULL DEFAULT '',
  `timezone` tinyint(1) NOT NULL DEFAULT '0',
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT 'male',
  `last_connect_time` datetime DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_login_user_realms`
--

CREATE TABLE `social_login_user_realms` (
  `id` int(11) NOT NULL,
  `social_login_user_id` int(11) DEFAULT NULL,
  `realm_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ssids`
--

CREATE TABLE `ssids` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag_notes`
--

CREATE TABLE `tag_notes` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `available_to_siblings` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `available_to_siblings`, `user_id`, `created`, `modified`) VALUES
(19, 'Lekker', 0, 58, '2013-02-08 10:22:52', '2013-02-08 10:22:52'),
(20, 'Op die oor', 0, 44, '2013-02-08 12:55:44', '2013-02-08 12:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `template_attributes`
--

CREATE TABLE `template_attributes` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `attribute` varchar(128) NOT NULL,
  `type` enum('Check','Reply') DEFAULT 'Check',
  `tooltip` varchar(200) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_attributes`
--

INSERT INTO `template_attributes` (`id`, `template_id`, `attribute`, `type`, `tooltip`, `unit`, `created`, `modified`) VALUES
(2, 19, 'koos', 'Check', 'Gooi hom', 'text_string', '2013-02-09 10:50:35', '2013-02-09 12:15:04'),
(5, 19, 'koos', 'Reply', 'Hy werk lek', 'reply', '2013-02-09 10:50:44', '2013-02-09 16:26:08'),
(6, 19, 'koos', 'Check', 'Skipm dit sal bemost wees', 'text_string', '2013-02-09 10:50:45', '2013-02-09 12:03:54'),
(7, 19, 'Rd-Tag-A', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:18', '2013-02-09 16:55:18'),
(8, 19, 'Rd-Tag-B', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:26', '2013-02-09 16:55:26'),
(9, 19, 'Rd-Tag-C', 'Check', '==Not Defined==', 'text_string', '2013-02-09 16:55:32', '2013-02-09 16:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `template_notes`
--

CREATE TABLE `template_notes` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_notes`
--

INSERT INTO `template_notes` (`id`, `template_id`, `note_id`, `created`, `modified`) VALUES
(20, 18, 46, '2013-02-08 06:07:59', '2013-02-08 06:07:59'),
(21, 18, 47, '2013-02-08 06:08:47', '2013-02-08 06:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `top_ups`
--

CREATE TABLE `top_ups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `data` bigint(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `days_to_use` int(11) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `type` enum('data','time','days_to_use') DEFAULT 'data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_ups`
--

INSERT INTO `top_ups` (`id`, `user_id`, `permanent_user_id`, `data`, `time`, `days_to_use`, `comment`, `created`, `modified`, `type`) VALUES
(1, 183, 257, 1073741824, NULL, NULL, 'free', '2019-04-15 17:02:01', '2019-04-15 17:02:01', 'data');

-- --------------------------------------------------------

--
-- Table structure for table `top_up_transactions`
--

CREATE TABLE `top_up_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permanent_user_id` int(11) DEFAULT NULL,
  `permanent_user` varchar(255) DEFAULT NULL,
  `top_up_id` int(11) DEFAULT NULL,
  `type` enum('data','time','days_to_use') DEFAULT 'data',
  `action` enum('create','update','delete') DEFAULT 'create',
  `radius_attribute` varchar(30) NOT NULL DEFAULT '',
  `old_value` varchar(30) DEFAULT NULL,
  `new_value` varchar(30) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `top_up_transactions`
--

INSERT INTO `top_up_transactions` (`id`, `user_id`, `permanent_user_id`, `permanent_user`, `top_up_id`, `type`, `action`, `radius_attribute`, `old_value`, `new_value`, `created`, `modified`) VALUES
(1, 182, 253, 'nam', 1, 'data', 'create', 'Rd-Total-Data', NULL, '10737418240', '2019-02-15 08:20:03', '2019-02-15 08:20:03'),
(2, 182, 253, 'nam', 1, 'data', 'delete', 'Rd-Total-Data', '10737418240', '0', '2019-03-23 15:06:56', '2019-03-23 15:06:56'),
(3, 183, 257, 'vuong', 1, 'data', 'create', 'Rd-Total-Data', NULL, '1073741824', '2019-04-15 17:02:01', '2019-04-15 17:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_aps`
--

CREATE TABLE `unknown_aps` (
  `id` int(11) UNSIGNED NOT NULL,
  `mac` varchar(255) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `last_contact_from_ip` varchar(255) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `new_server` varchar(255) NOT NULL DEFAULT '',
  `new_server_status` enum('awaiting','fetched','replied') DEFAULT 'awaiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unknown_aps`
--

INSERT INTO `unknown_aps` (`id`, `mac`, `vendor`, `last_contact_from_ip`, `last_contact`, `created`, `modified`, `new_server`, `new_server_status`) VALUES
(26, '40-A5-EF-65-88-23', 'Shenzhen # Shenzhen Four Seas Global Link Network Technology Co., Ltd.', '42.114.31.255', '2019-04-16 18:01:24', '2019-04-16 16:12:18', '2019-04-16 18:01:24', '', 'awaiting');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_dynamic_clients`
--

CREATE TABLE `unknown_dynamic_clients` (
  `id` int(11) NOT NULL,
  `nasidentifier` varchar(128) NOT NULL DEFAULT '',
  `calledstationid` varchar(128) NOT NULL DEFAULT '',
  `last_contact` datetime DEFAULT NULL,
  `last_contact_ip` varchar(128) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unknown_dynamic_clients`
--

INSERT INTO `unknown_dynamic_clients` (`id`, `nasidentifier`, `calledstationid`, `last_contact`, `last_contact_ip`, `created`, `modified`) VALUES
(1, '000000E71501', '00-AA-BB-CC-DD-12', '2019-01-17 00:00:03', '42.113.216.63', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'MikroTik', '', '2019-04-19 14:33:51', '117.7.229.156', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'ap7612-3B401A', 'B8-50-01-A4-C7-31:NexRadius', '2019-04-14 19:04:54', '171.253.102.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'B8:69:F4:89:1B:D9', 'hotspot1', '2019-04-19 00:32:32', '171.253.102.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `unknown_nodes`
--

CREATE TABLE `unknown_nodes` (
  `id` int(11) UNSIGNED NOT NULL,
  `mac` varchar(255) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `from_ip` varchar(15) NOT NULL DEFAULT '',
  `gateway` tinyint(1) NOT NULL DEFAULT '1',
  `last_contact` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `new_server` varchar(255) NOT NULL DEFAULT '',
  `new_server_status` enum('awaiting','fetched','replied') DEFAULT 'awaiting'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(36) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `monitor` tinyint(1) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `name`, `surname`, `address`, `phone`, `email`, `active`, `monitor`, `country_id`, `group_id`, `language_id`, `parent_id`, `lft`, `rght`, `created`, `modified`) VALUES
(44, 'root', '21d0c53ea0cbc1b3a6d11e9e6bb8e28581fc94fb', 'cece0687-4176-42bd-bc89-c239685ccd63', 'root', '', '', '', '', 1, 0, 4, 8, 4, NULL, 1, 26, '2012-12-10 13:14:13', '2019-01-14 11:45:20'),
(182, 'admin_college', '2335f742b9c97449f1fe4c498796bde32bfadcdd', 'eb83e335-ea06-4280-8998-42bf3938cdeb', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 2, 3, '2013-08-28 11:31:14', '2019-04-09 15:40:22'),
(183, 'wifimedia', '4e6adcb8d22aa29fdcb01f362a83fb3380eef16b', '5c3c7672-ba48-4a0d-bf1d-063f67ed90d0', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 4, 5, '2019-01-14 06:45:54', '2019-01-14 06:45:54'),
(184, 'adtek', '194fb23c80cf8444cf09b73497822c464997b1c0', '27c4c513-df2e-4bba-9c67-019df46f5151', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 6, 9, '2019-01-14 06:46:54', '2019-01-17 06:21:27'),
(186, 'phongnam', '0419a8dc297741dc070a8e0c5eb1099bc5d1ddf6', '5c3e90ab-2868-442a-8941-47a367ed90d0', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 10, 11, '2019-01-15 21:02:19', '2019-01-15 21:02:19'),
(187, 'hcm', '67c467dd5caa58325425753dd105c96f7df33b6c', '5c401bba-8a54-484c-a292-4e4467ed90d0', 'HCM', '', '5A Truong Quoc Dung', '', '', 1, 0, 4, 9, 4, 44, 12, 17, '2019-01-17 01:07:54', '2019-01-17 01:07:54'),
(188, 'wifi', '8428e01e64ee8b91b3596fab573c002317e285fd', '5c740137-2680-48c1-99b7-9b012d769134', '', '', '', '', '', 0, 0, 0, 9, NULL, 184, 7, 8, '2019-02-25 21:52:39', '2019-04-13 09:35:54'),
(191, 'APMODE', '45366f7b46939e9804f323078093b40b5e9d0428', '5c74a14f-c224-4be6-94a0-41772d769134', '', '', '', '', '', 1, 0, 4, 9, 4, 187, 13, 16, '2019-02-26 09:15:43', '2019-02-26 09:15:43'),
(192, 'AQ', 'd9f5ad2ea7adc4dee49a459c49184b9f02e0c08a', '5c74a17e-46f4-4df3-930e-44b02d769134', '', '', '', '', '', 1, 0, 4, 9, 4, 191, 14, 15, '2019-02-26 09:16:30', '2019-02-26 09:16:30'),
(193, 'kien5853', '4e6adcb8d22aa29fdcb01f362a83fb3380eef16b', '5c79f2c8-99d4-4554-952f-45782d769134', '', '', 'Kiên WIFIMEDIA', '', '', 1, 0, 4, 9, 4, 44, 18, 19, '2019-03-02 10:04:40', '2019-03-02 10:04:40'),
(194, 'nextify', '3eefaf4b48574190388d31a9228021cf920c0f86', '5cb715d2-9924-4972-b401-427d2d769134', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 20, 21, '2019-04-17 19:02:26', '2019-04-17 19:02:26'),
(195, 'quandh', '4e6adcb8d22aa29fdcb01f362a83fb3380eef16b', '5cb83bfd-42b0-43d1-839b-49d52d769134', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 22, 23, '2019-04-18 15:57:33', '2019-04-18 15:57:33'),
(196, 'longlv', '0b1623eb4b29e260b1c4d9a7874c52294b297af2', '5cb97118-b8c0-4e9a-af7d-fffc2d769134', '', '', '', '', '', 1, 0, 4, 9, 4, 44, 24, 25, '2019-04-19 13:56:24', '2019-04-19 13:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`id`, `user_id`, `note_id`, `created`, `modified`) VALUES
(1, 182, 77, '2014-01-07 22:12:23', '2014-01-07 22:12:23'),
(10, 182, 87, '2017-01-02 06:17:25', '2017-01-02 06:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `user_id`, `name`, `value`, `created`, `modified`) VALUES
(52, 44, 'map_zoom', '18', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(53, 44, 'map_type', 'HYBRID', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(54, 44, 'map_lat', '-25.737590494704', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(55, 44, 'map_lng', '28.30269861188', '2013-04-05 11:30:19', '2015-07-10 03:33:42'),
(56, 44, 'wallpaper', '8.jpg', '2013-04-06 13:51:50', '2016-11-01 14:43:20'),
(57, 182, 'map_zoom', '18', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(58, 182, 'map_type', 'ROADMAP', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(59, 182, 'map_lat', '42.33821464661343', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(60, 182, 'map_lng', '-71.09557402167296', '2013-08-30 07:01:35', '2013-08-30 07:01:35'),
(61, 182, 'wallpaper', '1.jpg', '2013-09-06 17:59:42', '2016-05-04 04:59:04'),
(62, 44, 'dynamic_client_map_zoom', '18', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(63, 44, 'dynamic_client_map_type', 'ROADMAP', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(64, 44, 'dynamic_client_map_lat', '42.33725929507717', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(65, 44, 'dynamic_client_map_lng', '-71.09232318434691', '2016-03-19 04:40:21', '2016-03-19 04:40:21'),
(90, 187, 'realm_id', '39', '2019-01-17 06:16:54', '2019-01-17 06:16:54'),
(91, 187, 'show_data_usage', '1', '2019-01-17 06:16:54', '2019-01-17 06:16:54'),
(92, 187, 'show_recent_failures', '0', '2019-01-17 06:16:54', '2019-01-17 06:16:54'),
(93, 187, 'compact_view', '1', '2019-01-17 06:16:54', '2019-01-17 06:16:54'),
(94, 44, 'realm_id', '42', '2019-02-25 03:05:07', '2019-02-25 03:05:07'),
(95, 44, 'show_data_usage', '1', '2019-02-25 03:05:07', '2019-02-25 03:05:07'),
(96, 44, 'show_recent_failures', '0', '2019-02-25 03:05:07', '2019-02-25 03:05:07'),
(97, 44, 'compact_view', '1', '2019-02-25 03:05:07', '2019-02-25 03:05:07'),
(98, 184, 'realm_id', '38', '2019-02-25 14:52:11', '2019-02-25 14:52:11'),
(99, 184, 'show_data_usage', '1', '2019-02-25 14:52:11', '2019-02-25 14:52:11'),
(100, 184, 'show_recent_failures', '0', '2019-02-25 14:52:11', '2019-02-25 14:52:11'),
(101, 184, 'compact_view', '1', '2019-02-25 14:52:11', '2019-02-25 14:52:11'),
(116, 188, 'wl_active', '1', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(117, 188, 'wl_header', 'WIFIMEDIA', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(118, 188, 'wl_h_bg', 'ffffff', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(119, 188, 'wl_h_fg', '4b4c4c', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(120, 188, 'wl_footer', 'WIFIMEDIA', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(121, 188, 'wl_img_active', '0', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(122, 188, 'wl_img_file', 'logo.png', '2019-02-26 02:10:52', '2019-02-26 02:10:52'),
(123, 195, 'realm_id', '43', '2019-04-18 09:00:11', '2019-04-18 09:00:11'),
(124, 195, 'show_data_usage', '1', '2019-04-18 09:00:11', '2019-04-18 09:00:11'),
(125, 195, 'show_recent_failures', '0', '2019-04-18 09:00:11', '2019-04-18 09:00:11'),
(126, 195, 'compact_view', '1', '2019-04-18 09:00:11', '2019-04-18 09:00:11'),
(127, 194, 'realm_id', '44', '2019-04-18 22:59:12', '2019-04-18 22:59:12'),
(128, 194, 'show_data_usage', '1', '2019-04-18 22:59:12', '2019-04-18 22:59:12'),
(129, 194, 'show_recent_failures', '0', '2019-04-18 22:59:12', '2019-04-18 22:59:12'),
(130, 194, 'compact_view', '1', '2019-04-18 22:59:12', '2019-04-18 22:59:12'),
(131, 196, 'realm_id', '45', '2019-04-19 06:59:36', '2019-04-19 06:59:36'),
(132, 196, 'show_data_usage', '1', '2019-04-19 06:59:36', '2019-04-19 06:59:36'),
(133, 196, 'show_recent_failures', '0', '2019-04-19 06:59:36', '2019-04-19 06:59:36'),
(134, 196, 'compact_view', '1', '2019-04-19 06:59:36', '2019-04-19 06:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_ssids`
--

CREATE TABLE `user_ssids` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `ssidname` varchar(64) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_stats`
--

CREATE TABLE `user_stats` (
  `id` int(11) NOT NULL,
  `radacct_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `realm` varchar(64) DEFAULT '',
  `nasipaddress` varchar(15) NOT NULL DEFAULT '',
  `nasidentifier` varchar(64) NOT NULL DEFAULT '',
  `framedipaddress` varchar(15) NOT NULL DEFAULT '',
  `callingstationid` varchar(50) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `acctinputoctets` bigint(20) NOT NULL,
  `acctoutputoctets` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_stats`
--

INSERT INTO `user_stats` (`id`, `radacct_id`, `username`, `realm`, `nasipaddress`, `nasidentifier`, `framedipaddress`, `callingstationid`, `timestamp`, `acctinputoctets`, `acctoutputoctets`) VALUES
(49, 35, 'dungtd', 'FREE', '192.168.24.138', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-01-19 03:39:22', 621185, 4876037),
(52, 37, 'dungtd', 'FREE', '192.168.24.138', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-01-19 05:01:03', 733833, 8640619),
(53, 40, 'dungtd', 'FREE', '127.0.0.1', 'media', '10.1.0.2', '00-0C-29-6B-85-CF', '2019-01-24 06:05:29', 34735005, 1945121),
(55, 41, 'dungtd', 'FREE', '127.0.0.1', 'media', '10.1.1.112', '84-A1-34-C0-8F-3E', '2019-01-28 03:13:05', 91799746, 57501227),
(57, 42, 'dungtd', 'FREE', '127.0.0.1', 'media', '10.1.0.3', 'D8-CF-9C-11-7B-8F', '2019-01-28 03:21:09', 79968, 30558),
(66, 45, 'dungtd', 'FREE', '10.213.100.1', 'media', '10.213.100.5', '84-A1-34-C0-8F-3E', '2019-01-28 04:05:01', 460677, 150042),
(71, 46, 'nam', 'FREE', '113.22.208.231', 'media', '', 'D8-CF-9C-11-7B-8F', '2019-02-16 06:48:27', 445319, 1736562),
(74, 48, 'nam', 'FREE', '113.22.208.231', 'media', '', 'D8-CF-9C-11-7B-8F', '2019-02-16 07:01:14', 21402719, 535343807),
(76, 50, 'nam', 'FREE', '113.22.208.231', 'media', '', 'D8-CF-9C-11-7B-8F', '2019-02-18 01:46:46', 1968, 3798),
(77, 51, 'nam', 'FREE', '113.22.208.231', 'media', '', '84-A1-34-C0-8F-3E', '2019-02-18 04:40:22', 8509333, 36958620),
(86, 56, 'kien', 'WIFIMEDIA', '113.22.208.231', 'media', '', '84-A1-34-C0-8F-3E', '2019-02-18 05:15:45', 71848905, 72078996),
(87, 57, 'quan', 'WIFIMEDIA', '113.22.208.231', 'media', '', '34-02-86-26-BC-95', '2019-02-18 06:27:12', 14920839, 601868133),
(89, 58, 'kien', 'WIFIMEDIA', '113.22.208.231', 'media', '', '84-A1-34-C0-8F-3E', '2019-02-18 06:46:25', 614581, 2345540),
(92, 60, 'nam', 'FREE', '113.22.208.231', 'media', '', '4C-66-41-46-36-13', '2019-02-18 08:38:58', 47832, 73834),
(94, 62, 'dungtd', 'FREE', '58.187.221.48', 'media', '192.168.20.249', '84-A1-34-C0-8F-3E', '2019-02-25 06:55:14', 47475, 271273),
(95, 64, 'nam', 'FREE', '58.187.221.48', 'media', '192.168.20.248', '18-F0-E4-EB-C4-C3', '2019-02-25 06:57:51', 41373, 215992),
(98, 66, 'kien', 'WIFIMEDIA', '58.187.221.48', 'media', '192.168.20.246', 'D8-CF-9C-11-7B-8F', '2019-02-25 08:22:02', 1424, 1740),
(99, 65, 'dungtd', 'FREE', '58.187.221.48', 'media', '192.168.20.252', 'EC-1F-72-D6-4E-56', '2019-02-25 08:29:10', 308952, 866195),
(101, 68, 'dungtd', 'FREE', '127.0.0.1', 'media', '10.1.0.2', '00-0C-29-6B-85-CF', '2019-02-25 09:25:20', 4350496, 304810),
(106, 70, 'click_to_connect', 'FREE', '127.0.0.1', 'media', '10.1.0.2', '00-0C-29-6B-85-CF', '2019-02-25 10:01:30', 114223, 21786),
(108, 72, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.243', 'D8-CF-9C-11-7B-8F', '2019-02-25 10:14:58', 3278, 66075),
(110, 73, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.252', 'EC-1F-72-D6-4E-56', '2019-02-25 10:17:22', 166327, 1103463),
(111, 74, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.242', '84-A1-34-C0-8F-3E', '2019-02-25 10:18:52', 63016, 580722),
(123, 78, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.240', 'C8-F6-50-68-9C-A3', '2019-02-25 12:48:03', 145547, 2339961),
(124, 79, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.239', '18-E2-9F-F7-9E-23', '2019-02-25 13:51:21', 49055, 214818),
(128, 82, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.234', '4C-66-41-46-36-13', '2019-02-26 02:01:52', 82544, 173446),
(129, 81, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.233', 'D4-AE-05-8D-2F-7B', '2019-02-26 02:07:23', 1795671, 2551033),
(131, 84, 'click_to_connect', 'FREE', '192.168.24.138', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-02-26 02:44:59', 88748, 1550431),
(132, 83, 'click_to_connect', 'FREE', '58.187.221.48', 'media', '192.168.20.231', '84-A1-34-C0-8F-3E', '2019-02-26 02:45:56', 103828, 409235),
(138, 89, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.233', 'D4-AE-05-8D-2F-7B', '2019-02-26 06:42:09', 3542775, 153721363),
(140, 88, 'nam', 'FREE', '58.187.221.48', 'media', '192.168.20.226', '44-6D-57-B4-16-77', '2019-02-26 07:25:04', 82014463, 618158565),
(141, 90, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.223', '4C-66-41-46-36-13', '2019-02-26 07:28:04', 9526504, 521167333),
(142, 91, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.252', 'EC-1F-72-D6-4E-56', '2019-02-26 09:22:01', 608165, 1230697),
(143, 92, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.216', '84-A1-34-C0-8F-3E', '2019-02-26 09:22:02', 3980, 65143),
(146, 94, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.252', 'EC-1F-72-D6-4E-56', '2019-02-26 10:07:37', 48508, 223070),
(148, 95, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.223', '4C-66-41-46-36-13', '2019-02-27 02:40:58', 790728, 4477955),
(150, 96, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.194', '4C-66-41-46-36-13', '2019-02-28 09:23:17', 1417254, 16033695),
(152, 97, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.194', '4C-66-41-46-36-13', '2019-03-01 02:47:54', 1203874, 24284279),
(153, 98, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.191', '6C-96-CF-B4-60-5A', '2019-03-01 02:55:29', 3458, 65971),
(154, 99, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.190', '6C-96-CF-B4-60-5A', '2019-03-01 03:11:06', 58579, 411357),
(155, 100, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.187', '84-A1-34-C0-8F-3E', '2019-03-01 06:14:33', 4555, 65640),
(158, 102, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.184', '44-6D-57-B4-16-77', '2019-03-01 08:11:32', 9323139, 58929680),
(159, 103, 'click_to_connect@media', 'FREE', '58.187.221.48', 'media', '192.168.20.178', 'E0-C7-67-0B-52-5F', '2019-03-03 07:33:02', 3807, 65139),
(164, 106, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-15 10:31:46', 356630, 9602167),
(166, 107, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.20', '84-A1-34-C0-8F-3E', '2019-03-15 10:34:05', 70175947, 73147846),
(171, 110, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-16 01:39:28', 1678097, 61008300),
(174, 112, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-16 02:08:42', 1624676, 9013714),
(189, 112, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-16 03:08:42', -1499740, -10081802),
(196, 118, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-16 04:06:04', -257237, -510983),
(209, 124, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.20', '84-A1-34-C0-8F-3E', '2019-03-16 05:58:32', 29419, 133731),
(210, 124, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.20', '84-A1-34-C0-8F-3E', '2019-03-16 06:01:38', -29419, -133731),
(215, 127, 'dungtd', 'FREE', '10.245.69.32', 'media', '10.245.69.25', '18-F0-E4-EB-C4-C3', '2019-03-18 02:34:24', 661489, 274651),
(251, 164, 'dungtd', 'FREE', '42.114.133.120', 'media', '10.245.68.10', '58.187.33.212', '2019-03-23 14:57:31', 94752, 628263),
(252, 156, 'dungtd', 'FREE', '192.168.24.138', 'media', '192.168.3.253', '00-0C-29-6B-85-CF', '2019-03-23 15:17:43', 559217, 16734176),
(253, 165, 'dungtd', 'FREE', '42.114.133.120', 'media', '10.245.68.10', '58.187.33.212', '2019-03-23 15:25:48', 15502, 23796),
(254, 166, 'dungtd', 'FREE', '42.114.133.120', 'media', '10.245.68.10', '58.187.33.81', '2019-03-24 03:12:59', 152252, 4341058),
(256, 168, 'dungtd', 'FREE', '42.114.133.120', 'media', '10.245.68.10', '1.55.3.244', '2019-03-26 15:08:10', 4883098, 126870817),
(263, 169, 'dungtd', 'FREE', '42.114.133.120', 'media', '10.245.68.10', '1.55.3.244', '2019-03-26 16:05:16', 4433566, 88289770),
(269, 171, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-03-29 15:01:30', 4930461, 78850172),
(281, 171, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-03-29 16:01:30', 3474176, 41651680),
(293, 172, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '118.70.126.5', '2019-03-30 09:42:48', 1142353, 11705526),
(297, 173, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-03-31 15:52:52', 1161662, 18355152),
(299, 173, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-03-31 16:02:52', 4005937, 5079414),
(303, 175, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-02 14:41:04', 1227992, 14729839),
(307, 175, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-02 15:01:04', 3945865, 40436895),
(319, 176, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-02 16:02:07', 470050, 890728),
(322, 177, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-03 14:21:14', 2235257, 5980781),
(330, 177, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-03 15:01:14', 17266780, 66017509),
(342, 177, 'dungtd', 'FREE', '113.22.208.71', 'media', '10.245.68.10', '1.55.7.92', '2019-04-03 16:01:14', 700578, 1139914),
(347, 178, 'dungtd', 'FREE', '42.115.175.42', 'media', '10.245.68.10', '183.81.1.120', '2019-04-09 15:35:09', 2070668, 11059166),
(352, 178, 'dungtd', 'FREE', '42.115.175.42', 'media', '10.245.68.10', '183.81.1.120', '2019-04-09 16:00:09', 2786886, 24597044),
(360, 179, 'dungtd', 'FREE', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-10 15:24:51', 2748185, 19280063),
(368, 179, 'dungtd', 'FREE', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-10 16:04:51', 540962, 3239824),
(370, 180, 'dungtd', 'FREE', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-11 15:44:39', 2351431, 31110840),
(375, 180, 'dungtd', 'FREE', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-11 16:04:39', 10601086, 26170871),
(378, 181, 'kien', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-11 16:56:09', 55291, 285459),
(379, 182, 'u1', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-11 17:01:55', 21555606, 39659387),
(389, 192, 'kien', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-12 02:46:19', 5634821, 7042094),
(394, 196, 'abc', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-12 03:26:55', 2835910, 3353894),
(395, 197, 'abc', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-12 10:03:56', 13690529, 27930943),
(396, 202, 'linh', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.253', '00-0C-29-6B-85-CF', '2019-04-13 10:17:55', 7546530, 18234275),
(397, 204, 'vpn', 'WIFIMEDIA', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-13 16:22:33', 625295, 903543),
(404, 203, 'vpn', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.252', '00-0C-29-6B-85-CF', '2019-04-13 16:49:57', 49448, 49834),
(407, 205, 'vpn', 'WIFIMEDIA', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-15 14:32:25', 131126, 498788),
(408, 206, 'vpn', 'WIFIMEDIA', '118.71.90.212', 'media', '10.245.68.10', '183.81.1.120', '2019-04-15 15:00:00', 3325478, 40271704),
(421, 207, 'vpn', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-17 09:18:42', 12262350, 29580000),
(427, 212, 'linh', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.253', '00-0C-29-6B-85-CF', '2019-04-17 10:00:20', 24821000, 34618355),
(432, 216, 'linh', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.253', '00-0C-29-6B-85-CF', '2019-04-17 11:18:21', 7460392, 15558166),
(433, 217, 'linh', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-18 02:41:38', 3317, 3345),
(435, 218, 'linh', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-18 03:12:01', 3270676, 10562836),
(436, 219, 'linh', 'WIFIMEDIA', '172.99.99.140', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-18 08:34:20', 13680, 13720),
(440, 223, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.248', 'B8-53-AC-71-D5-F2', '2019-04-18 08:55:35', 2402420, 16865894),
(442, 224, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 09:02:38', 20075696, 16268444),
(446, 226, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.244', '8C-45-00-2F-5C-8C', '2019-04-18 09:33:47', 577496, 4554401),
(448, 228, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 10:12:29', 735971, 6225640),
(449, 227, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.248', 'B8-53-AC-71-D5-F2', '2019-04-18 10:12:30', 151857, 578170),
(456, 233, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.248', 'B8-53-AC-71-D5-F2', '2019-04-18 11:02:04', 608222, 3088440),
(457, 232, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 11:02:04', 305595, 1936886),
(463, 237, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.242', '80-ED-2C-96-C2-2E', '2019-04-18 11:55:50', 7402850, 10627835),
(465, 239, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.242', '80-ED-2C-96-C2-2E', '2019-04-18 12:02:19', 2782691, 4624027),
(468, 242, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.62', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 12:04:13', 34830, 951570),
(470, 244, 'vpn', 'WIFIMEDIA', '42.114.31.146', 'media', '10.245.68.10', '183.81.1.120', '2019-04-18 14:48:42', 772135, 9935780),
(473, 244, 'vpn', 'WIFIMEDIA', '42.114.31.146', 'media', '10.245.68.10', '183.81.1.120', '2019-04-18 15:03:42', 6566952, 79811711),
(485, 244, 'vpn', 'WIFIMEDIA', '42.114.31.146', 'media', '10.245.68.10', '183.81.1.120', '2019-04-18 16:03:42', 2708787, 59431461),
(494, 245, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 17:12:43', 9621340, 8128948),
(496, 247, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.249', '02-1A-DB-99-45-2A', '2019-04-18 17:37:18', 622099, 8490522),
(501, 251, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 18:02:02', 63301858, 64828591),
(514, 264, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.248', 'DC-66-72-15-D2-B7', '2019-04-18 18:56:18', 1654924, 2477580),
(516, 265, '5c861625aeb2ff77d5ab50e5_user_ticket', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:03:43', 4681789, 4714316),
(517, 266, '5c861625aeb2ff77d5ab50e5_user_ticket', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:07:27', 4656114, 2743124),
(518, 267, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:08:57', 7458732, 4036032),
(519, 268, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:11:50', 2975991, 1590717),
(520, 269, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:15:35', 4624991, 3440336),
(521, 270, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:17:42', 8137140, 2932275),
(522, 271, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:19:05', 233225, 2845759),
(523, 272, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:21:51', 8586036, 4227074),
(525, 273, '5c861625aeb2ff77d5ab50e5_user_ticket', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 19:33:20', 4607049, 2921146),
(526, 274, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:36:48', 4774920, 3409733),
(527, 275, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:39:34', 15802942, 11094016),
(528, 277, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-18 22:39:43', 9384236, 12202196),
(529, 278, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:46:01', 0, 0),
(530, 278, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:47:19', 6454900, 5072229),
(531, 279, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.57', 'media', '192.168.3.254', '00-0C-29-6B-85-CF', '2019-04-18 22:48:01', 0, 0),
(532, 280, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:52:35', 8044444, 6169271),
(533, 281, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 22:59:01', 0, 0),
(534, 281, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.250', 'EC-1F-72-D6-4E-56', '2019-04-18 23:01:36', 21367560, 20327981),
(535, 282, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.248', 'DC-66-72-15-D2-B7', '2019-04-18 23:09:01', 0, 0),
(536, 282, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '192.168.1.7', 'media', '192.168.88.248', 'DC-66-72-15-D2-B7', '2019-04-18 23:34:22', 15823215, 10633284),
(537, 283, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.4', '78-4F-43-71-DF-02', '2019-04-19 08:22:15', 1269364, 19976269),
(538, 284, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 08:24:01', 0, 0),
(539, 284, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 08:25:40', 1083805, 13110428),
(540, 285, '5c861625aeb2ff77d5ab50e5_user_vip-1', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.3', 'DC-2B-2A-00-9B-CB', '2019-04-19 08:27:22', 3509195, 3710606),
(541, 286, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 08:32:01', 0, 0),
(542, 286, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 08:32:56', 28550768, 40279349),
(543, 287, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.4', '78-4F-43-71-DF-02', '2019-04-19 08:36:01', 0, 0),
(544, 289, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 08:37:50', 18131692, 24754509),
(545, 288, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 08:40:01', 0, 0),
(546, 290, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 08:53:02', 0, 0),
(547, 290, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 08:54:20', 410326, 4391331),
(548, 291, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.2', '3C-2E-FF-22-15-6D', '2019-04-19 08:57:56', 2322201, 3191915),
(549, 292, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 08:58:03', 738780, 340136),
(550, 287, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.4', '78-4F-43-71-DF-02', '2019-04-19 09:00:31', 9692718, 36374397),
(551, 288, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.7', '90-32-4B-34-0E-FD', '2019-04-19 09:02:43', 35861541, 37876507),
(552, 293, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 09:06:01', 0, 0),
(553, 293, '5c861625aeb2ff77d5ab50e5_user_vip', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 09:08:21', 908841, 14420788),
(554, 294, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 09:30:02', 0, 0),
(555, 294, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.13', 'B8-53-AC-71-D5-F2', '2019-04-19 09:33:20', 1278182, 15128935),
(556, 295, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 09:38:02', 0, 0),
(557, 295, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 09:42:06', 2212034, 11162656),
(558, 296, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 09:50:02', 0, 0),
(559, 296, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 09:56:36', 914980, 7798786),
(560, 297, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 10:03:01', 0, 0),
(561, 297, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.8', 'EC-1F-72-D6-4E-56', '2019-04-19 10:07:07', 34377235, 4326312),
(562, 298, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.4', '78-4F-43-71-DF-02', '2019-04-19 10:10:01', 0, 0),
(563, 299, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.9', '02-1A-DB-99-45-2A', '2019-04-19 10:10:01', 0, 0),
(564, 298, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.4', '78-4F-43-71-DF-02', '2019-04-19 10:34:12', 6066068, 46306383),
(565, 299, '5c861625aeb2ff77d5ab50e5_user_guest', 'WIFIMEDIA', '10.214.8.10', 'media', '172.16.100.9', '02-1A-DB-99-45-2A', '2019-04-19 10:34:13', 6569136, 14661259);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `batch` varchar(128) NOT NULL DEFAULT '',
  `status` enum('new','used','depleted','expired') DEFAULT 'new',
  `perc_time_used` int(6) DEFAULT NULL,
  `perc_data_used` int(6) DEFAULT NULL,
  `last_accept_time` datetime DEFAULT NULL,
  `last_reject_time` datetime DEFAULT NULL,
  `last_accept_nas` varchar(128) DEFAULT NULL,
  `last_reject_nas` varchar(128) DEFAULT NULL,
  `last_reject_message` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `extra_name` varchar(100) NOT NULL DEFAULT '',
  `extra_value` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `realm` varchar(50) NOT NULL DEFAULT '',
  `realm_id` int(11) DEFAULT NULL,
  `profile` varchar(50) NOT NULL DEFAULT '',
  `profile_id` int(11) DEFAULT NULL,
  `expire` varchar(10) NOT NULL DEFAULT '',
  `time_valid` varchar(10) NOT NULL DEFAULT '',
  `data_used` bigint(20) DEFAULT NULL,
  `data_cap` bigint(20) DEFAULT NULL,
  `time_used` int(12) DEFAULT NULL,
  `time_cap` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `batch`, `status`, `perc_time_used`, `perc_data_used`, `last_accept_time`, `last_reject_time`, `last_accept_nas`, `last_reject_nas`, `last_reject_message`, `user_id`, `created`, `modified`, `extra_name`, `extra_value`, `password`, `realm`, `realm_id`, `profile`, `profile_id`, `expire`, `time_valid`, `data_used`, `data_cap`, `time_used`, `time_cap`) VALUES
(1, 'hardbikes', '', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2017-05-04 00:46:10', '2019-02-15 08:22:20', '', '', 'hardbikes', 'FREE', 40, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL),
(2, 'thickbite', 'SF', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, '2019-02-15 08:21:46', '2019-02-15 08:21:46', '', '', 'thickbite', 'FREE', 40, '1G-1Day-BW-1Mbs', 17, '', '', NULL, NULL, NULL, NULL),
(3, 'naturalprice', 'SF', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, '2019-02-15 08:21:46', '2019-02-15 08:21:46', '', '', 'naturalprice', 'FREE', 40, '1G-1Day-BW-1Mbs', 17, '', '', NULL, NULL, NULL, NULL),
(4, 'funnysisters', 'MILLW', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, '2019-04-15 17:03:31', '2019-04-15 17:03:31', '', '', 'funnysisters', 'WIFIMEDIA', 42, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL),
(5, 'meagerfeeling', 'MILLW', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, '2019-04-15 17:03:31', '2019-04-15 17:03:31', '', '', 'meagerfeeling', 'WIFIMEDIA', 42, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL),
(6, 'harshfireman', 'MILLW', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, '2019-04-15 17:03:31', '2019-04-15 17:03:31', '', '', 'harshfireman', 'WIFIMEDIA', 42, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL),
(7, 'deepfear', 'MILLW', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, '2019-04-15 17:03:31', '2019-04-15 17:03:31', '', '', 'deepfear', 'WIFIMEDIA', 42, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL),
(8, 'glamorousplay', 'MILLW', 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, '2019-04-15 17:03:31', '2019-04-15 17:03:31', '', '', 'glamorousplay', 'WIFIMEDIA', 42, '1G-1Day', 15, '', '', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl_phinxlog`
--
ALTER TABLE `acl_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aps`
--
ALTER TABLE `aps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_actions`
--
ALTER TABLE `ap_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_loads`
--
ALTER TABLE `ap_loads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profiles`
--
ALTER TABLE `ap_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_entries`
--
ALTER TABLE `ap_profile_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_exits`
--
ALTER TABLE `ap_profile_exits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_exit_ap_profile_entries`
--
ALTER TABLE `ap_profile_exit_ap_profile_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_exit_captive_portals`
--
ALTER TABLE `ap_profile_exit_captive_portals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_notes`
--
ALTER TABLE `ap_profile_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_settings`
--
ALTER TABLE `ap_profile_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_profile_specifics`
--
ALTER TABLE `ap_profile_specifics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_stations`
--
ALTER TABLE `ap_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_systems`
--
ALTER TABLE `ap_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ap_wifi_settings`
--
ALTER TABLE `ap_wifi_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`);

--
-- Indexes for table `checks`
--
ALTER TABLE `checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_notes`
--
ALTER TABLE `device_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_clients`
--
ALTER TABLE `dynamic_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_client_notes`
--
ALTER TABLE `dynamic_client_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_client_realms`
--
ALTER TABLE `dynamic_client_realms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_client_states`
--
ALTER TABLE `dynamic_client_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_details`
--
ALTER TABLE `dynamic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_detail_notes`
--
ALTER TABLE `dynamic_detail_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_detail_social_logins`
--
ALTER TABLE `dynamic_detail_social_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pairs`
--
ALTER TABLE `dynamic_pairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_photos`
--
ALTER TABLE `dynamic_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `email_messages`
--
ALTER TABLE `email_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licensed_devices`
--
ALTER TABLE `licensed_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mac_usages`
--
ALTER TABLE `mac_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meshes`
--
ALTER TABLE `meshes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_entries`
--
ALTER TABLE `mesh_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_exits`
--
ALTER TABLE `mesh_exits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_exit_captive_portals`
--
ALTER TABLE `mesh_exit_captive_portals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_exit_mesh_entries`
--
ALTER TABLE `mesh_exit_mesh_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_notes`
--
ALTER TABLE `mesh_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_settings`
--
ALTER TABLE `mesh_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mesh_specifics`
--
ALTER TABLE `mesh_specifics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nas`
--
ALTER TABLE `nas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nasname` (`nasname`);

--
-- Indexes for table `na_notes`
--
ALTER TABLE `na_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `na_realms`
--
ALTER TABLE `na_realms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `na_states`
--
ALTER TABLE `na_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `na_tags`
--
ALTER TABLE `na_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_accountings`
--
ALTER TABLE `new_accountings`
  ADD PRIMARY KEY (`mac`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_actions`
--
ALTER TABLE `node_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_ibss_connections`
--
ALTER TABLE `node_ibss_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_loads`
--
ALTER TABLE `node_loads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_mesh_entries`
--
ALTER TABLE `node_mesh_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_mesh_exits`
--
ALTER TABLE `node_mesh_exits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_mp_settings`
--
ALTER TABLE `node_mp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_neighbors`
--
ALTER TABLE `node_neighbors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_settings`
--
ALTER TABLE `node_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_stations`
--
ALTER TABLE `node_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_systems`
--
ALTER TABLE `node_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_wifi_settings`
--
ALTER TABLE `node_wifi_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openvpn_clients`
--
ALTER TABLE `openvpn_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openvpn_servers`
--
ALTER TABLE `openvpn_servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openvpn_server_clients`
--
ALTER TABLE `openvpn_server_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_users`
--
ALTER TABLE `permanent_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_user_notes`
--
ALTER TABLE `permanent_user_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_user_notifications`
--
ALTER TABLE `permanent_user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_user_settings`
--
ALTER TABLE `permanent_user_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pptp_clients`
--
ALTER TABLE `pptp_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_components`
--
ALTER TABLE `profile_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_component_notes`
--
ALTER TABLE `profile_component_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_notes`
--
ALTER TABLE `profile_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radacct`
--
ALTER TABLE `radacct`
  ADD PRIMARY KEY (`radacctid`),
  ADD UNIQUE KEY `acctuniqueid` (`acctuniqueid`),
  ADD KEY `username` (`username`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `acctsessionid` (`acctsessionid`),
  ADD KEY `acctsessiontime` (`acctsessiontime`),
  ADD KEY `acctstarttime` (`acctstarttime`),
  ADD KEY `acctinterval` (`acctinterval`),
  ADD KEY `acctstoptime` (`acctstoptime`),
  ADD KEY `nasipaddress` (`nasipaddress`),
  ADD KEY `nasidentifier` (`nasidentifier`);

--
-- Indexes for table `radcheck`
--
ALTER TABLE `radcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32)),
  ADD KEY `FK_radcheck_ref_vouchers` (`username`);

--
-- Indexes for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupname` (`groupname`(32));

--
-- Indexes for table `radippool`
--
ALTER TABLE `radippool`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radippool_poolname_expire` (`pool_name`,`expiry_time`),
  ADD KEY `framedipaddress` (`framedipaddress`),
  ADD KEY `radippool_nasip_poolkey_ipaddress` (`nasipaddress`,`pool_key`,`framedipaddress`);

--
-- Indexes for table `radpostauth`
--
ALTER TABLE `radpostauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radreply`
--
ALTER TABLE `radreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32)),
  ADD KEY `FK_radreply_ref_vouchers` (`username`);

--
-- Indexes for table `radusergroup`
--
ALTER TABLE `radusergroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `realms`
--
ALTER TABLE `realms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `realm_notes`
--
ALTER TABLE `realm_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_users`
--
ALTER TABLE `social_login_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_user_realms`
--
ALTER TABLE `social_login_user_realms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ssids`
--
ALTER TABLE `ssids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_notes`
--
ALTER TABLE `tag_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_attributes`
--
ALTER TABLE `template_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_notes`
--
ALTER TABLE `template_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_ups`
--
ALTER TABLE `top_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_up_transactions`
--
ALTER TABLE `top_up_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_aps`
--
ALTER TABLE `unknown_aps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_dynamic_clients`
--
ALTER TABLE `unknown_dynamic_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nasidentifier` (`nasidentifier`),
  ADD UNIQUE KEY `calledstationid` (`calledstationid`);

--
-- Indexes for table `unknown_nodes`
--
ALTER TABLE `unknown_nodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_ssids`
--
ALTER TABLE `user_ssids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`(32));

--
-- Indexes for table `user_stats`
--
ALTER TABLE `user_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_stats_index` (`radacct_id`,`username`,`realm`,`nasipaddress`,`nasidentifier`,`callingstationid`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ak_vouchers` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;
--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aps`
--
ALTER TABLE `aps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ap_actions`
--
ALTER TABLE `ap_actions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_loads`
--
ALTER TABLE `ap_loads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_profiles`
--
ALTER TABLE `ap_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ap_profile_entries`
--
ALTER TABLE `ap_profile_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `ap_profile_exits`
--
ALTER TABLE `ap_profile_exits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `ap_profile_exit_ap_profile_entries`
--
ALTER TABLE `ap_profile_exit_ap_profile_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `ap_profile_exit_captive_portals`
--
ALTER TABLE `ap_profile_exit_captive_portals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ap_profile_notes`
--
ALTER TABLE `ap_profile_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_profile_settings`
--
ALTER TABLE `ap_profile_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_profile_specifics`
--
ALTER TABLE `ap_profile_specifics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_stations`
--
ALTER TABLE `ap_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_systems`
--
ALTER TABLE `ap_systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ap_wifi_settings`
--
ALTER TABLE `ap_wifi_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1684;
--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3283;
--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT for table `checks`
--
ALTER TABLE `checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `device_notes`
--
ALTER TABLE `device_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dynamic_clients`
--
ALTER TABLE `dynamic_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dynamic_client_notes`
--
ALTER TABLE `dynamic_client_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_client_realms`
--
ALTER TABLE `dynamic_client_realms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_client_states`
--
ALTER TABLE `dynamic_client_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_details`
--
ALTER TABLE `dynamic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dynamic_detail_notes`
--
ALTER TABLE `dynamic_detail_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_detail_social_logins`
--
ALTER TABLE `dynamic_detail_social_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `dynamic_pairs`
--
ALTER TABLE `dynamic_pairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `dynamic_photos`
--
ALTER TABLE `dynamic_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `email_messages`
--
ALTER TABLE `email_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `licensed_devices`
--
ALTER TABLE `licensed_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mac_usages`
--
ALTER TABLE `mac_usages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `meshes`
--
ALTER TABLE `meshes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_entries`
--
ALTER TABLE `mesh_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_exits`
--
ALTER TABLE `mesh_exits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_exit_captive_portals`
--
ALTER TABLE `mesh_exit_captive_portals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_exit_mesh_entries`
--
ALTER TABLE `mesh_exit_mesh_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_notes`
--
ALTER TABLE `mesh_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_settings`
--
ALTER TABLE `mesh_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesh_specifics`
--
ALTER TABLE `mesh_specifics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nas`
--
ALTER TABLE `nas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `na_notes`
--
ALTER TABLE `na_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `na_realms`
--
ALTER TABLE `na_realms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `na_states`
--
ALTER TABLE `na_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `na_tags`
--
ALTER TABLE `na_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_actions`
--
ALTER TABLE `node_actions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_ibss_connections`
--
ALTER TABLE `node_ibss_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_loads`
--
ALTER TABLE `node_loads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_mesh_entries`
--
ALTER TABLE `node_mesh_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_mesh_exits`
--
ALTER TABLE `node_mesh_exits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_mp_settings`
--
ALTER TABLE `node_mp_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_neighbors`
--
ALTER TABLE `node_neighbors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_settings`
--
ALTER TABLE `node_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_stations`
--
ALTER TABLE `node_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_systems`
--
ALTER TABLE `node_systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `node_wifi_settings`
--
ALTER TABLE `node_wifi_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `openvpn_clients`
--
ALTER TABLE `openvpn_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `openvpn_servers`
--
ALTER TABLE `openvpn_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `openvpn_server_clients`
--
ALTER TABLE `openvpn_server_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permanent_users`
--
ALTER TABLE `permanent_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `permanent_user_notes`
--
ALTER TABLE `permanent_user_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permanent_user_notifications`
--
ALTER TABLE `permanent_user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permanent_user_settings`
--
ALTER TABLE `permanent_user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pptp_clients`
--
ALTER TABLE `pptp_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `profile_components`
--
ALTER TABLE `profile_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `profile_component_notes`
--
ALTER TABLE `profile_component_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_notes`
--
ALTER TABLE `profile_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radacct`
--
ALTER TABLE `radacct`
  MODIFY `radacctid` bigint(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;
--
-- AUTO_INCREMENT for table `radcheck`
--
ALTER TABLE `radcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10583;
--
-- AUTO_INCREMENT for table `radgroupcheck`
--
ALTER TABLE `radgroupcheck`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `radgroupreply`
--
ALTER TABLE `radgroupreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `radippool`
--
ALTER TABLE `radippool`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radpostauth`
--
ALTER TABLE `radpostauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;
--
-- AUTO_INCREMENT for table `radreply`
--
ALTER TABLE `radreply`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `radusergroup`
--
ALTER TABLE `radusergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `realms`
--
ALTER TABLE `realms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `realm_notes`
--
ALTER TABLE `realm_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_login_users`
--
ALTER TABLE `social_login_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_login_user_realms`
--
ALTER TABLE `social_login_user_realms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ssids`
--
ALTER TABLE `ssids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tag_notes`
--
ALTER TABLE `tag_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `template_attributes`
--
ALTER TABLE `template_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `template_notes`
--
ALTER TABLE `template_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `top_ups`
--
ALTER TABLE `top_ups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `top_up_transactions`
--
ALTER TABLE `top_up_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unknown_aps`
--
ALTER TABLE `unknown_aps`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `unknown_dynamic_clients`
--
ALTER TABLE `unknown_dynamic_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `unknown_nodes`
--
ALTER TABLE `unknown_nodes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `user_ssids`
--
ALTER TABLE `user_ssids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_stats`
--
ALTER TABLE `user_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;
--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
