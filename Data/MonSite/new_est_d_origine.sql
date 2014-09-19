-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 06 Novembre 2013 à 09:51
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `new_est_d_origine`
--

CREATE TABLE IF NOT EXISTS `new_est_d_origine` (
  `Nr_Film` smallint(4) unsigned NOT NULL,
  `Nr_Nation` char(3) NOT NULL,
  PRIMARY KEY (`Nr_Film`,`Nr_Nation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `new_est_d_origine`
--

INSERT INTO `new_est_d_origine` (`Nr_Film`, `Nr_Nation`) VALUES
(1, 'nz'),
(1, 'us'),
(2, 'us'),
(3, 'us'),
(4, 'fr'),
(5, 'us'),
(6, 'us'),
(7, 'us'),
(8, 'fr'),
(8, 'us'),
(9, 'us'),
(10, 'us'),
(11, 'us'),
(12, 'us'),
(13, 'us'),
(14, 'fr'),
(15, 'us'),
(16, 'us'),
(17, 'es'),
(17, 'fr'),
(17, 'jp'),
(17, 'us'),
(18, 'us'),
(19, 'us'),
(20, 'us'),
(21, 'de'),
(21, 'us'),
(22, 'us'),
(23, 'fr'),
(24, 'us'),
(25, 'us'),
(26, 'gb'),
(26, 'us'),
(27, 'us'),
(28, 'us'),
(29, 'us'),
(30, 'us'),
(31, 'us'),
(32, 'us'),
(33, 'us'),
(34, 'us'),
(35, 'de'),
(35, 'gb'),
(35, 'jp'),
(35, 'us'),
(36, 'us'),
(37, 'us'),
(38, 'us'),
(39, 'us'),
(40, 'fr'),
(41, 'us'),
(42, 'gb'),
(42, 'us'),
(43, 'us'),
(44, 'us'),
(45, 'fr'),
(46, 'us'),
(47, 'us'),
(48, 'us'),
(49, 'us'),
(50, 'gb'),
(50, 'us'),
(51, 'us'),
(52, 'us'),
(53, 'us'),
(54, 'us'),
(55, 'us'),
(56, 'us'),
(57, 'us'),
(58, 'us'),
(59, 'us'),
(60, 'us'),
(61, 'ca'),
(61, 'us'),
(62, 'us'),
(63, 'us'),
(64, 'us'),
(65, 'us'),
(66, 'us'),
(67, 'fr'),
(68, 'us'),
(69, 'gb'),
(69, 'us'),
(70, 'de'),
(70, 'fr'),
(70, 'it'),
(71, 'us'),
(72, 'us'),
(73, 'ca'),
(73, 'fr'),
(73, 'us'),
(74, 'ca'),
(74, 'fr'),
(74, 'gb'),
(75, 'us'),
(76, 'ca'),
(77, 'de'),
(77, 'gb'),
(77, 'us'),
(78, 'us'),
(79, 'us'),
(80, 'us'),
(81, 'us'),
(82, 'us'),
(83, 'es'),
(83, 'fr'),
(84, 'us'),
(85, 'gb'),
(85, 'us'),
(86, 'ca'),
(86, 'gb'),
(86, 'it'),
(87, 'de'),
(87, 'fr'),
(87, 'us'),
(88, 'us'),
(89, 'gb'),
(89, 'us'),
(90, 'fr'),
(91, 'us'),
(92, 'us'),
(93, 'us'),
(94, 'us'),
(95, 'us'),
(96, 'us'),
(97, 'us'),
(98, 'us'),
(99, 'us'),
(100, 'us'),
(101, 'fr'),
(102, 'de'),
(102, 'us'),
(103, 'us'),
(104, 'us'),
(105, 'ca'),
(105, 'de'),
(105, 'us'),
(106, 'us'),
(107, 'us'),
(108, 'us'),
(109, 'fr'),
(110, 'us'),
(111, 'us'),
(112, 'ca'),
(112, 'us'),
(113, 'us'),
(114, 'us'),
(115, 'us'),
(116, 'fr'),
(117, 'us'),
(118, 'au'),
(119, 'us'),
(120, 'us'),
(121, 'ca'),
(121, 'us'),
(122, 'us'),
(123, 'fr'),
(124, 'us'),
(125, 'gb'),
(125, 'us'),
(126, 'us'),
(127, 'us'),
(128, 'us'),
(129, 'us'),
(130, 'es'),
(130, 'fr'),
(131, 'us'),
(132, 'us'),
(133, 'de'),
(133, 'us'),
(134, 'us'),
(135, 'au'),
(135, 'us'),
(136, 'us'),
(137, 'us'),
(138, 'de'),
(138, 'us'),
(139, 'fr'),
(140, 'us'),
(141, 'us'),
(142, 'es'),
(143, 'us'),
(144, 'fr'),
(144, 'gb'),
(144, 'us'),
(145, 'fr'),
(146, 'fr'),
(146, 'us'),
(147, 'au'),
(148, 'us'),
(149, 'us'),
(150, 'de'),
(150, 'gb'),
(150, 'us'),
(151, 'fr'),
(152, 'us'),
(153, 'cn'),
(153, 'us'),
(154, 'us'),
(155, 'us'),
(156, 'us'),
(157, 'fr'),
(158, 'us'),
(159, 'us'),
(160, 'us'),
(161, 'de'),
(161, 'us'),
(162, 'us'),
(163, 'us'),
(164, 'gb'),
(164, 'us'),
(165, 'us'),
(166, 'us'),
(167, 'us'),
(168, 'us'),
(169, 'us'),
(170, 'fr'),
(171, 'fr'),
(172, 'fr'),
(173, 'fr'),
(174, 'fr'),
(175, 'us'),
(176, 'fr'),
(177, 'us'),
(178, 'fr'),
(179, 'us'),
(180, 'us'),
(181, 'us'),
(182, 'gb'),
(182, 'us'),
(183, 'us'),
(184, 'fr'),
(185, 'fr'),
(186, 'fr'),
(187, 'fr'),
(188, 'us'),
(189, 'us'),
(190, 'fr'),
(191, 'us'),
(192, 'fr'),
(193, 'us'),
(194, 'fr'),
(195, 'us'),
(196, 'us'),
(197, 'us'),
(198, 'us'),
(199, 'us'),
(200, 'us'),
(201, 'us'),
(202, 'us'),
(203, 'fr'),
(204, 'gb'),
(205, 'us'),
(206, 'us'),
(207, 'us'),
(208, 'us'),
(209, 'us'),
(210, 'us'),
(211, 'us'),
(212, 'us'),
(213, 'us'),
(214, 'us'),
(215, 'us'),
(216, 'us'),
(217, 'gb'),
(218, 'us'),
(219, 'us'),
(220, 'us'),
(221, 'fr'),
(222, 'fr'),
(222, 'gb'),
(222, 'us'),
(223, 'us'),
(224, 'gb'),
(224, 'us'),
(225, 'fr'),
(226, 'fr'),
(227, 'fr'),
(228, 'us'),
(229, 'us'),
(230, 'us'),
(231, 'us'),
(232, 'us'),
(233, 'fr'),
(234, 'us'),
(235, 'fr'),
(235, 'us'),
(236, 'jp'),
(237, 'us'),
(238, 'fr'),
(239, 'us'),
(240, 'us'),
(241, 'us'),
(242, 'fr'),
(243, 'us'),
(244, 'nz'),
(244, 'us'),
(245, 'es'),
(246, 'gb'),
(246, 'us'),
(247, 'us'),
(248, 'us'),
(249, 'us'),
(250, 'us'),
(251, 'us'),
(252, 'us'),
(253, 'us'),
(254, 'fr'),
(255, 'us'),
(256, 'fr'),
(257, 'fr'),
(258, 'us'),
(259, 'us'),
(260, 'us'),
(261, 'fr'),
(262, 'us'),
(263, 'us'),
(264, 'us'),
(265, 'fr'),
(266, 'gb'),
(266, 'us'),
(267, 'fr'),
(268, 'us'),
(269, 'fr'),
(270, 'gb'),
(270, 'us'),
(271, 'fr'),
(272, 'us'),
(273, 'us'),
(274, 'jp'),
(275, 'us'),
(276, 'fr'),
(277, 'us'),
(278, 'us'),
(279, 'us'),
(280, 'us'),
(281, 'us'),
(282, 'us'),
(283, 'fr'),
(283, 'us'),
(284, 'us'),
(285, 'us'),
(286, 'us'),
(287, 'us'),
(288, 'us'),
(289, 'us'),
(290, 'de'),
(290, 'fr'),
(290, 'it'),
(290, 'us'),
(291, 'jp'),
(292, 'us'),
(293, 'us'),
(294, 'fr'),
(294, 'gb'),
(294, 'us'),
(295, 'us'),
(296, 'us'),
(297, 'de'),
(297, 'us'),
(298, 'us'),
(299, 'fr'),
(300, 'fr'),
(301, 'us'),
(302, 'fr'),
(303, 'us'),
(304, 'us'),
(305, 'us'),
(306, 'ca'),
(306, 'fr'),
(306, 'us'),
(307, 'us'),
(308, 'us'),
(309, 'us'),
(310, 'fr'),
(311, 'us'),
(312, 'fr'),
(313, 'cn'),
(314, 'us'),
(315, 'us'),
(316, 'us'),
(317, 'us'),
(318, 'fr'),
(319, 'us'),
(320, 'fr'),
(321, 'us'),
(322, 'fr'),
(323, 'us'),
(324, 'us'),
(325, 'us'),
(326, 'us'),
(327, 'us'),
(328, 'us'),
(329, 'fr'),
(330, 'us'),
(331, 'us'),
(332, 'fr'),
(333, 'us'),
(334, 'fr'),
(335, 'fr'),
(336, 'de'),
(336, 'gb'),
(336, 'us'),
(337, 'us'),
(338, 'fr'),
(339, 'fr'),
(340, 'fr'),
(340, 'gb'),
(341, 'jp'),
(341, 'us'),
(342, 'us'),
(343, 'us'),
(344, 'fr'),
(345, 'fr'),
(345, 'gb'),
(346, 'us'),
(347, 'fr'),
(348, 'fr'),
(349, 'us'),
(350, 'us'),
(351, 'fr'),
(352, 'us'),
(353, 'fr'),
(354, 'fr'),
(355, 'us'),
(356, 'ca'),
(356, 'us'),
(357, 'fr'),
(358, 'us'),
(359, 'fr'),
(360, 'gb'),
(360, 'us'),
(361, 'us'),
(362, 'fr'),
(363, 'fr'),
(364, 'us'),
(365, 'fr'),
(366, 'fr'),
(367, 'us'),
(368, 'fr'),
(369, 'us'),
(370, 'gb'),
(371, 'gb'),
(371, 'us'),
(372, 'us'),
(373, 'ca'),
(373, 'fr'),
(374, 'us'),
(375, 'fr'),
(376, 'us'),
(377, 'us'),
(378, 'fr'),
(379, 'us'),
(380, 'us'),
(381, 'fr'),
(382, 'us'),
(383, 'fr'),
(384, 'fr'),
(385, 'fr'),
(386, 'us'),
(387, 'us'),
(388, 'us'),
(389, 'us'),
(390, 'us'),
(391, 'us'),
(392, 'us'),
(393, 'de'),
(393, 'gb'),
(393, 'jp'),
(393, 'us'),
(394, 'us'),
(395, 'th'),
(396, 'gb'),
(396, 'us'),
(397, 'fr'),
(398, 'us'),
(399, 'us'),
(400, 'fr'),
(401, 'fr'),
(402, 'us'),
(403, 'us'),
(404, 'fr'),
(405, 'us'),
(406, 'fr'),
(406, 'gb'),
(406, 'us'),
(407, 'cn'),
(407, 'us'),
(408, 'us'),
(409, 'us'),
(410, 'us'),
(411, 'fr'),
(412, 'us'),
(413, 'fr'),
(414, 'us'),
(415, 'us'),
(416, 'us'),
(417, 'us'),
(418, 'fr'),
(419, 'us'),
(420, 'us'),
(421, 'us'),
(422, 'us'),
(423, 'us'),
(424, 'fr'),
(424, 'gb'),
(424, 'us'),
(425, 'fr'),
(426, 'us'),
(427, 'us'),
(428, 'us'),
(429, 'us'),
(430, 'us'),
(431, 'us'),
(432, 'us'),
(433, 'us'),
(434, 'us'),
(435, 'us'),
(436, 'us'),
(437, 'us'),
(438, 'us'),
(439, 'us'),
(440, 'us'),
(441, 'us'),
(442, 'fr'),
(443, 'fr'),
(444, 'us'),
(445, 'fr'),
(446, 'us'),
(447, 'us'),
(448, 'fr'),
(449, 'us'),
(452, 'fr'),
(453, 'fr'),
(454, 'fr'),
(454, 'us'),
(455, 'us'),
(456, 'us'),
(457, 'us'),
(458, 'fr'),
(459, 'fr'),
(460, 'us'),
(461, 'us'),
(462, 'us'),
(463, 'us'),
(464, 'fr'),
(465, 'us'),
(466, 'us'),
(467, 'us'),
(469, 'fr'),
(470, 'us'),
(471, 'us'),
(472, 'be'),
(473, 'us'),
(474, 'ca'),
(475, 'fr'),
(475, 'gb'),
(476, 'us'),
(477, 'gb'),
(478, 'us'),
(479, 'ca'),
(480, 'us'),
(481, 'us'),
(482, 'us'),
(483, 'us'),
(484, 'fr'),
(485, 'fr'),
(486, 'gb'),
(486, 'us'),
(487, 'be'),
(487, 'fr'),
(488, 'us'),
(489, 'fr'),
(490, 'fr'),
(491, 'us'),
(492, 'fr'),
(493, 'fr'),
(494, 'us'),
(495, 'us'),
(496, 'us'),
(497, 'us'),
(498, 'us'),
(499, 'us'),
(500, 'fr'),
(501, 'fr'),
(502, 'us'),
(503, 'us'),
(504, 'us'),
(505, 'fr'),
(506, 'us'),
(507, 'fr'),
(508, 'us'),
(509, 'us'),
(510, 'us'),
(511, 'fr'),
(512, 'us'),
(513, 'us'),
(514, 'us'),
(515, 'us'),
(516, 'fr'),
(517, 'fr'),
(518, 'fr'),
(519, 'fr'),
(520, 'jp'),
(521, 'fr'),
(522, 'us'),
(523, 'fr'),
(524, 'fr'),
(525, 'us'),
(526, 'gb'),
(527, 'fr'),
(528, 'fr'),
(529, 'us'),
(530, 'us'),
(531, 'fr'),
(532, 'us'),
(533, 'us'),
(534, 'fr'),
(534, 'gb'),
(535, 'fr'),
(536, 'fr'),
(537, 'us'),
(538, 'us'),
(539, 'fr'),
(540, 'us'),
(541, 'fr'),
(542, 'us'),
(543, 'us'),
(544, 'fr'),
(545, 'cn'),
(546, 'fr'),
(547, 'us'),
(548, 'us'),
(549, 'gb'),
(550, 'us'),
(551, 'us'),
(552, 'fr'),
(553, 'fr'),
(554, 'us'),
(555, 'us'),
(556, 'jp'),
(556, 'us'),
(557, 'de'),
(557, 'fr'),
(557, 'gb'),
(558, 'fr'),
(559, 'fr'),
(559, 'us'),
(560, 'jp'),
(561, 'fr'),
(562, 'us'),
(563, 'us'),
(564, 'be'),
(564, 'fr'),
(565, 'us'),
(566, 'fr'),
(567, 'fr'),
(568, 'fr'),
(569, 'us'),
(570, 'fr'),
(571, 'us'),
(572, 'us'),
(573, 'us'),
(574, 'us'),
(575, 'us'),
(576, 'us'),
(577, 'fr'),
(578, 'us'),
(579, 'us'),
(580, 'us'),
(581, 'us'),
(582, 'de'),
(582, 'fr'),
(582, 'gb'),
(583, 'fr'),
(584, 'us'),
(585, 'gb'),
(585, 'it'),
(586, 'fr'),
(587, 'us'),
(588, 'us'),
(589, 'fr'),
(590, 'us'),
(591, 'us'),
(592, 'fr'),
(593, 'fr'),
(594, 'fr'),
(595, 'us'),
(596, 'us'),
(597, 'fr'),
(598, 'us'),
(599, 'fr'),
(600, 'us'),
(601, 'fr'),
(602, 'gb'),
(603, 'us'),
(604, 'fr'),
(605, 'us'),
(606, 'fr'),
(607, 'fr'),
(608, 'us'),
(609, 'gb'),
(609, 'us'),
(610, 'fr'),
(611, 'us'),
(612, 'fr'),
(613, 'fr'),
(614, 'us'),
(615, 'fr'),
(616, 'us'),
(617, 'us'),
(618, 'fr'),
(619, 'ca'),
(620, 'us'),
(621, 'fr'),
(622, 'us'),
(623, 'us'),
(624, 'us'),
(625, 'us'),
(626, 'us'),
(627, 'us'),
(628, 'us'),
(629, 'us'),
(630, 'fr'),
(631, 'us'),
(632, 'fr'),
(633, 'us'),
(634, 'us'),
(635, 'us'),
(636, 'us'),
(637, 'us'),
(638, 'fr'),
(639, 'fr'),
(640, 'fr'),
(641, 'fr'),
(642, 'fr'),
(643, 'us'),
(644, 'fr'),
(645, 'us'),
(646, 'fr'),
(646, 'gb'),
(646, 'it'),
(647, 'gb'),
(647, 'us'),
(648, 'fr'),
(649, 'us'),
(650, 'us'),
(651, 'fr'),
(652, 'fr'),
(653, 'us'),
(654, 'be'),
(654, 'de'),
(654, 'fr'),
(654, 'gb'),
(655, 'fr'),
(655, 'us'),
(656, 'us'),
(657, 'us'),
(658, 'us'),
(659, 'us'),
(660, 'us'),
(661, 'fr'),
(662, 'fr'),
(663, 'us'),
(664, 'fr'),
(665, 'us'),
(666, 'us'),
(667, 'gb'),
(668, 'fr'),
(669, 'us'),
(670, 'gb'),
(671, 'us'),
(672, 'fr'),
(673, 'us'),
(674, 'us'),
(675, 'us'),
(676, 'fr'),
(677, 'us'),
(678, 'us'),
(679, 'fr'),
(680, 'fr'),
(681, 'fr'),
(682, 'fr'),
(683, 'us'),
(684, 'fr'),
(685, 'us'),
(686, 'fr'),
(687, 'es'),
(687, 'us'),
(688, 'us'),
(689, 'fr'),
(690, 'fr'),
(690, 'jp'),
(690, 'us'),
(691, 'fr'),
(692, 'cn'),
(692, 'fr'),
(693, 'fr'),
(694, 'fr'),
(695, 'gb'),
(696, 'fr'),
(697, 'us'),
(698, 'us'),
(699, 'us'),
(700, 'fr'),
(701, 'fr'),
(702, 'fr'),
(703, 'fr'),
(704, 'us'),
(705, 'be'),
(705, 'fr'),
(706, 'fr'),
(707, 'fr'),
(708, 'fr'),
(709, 'ca'),
(709, 'gb'),
(710, 'us'),
(711, 'fr'),
(712, 'us'),
(713, 'us'),
(714, 'fr'),
(715, 'us'),
(716, 'us'),
(717, 'us'),
(718, 'fr'),
(719, 'fr'),
(720, 'fr'),
(720, 'gb'),
(721, 'fr'),
(722, 'us'),
(723, 'gb'),
(724, 'us'),
(725, 'jp'),
(726, 'us'),
(727, 'fr'),
(728, 'us'),
(729, 'fr'),
(730, 'fr'),
(731, 'us'),
(732, 'us'),
(733, 'us'),
(734, 'us'),
(735, 'us'),
(736, 'de'),
(736, 'es'),
(736, 'fr'),
(737, 'fr'),
(738, 'fr'),
(739, 'fr'),
(740, 'fr'),
(741, 'fr'),
(742, 'es'),
(742, 'us'),
(743, 'fr'),
(744, 'gb'),
(744, 'us'),
(745, 'fr'),
(746, 'us'),
(747, 'fr'),
(748, 'us'),
(749, 'us'),
(750, 'us'),
(751, 'us'),
(752, 'us'),
(753, 'fr'),
(754, 'us'),
(755, 'us'),
(756, 'fr'),
(757, 'fr'),
(758, 'us'),
(759, 'fr'),
(760, 'fr'),
(761, 'us'),
(762, 'fr'),
(763, 'fr'),
(764, 'fr'),
(765, 'fr'),
(766, 'us'),
(767, 'fr'),
(768, 'fr'),
(769, 'fr'),
(770, 'fr'),
(771, 'us'),
(772, 'us'),
(773, 'us'),
(774, 'us'),
(775, 'us'),
(776, 'us'),
(777, 'us'),
(778, 'us'),
(779, 'fr'),
(780, 'fr'),
(781, 'fr'),
(782, 'fr'),
(783, 'fr'),
(784, 'us'),
(785, 'us'),
(786, 'us'),
(787, 'us'),
(788, 'us'),
(789, 'us'),
(790, 'fr'),
(791, 'us'),
(792, 'us'),
(793, 'us'),
(794, 'us'),
(795, 'se'),
(796, 'us'),
(797, 'de'),
(797, 'gb'),
(797, 'us'),
(798, 'us'),
(799, 'us'),
(800, 'us'),
(801, 'us'),
(802, 'gb'),
(802, 'us'),
(803, 'us'),
(804, 'us'),
(805, 'us'),
(806, 'us'),
(807, 'us'),
(808, 'us'),
(809, 'us'),
(810, 'gb'),
(810, 'us'),
(811, 'fr'),
(812, 'us'),
(813, 'gb'),
(813, 'us'),
(814, 'us'),
(815, 'us'),
(816, 'us'),
(817, 'fr'),
(818, 'gb'),
(818, 'us'),
(819, 'us'),
(820, 'us'),
(821, 'us'),
(822, 'us'),
(823, 'gb'),
(823, 'us'),
(824, 'us'),
(825, 'us'),
(826, 'us'),
(827, 'us'),
(828, 'nz'),
(828, 'us'),
(829, 'us'),
(830, 'us'),
(831, 'us'),
(832, 'us'),
(833, 'us'),
(834, 'us'),
(835, 'us'),
(836, 'us'),
(837, 'gb'),
(837, 'us'),
(838, 'ca'),
(838, 'us'),
(839, 'us'),
(840, 'cn'),
(840, 'us'),
(841, 'us'),
(842, 'nz'),
(842, 'us');
