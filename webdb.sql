/*
 Navicat MySQL Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : webdb

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 04/12/2018 00:20:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add besoin', 6, 'add_need');
INSERT INTO `auth_permission` VALUES (17, 'Can change besoin', 6, 'change_need');
INSERT INTO `auth_permission` VALUES (18, 'Can delete besoin', 6, 'delete_need');
INSERT INTO `auth_permission` VALUES (19, 'Can add technologie', 7, 'add_technology');
INSERT INTO `auth_permission` VALUES (20, 'Can change technologie', 7, 'change_technology');
INSERT INTO `auth_permission` VALUES (21, 'Can delete technologie', 7, 'delete_technology');
INSERT INTO `auth_permission` VALUES (22, 'Can add items dans liste de souhaits', 8, 'add_caritem');
INSERT INTO `auth_permission` VALUES (23, 'Can change items dans liste de souhaits', 8, 'change_caritem');
INSERT INTO `auth_permission` VALUES (24, 'Can delete items dans liste de souhaits', 8, 'delete_caritem');
INSERT INTO `auth_permission` VALUES (25, 'Can add difficulté', 9, 'add_difficulty');
INSERT INTO `auth_permission` VALUES (26, 'Can change difficulté', 9, 'change_difficulty');
INSERT INTO `auth_permission` VALUES (27, 'Can delete difficulté', 9, 'delete_difficulty');
INSERT INTO `auth_permission` VALUES (28, 'Can add type de technologie', 10, 'add_technotype');
INSERT INTO `auth_permission` VALUES (29, 'Can change type de technologie', 10, 'change_technotype');
INSERT INTO `auth_permission` VALUES (30, 'Can delete type de technologie', 10, 'delete_technotype');
INSERT INTO `auth_permission` VALUES (31, 'Can add utilisateur', 11, 'add_user');
INSERT INTO `auth_permission` VALUES (32, 'Can change utilisateur', 11, 'change_user');
INSERT INTO `auth_permission` VALUES (33, 'Can delete utilisateur', 11, 'delete_user');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_webapp_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_webapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `webapp_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'webapp', 'caritem');
INSERT INTO `django_content_type` VALUES (9, 'webapp', 'difficulty');
INSERT INTO `django_content_type` VALUES (6, 'webapp', 'need');
INSERT INTO `django_content_type` VALUES (7, 'webapp', 'technology');
INSERT INTO `django_content_type` VALUES (10, 'webapp', 'technotype');
INSERT INTO `django_content_type` VALUES (11, 'webapp', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-12-01 20:18:58.538780');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-12-01 20:18:58.888580');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-12-01 20:18:59.766079');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-12-01 20:18:59.937979');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-12-01 20:18:59.952971');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-12-01 20:18:59.968963');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-12-01 20:18:59.984954');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-12-01 20:18:59.993946');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-12-01 20:19:00.012936');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-12-01 20:19:00.032924');
INSERT INTO `django_migrations` VALUES (12, 'admin', '0001_initial', '2018-12-01 20:19:03.906706');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0002_logentry_remove_auto_add', '2018-12-01 20:19:03.928694');
INSERT INTO `django_migrations` VALUES (14, 'sessions', '0001_initial', '2018-12-01 20:19:04.069613');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('g00f3fqxlk76li7vr0y9hl8o1gy46087', 'MzlkMDhlOTUxNzc2NTdkMWRjYjlhODg0YWVhYWI3NjRhMWQxNjQwNTqABJV6BgAAAAAAAH2UKIwNX2F1dGhfdXNlcl9pZJSMATGUjBJfYXV0aF91c2VyX2JhY2tlbmSUjClkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZJSMD19hdXRoX3VzZXJfaGFzaJSMKGM0YmQ0ZWIzYzhiY2Q4NGJmNzVmNjc0OWVkOTZjNjNkNDdhMzU4ZTOUSwGMDXdlYmFwcC5tb2RlbHOUjARDYXJ0lJOUKYGUfZQojAVpdGVtc5RdlCiMFWRqYW5nby5kYi5tb2RlbHMuYmFzZZSMDm1vZGVsX3VucGlja2xllJOUjAZ3ZWJhcHCUjAdDYXJpdGVtlIaUhZRSlH2UKIwGX3N0YXRllGgOjApNb2RlbFN0YXRllJOUKYGUfZQojAJkYpSMB2RlZmF1bHSUjAZhZGRpbmeUiHVijAJpZJROjA10ZWNobm9sb2d5X2lklEsGjBFfdGVjaG5vbG9neV9jYWNoZZRoEGgRjApUZWNobm9sb2d5lIaUhZRSlH2UKIwGX3N0YXRllGgZKYGUfZQoaBxoHWgeiXVijAJpZJRLBowEbmFtZZSMBkF1dGltb5SMBGRlc2OUjOZBdXRpbW8gVE0gYSDDqXTDqSBjb27Dp3VlIHBvdXIgYXBwcmVuZHJlIMOgIHJlY29ubmHDrnRyZSBsZXMgw6ltb3Rpb25zIGV0IGxlcyBleHByZXNzaW9ucyBkdSB2aXNhZ2UgYXUgdHJhdmVycyBkZSBqZXV4IGTigJlpZGVudGlmaWNhdGlvbiAoamV1eCBkZSBwYWlyZXMsIGpldXggZOKAmWludHJ1cywgamV1eCBkZSBkZXZpbmV0dGVzKSBldCBk4oCZdW4gc3VwcG9ydCBk4oCZaW1hZ2VzIGFuaW3DqWVzLpSMBXByaWNllIwHR3JhdHVpdJSMBnNvdXJjZZSMIGh0dHBzOi8vYXV0aWNpZWwuY29tL2FwcC9hdXRpbW8vlIwHYXJ0aWNsZZROjAdjb21wYW55lIwIQXV0aWNpZWyUjAV2aWRlb5SMKGh0dHA6Ly93d3cueW91dHViZS5jb20vZW1iZWQvSzhNRkZsZm9ZaU2UjAVpbWFnZZSMHWRqYW5nby5kYi5tb2RlbHMuZmllbGRzLmZpbGVzlIwOSW1hZ2VGaWVsZEZpbGWUk5QpgZR9lChoK4wYdGVjaG5vbG9naWVzL2RlZmF1bHQuanBnlIwGY2xvc2VklImMCl9jb21taXR0ZWSUiIwFX2ZpbGWUTnVijARzaG93lIiMD19kamFuZ29fdmVyc2lvbpSMBjEuMTAuMpR1YmhDjAYxLjEwLjKUdWJoEGgRaBKGlIWUUpR9lChoF2gZKYGUfZQoaByMB2RlZmF1bHSUaB6IdWJoH05oIEsPaCFoEGgRaCKGlIWUUpR9lChoJ2gZKYGUfZQoaBxoTGgeiXViaCpLD2grjAZDb2dtZWSUaC1YJgEAAENvZ21lZCBlc3QgdW4gbG9naWNpZWwgcXVpIGNvbWJpbmUgbCdhcHBvcnQgZGVzIHNjaWVuY2VzIGNvZ25pdGl2ZXMgZXQgbGEgdGVjaG5vbG9naWUgZGUgamV1IHZpZMOpbyBwb3VyIHJlbmZvcmNlciBsYSBtw6ltb2lyZSBkZSB0cmF2YWlsLCBhbcOpbGlvcmVyIGwnYXR0ZW50aW9uIGV0IGF1Z21lbnRlciBsZSBjb250csO0bGUgZGUgbCdpbXB1bHNpdml0w6kuIElsIGVzdCB1dGlsaXNhYmxlIHBhciBkZXMgY29uc29tYXRldXJzLCBkZXMgZWR1Y2F0ZXVycyBldCBwb3VyIGRlcyBzb2lucyBwcm9mZXNzaW9uZWxzLpRoL4wQODc24oKsIHBvdXIgMSBhbpRoMYwXaHR0cDovL3d3dy5jb2dtZWQuY29tLyCUaDOMLWh0dHBzOi8vd3d3Lm5jYmkubmxtLm5paC5nb3YvcHVibWVkLzI1MDEwMDgyIJRoNIwGQ29nbWVklGg2jChodHRwOi8vd3d3LnlvdXR1YmUuY29tL2VtYmVkL0pIcXN5WGdvSmlzlGg4aDspgZR9lChoK4wYdGVjaG5vbG9naWVzL2RlZmF1bHQuanBnlGg/iWhAiGhBTnViaEKIaEOMBjEuMTAuMpR1YmhDjAYxLjEwLjKUdWJljAZsZW5ndGiUSwJ1YnUu', '2018-12-17 21:31:29.855124');
INSERT INTO `django_session` VALUES ('slt9zm7acjjzxwkoigar2ceid8z8uyt8', 'ZTc2MjNjNzM0ZTczZGQ3MTBlNWNmNDUzZmE5YWViMmU0NmY3ZGI5NTqABJXtBAAAAAAAAH2UKIwNX2F1dGhfdXNlcl9pZJSMATGUjBJfYXV0aF91c2VyX2JhY2tlbmSUjClkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZJSMD19hdXRoX3VzZXJfaGFzaJSMKGM0YmQ0ZWIzYzhiY2Q4NGJmNzVmNjc0OWVkOTZjNjNkNDdhMzU4ZTOUSwGMDXdlYmFwcC5tb2RlbHOUjARDYXJ0lJOUKYGUfZQojAVpdGVtc5RdlIwVZGphbmdvLmRiLm1vZGVscy5iYXNllIwObW9kZWxfdW5waWNrbGWUk5SMBndlYmFwcJSMB0Nhcml0ZW2UhpSFlFKUfZQojAZfc3RhdGWUaA6MCk1vZGVsU3RhdGWUk5QpgZR9lCiMAmRilIwHZGVmYXVsdJSMBmFkZGluZ5SIdWKMAmlklE6MDXRlY2hub2xvZ3lfaWSUSwKMEV90ZWNobm9sb2d5X2NhY2hllGgQaBGMClRlY2hub2xvZ3mUhpSFlFKUfZQojAZfc3RhdGWUaBkpgZR9lChoHGgdaB6JdWKMAmlklEsCjARuYW1llIw9QUxBRElOIDogQW1iaWVudCBMaWdodGluZyBBc3Npc3RhbmNlIGZvciBhbiBBZ2VpbmcgUG9wdWxhdGlvbpSMBGRlc2OUjE9MdW1pw6hyZSBhZGFwdMOpZSBlbiBmb25jdGlvbiBkZXMgZG9ubsOpZXMgcHN5Y2hvLXBoeXNpb2xvZ2lxdWVzIGRlIGxhIHBlcnNvbm5llIwFcHJpY2WUjA5Ob24gcmVuc2VpZ27DqZSMBnNvdXJjZZSMI2h0dHBzOi8vZXRjLmZodi5hdC9hbWJpZW50bGlnaHRpbmcglIwHYXJ0aWNsZZSM50tlbXB0ZXIsIEcuLCBQbGlzY2hrZSwgSC4sICYgQmVja2VyLCBLLiAoMjAwOCkuIEFtYmllbnQgTGlnaHRpbmcgQXNzaXN0YW5jZTogS29udGludWllcmxpY2hlIHBzeWNob3BoeXNpb2xvZ2lzY2hlIFJhdW1saWNodHN0ZXVlcnVuZyBmw7xyIMOkbHRlcmUgTWVuc2NoZW4uIEFtYmllbnQgQXNzaXN0ZWQgTGl2aW5nIDEgRGV1dHNjaGVyIEtvbmdyZXNzIG1pdCBBdXNzdGVsbHVuZyAocHAuIDE2My0xNjYpLpSMB2NvbXBhbnmUjFVVc2VyIENlbnRlcmVkIFRlY2hub2xvZ2llcyBSZXNlYXJjaCDigJMgVUNUIFZvcmFybGJlcmcgVW5pdmVyc2l0eSBvZiBBcHBsaWVkIFNjaWVuY2VzlIwFdmlkZW+UjChodHRwOi8vd3d3LnlvdXR1YmUuY29tL2VtYmVkL3g0cjBTNXFvSVhjlIwFaW1hZ2WUjB1kamFuZ28uZGIubW9kZWxzLmZpZWxkcy5maWxlc5SMDkltYWdlRmllbGRGaWxllJOUKYGUfZQoaCuMGHRlY2hub2xvZ2llcy9kZWZhdWx0LmpwZ5SMBmNsb3NlZJSJjApfY29tbWl0dGVklIiMBV9maWxllE51YowEc2hvd5SIjA9fZGphbmdvX3ZlcnNpb26UjAYxLjEwLjKUdWKMD19kamFuZ29fdmVyc2lvbpSMBjEuMTAuMpR1YmGMBmxlbmd0aJRLAXVidS4=', '2018-12-17 13:44:09.476789');

-- ----------------------------
-- Table structure for webapp_caritem
-- ----------------------------
DROP TABLE IF EXISTS `webapp_caritem`;
CREATE TABLE `webapp_caritem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `webapp_caritem_71c5177e`(`technology_id`) USING BTREE,
  CONSTRAINT `webapp_caritem_technology_id_87e80561_fk_webapp_technology_id` FOREIGN KEY (`technology_id`) REFERENCES `webapp_technology` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for webapp_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `webapp_difficulty`;
CREATE TABLE `webapp_difficulty`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_difficulty
-- ----------------------------
INSERT INTO `webapp_difficulty` VALUES (1, 'Motrice', 1);
INSERT INTO `webapp_difficulty` VALUES (2, 'Sensitive', 2);
INSERT INTO `webapp_difficulty` VALUES (3, 'Mémoire', 3);
INSERT INTO `webapp_difficulty` VALUES (4, 'Attention', 4);
INSERT INTO `webapp_difficulty` VALUES (5, 'Sommeil', 5);
INSERT INTO `webapp_difficulty` VALUES (6, 'Planification/Organisation', 6);
INSERT INTO `webapp_difficulty` VALUES (7, 'Communication', 7);
INSERT INTO `webapp_difficulty` VALUES (8, 'Apprentissage', 8);
INSERT INTO `webapp_difficulty` VALUES (9, 'Sécurité', 9);
INSERT INTO `webapp_difficulty` VALUES (10, 'Sexualité', 10);

-- ----------------------------
-- Table structure for webapp_need
-- ----------------------------
DROP TABLE IF EXISTS `webapp_need`;
CREATE TABLE `webapp_need`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_need
-- ----------------------------
INSERT INTO `webapp_need` VALUES (1, 'Manger/Boire', 1);
INSERT INTO `webapp_need` VALUES (2, 'Etre autonome', 2);
INSERT INTO `webapp_need` VALUES (3, 'Me laver', 3);
INSERT INTO `webapp_need` VALUES (4, 'Bouger', 4);
INSERT INTO `webapp_need` VALUES (5, 'Interagir', 5);
INSERT INTO `webapp_need` VALUES (6, 'Entendre', 6);
INSERT INTO `webapp_need` VALUES (7, 'Voir', 7);
INSERT INTO `webapp_need` VALUES (8, 'Toucher', 8);
INSERT INTO `webapp_need` VALUES (9, 'Sentir', 9);
INSERT INTO `webapp_need` VALUES (10, 'Goûter', 10);
INSERT INTO `webapp_need` VALUES (11, 'Me rappeler', 11);
INSERT INTO `webapp_need` VALUES (12, 'M’orienter', 12);
INSERT INTO `webapp_need` VALUES (13, 'Planifier /m’organiser', 13);
INSERT INTO `webapp_need` VALUES (14, 'Parler', 14);
INSERT INTO `webapp_need` VALUES (15, 'Ecouter', 15);
INSERT INTO `webapp_need` VALUES (16, 'Me sociabiliser', 16);
INSERT INTO `webapp_need` VALUES (17, 'Comprendre', 17);

-- ----------------------------
-- Table structure for webapp_technology
-- ----------------------------
DROP TABLE IF EXISTS `webapp_technology`;
CREATE TABLE `webapp_technology`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `company` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_technology
-- ----------------------------
INSERT INTO `webapp_technology` VALUES (1, 'Aging in Place project', 'Création d\'un lieu particulier pour les personnes âgées leur garantissant une certaine autonomie.\n Smart Home + Centre d\'accueil', 'Non renseigné', 'http://www.aannet.org/initiatives/edge-runners/profiles/edge-runners--aging-in-place-project ', 'Rantz M.J., K.D. Marek, M. Aud, H.W. Tyrer, M. Skubic, G.Demiris, A. Hussam, A technology and nursing collaboration to help older adults age in place, Nurs.Outlook 53 (1) (2005) 40–45.', 'American Academy of Nursing', 'http://www.youtube.com/embed/VlWxuHDBDUw', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (2, 'ALADIN : Ambient Lighting Assistance for an Ageing Population', 'Lumière adaptée en fonction des données psycho-physiologiques de la personne', 'Non renseigné', 'https://etc.fhv.at/ambientlighting ', 'Kempter, G., Plischke, H., & Becker, K. (2008). Ambient Lighting Assistance: Kontinuierliche psychophysiologische Raumlichtsteuerung für ältere Menschen. Ambient Assisted Living 1 Deutscher Kongress mit Ausstellung (pp. 163-166).', 'User Centered Technologies Research – UCT Vorarlberg University of Applied Sciences', 'http://www.youtube.com/embed/x4r0S5qoIXc', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (3, 'Assystel', 'Kit d\'assistance qui permet d\'appeler de l\'aide en cas de chute à l\'intérieur et à l\'exterieur du domicile.', 'Non renseigné', 'http://www.assystel.fr/', NULL, 'Assystel', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (4, 'Attention Process Training (APT)', 'Programme d\'entrainement attentionnel et de réhabilitation cognitive', '300 - 1375$', 'https://www.lapublishing.com/apt3-attention-process-training/', 'Kurtz MM, Moberg PJ, Mozley LH, et al. Effectiveness ofan attention- and memory-training program on neuropsycho-logical deficits in schizophrenia. Neurorehab Neural Repair2001;15:23—8\n \n Lopez-Luengo B, Vàzquez C. Effects of attention process training on cognitive functioning of schizophrenic patients.Psychiatry Res 2003;119:41—53', 'Lash & Associates Publishing / Training, Inc.', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (5, 'Attentive', 'Série de produits de téléassistance au domicile.', 'Non renseigné', 'http://www.attentive-technologies.fr/', NULL, 'Solem', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (6, 'Autimo', 'Autimo TM a été conçue pour apprendre à reconnaître les émotions et les expressions du visage au travers de jeux d’identification (jeux de paires, jeux d’intrus, jeux de devinettes) et d’un support d’images animées.', 'Gratuit', 'https://auticiel.com/app/autimo/', NULL, 'Auticiel', 'http://www.youtube.com/embed/K8MFFlfoYiM', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (7, 'Be my eyes', 'Bemyeyes est une application qui permet à des déficients visuels d\'être aidés en direct par une communauté d\'utilisateur voyant. Cela permet une une aide dans des moments de vie quotidienne.  ', 'Gratuit', 'http://bemyeyes.com/', NULL, 'Be my eyes', 'http://www.youtube.com/embed/LpJeCWVEh1A', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (8, 'Bluegard 2', 'BlueGard 2 est une montre géolocalisable sécuritaire qui permet à une personne souffrant de troubles cognitifs de type Alzheimer résidant à domicile ou en institution de conserver son autonomie autour de son lieu de vie.', '69€/mois', 'https://bluelinea.com/particulier-teleassistance/bracelet-dautonomie-bluegard/', NULL, 'Bluelinea', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (9, 'Boucles Magnétiques', 'La boucle magnétique est un système d’aide à l’écoute pour les malentendants porteurs d’un appareil auditif. Elle permet à la personne malentendante de recevoir le son directement dans son appareil auditif et d’ainsi pouvoir profiter de la musique ou des paroles sans les interférences des bruits avoisinants.C\'est un dispositif utilisable dans des lieux publiques ou dans des domiciles.', 'Non renseigné', 'https://ecoute.ch/solutions-malentendants/boucles-magnetiques/', NULL, 'Forom écoute', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (10, 'Brain age', 'Jeu vidéo sur nintendo DS proposant des entrainements Cognitifs.', '29,99$', 'http://brainage.nintendo.com/fr/', NULL, 'Nintendo', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (11, 'Build-it-up', 'Build it up Aide à développer des aptitudes de perception visuelle et des capacités motrices fines chez les bébés âgés de plus de deux ans et demi.', 'Gratuit', 'https://itunes.apple.com/fr/app/build-it-up/id421839260?mt=8 ', NULL, 'MyFirstApp', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (12, 'çATED', 'çATED est un emploi du temps simplifié sur tablette dédié à un public avec autisme ou TSA (Troubles du Spectre Autistique).', 'Gratuit', 'https://itunes.apple.com/fr/app/id451994905?mt=8', NULL, 'Sil Nantes', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (13, 'Senior Alerte', 'Système de Téléassistance avec capteurs actifs. Il permet une surveillance à base de détecteurs de mouvement qui détectent les chutes. Il permet de sécurisé la zone de vie des personnes agées. ', '300€ à 700€ puis 20€ à 35€/mois', 'http://www.senioralerte.com/articles/tarif-des-services-et-options.html ', NULL, 'Senioralerte', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (14, 'COACH (Cognitive Orthosis for Assisting Activities in the Home)', 'Système de vision par ordinateur qui vérifie que les étapes de lavage des mains ont été effectuées. Instalation puis paiement annuel.', 'Non renseigné', 'http://iatsl.org/projects/intell_env.htm', 'Mihailidis A, Barbenel JC, Fernie GR. The efficacy of an intelligent orthosis to facilitate handwashing by persons with moderate-to-severe dementia. Neuropsychol Rehabil 2004', 'IATSL', 'http://www.youtube.com/embed/4zjxvLSJ4lo', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (15, 'Cogmed', 'Cogmed est un logiciel qui combine l\'apport des sciences cognitives et la technologie de jeu vidéo pour renforcer la mémoire de travail, améliorer l\'attention et augmenter le contrôle de l\'impulsivité. Il est utilisable par des consomateurs, des educateurs et pour des soins professionels.', '876€ pour 1 an', 'http://www.cogmed.com/ ', 'https://www.ncbi.nlm.nih.gov/pubmed/25010082 ', 'Cogmed', 'http://www.youtube.com/embed/JHqsyXgoJis', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (16, 'CogniFit', 'CogniFit offre un logiciel scientifiquement validé pour mesurer et entraîner avec précision chaque habileté cognitive individuelle. Ce site permet d\'effectuer des tests cognitifs pour les professionels mais aussi pour le reste de la population.', '49,95 l\'évaluation, 19.95/mois entrainement', 'https://www.cognifit.com/fr', 'https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2746314/pdf/pone.0007141.pdf ', 'CogniFit Inc.', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (17, 'Liftware =', 'Couvert anti-tremblements, deux modèles disponibles.', '195$+ 34.95$ pour les extensions', 'https://www.liftware.com/', NULL, 'Liftware', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (18, 'Curapy', 'Ensemble de jeux vidéos adaptés à la rééducation. Permet d’optimiser les séances de rééducation et de proposer le prolongement de cette rééducation au domicile du patient. Proposant deux types de profil utilisateurs Patient et Thérapeute, elle comprend des jeux de rééducation pour les patients et fournit au professionnel de santé des outils statistiques d’analyse et de traçabilité des données.', '5€ ou 10€/ mois ', 'https://www.curapy.com/', NULL, 'Curapy', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (19, 'Diabéo', 'Cette application smartphone permet un ajustement simple des doses d’insuline en fonction de la glycémie/ repas/ objectifs glycémiques de la personne. Un carnet électronique enregistre quotidiennement la glycémie et les doses d’insuline utilisées. Il est composé de systèmes d’alerte paramétrables. \n AVANTAGES: Il est conseillé à des personnes atteintes du diabète de type 1. Un suivi des données transmises via internet à l\'équipe soignante permet une intervention ciblée et un suivi entre les consultations.', 'Non renseigné', 'https://www.diabeo.fr/', 'S. Franc, D. Dardari, B. Boucherie, A. Daoudi, G. Charpentier (2010). La télémédecine appliquée au diabète: les résultats acquis et les perspectives à venir. Télémédecine et diabète, vol 4, (3) 274 - 286', 'Sanofi Aventis', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (20, 'Distrimédic', 'Pilulier intégrant un calendrier intelligent capable d\'aider dans la prise pluriquotidienne de médicament. ', '27,45€/mois', 'http://www.distrimedic.fr/', NULL, 'DistriMédic France', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (21, 'Douche Access', 'Receveur d\'eau plat et antidérapant, siège ergonomique, repose pieds, \nrampe d’accès, barre de maintien, dimension modulable et donc adaptable', 'Non renseigné', 'http://www.seniorbains.com/douche-access.html', NULL, 'Senior Bain', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (22, 'Dräger Patient Monitoring', 'Coordination des soins pour maladies chroniques', 'Non renseigné', 'https://www.draeger.com/en-us_us/Hospital/Productselector/Patient-Monitoring#s=1', NULL, 'Cisco', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (23, 'Dynseo', 'Jeux de mémoire', '50 euros/an', 'http://www.dynseo.com/fr/', NULL, 'Projet Dynseo', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (24, 'e-lio', 'Plateforme de services (visiophonie, téléphonie, messages, photos, \nrappels automatiques, etc) pour relier les professionnels aux personnes \nâgées et à leur famille. Accès aux services via l\'ordinateur pour les \npros et les membres de famille alors que la personne âgée consulte sur \nla télévision. Combiné téléphone/télécommande. Requiert que l\'e-lioBox \nsoit connectée à internet et à la télévision. Design ergonomique, \nplateforme intuitive, personnalisable et évolutif', 'Gratuit', 'http://www.e-liofamily.fr/', NULL, 'Technosens', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (25, 'ECOVIP (Espace de Communication Visiophonique pour Personnes Âgées)', 'Espace de Communication Visiophonique avec possibilité de discuter avec \nplusieurs interlocuteurs simultanément. Conception participative ; \nMobile ; Système protégé et sensible au contexte ; Design ergonmique ; \nPersonnalisable à volonté. Système complémentaire au “Habitat \nIntelligent pour la Santé” (laboratoire TIMC-IMAG)', 'Non renseigné', 'http://hal.archives-ouvertes.fr/docs/00/19/69/57/PDF/These-Abir-Ghorayeb.pdf', 'Ghorayeb, A. (2007). Ecovip: espace de communication visiophonique pour personnes agees-conception, realisation et evaluation participatives (Doctoral dissertation, Université Joseph-Fourier-Grenoble I).', 'Ghorayeb, Abir (doctorant Université de Grenoble 1)', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (26, 'Elderis', 'Plateforme de service/téléassistance/ gestion du domicile', 'Non renseigné', 'http://www.elderis.com/', NULL, 'Elderis', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (27, 'EMA ', 'Electronic memory aid : Pré-programmation des tâches par date et heure. Le rappel se fait grâce à une alarme et de manière verbale. ', 'Non renseigné', NULL, 'Oriani, M., et al. (2003). An electronic memory aid to support prospective memory in patients in the early stages of Alzheimer\'s disease: a pilot study. Aging & Mental Health, 7(1), 22-27.', 'Alzheimer Research and Care Unit, IRCC, Brescia, Italy', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (28, 'Emintza', 'e-Mintza est un logiciel, dynamique et personnalisable, de communication\n améliorée et alternative conçu pour les autistes ou pour les personnes \nrencontrant des difficultés de communication orale ou écrite. e-Mintza \npermet aux utilisateurs de communiquer avec les autres par le biais \nd’une technologie tactile et multimédia ( souris etc) facilement adaptable aux besoins\n des utilisateurs.  e-Mintza se compose d\'un menu de départ, composé de 12 cases thèmatiques, qui renvoient à des pages contenant des pictogrammes, photos, images, auquelles ont peut associer un messsage sonore de type fichier MP3.', 'Gratuit', 'https://www.fondationorange.com/e-mintza-939', NULL, 'Fondation Orange', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (29, 'EMMA', ' Conçu pour permettre un contrôle individuel de la dose unitaire, ce kit éléctronique , doté d\'un système de gestion à distance,  délivre les médicaments en quantité et en temps requis. EMMA est Gérée par un système de planification en ligne contrôlé à distance et programmé par le pharmacien.', 'Non renseigné', 'http://www.inrangesystems.com/', NULL, 'InRangeSystems', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (30, 'Fall Detection', 'Développement d\'un système de détecteur de chute  utilisant un acceléromètre disposé sur la tête et un algorithme afin de différencier les chutes des autres activités de la vie quotidienne (s\'asseoir, sauter, …)', 'Non renseigné', 'https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=4535549 ', 'C.C. Wang, C.Y. Chiang, P.Y. Lin, Y.C. Chou, I.T. Kuo, C.N. Huang, C.T. \nChan, Development of a fall detecting system for the elderly residents, \nin: 2nd International Conference on Bioinformatics and Biomedical \nEngineering, May 2008, IEEE, 2008, pp. 1359–1362.', 'Institute of Biomedical Engineering, Natural Yang-Ming University, Taipei', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (31, 'FUTURA smart design', 'FUTURA smart design est un réseau de données sociodémographiques, médicales et \npara-médicales de patients. Cet outil est consultable par les \nintervenants de la santé autorisés à accéder à ces données personnelles.\nC\'est un moyen rapide d\'accéder aux informations et permet ainsi\nde communiquer plus facilement entre les intervenants de la santé pour \nélaborer un meilleur suivi médical.', 'Non renseigné', 'http://futura-smart-design.com/', NULL, 'Calystène ', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (32, 'GatorTech Smart House', 'L\'objectif du projet est de créer des environnements d\'assistance, tels que des maisons pouvant se détecter et détecter leurs résidents, et établir des correspondances entre le monde physique et les services de surveillance et d\'intervention à distance.', 'Non renseigné', 'https://www.cise.ufl.edu/~helal/gatortech/index2.html', 'Helal .A, W. Mann, H. El-Zabadani, J. King, Y. Kaddoura and E. Jansen, \nThe gator tech smart house: A programmable pervasive space. IEEE \nComputer, 38 3 (2005), pp. 50–60 Helal .S et al., Enabling \nlocation-aware pervasive computing applications for the elderly, in: 1st\n IEEE Conference on Pervasive Computing and Communications, Fort Worth, \nMarch 2003.', 'Computing Research, University of Florida', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (33, 'RFID', 'Géolocalisation grace à des produits avançés RFID (identification par radiofréquence), en temps réel (RTLS).  - il ya différents types de produits de securité proposés, et chacun déstiné à une population particulière', 'Non renseigné', 'http://elpas.com/Products/Healthcare.aspx\n', NULL, 'Elpas', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (34, 'Génex', 'Génex est un environnement informatique de création d\'activités pédagogiques multimédias qui s’appliquent à tous les enfants y compris les enfants présentant un handicap moteur sévère. Ce générateur d’exercices permet de construire des activités les plus diverses et à tous niveaux scolaires : du simple jeu sur des images aux calculs numériques du niveau du collège.', '80 euros', 'http://www.inshea.fr/fr/content/g%C3%A9nex', NULL, 'INSHEA', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (35, 'Genibo', 'Chien électronique (2005) de compagnie qui comprend une centaine de commandes vocales (ex : assis, debout, viens), capable de véhiculer son état émotionnel (ex : content, manque de confiance). Peut prendre des photos et les envoyer via bluetooth.', '1500 euros', 'http://www.roboticstoday.com/robots/genibo-description', NULL, 'Dasatech', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (36, 'Gerip', 'Solutions numériques d\'évaluation et de remédiation cognitive', '60 à 350€', 'https://www.gerip.com/', NULL, 'Genyx', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (37, 'Gloucester\'s Smart House Project', 'Aide l\'utilisateur à retrouver ces objets grâce à des bipeurs et une interface adaptée. Guide l\'utilisateur la nuit, grâce à des lumières. Permet de connaitre sa localisation et d\'alerter un tiers en cas de problème.', 'Non renseigné', 'https://link.springer.com/content/pdf/10.1007/978-0-85729-372-5_24.pdf', 'Orpwood, R., 2006. Assistive technology for dementia:the Gloucester \'Smart House\' project. In: International Conference on Dementia, Design and Assistive Technology, 2006-02-23 - 2006-02-24.', 'Bath Institude of Medical Ingeniring, Royal United Hospital', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (38, 'GlucoMON', 'Pour toute personne dont le taux de glucose sanguin doit être surveillés de près. Système automatisé de surveillance et de transmission de données sur la glycémie. Sans fil à longue portée', '25', 'http://medgadget.com/2005/03/glucomon.html', ' Targeting Blood Glucose Management in School Improves Glycemic Control in Children with Poorly Controlled Type 1 Diabetes Mellitus\n  \n  Thanh M. Nguyen, MD, PHD, Kimberly J. Mason, RN, Cynthia G. Sanders, NP, Parvin Yazdani, MD, AND Rubina A. Heptulla, MD', 'Diabetech', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (39, 'HAPPYneuron', 'Méthode d\'entraînement cérébral complète qui stimule les 5 grandes fonctions cognitives : mémoire, attention, langage, fonctions exécutives (raisonnement, logique) et visuo-spatial. Usage pour particulier ou professionnels.', '79,80€/an', 'http://www.happyneuron-corp.com/', 'http://www.happyneuron.fr/rsc/hn/docs/NiceAbonnesSBT.pdf', 'Scientific Brain Training', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (40, 'Hovis Genie', 'Robot de service (réveil, lecteur de mail, télé-surveillance, sécurité au domicile, téléphonie, …)', '1499', 'http://www.dongburobot.com/jsp/cms/view.jsp?code=100797', NULL, 'DongBu Robot', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (41, 'Itracker', 'Ce logiciel permet le contrôle du curseur de la souris via les mouvements de la tête détecté par une webcam. Pour cliquer sur un élément il faut rester immobile quelques secondes.\n  Il est facile à configurer et à utiliser. L\'outil est intuitif et réactif. (Seulement pour MAC)', '35$', 'http://www.eyetwig.com/itracker.html', 'Doctor, F., Hagras, H., & Callaghan, V. (2005). A fuzzy embedded agent-based approach for realizing ambient intelligence in intelligent inhabited environments. IEEE Transactions on Systems, Man, and Cybernetics-Part A: Systems and Humans, 35(1), 55-65.', 'Eyetwig', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (42, 'Keysafe', ' Permet de mettre en sécurité un ou deux jeu de clées et de les rendres accessibles à des personnes âgées à leurs proches/aidants. Plein de Keysafe différents sont disponibles.', '13€ à 150€  environ', 'https://www.gescles.com/keysafe-standard.html', NULL, 'Gesclès', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (43, 'Kurzweil 3000', 'Kurzweil 3000 est un traitement de texte comprenant des fonctions d\'aide à l\'écrit (telles que la relecture du texte tapé grâce à la synthèse vocale intégrée, la prédiction de mots, les dictionnaires Larousse multimédia et la vérification orthographique), des fonctions d\'aide à la lecture (grâce au lecteur de texte) et enfin des fonctions d\'étude (surligneurs colorés, annotations écrites ou orales).', '995€  ou 29.5€/mois', 'http://home.sensotec.be/products/detail.aspx?ID=87', NULL, 'Sensotec', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (44, 'La Borne Mélo', 'Borne musicale mobile, présente en maison de retraite. Propose un répertoire de musiques sauvegardées dans un disque dur interne. La borne inclut un grand écran et un clavier à touches grandes. Facile d\'utilisation. Propose également des jeux divers (loto musicale, jeux de mémoire, devinez la chanson, etc). La musique participe au confort moral des malades, limite la prise d\'anxiolytiques/neuroleptiques, facilite le travail des soignants et aidants.', '5000', 'www.11plus.fr/\n', NULL, 'Onzeplus', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (45, 'LetMeTalk', 'Application d\'Aide à la Communication - Images pour former des phrases', 'Gratuit', 'http://www.letmetalk.info/', NULL, 'Appnotize UG', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (46, 'LireCouleur', 'C\'est un ensemble d’outils destiné à aider les lecteurs débutants ou en difficulté à décoder les mots en utilisant les principes de la lecture en couleur.', 'Gratuit', 'http://lirecouleur.arkaline.fr/telechargements/', NULL, 'Particulier', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (47, 'Locator Lite', 'Emetteurs pour localiser les objets perdus', '76,99 euros', 'https://loc8tor.co.uk/', NULL, 'Alyzen', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (48, 'Loupe électronique', 'Offre grossissement compris entre 5 et 20 fois et renforce le contraste forme-fond pour favoriser la lecture. Manipulation simple. Tailles variables mais toujours portable (“de poche”) et utilisable partout sur nombreux supports. Permet un arrêt sur image pour permettre de voir de plus près l\'image agrandie et stable.', '150€ à 4000€', 'https://ca.optelec.com/fr/produits/cat1/electronic-video-magnifier/cat2/handheld-video-magnifiers?pageNumber=1', NULL, 'Optelec', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (49, 'Lumosity', 'Programme qui permettrait d\'améliorer la mémoire, l\'attention, la flexibilité cognitive, la rapidité de traitement et la résolution de problème. Non prouvé.', 'Non renseigné', 'http://www.lumosity.com/', NULL, 'Lumos labs', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (50, 'MavHome Architecture', 'Ensemble de capteurs à intégrer dans une maison pour le confort et la sécurité. Permet de gérer l\'environnement changeant et prédire l\'état de mobilité de l\'utilisateur et ses actions', 'Non renseigné', 'https://cse.uta.edu/research/Publications/CSE-2004-18.pdf', 'Youngblood G.M., D.J. Cook, L.B. Holder, The MavHome Architecture, Tech. Rep. CSE-2004-18, Department of Computer Science and Engineering, The University of Texas at Arlington, USA, 2004.', 'Université du Texas', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (51, 'Medical Supervision', 'Plateforme mesurant et transmettant des constantes physiologiques ainsi que la localisation du patient à la personne aidante. Les données sont présentées sous forme d\'un schéma en étoile.', 'Non renseigné', 'http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=4290419&url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D4290419', 'B. Zhou, C. Hu, H. Wang, R. Guo, A wireless sensor network for pervasive medical supervision, in: International Conference on Integration Technology, 2007, pp. 740–744.', 'Shenzhen Inst. of Advanced Integration Technology', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (52, 'MemoClip 2', 'MemoClip 2 est un aide mémoire de la catégorie des assistants digitals personnels equipé d\'un GPS (localisation du porteur) et d\'un dispositif Smart-Its pour capter de l\'environnement et le contexte de l\'utilisateur. Ce dernier utilise un ordinateur pour entrer les nouveaux lieux à mémoriser.', 'Non renseigné', 'http://www.teco.edu/~zimmer/memoclip.php', 'Beigl, M. (2000). Memoclip : A location based remembrance appliance. Personal Technologies, 4(4), 230-234.', 'TecO', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (53, 'Memojog', 'Memojog est un aide mémoire (rendez-vous, anniversaire, activités) de la catégorie des assistants digitals personnels au moyen d\'une alarme accompagnée d\'un texte sur un boitier tactile. La gestion peut se faire par internet.', 'Non renseigné', 'http://link.springer.com/chapter/10.1007%2F978-3-540-28637-0_61#page-1', 'Szymkowiak,A, Morrison,K, Inglis,E.A, Gregor,P.,Shah,P., Evans, J.J et al. (2004) Memojog - an interactiv memory with remote communication. Paper presented atthe Workshop on Universal Access and Assistive Technology (CWUAAT), Cambridge,UK.', 'PPP Healthcare Medical Trust', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (54, 'MobiHealth Mobile', 'Ensemble de capteurs portés par l\'utilisateur (smartphone, montre, …) qui mesurent et transmettent des données physiologiques au service de santé', 'Non renseigné', 'http://mobihealth.name', 'D. Konstantas, R. Herzog, Continuous monitoring of vital constants for mobile users: the MobiHealth approach, in: 25th Annual International Conference of the IEEE EMBS, 2003, pp. 3728–3731.', 'MobiHealth', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (55, 'Montre DETECT+', 'DETECT+ est une montre permettant de reprérer les chutes chez les séniors. Elle est doté d\'un accéléromètre capable de détecter l\'accélération, le choc, la perte de gravité et d\'un capteur d\'altimétrie indiquant si la personne reste au sol ou se relève. Une alarme électronique ou un bouton manuel préviennent une plateforme d\'assistance si elle ne se relève pas.', 'Non renseigné', 'http://www.ea-lateleassistance.com/detecteur-de-chute.html', NULL, 'Europ Assistance', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (56, 'My Mosaic 2', 'My Mosaic 2 est une application IOS qui aide à développer les aptitudes de perception visuelle et la coordination œil-main. Le jeu aide également à développer la persévérance, l\'application et l\'exactitude chez les enfants de 4 ans et plus.', 'Gratuit', 'https://itunes.apple.com/fr/app/my-mosaic/id468020990?mt=8', NULL, 'MyFirstApp Ltd', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (57, 'Neuroracer', 'Neuroracer est un jeu vidéo permettant l\'amélioration des performances cognitives, notemment la mémoire et l\'attention dans les activités de vie quotidienne chez les personnes âgées.', 'Non renseigné', 'http://www.nature.com/nature/journal/v501/n7465/full/nature12486.html', 'Anguera, Joaquin & Boccanfuso, J & Rintoul, Jean & Claflin, Omar & Faraji, Farshid & Janowich, Jacki & Kong, E & Larraburo, Y & Rolle, Cammie & Johnston, E & Gazzaley, Adam. (2013). Video game training enhances cognitive control in older adults. Nature. 501. 97-101. 10.1038/nature12486. ', 'Université de Californie, à San Francisco', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (58, 'Odimo', 'Odimo est une console de jeux destinée aux déficients visuels ne pouvant plus lire ni écrire (aveugles, mal voyants, déficients visuels). Grâce à une synthèse vocale et à une ergonomie adaptée, Odimo permet aux personnes de jouer en toute autonomie seule ou à plusieurs aux mots-croisés, anagrammes, bataille de cartes, bataille navale, master code, mots croisés fléchés, simo, sudoku, Yam’s, Yahtzee.', '229', 'http://www.odimo.fr/offre_odimo.php?lang=fr', NULL, 'Brainbox & Compagny', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (59, 'PEAT Planning and Execution Assistant Trainer', 'Le simulateur d\'aide à la planification et à l\'exécution (PEAT) est une aide cognitive conçue pour être utilisée par des personnes souffrant de lésions cérébrales ou de troubles cognitifs ou de la mémoire. Ce système d\'ordinateur de poche offre des fonctions de repérage et de planification personnalisées et offre une flexibilité dans la gestion des changements d\'horaire.', 'Non renseigné', 'http://www.abledata.com/product/planning-and-execution-assistant-trainer-peat', 'http://journals.lww.com/headtraumarehab/citation/1997/04000/the_planning_and_execution_assistant_and_trainer.10.aspx', 'BrainAid', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (60, 'Picture Exchange Communication System', 'Système de communication par échange d\'image visant à développer les capacités à communiquer. Pour les personnes présentant un trouble autistique ou pour tout individu ayant des difficultés de communications et d\'interactions. ', 'Gratuit', 'http://www.pecs-france.fr/NEW_Produits_PECs.pdf', 'http://www.corwin.com/sites/default/files/upm-binaries/2675_10bmod01.pdf#page=58', 'Bondy, Frost', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (61, 'Pilulier électronique hebdomadaire', 'Pillulier électronique avec rappel sonore et horloge digitale permettant d\'éviter tout oubli de prise de médicaments au quotidien.', '16.90€', 'https://www.agelyance.com/pilulier-electronique-hebdomadaire-226.html?gclid=EAIaIQobChMI88_ovbH61gIVxCnTCh2AGgFdEAQYAiABEgJ7k_D_BwE', NULL, 'HESTEC', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (62, 'Polar H10', 'Ceinture high tech avec capteur de fréquence cardiaque permet de visualiser l\'analyse d\'une séance d\'entraînement sur son smartphone grâce à une application à laquelle la ceinture est connectée et transmet les données. ', '89.90€', 'https://www.polar.com/fr/produits/accessories/capteur_de_frequence_cardiaque_h10', NULL, 'Polar', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (63, 'RehaCom', 'Logiciel pour la thérapie de troubles cognitifs afin d\'assiter le travail clinique des professionnels et améliorer les fonctions cognitives de la personne.', '580€ + 118,40€/an', 'http://www.rehacom.fr/', 'https://www.ncbi.nlm.nih.gov/pubmed/23540216', 'Hasomed', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (64, 'Imedipac', 'Pilulier préparé par le pharmacien ou la personne elle-même avec rappels et signaux lumineux à chaque fois à l\'heure de la prise de médicamentation. Il est relié à une plateforme permettant un lien avec l\'aidant et les professionnels de santé.', '299 € achat \n20 € / mois location', 'https://www.medissimo.fr/boutique-medissimo/coffret-imedipac/', NULL, 'Medissimo', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (65, 'Teleassistance active', 'Téléassistance active qui enegistre et analyse l\'activité 7/7 et 24/24. Une plateforme domotique et des capteurs environnementaux informent en cas de problème les aidants proches ou le service d\'assistance. Un bouton permet également de déclencher une alarme et de contacter le service d\'assistance.', '890 € achat\n59,90€ / mois location', 'http://www.senioralerte.com/articles/presentation-senioralerte.html', NULL, 'SeniorAlerte', 'http://www.youtube.com/embed/bRkphGN4Dyg', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (66, 'Senior Assistance', 'Téléassistance proposée comme service par le Crédit mutuel avec un système simple de médaillon à porter avec bouton qui informe une plateforme de prise en charge puis un aidant si nécessaire.', '24,90 € / mois + 49€ de frais d\'installation et de mise en service', 'https://www.seniorassistance.creditmutuel.fr/procedure.asp', NULL, 'Credit mutuel', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (67, 'SenSay', 'Téléphone portable implémenté de biocapteurs et relié aux applications permettant de transmettre les données de l\'activité d\'une personne avec démence modérée à son aidant.', 'Non renseigné', 'https://las.inf.ethz.ch/files/siewiorek03sensay.pdf', 'Sieworek, D.; Smailagic, A.; Furukawa, J., et al. SenSay: a context-aware mobile phone.. Papers presented at the 7th IEEE International Symposium on Wearable Computers, held in White Plains, NY; IEEE Press Online. October 21–23, 2003', 'Human Computer Interaction Institute and Institute for Complex Engineered Systems Carnegie Mellon University', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (68, 'Sensfloor', 'Sol connecté avec de nombreux capteurs permettant de détecter une chute, une activité, de contrôler en conséquences l\'éclairage ou de détecter une intrusion, de voir les progrès en rééducation, etc.', 'Non renseigné', 'http://future-shape.com/fr/systeme/', 'Etude pilote à Höhenkirchen-S. (Germany)\nhttp://www.uncap.eu/pilot-sites/', 'Future shape', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (69, 'Sensorized environment for life (SELF)', 'Système de domotique qui fait des relevés d\'activités pour: surveiller le sommeil, prévenir l\'état de santé et proposer des activités en conséquences', 'Non renseigné', 'http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.846.1956&rep=rep1&type=pdf', 'Sensorized Environment for Self-communication\nBased on Observation of Daily Human Behavior, Proc. of IEEE/RSJ International Conference on Intelligent Robots and Systems(IROS’2000), pp1364-1372, 2000', 'International Conference on Intelligent Robots and Systems', 'http://www.youtube.com/embed/FljAyl06h8g', 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (70, 'Simpill Medication', 'Pilulier électonique en temps réel permettant d\'envoyer un rappel de quand prendre la médicamentation à la personne et à son aidant mais également des messages d\'alerte si elle a été prise trop tard, le moment où il faudra prendre la prochaine et quand recharger la batterie du pilulier électronique. ', 'Non renseigné', 'http://www.simpill.com/howsimpillworks.html', NULL, 'Simpill', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (71, 'Simplemed+', 'Pilulier électronique programmé avec alertes et feedback sur une application.', 'Non renseigné', 'http://www.vaica.com/simplemed/', NULL, 'Vaica', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (72, 'Skype', 'Application présente sur différentes interfaces avec messagerie et vidéo Skype pour conserver un contact avec ses proches, travailler à distance, etc.', 'Gratuit', 'https://www.skype.com/fr/new/', NULL, 'Microsoft', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (73, 'SleepIQ Kids™ Bed', 'Lit intelligent qui, à l\'aide de capteurs, récupère les données physiologiques pour établir un profil de sommeil de l\'enfant et mettre en place des solutions et des routines.', 'Non renseigné', 'http://bamlabs.com/', NULL, 'BAM Labs', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (74, 'SmarTom', 'Application avec guidance pour trouver des solutions de domotique simples seul et construire son propre projet.', 'Non renseigné', 'https://masmarthome.com/', NULL, 'MaSmartHome', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (75, 'Social Handy', 'Application pour apprendre, avec des niveaux, comment interagir de façon adaptée dans différentes situations sociales: bus, école, magasin, etc. Développement des habiletés sociales de façon ludique.', '400 € pour la tablette et les différentes applications + suivi mensuel', 'https://auticiel.com/app/social-handy/', NULL, 'Autociel', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (76, 'Neuro System', 'Implant cochléaire qui permet de capter le son, de le traiter pour le rendre audible et l’envoyer directement au nerf auditif sans passer par le chemin auditif normal. ', 'Non renseigné', 'https://www.oticonmedical.com/cochlear-implants/solutions/systems', NULL, 'Oticon Medical', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (77, 'Digisonic SP ABI', 'Implant qui permet d\'envoyer les informations auditives directement dans le tronc cérébral. Cette technologie s\'adresse à des personnes dont la récupération auditive ne peut pas se faire à l\'aide d\'implants cochléaires ou de systèmes classiques non-invasifs.', 'Non renseigné', 'http://fr.oticonmedical.com/fr/cochlear-implants/our-products/special-implants/digisonic-sp-abi-implant.aspx', 'Vincent, C., Zini, C., Gandolﬁ, A., Triglia, J.M., Pellet, W., Truy, E., Fischer, G., Maurizi, M., Meglio, M., Lejeune, J.P., Vaneecloo, F.M. Results of MXM Digisonic auditory brainstem implant clinical trials in Europe. Otolology & Neurotology. 2002 Jan; 23:56–60.', 'Oticon Medical', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (78, 'Velotype', 'Velotypie : apporte au spectateur des sous-titres en temps réel de communications orales et émissions télévisées diffusées en direct. Accompagnement en situation professionnelle (réunions/conventions)', 'Non renseigné', 'http://www.systemerisp.com/', NULL, 'Système RISP', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (79, 'Tadeo', 'Services de transcription instantanée de la parole  ou visio interprétation LSF pour personnes malentendantes dans le contexte du travail, pour facilité les échanges avec les personnes entendantes.', 'Prise en charge par l\'entreprise', 'https://new.tadeo.fr/un-service-pour-tous/', NULL, 'Tadeo', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (80, 'Tel&Age', 'Sur smartphone et tablette, application pour les seniors recouvrant 3 domaines: loisirs, bien être (information santé, pilulier), services avec Europassistance (recherche artisan, aide à domicile, conseil juridique)', 'Gratuit', 'http://www.proximamobile.fr/article/telage', NULL, 'SFR', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (81, 'Solutions basse vision', 'Solutions basse vision pour la vie quotidienne : téléagrandisseur, loupe, miroir, lampe, aide techique avec synthèse vocale (pilulier, montre), etc. à l\'achat ou en location.', 'Selon le produit', 'https://www.confortvisuel.com/aides-vision/basse-vision-dmla-malvoyant/', NULL, 'Confort visuel.com', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (82, 'Temo', 'Téléphone simplifié pour passer des appels en haut parleur, recevoir, contacter une téléassistance qui a accès au GPS du téléphone.', 'Non renseigné', 'http://www.teleassistance-directe.fr/e-medicis/', NULL, 'E-medicis', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (83, 'Aware Home  Research', 'Prototype de maison intelligente dont l\'objectif est de maintenir l\'autonomie au domicile, tout en créant un lien intergénérationnel.', 'Non renseigné', 'http://www.awarehome.gatech.edu/', 'Kidd C.D., R.J. Orr, G.D. Abowd, C.G. Atkeson, I.A. Essa, B. MacIntyre, E. Mynatt, T.E. Starner, W. Newstetter, The aware home: a living laboratory for ubiquitous computing research, in: Proceedings of 2nd International Workshop on Cooperative buildings (CoBuild’99), 1999.', 'Georgia Tech', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (84, 'Ubiquitous home', 'Maison intelligente dont le but est de maintenir les seniors dans un quartier domotisé afin qu\'ils y conservent un maximum d\'autonomie.', 'Non renseigné', 'https://fr.slideshare.net/swatibaiger/ubiquitous-home-14085019', 'Yamazaki .T, Beyond the smart home, in: Proceedings of the International Conference on Hybrid Information Technology (ICHIT’06), 2006, pp. 350–355 http://www.sersc.org/journals/IJSH/vol1_no1_2007/IJSH-2007-01-01-03.pdf', 'National Institute of Information and Communications Technology', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (85, 'Time in ', 'Application qui représente le temps qui passe, sans même savoir lire l’heure. Adaptée pour les personnes ayant des difficultés à appréhender la notion de temps.', 'Gratuit', 'https://auticiel.com/app/time-in/', NULL, 'Autociel', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (86, 'Keysafe', 'Armoire électronique de gestion des clefs pour donner accès au domicile à des personnes définies (aide à domicile, aidants, professionnels)', 'Selon le produit', 'https://www.gescles.com/', NULL, 'Gesclés', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (87, 'Trousse Géo Tracé', 'La trousse Géo tracé se compose d’une règle, d’un rapporteur, d’une équerre, d’un compas et d’un crayon et peut être utilisée par des élèves présentant un déficit moteur ou praxique.', '5', 'http://www.inshea.fr/fr/content/trousse-g%C3%A9o-trac%C3%A9-5-outils-adapt%C3%A9s-de-trac%C3%A9s-g%C3%A9om%C3%A9triques', NULL, 'INS HEA', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (88, 'True Kare', 'Téléphone portable multifonctions adapté favorisant le maintien de l\'autonomie pouvant communiquer avec différents capteurs (ex : tensiomètre, services webs pour localisation, horloge, agenda, urgence)', 'Gratuit', 'https://www.true-kare.com/site/en/products.html', NULL, 'True Kare', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (89, 'Twiddler 3', 'Clavier ergonomique et adapté à tous permettant de le transporter partout et d\'être rapide dans les actions en le configurant soi-même', '200', 'https://twiddler.tekgear.com/', NULL, 'Twiddler', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (90, 'Tyze', 'Application permettant de mettre en contact la personne âgée et son/ses aidants avec des fonctionnalités adaptées', 'Non renseigné', 'http://tyze.com/', NULL, 'Tyze', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (91, 'Ubiquiet', 'Solution qui complète une offre de téléassistance par un objet communicant qui s’installe au domicile d’une personnes âgées pour lui permettre d’échanger facilement et simplement avec l’extérieur', 'Non renseigné', 'http://www.ubiquiet.com/', 'http://www.hacavie.com/aides-techniques/articles/6815/', 'Ubiquiet', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (92, 'Ultra badge system', 'Appareil permettant de localiser les patients, utilisant des signaux ultrasons. Les émetteurs à ultrasons sont placés sur le patient ou sur son fauteuil roulant et les récepteurs sur des objets importants de l\'environnement (toilettes, lit, ...)', 'Non renseigné', 'https://static.aminer.org/pdf/PDF/000/306/500/ultrasonic_sensors_for_the_elderly_and_caregivers_in_a_nursing.pdf', 'T. Hori, Y. Nishida, Ultrasonic sensors for the elderly and caregivers in a nursing home, in: Seventh International Conference on Enterprise Information Systems, 2005, pp. 110–115.', 'Digital Human Research Center', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (93, 'VERA', 'Solutions multiples pour la gestion de la maison intelligente (sécurité, organisation, etc) avec application mobile', 'Non renseigné', 'http://getvera.com/', 'Tee K, Moffatf K, Findlater L, MacGregor E, McGrenere I, Purves B, Fels S. A visual recipe book for persons with language impairments. CHI 2005: Technology, Safety, Community - 2005.', 'VERA', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (94, 'Vigi\'Fall', 'Capteur accélérométrique porté sur le thorax qui permet de déclencher une alerte automatique en cas de chute critique', '400 € installation + 70 € / mois', 'http://www.vigilio.fr/products-3-13.html', 'Bloch F, Gautier V, Noury N, Lundy JE, Poujaud J, Claessens YE, Rigaud AS Evaluation under real-life conditions of a stand-alone fall detector for the elderly subjects. Ann Phys Rehabil. Med. 2011, 54:391 398', 'Vigilio SA', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (95, 'Visual Impact', 'Fournit des instructions multimédia faciles, étape par étape, à l\'usage de toute personne ayant besoin d\'un support simple pour effectuer des tâches quotidiennes de toutes sortes ', 'Non renseigné', 'https://www.ablelinktech.com/index.php?id=130', NULL, 'AbleLink Technologies', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (96, 'Montre Wellness', 'Actimètre doté d\'une technologie permettant de mesurer le sommeil, calculer les calories et transférer ces données sur un ordinateur', 'Non renseigné', 'http://www.vivagowellness.fr/', NULL, 'Vivago', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (97, 'Wizz-Box', 'Borne musicale, d\'information, de jeux, diaporamique et sensorielle. Vise à solliciter les capacités restantes, crée un outil de jeu intergénérationnel, de s\'exprimer via la musique et la dimension sensorielle. Aussi destinée à un public n\'ayant jamais utilisé l\'informatique.', '3600', 'http://www.silvereco.fr/la-wizz-box-les-tic-au-service-de-lanimation-multi-sensorielle-en-ehpad/31298', NULL, 'Pétrarque / Animagine', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (98, 'Word Sprint Dyslexie', 'Aide à la lecture, à l\'écriture, et à l\'étude de documents déstiné aux personnes ayant des difficultés avec le langage écrit.', '333', 'http://www.moteurline.apf.asso.fr/IMG/pdf/04-90_Word_Sprint__Dyslexie.pdf', NULL, 'RNT logiciels', NULL, 'technologies/default.jpg', 1);
INSERT INTO `webapp_technology` VALUES (99, 'IRISNotes 3', 'Stylo intelligent, aide à la prise de notes et transforme les notes manuscrites en texte digital éditable. ', 'A partir de 129€', 'http://www.irislink.com/FR/c1521/IRISNotes-3---Stylo-numerique.aspx?gclid=Cj0KCQiAus_QBRDgARIsAIRGNGhYNxVksd-xy_LygeHRKJXrnvdW5zJoFUB43iPzw9eOqnuEroshlZAaAnrzEALw_wcB', NULL, 'Iris', 'http://www.youtube.com/embed/lVnrY53Pjp0', 'technologies/default.jpg', 1);

-- ----------------------------
-- Table structure for webapp_technology_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `webapp_technology_difficulty`;
CREATE TABLE `webapp_technology_difficulty`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_id` int(11) NOT NULL,
  `difficulty_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `webapp_technology_difficulty_technology_id_96d631aa_uniq`(`technology_id`, `difficulty_id`) USING BTREE,
  INDEX `webapp_technology_difficulty_id_e972d693_fk_webapp_difficulty_id`(`difficulty_id`) USING BTREE,
  CONSTRAINT `webapp_technology_difficulty_id_e972d693_fk_webapp_difficulty_id` FOREIGN KEY (`difficulty_id`) REFERENCES `webapp_difficulty` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `webapp_technology_technology_id_56a603b6_fk_webapp_technology_id` FOREIGN KEY (`technology_id`) REFERENCES `webapp_technology` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_technology_difficulty
-- ----------------------------
INSERT INTO `webapp_technology_difficulty` VALUES (1, 1, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (2, 2, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (3, 3, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (4, 4, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (5, 5, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (6, 6, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (7, 6, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (8, 7, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (9, 8, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (10, 9, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (11, 10, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (12, 11, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (13, 12, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (14, 13, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (15, 14, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (16, 14, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (18, 14, 4);
INSERT INTO `webapp_technology_difficulty` VALUES (17, 14, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (19, 15, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (20, 16, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (21, 17, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (23, 18, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (22, 18, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (26, 19, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (27, 19, 4);
INSERT INTO `webapp_technology_difficulty` VALUES (25, 19, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (24, 19, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (29, 20, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (28, 20, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (30, 21, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (31, 22, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (32, 23, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (33, 24, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (34, 25, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (35, 26, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (36, 26, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (37, 27, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (38, 27, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (39, 28, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (40, 29, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (41, 30, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (42, 31, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (43, 32, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (44, 33, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (45, 34, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (46, 35, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (47, 36, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (49, 37, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (48, 37, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (50, 38, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (51, 39, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (52, 40, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (53, 41, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (54, 42, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (55, 43, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (56, 44, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (57, 45, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (58, 46, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (59, 47, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (60, 47, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (61, 47, 4);
INSERT INTO `webapp_technology_difficulty` VALUES (62, 48, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (63, 49, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (64, 50, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (65, 51, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (67, 52, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (66, 52, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (68, 53, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (69, 53, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (70, 54, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (71, 55, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (73, 56, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (72, 56, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (75, 57, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (74, 57, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (76, 58, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (77, 59, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (78, 59, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (79, 60, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (80, 61, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (81, 61, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (83, 62, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (82, 62, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (84, 63, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (88, 63, 4);
INSERT INTO `webapp_technology_difficulty` VALUES (85, 63, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (86, 63, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (87, 63, 8);
INSERT INTO `webapp_technology_difficulty` VALUES (89, 64, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (90, 64, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (92, 65, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (91, 65, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (94, 66, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (93, 66, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (95, 67, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (97, 68, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (96, 68, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (99, 69, 5);
INSERT INTO `webapp_technology_difficulty` VALUES (98, 69, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (100, 70, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (101, 70, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (102, 71, 3);
INSERT INTO `webapp_technology_difficulty` VALUES (103, 71, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (104, 72, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (105, 73, 5);
INSERT INTO `webapp_technology_difficulty` VALUES (106, 74, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (107, 75, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (108, 76, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (109, 77, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (110, 78, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (111, 79, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (113, 80, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (112, 80, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (114, 81, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (116, 82, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (115, 82, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (117, 83, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (118, 84, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (119, 85, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (120, 86, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (121, 87, 1);
INSERT INTO `webapp_technology_difficulty` VALUES (122, 88, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (123, 88, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (124, 89, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (125, 90, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (126, 91, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (127, 92, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (128, 93, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (129, 94, 9);
INSERT INTO `webapp_technology_difficulty` VALUES (130, 95, 6);
INSERT INTO `webapp_technology_difficulty` VALUES (131, 96, 5);
INSERT INTO `webapp_technology_difficulty` VALUES (132, 97, 2);
INSERT INTO `webapp_technology_difficulty` VALUES (133, 98, 7);
INSERT INTO `webapp_technology_difficulty` VALUES (134, 99, 1);

-- ----------------------------
-- Table structure for webapp_technology_need
-- ----------------------------
DROP TABLE IF EXISTS `webapp_technology_need`;
CREATE TABLE `webapp_technology_need`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_id` int(11) NOT NULL,
  `need_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `webapp_technology_need_technology_id_0716c5be_uniq`(`technology_id`, `need_id`) USING BTREE,
  INDEX `webapp_technology_need_need_id_932c043e_fk_webapp_need_id`(`need_id`) USING BTREE,
  CONSTRAINT `webapp_technology_need_need_id_932c043e_fk_webapp_need_id` FOREIGN KEY (`need_id`) REFERENCES `webapp_need` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `webapp_technology_technology_id_e4722411_fk_webapp_technology_id` FOREIGN KEY (`technology_id`) REFERENCES `webapp_technology` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_technology_need
-- ----------------------------
INSERT INTO `webapp_technology_need` VALUES (1, 2, 2);
INSERT INTO `webapp_technology_need` VALUES (2, 7, 7);
INSERT INTO `webapp_technology_need` VALUES (3, 9, 6);
INSERT INTO `webapp_technology_need` VALUES (4, 11, 7);
INSERT INTO `webapp_technology_need` VALUES (6, 12, 2);
INSERT INTO `webapp_technology_need` VALUES (5, 12, 13);
INSERT INTO `webapp_technology_need` VALUES (7, 14, 3);
INSERT INTO `webapp_technology_need` VALUES (8, 17, 1);
INSERT INTO `webapp_technology_need` VALUES (9, 18, 2);
INSERT INTO `webapp_technology_need` VALUES (10, 19, 2);
INSERT INTO `webapp_technology_need` VALUES (11, 19, 11);
INSERT INTO `webapp_technology_need` VALUES (12, 20, 11);
INSERT INTO `webapp_technology_need` VALUES (13, 20, 13);
INSERT INTO `webapp_technology_need` VALUES (16, 21, 2);
INSERT INTO `webapp_technology_need` VALUES (14, 21, 3);
INSERT INTO `webapp_technology_need` VALUES (15, 21, 4);
INSERT INTO `webapp_technology_need` VALUES (17, 22, 2);
INSERT INTO `webapp_technology_need` VALUES (18, 23, 11);
INSERT INTO `webapp_technology_need` VALUES (19, 24, 5);
INSERT INTO `webapp_technology_need` VALUES (20, 24, 16);
INSERT INTO `webapp_technology_need` VALUES (21, 25, 5);
INSERT INTO `webapp_technology_need` VALUES (22, 25, 16);
INSERT INTO `webapp_technology_need` VALUES (24, 26, 2);
INSERT INTO `webapp_technology_need` VALUES (23, 26, 16);
INSERT INTO `webapp_technology_need` VALUES (25, 27, 11);
INSERT INTO `webapp_technology_need` VALUES (26, 28, 16);
INSERT INTO `webapp_technology_need` VALUES (27, 31, 5);
INSERT INTO `webapp_technology_need` VALUES (28, 35, 16);
INSERT INTO `webapp_technology_need` VALUES (29, 37, 7);
INSERT INTO `webapp_technology_need` VALUES (30, 37, 11);
INSERT INTO `webapp_technology_need` VALUES (31, 41, 5);
INSERT INTO `webapp_technology_need` VALUES (33, 43, 5);
INSERT INTO `webapp_technology_need` VALUES (32, 43, 16);
INSERT INTO `webapp_technology_need` VALUES (34, 43, 17);
INSERT INTO `webapp_technology_need` VALUES (35, 44, 5);
INSERT INTO `webapp_technology_need` VALUES (36, 45, 14);
INSERT INTO `webapp_technology_need` VALUES (37, 45, 17);
INSERT INTO `webapp_technology_need` VALUES (38, 46, 7);
INSERT INTO `webapp_technology_need` VALUES (39, 46, 17);
INSERT INTO `webapp_technology_need` VALUES (40, 47, 11);
INSERT INTO `webapp_technology_need` VALUES (41, 48, 7);
INSERT INTO `webapp_technology_need` VALUES (42, 51, 2);
INSERT INTO `webapp_technology_need` VALUES (46, 52, 2);
INSERT INTO `webapp_technology_need` VALUES (44, 52, 11);
INSERT INTO `webapp_technology_need` VALUES (43, 52, 12);
INSERT INTO `webapp_technology_need` VALUES (45, 52, 13);
INSERT INTO `webapp_technology_need` VALUES (48, 53, 2);
INSERT INTO `webapp_technology_need` VALUES (47, 53, 11);
INSERT INTO `webapp_technology_need` VALUES (49, 54, 2);
INSERT INTO `webapp_technology_need` VALUES (50, 56, 7);
INSERT INTO `webapp_technology_need` VALUES (51, 58, 7);
INSERT INTO `webapp_technology_need` VALUES (54, 59, 2);
INSERT INTO `webapp_technology_need` VALUES (52, 59, 11);
INSERT INTO `webapp_technology_need` VALUES (53, 59, 13);
INSERT INTO `webapp_technology_need` VALUES (55, 60, 16);
INSERT INTO `webapp_technology_need` VALUES (58, 61, 2);
INSERT INTO `webapp_technology_need` VALUES (56, 61, 11);
INSERT INTO `webapp_technology_need` VALUES (57, 61, 13);
INSERT INTO `webapp_technology_need` VALUES (60, 62, 2);
INSERT INTO `webapp_technology_need` VALUES (59, 62, 4);
INSERT INTO `webapp_technology_need` VALUES (66, 63, 1);
INSERT INTO `webapp_technology_need` VALUES (65, 63, 3);
INSERT INTO `webapp_technology_need` VALUES (61, 63, 11);
INSERT INTO `webapp_technology_need` VALUES (63, 63, 12);
INSERT INTO `webapp_technology_need` VALUES (62, 63, 13);
INSERT INTO `webapp_technology_need` VALUES (64, 63, 16);
INSERT INTO `webapp_technology_need` VALUES (69, 64, 2);
INSERT INTO `webapp_technology_need` VALUES (67, 64, 11);
INSERT INTO `webapp_technology_need` VALUES (68, 64, 13);
INSERT INTO `webapp_technology_need` VALUES (70, 65, 2);
INSERT INTO `webapp_technology_need` VALUES (71, 65, 4);
INSERT INTO `webapp_technology_need` VALUES (72, 66, 2);
INSERT INTO `webapp_technology_need` VALUES (73, 66, 4);
INSERT INTO `webapp_technology_need` VALUES (74, 67, 2);
INSERT INTO `webapp_technology_need` VALUES (76, 68, 2);
INSERT INTO `webapp_technology_need` VALUES (75, 68, 12);
INSERT INTO `webapp_technology_need` VALUES (77, 69, 2);
INSERT INTO `webapp_technology_need` VALUES (80, 70, 2);
INSERT INTO `webapp_technology_need` VALUES (78, 70, 11);
INSERT INTO `webapp_technology_need` VALUES (79, 70, 13);
INSERT INTO `webapp_technology_need` VALUES (83, 71, 2);
INSERT INTO `webapp_technology_need` VALUES (81, 71, 11);
INSERT INTO `webapp_technology_need` VALUES (82, 71, 13);
INSERT INTO `webapp_technology_need` VALUES (84, 72, 16);
INSERT INTO `webapp_technology_need` VALUES (85, 75, 16);
INSERT INTO `webapp_technology_need` VALUES (86, 76, 6);
INSERT INTO `webapp_technology_need` VALUES (87, 77, 6);
INSERT INTO `webapp_technology_need` VALUES (88, 78, 15);
INSERT INTO `webapp_technology_need` VALUES (89, 78, 17);
INSERT INTO `webapp_technology_need` VALUES (90, 79, 6);
INSERT INTO `webapp_technology_need` VALUES (91, 80, 2);
INSERT INTO `webapp_technology_need` VALUES (92, 82, 16);
INSERT INTO `webapp_technology_need` VALUES (93, 83, 2);
INSERT INTO `webapp_technology_need` VALUES (94, 84, 2);
INSERT INTO `webapp_technology_need` VALUES (96, 85, 11);
INSERT INTO `webapp_technology_need` VALUES (95, 85, 13);
INSERT INTO `webapp_technology_need` VALUES (97, 88, 2);
INSERT INTO `webapp_technology_need` VALUES (98, 89, 16);
INSERT INTO `webapp_technology_need` VALUES (99, 91, 2);
INSERT INTO `webapp_technology_need` VALUES (100, 95, 13);

-- ----------------------------
-- Table structure for webapp_technology_technotype
-- ----------------------------
DROP TABLE IF EXISTS `webapp_technology_technotype`;
CREATE TABLE `webapp_technology_technotype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_id` int(11) NOT NULL,
  `technotype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `webapp_technology_technotype_technology_id_bb1a2ae9_uniq`(`technology_id`, `technotype_id`) USING BTREE,
  INDEX `webapp_technology_technotype_id_6801163f_fk_webapp_technotype_id`(`technotype_id`) USING BTREE,
  CONSTRAINT `webapp_technology_technology_id_d4f269a9_fk_webapp_technology_id` FOREIGN KEY (`technology_id`) REFERENCES `webapp_technology` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `webapp_technology_technotype_id_6801163f_fk_webapp_technotype_id` FOREIGN KEY (`technotype_id`) REFERENCES `webapp_technotype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_technology_technotype
-- ----------------------------
INSERT INTO `webapp_technology_technotype` VALUES (1, 1, 2);
INSERT INTO `webapp_technology_technotype` VALUES (2, 2, 2);
INSERT INTO `webapp_technology_technotype` VALUES (3, 2, 17);
INSERT INTO `webapp_technology_technotype` VALUES (5, 3, 1);
INSERT INTO `webapp_technology_technotype` VALUES (4, 3, 2);
INSERT INTO `webapp_technology_technotype` VALUES (6, 4, 5);
INSERT INTO `webapp_technology_technotype` VALUES (7, 5, 2);
INSERT INTO `webapp_technology_technotype` VALUES (8, 6, 13);
INSERT INTO `webapp_technology_technotype` VALUES (9, 7, 3);
INSERT INTO `webapp_technology_technotype` VALUES (10, 8, 1);
INSERT INTO `webapp_technology_technotype` VALUES (11, 9, 1);
INSERT INTO `webapp_technology_technotype` VALUES (12, 10, 12);
INSERT INTO `webapp_technology_technotype` VALUES (13, 11, 3);
INSERT INTO `webapp_technology_technotype` VALUES (14, 12, 3);
INSERT INTO `webapp_technology_technotype` VALUES (15, 13, 2);
INSERT INTO `webapp_technology_technotype` VALUES (16, 14, 7);
INSERT INTO `webapp_technology_technotype` VALUES (18, 14, 15);
INSERT INTO `webapp_technology_technotype` VALUES (17, 14, 17);
INSERT INTO `webapp_technology_technotype` VALUES (19, 15, 5);
INSERT INTO `webapp_technology_technotype` VALUES (20, 15, 12);
INSERT INTO `webapp_technology_technotype` VALUES (21, 16, 5);
INSERT INTO `webapp_technology_technotype` VALUES (22, 17, 19);
INSERT INTO `webapp_technology_technotype` VALUES (23, 18, 12);
INSERT INTO `webapp_technology_technotype` VALUES (24, 19, 3);
INSERT INTO `webapp_technology_technotype` VALUES (25, 20, 8);
INSERT INTO `webapp_technology_technotype` VALUES (26, 21, 18);
INSERT INTO `webapp_technology_technotype` VALUES (27, 22, 10);
INSERT INTO `webapp_technology_technotype` VALUES (29, 23, 3);
INSERT INTO `webapp_technology_technotype` VALUES (28, 23, 13);
INSERT INTO `webapp_technology_technotype` VALUES (30, 24, 3);
INSERT INTO `webapp_technology_technotype` VALUES (31, 24, 6);
INSERT INTO `webapp_technology_technotype` VALUES (32, 25, 3);
INSERT INTO `webapp_technology_technotype` VALUES (33, 25, 6);
INSERT INTO `webapp_technology_technotype` VALUES (34, 26, 6);
INSERT INTO `webapp_technology_technotype` VALUES (35, 27, 3);
INSERT INTO `webapp_technology_technotype` VALUES (36, 28, 5);
INSERT INTO `webapp_technology_technotype` VALUES (37, 29, 19);
INSERT INTO `webapp_technology_technotype` VALUES (38, 30, 19);
INSERT INTO `webapp_technology_technotype` VALUES (39, 31, 5);
INSERT INTO `webapp_technology_technotype` VALUES (40, 32, 2);
INSERT INTO `webapp_technology_technotype` VALUES (41, 33, 1);
INSERT INTO `webapp_technology_technotype` VALUES (42, 34, 3);
INSERT INTO `webapp_technology_technotype` VALUES (43, 35, 14);
INSERT INTO `webapp_technology_technotype` VALUES (44, 36, 3);
INSERT INTO `webapp_technology_technotype` VALUES (45, 37, 2);
INSERT INTO `webapp_technology_technotype` VALUES (46, 38, 1);
INSERT INTO `webapp_technology_technotype` VALUES (47, 39, 3);
INSERT INTO `webapp_technology_technotype` VALUES (48, 40, 14);
INSERT INTO `webapp_technology_technotype` VALUES (49, 41, 5);
INSERT INTO `webapp_technology_technotype` VALUES (50, 42, 19);
INSERT INTO `webapp_technology_technotype` VALUES (51, 43, 15);
INSERT INTO `webapp_technology_technotype` VALUES (52, 43, 19);
INSERT INTO `webapp_technology_technotype` VALUES (53, 44, 13);
INSERT INTO `webapp_technology_technotype` VALUES (54, 45, 3);
INSERT INTO `webapp_technology_technotype` VALUES (55, 46, 19);
INSERT INTO `webapp_technology_technotype` VALUES (56, 47, 20);
INSERT INTO `webapp_technology_technotype` VALUES (57, 48, 17);
INSERT INTO `webapp_technology_technotype` VALUES (58, 49, 3);
INSERT INTO `webapp_technology_technotype` VALUES (59, 50, 2);
INSERT INTO `webapp_technology_technotype` VALUES (60, 51, 20);
INSERT INTO `webapp_technology_technotype` VALUES (62, 52, 3);
INSERT INTO `webapp_technology_technotype` VALUES (61, 52, 19);
INSERT INTO `webapp_technology_technotype` VALUES (63, 53, 19);
INSERT INTO `webapp_technology_technotype` VALUES (64, 54, 1);
INSERT INTO `webapp_technology_technotype` VALUES (65, 54, 10);
INSERT INTO `webapp_technology_technotype` VALUES (66, 55, 1);
INSERT INTO `webapp_technology_technotype` VALUES (67, 56, 3);
INSERT INTO `webapp_technology_technotype` VALUES (68, 57, 12);
INSERT INTO `webapp_technology_technotype` VALUES (69, 57, 13);
INSERT INTO `webapp_technology_technotype` VALUES (70, 58, 12);
INSERT INTO `webapp_technology_technotype` VALUES (71, 58, 13);
INSERT INTO `webapp_technology_technotype` VALUES (72, 59, 19);
INSERT INTO `webapp_technology_technotype` VALUES (73, 60, 15);
INSERT INTO `webapp_technology_technotype` VALUES (74, 61, 8);
INSERT INTO `webapp_technology_technotype` VALUES (75, 62, 10);
INSERT INTO `webapp_technology_technotype` VALUES (76, 63, 5);
INSERT INTO `webapp_technology_technotype` VALUES (77, 64, 8);
INSERT INTO `webapp_technology_technotype` VALUES (78, 65, 2);
INSERT INTO `webapp_technology_technotype` VALUES (79, 66, 2);
INSERT INTO `webapp_technology_technotype` VALUES (80, 67, 4);
INSERT INTO `webapp_technology_technotype` VALUES (81, 68, 2);
INSERT INTO `webapp_technology_technotype` VALUES (82, 69, 10);
INSERT INTO `webapp_technology_technotype` VALUES (83, 70, 8);
INSERT INTO `webapp_technology_technotype` VALUES (84, 71, 8);
INSERT INTO `webapp_technology_technotype` VALUES (85, 72, 3);
INSERT INTO `webapp_technology_technotype` VALUES (86, 73, 2);
INSERT INTO `webapp_technology_technotype` VALUES (87, 74, 3);
INSERT INTO `webapp_technology_technotype` VALUES (88, 75, 3);
INSERT INTO `webapp_technology_technotype` VALUES (89, 76, 16);
INSERT INTO `webapp_technology_technotype` VALUES (90, 77, 16);
INSERT INTO `webapp_technology_technotype` VALUES (91, 79, 5);
INSERT INTO `webapp_technology_technotype` VALUES (92, 80, 3);
INSERT INTO `webapp_technology_technotype` VALUES (93, 81, 17);
INSERT INTO `webapp_technology_technotype` VALUES (94, 82, 4);
INSERT INTO `webapp_technology_technotype` VALUES (95, 83, 2);
INSERT INTO `webapp_technology_technotype` VALUES (96, 84, 2);
INSERT INTO `webapp_technology_technotype` VALUES (97, 85, 3);
INSERT INTO `webapp_technology_technotype` VALUES (98, 86, 1);
INSERT INTO `webapp_technology_technotype` VALUES (99, 87, 15);
INSERT INTO `webapp_technology_technotype` VALUES (100, 88, 4);
INSERT INTO `webapp_technology_technotype` VALUES (101, 89, 7);
INSERT INTO `webapp_technology_technotype` VALUES (102, 90, 3);
INSERT INTO `webapp_technology_technotype` VALUES (103, 91, 1);
INSERT INTO `webapp_technology_technotype` VALUES (104, 92, 20);
INSERT INTO `webapp_technology_technotype` VALUES (105, 93, 3);
INSERT INTO `webapp_technology_technotype` VALUES (106, 94, 20);
INSERT INTO `webapp_technology_technotype` VALUES (107, 95, 3);
INSERT INTO `webapp_technology_technotype` VALUES (108, 96, 1);
INSERT INTO `webapp_technology_technotype` VALUES (109, 97, 13);
INSERT INTO `webapp_technology_technotype` VALUES (110, 98, 5);
INSERT INTO `webapp_technology_technotype` VALUES (111, 99, 1);

-- ----------------------------
-- Table structure for webapp_technotype
-- ----------------------------
DROP TABLE IF EXISTS `webapp_technotype`;
CREATE TABLE `webapp_technotype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_technotype
-- ----------------------------
INSERT INTO `webapp_technotype` VALUES (1, 'Objet connecté', 1);
INSERT INTO `webapp_technotype` VALUES (2, 'Domotique', 2);
INSERT INTO `webapp_technotype` VALUES (3, 'Application', 3);
INSERT INTO `webapp_technotype` VALUES (4, 'Téléphone', 4);
INSERT INTO `webapp_technotype` VALUES (5, 'Logiciel', 5);
INSERT INTO `webapp_technotype` VALUES (6, 'Site', 6);
INSERT INTO `webapp_technotype` VALUES (7, 'Ordinateur et accessoire', 7);
INSERT INTO `webapp_technotype` VALUES (8, 'Pilulier', 8);
INSERT INTO `webapp_technotype` VALUES (9, 'Prothèse/Orthèse', 9);
INSERT INTO `webapp_technotype` VALUES (10, 'Biofeedback', 10);
INSERT INTO `webapp_technotype` VALUES (11, 'Moyen de transport', 11);
INSERT INTO `webapp_technotype` VALUES (12, 'Jeu vidéo', 12);
INSERT INTO `webapp_technotype` VALUES (13, 'Jeu', 13);
INSERT INTO `webapp_technotype` VALUES (14, 'Robot', 14);
INSERT INTO `webapp_technotype` VALUES (15, 'Matériel pédagogique', 15);
INSERT INTO `webapp_technotype` VALUES (16, 'Implants', 16);
INSERT INTO `webapp_technotype` VALUES (17, 'Aide à la vision', 17);
INSERT INTO `webapp_technotype` VALUES (18, 'Douche', 18);
INSERT INTO `webapp_technotype` VALUES (19, 'Outil électronique', 19);
INSERT INTO `webapp_technotype` VALUES (20, 'Emetteur/capteur', 20);

-- ----------------------------
-- Table structure for webapp_user
-- ----------------------------
DROP TABLE IF EXISTS `webapp_user`;
CREATE TABLE `webapp_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webapp_user
-- ----------------------------
INSERT INTO `webapp_user` VALUES (1, 'pbkdf2_sha256$30000$grHEESdWcDje$AkXvdgqTW0Cpzy+Usmb14IJ3e7a+/nWabKnK2NggVJs=', '2018-12-03 14:40:26.777263', 1, 'juewen', '', '', 1, 1, '2018-12-02 13:07:32.409840', '123@qq.com', NULL);

-- ----------------------------
-- Table structure for webapp_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `webapp_user_groups`;
CREATE TABLE `webapp_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `webapp_user_groups_user_id_bfe43b37_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `webapp_user_groups_group_id_80b22ad1_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `webapp_user_groups_group_id_80b22ad1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `webapp_user_groups_user_id_ee1e77b2_fk_webapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `webapp_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for webapp_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `webapp_user_user_permissions`;
CREATE TABLE `webapp_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `webapp_user_user_permissions_user_id_ae444c59_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `webapp_user_user_pe_permission_id_c689398b_fk_auth_permission_id`(`permission_id`) USING BTREE,
  CONSTRAINT `webapp_user_user_pe_permission_id_c689398b_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `webapp_user_user_permissions_user_id_f651c0ea_fk_webapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `webapp_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
