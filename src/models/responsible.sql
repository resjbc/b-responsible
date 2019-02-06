/*
 Navicat Premium Data Transfer

 Source Server         : mysql_test
 Source Server Type    : MySQL
 Source Server Version : 100125
 Source Host           : localhost:3306
 Source Schema         : responsible

 Target Server Type    : MySQL
 Target Server Version : 100125
 File Encoding         : 65001

 Date: 03/01/2019 22:48:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for campur_responsible
-- ----------------------------
DROP TABLE IF EXISTS `campur_responsible`;
CREATE TABLE `campur_responsible`  (
  `ampurcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ampurcodefull` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `changwatcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ampurname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ampurcode`, `ampurcodefull`, `changwatcode`) USING BTREE,
  INDEX `idx1`(`ampurcodefull`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of campur_responsible
-- ----------------------------
INSERT INTO `campur_responsible` VALUES ('01', '9401', '94', 'เมืองปัตตานี', '0');
INSERT INTO `campur_responsible` VALUES ('02', '9402', '94', 'โคกโพธิ์', '0');
INSERT INTO `campur_responsible` VALUES ('03', '9403', '94', 'หนองจิก', '0');
INSERT INTO `campur_responsible` VALUES ('04', '9404', '94', 'ปะนาเระ', '0');
INSERT INTO `campur_responsible` VALUES ('05', '9405', '94', 'มายอ', '0');
INSERT INTO `campur_responsible` VALUES ('06', '9406', '94', 'ทุ่งยางแดง', '0');
INSERT INTO `campur_responsible` VALUES ('07', '9407', '94', 'สายบุรี', '0');
INSERT INTO `campur_responsible` VALUES ('08', '9408', '94', 'ไม้แก่น', '0');
INSERT INTO `campur_responsible` VALUES ('09', '9409', '94', 'ยะหริ่ง', '0');
INSERT INTO `campur_responsible` VALUES ('10', '9410', '94', 'ยะรัง', '0');
INSERT INTO `campur_responsible` VALUES ('11', '9411', '94', 'กะพ้อ', '0');
INSERT INTO `campur_responsible` VALUES ('12', '9412', '94', 'แม่ลาน', '0');

-- ----------------------------
-- Table structure for cchangwat_responsible
-- ----------------------------
DROP TABLE IF EXISTS `cchangwat_responsible`;
CREATE TABLE `cchangwat_responsible`  (
  `changwatcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `changwatname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zonecode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`changwatcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cchangwat_responsible
-- ----------------------------
INSERT INTO `cchangwat_responsible` VALUES ('94', 'ปัตตานี', '12');

-- ----------------------------
-- Table structure for chospital_responsible
-- ----------------------------
DROP TABLE IF EXISTS `chospital_responsible`;
CREATE TABLE `chospital_responsible`  (
  `hoscode` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hostype` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `road` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mu` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subdistcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `distcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postcode` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hoscodenew` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bed` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bedhos` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hdc_regist` int(200) NULL DEFAULT NULL,
  `dep` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hmain_sent` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hoscode`) USING BTREE,
  INDEX `hoscode`(`hoscode`) USING BTREE,
  INDEX `provcode`(`provcode`) USING BTREE,
  INDEX `zipcode`(`postcode`) USING BTREE,
  INDEX `changwatcode`(`provcode`, `distcode`, `subdistcode`, `hoscode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chospital_responsible
-- ----------------------------
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00073', 'สำนักงานสาธารณสุขจังหวัดปัตตานี', '01', '2ถ.สฤษดิ์ ', '', '00', '01', '01', '94', '-', '000007300', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10748', 'โรงพยาบาลปัตตานี', '06', '2', '', '00', '01', '01', '94', '94000', '001074800', '335', '23-2.3 ทุติยภูมิระดับสูง', '504', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('23805', 'มะกรูดคลินิกเวชกรรม', '16', 'เลขที่ 18/13ถ.มะกรูด ตำบลสะบารัง อำเภอเมือง จังหวั', '', '00', '01', '01', '94', '-', '002380500', '-', '-', '-', 0, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('77697', 'ศูนย์บริการสาธารณสุขปากน้ำ', '08', '10 ถ.ปากน้ำ', '', '-', '01', '01', '94', '94000', '001074803', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('77698', 'ศูนย์สุขภาพชุมชนโรงพยาบาลปัตตานี', '08', '21,22 ถ.ปัตตานีภิรมย์', '', '00', '01', '01', '94', '94000', '001074802', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14363', 'เทศบาลเมืองปัตตานี', '13', '71  ถ.กะลาพอ', '', '00', '03', '01', '94', '94000', '001436300', '0', '10-1 ปฐมภูมิ', '0', 1, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09892', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบานา', '18', '-', '', '08', '04', '01', '94', '94000', '000989200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('22773', 'สถานพยาบาลเรือนจำกลางปัตตานี', '13', '102 ถ.เกษมสำราญ ', '', '08', '04', '01', '94', '94000', '002277300', '0', '-', '0', 0, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09893', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตันหยงลูโละ', '18', '-', '', '03', '05', '01', '94', '94000', '000989300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09894', 'โรงพยาบาลส่งเสริมสุขภาพตำบลคลองมานิง', '18', '-', '', '02', '06', '01', '94', '94000', '000989400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09895', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกะมิยอ', '18', '-', '', '02', '07', '01', '94', '94000', '000989500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09896', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบาราโหม', '18', '-', '', '03', '08', '01', '94', '94000', '000989600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09897', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปะกาฮะรัง', '18', '-', '', '07', '09', '01', '94', '94000', '000989700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00900', 'สำนักงานสาธารณสุขอำเภอเมืองปัตตานี', '02', '-', '', '06', '10', '01', '94', '94000', '000090000', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09898', 'โรงพยาบาลส่งเสริมสุขภาพตำบลรูสะมิแล', '18', '-', '', '01', '10', '01', '94', '94000', '000989800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14195', 'โรงพยาบาลธัญญรักษ์ปัตตานี', '11', '249 ถ.ปากน้ำ', '', '06', '10', '01', '94', '94000', '001419500', '110', '-', '110', 0, '21003', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('21753', 'ศูนย์สุขภาพจิตที่ 15', '13', 'ภายในศูนย์บำบัดยาเสพติด ถ.ปากน้ำ', '', '-', '10', '01', '94', '94000', '002175300', '-', '10-1 ปฐมภูมิ', '-', 0, '21008', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09899', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตะลุโบะ', '18', '-', '', '09', '11', '01', '94', '94000', '000989900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09900', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบาราเฮาะ', '18', '-', '', '04', '12', '01', '94', '08648', '000990000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09901', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปุยุด', '18', '-', '', '07', '13', '01', '94', '94000', '000990100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00901', 'สำนักงานสาธารณสุขอำเภอโคกโพธิ์', '02', '-', '', '07', '01', '02', '94', '94120', '000090100', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09902', 'โรงพยาบาลส่งเสริมสุขภาพตำบลโคกโพธ์', '18', '94120', '', '07', '01', '02', '94', '07331', '000990200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09903', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสามยอด', '18', '-', '', '08', '01', '02', '94', '94000', '000990300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11423', 'โรงพยาบาลโคกโพธิ์', '07', '40/2 ถ.เพชรเกษม ', '', '03', '02', '02', '94', '94120', '001142300', '60', '22-2.2 ทุติยภูมิระดับกลาง', '104', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99879', 'ศูนย์สุขภาพชุมชนมะกรูด', '08', 'รพ.โคกโพธิ์ ม.3', '', '03', '02', '02', '94', '94120', '001142301', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09904', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางโกระ', '18', '-', '', '02', '03', '02', '94', '94120', '000990400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09906', 'โรงพยาบาลส่งเสริมสุขภาพตำบลทรายขาว', '18', '-', '', '05', '05', '02', '94', '94120', '000990600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09907', 'โรงพยาบาลส่งเสริมสุขภาพตำบลนาประดู่', '18', 'ม.6 ต.นาประดู่', '', '06', '06', '02', '94', '-', '000990700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09908', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปากล่อ', '18', '-', '', '06', '07', '02', '94', '94120', '000990800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09909', 'โรงพยาบาลส่งเสริมสุขภาพตำบลทุ่งพลา', '18', '-', '', '01', '08', '02', '94', '-', '000990900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09910', 'โรงพยาบาลส่งเสริมสุขภาพตำบลท่าเรือ', '18', '-', '', '03', '11', '02', '94', '94120', '000991000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09911', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านโคกอ้น', '18', '-', '', '06', '11', '02', '94', '94120', '000991100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09912', 'โรงพยาบาลส่งเสริมสุขภาพตำบลนาเกตุ', '18', '-', '', '04', '13', '02', '94', '94120', '000991200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09913', 'โรงพยาบาลส่งเสริมสุขภาพตำบลควนโนรี', '18', '-', '', '01', '14', '02', '94', '94120', '000991300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09905', 'โรงพยาบาลส่งเสริมสุขภาพตำบลช้างให้ตก', '18', '-', '', '03', '15', '02', '94', '94120', '000990500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09914', 'โรงพยาบาลส่งเสริมสุขภาพตำบลเกาะเปาะ', '18', '-', '', '02', '01', '03', '94', '-', '000991400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09915', 'โรงพยาบาลส่งเสริมสุขภาพตำบลคอลอตันหยง', '18', '-', '', '01', '02', '03', '94', '-', '000991500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14106', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านโคกโตนด', '18', 'ม.3 ต.คอลอตันหยง', '', '03', '02', '03', '94', '-', '001410600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09916', 'โรงพยาบาลส่งเสริมสุขภาพตำบลดอนรัก', '18', '-', '', '06', '03', '03', '94', '-', '000991600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09917', 'โรงพยาบาลส่งเสริมสุขภาพตำบลดาโต๊ะ', '18', '-', '', '05', '04', '03', '94', '-', '000991700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00902', 'สำนักงานสาธารณสุขอำเภอหนองจิก', '02', '5 ', '', '01', '05', '03', '94', '-', '000090200', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11424', 'โรงพยาบาลหนองจิก', '07', '223 ถ.เพชรเกษม ', '', '02', '05', '03', '94', '94170', '001142400', '48', '21-2.1 ทุติยภูมิระดับต้น', '44', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99878', 'ศูนย์สุขภาพชุมชนตุยง', '08', 'ที่ตั้ง 223 ม.2', '', '02', '05', '03', '94', '94170', '001142401', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '11424');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09918', 'โรงพยาบาลส่งเสริมสุขภาพตำบลท่ากำชำ', '18', '-', '', '01', '06', '03', '94', '-', '000991800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09919', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตันหยงเปาว์', '18', '-', '', '04', '06', '03', '94', '-', '000991900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09920', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ่อทอง', '18', '-', '', '06', '07', '03', '94', '-', '000992000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11529', 'โรงพยาบาลค่ายอิงคยุทธบริหาร', '12', 'ถ.เพชรเกษม', '', '07', '07', '03', '94', '94170', '001152900', '30', '21-2.1 ทุติยภูมิระดับต้น', '30', 0, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11578', 'โรงพยาบาลส่งเสริมสุขภาพตำบลทุ่งนเรนทร์', '18', 'ม.1 ต.บ่อทอง', '', '01', '07', '03', '94', '-', '001157800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09921', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางเขา', '18', '-', '', '04', '08', '03', '94', '-', '000992100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09922', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางตาวา', '18', '-', '', '02', '09', '03', '94', '-', '000992200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09923', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านท่ากูโบ', '18', '-', '', '02', '10', '03', '94', '-', '000992300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09924', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปุโละปุโย', '18', '-', '', '04', '10', '03', '94', '-', '000992400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09925', 'โรงพยาบาลส่งเสริมสุขภาพตำบลยาบี', '18', '-', '', '02', '11', '03', '94', '-', '000992500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09926', 'โรงพยาบาลส่งเสริมสุขภาพตำบลลิปะสะโง', '18', '-', '', '02', '12', '03', '94', '-', '000992600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00903', 'สำนักงานสาธารณสุขอำเภอปะนาเระ', '02', 'ม.3 บ้านปะนาเระตะวันตก ', '', '03', '01', '04', '94', '-', '000090300', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09927', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปะนาเระ', '18', 'ม.3 บ้านปะนาเระตะวันตก ', '', '03', '01', '04', '94', '-', '000992700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09928', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านท่าทราย', '18', '-', '', '04', '01', '04', '94', '-', '000992800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11425', 'โรงพยาบาลปะนาเระ', '07', '-', '', '01', '02', '04', '94', '-', '001142500', '30', '21-2.1 ทุติยภูมิระดับต้น', '38', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99877', 'ศูนย์สุขภาพชุมชนโรงพยาบาลปะนาเระ', '08', 'โรงพยาบาลปะนาเระ เลขที่ 94', '', '01', '02', '04', '94', '94130', '001142501', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09929', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านนอก', '18', '-', '', '04', '03', '04', '94', '-', '000992900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09930', 'โรงพยาบาลส่งเสริมสุขภาพตำบลดอน', '18', '-', '', '05', '04', '04', '94', '-', '000993000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09931', 'โรงพยาบาลส่งเสริมสุขภาพตำบลควน', '18', '-', '', '01', '05', '04', '94', '-', '000993100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09932', 'โรงพยาบาลส่งเสริมสุขภาพตำบลท่าน้ำ', '18', '-', '', '01', '06', '04', '94', '-', '000993200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09933', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสุเหร่า', '18', '-', '', '02', '06', '04', '94', '-', '000993300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09934', 'โรงพยาบาลส่งเสริมสุขภาพตำบลคอกกระบือ', '18', '-', '', '02', '07', '04', '94', '-', '000993400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09935', 'โรงพยาบาลส่งเสริมสุขภาพตำบลพ่อมิ่ง', '18', '-', '', '03', '08', '04', '94', '-', '000993500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09936', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางมะรวด', '18', '-', '', '01', '09', '04', '94', '-', '000993600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09937', 'โรงพยาบาลส่งเสริมสุขภาพตำบลศาลาหยุดพระ', '18', '-', '', '07', '09', '04', '94', '-', '000993700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14362', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านกลาง', '18', 'ม.3 บ้านหัวเขาแก้ว', '', '03', '09', '04', '94', '-', '001436200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09938', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านน้ำบ่อ', '18', '-', '', '02', '10', '04', '94', '-', '000993800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09939', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเตราะหัก', '18', '-', '', '04', '10', '04', '94', '-', '000993900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00904', 'สำนักงานสาธารณสุขอำเภอมายอ', '02', '-', '', '01', '01', '05', '94', '94140', '000090400', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11426', 'โรงพยาบาลมายอ', '07', '147/2  ถ.มายอ-ปาลัส ', '', '01', '01', '05', '94', '94140', '001142600', '30', '21-2.1 ทุติยภูมิระดับต้น', '42', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99876', 'ศูนย์สุขภาพชุมชนตำบลมายอ', '08', 'โรงพยาบาลมายอ เลขที่ 147/2', '', '01', '01', '05', '94', '94140', '001142601', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09940', 'โรงพยาบาลส่งเสริมสุขภาพตำบลถนน', '18', '-', '', '03', '02', '05', '94', '94140', '000994000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09941', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตรัง', '18', '-', '', '02', '03', '05', '94', '94140', '000994100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09942', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกระหวะ', '18', '-', '', '04', '04', '05', '94', '94140', '000994200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09943', 'โรงพยาบาลส่งเสริมสุขภาพตำบลลุโบะยิไร', '18', '-', '', '02', '05', '05', '94', '94140', '000994300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('41083', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านบ้านน้ำใส', '17', '1/15', NULL, '05', '05', '05', '94', '94140', '004108300', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', NULL);
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09944', 'โรงพยาบาลส่งเสริมสุขภาพตำบลลางา', '18', '-', '', '03', '06', '05', '94', '94140', '000994400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('24665', 'คลินิกปาลัสการแพทย์', '16', '9/1-9/2 ถ.เพชรเกษม', NULL, '05', '06', '05', '94', '94190', '002466500', '-', NULL, '-', 0, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09945', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกระเสาะ', '18', '-', '', '05', '07', '05', '94', '94140', '000994500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09946', 'โรงพยาบาลส่งเสริมสุขภาพตำบลเกาะจัน', '18', '-', '', '04', '08', '05', '94', '94140', '000994600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09947', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปะโด', '18', '-', '', '01', '09', '05', '94', '94140', '000994700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09948', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสาคอบน', '18', '-', '', '01', '10', '05', '94', '94140', '000994800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09949', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสาคอใต้', '18', '-', '', '03', '11', '05', '94', '94140', '000994900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09950', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสะกำ', '18', '-', '', '02', '12', '05', '94', '94140', '000995000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09951', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปานัน', '18', '-', '', '02', '13', '05', '94', '94140', '000995100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00905', 'สำนักงานสาธารณสุขอำเภอทุ่งยางแดง', '02', '-', '', '01', '01', '06', '94', '94140', '000090500', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11427', 'โรงพยาบาลทุ่งยางแดง', '07', '95', '', '01', '01', '06', '94', '94140', '001142700', '30', '21-2.1 ทุติยภูมิระดับต้น', '30', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99875', 'ศูนย์สุขภาพชุมชนตำบลตะโละแมะนา', '08', 'โรงพยาบาลทุ่งยางแดง เลขที่ 95', '', '01', '01', '06', '94', '94140', '001142701', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09952', 'โรงพยาบาลส่งเสริมสุขภาพตำบลพิเทน', '18', '-', '', '02', '02', '06', '94', '94140', '000995200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09953', 'โรงพยาบาลส่งเสริมสุขภาพตำบลน้ำดำ', '18', '-', '', '04', '03', '06', '94', '94140', '000995300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09954', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปากู', '18', '-', '', '01', '04', '06', '94', '94140', '000995400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00906', 'สำนักงานสาธารณสุขอำเภอสายบุรี', '02', 'ถ.ลูกเสือ ', '', '00', '01', '07', '94', '-', '000090600', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11460', 'โรงพยาบาลสมเด็จพระยุพราชสายบุรี', '07', '162 ถ.ท่าเสด็จ', '', '00', '01', '07', '94', '-', '001146000', '60', '22-2.2 ทุติยภูมิระดับกลาง', '73', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14364', 'ศูนย์สุขภาพชุมชนเทศบาลตำบลตะลุบัน', '13', 'ถ.ลูกเสือ  (เป็นศูนย์สุขภาพชุมชนรพร.สายบุรี)', '', '00', '01', '07', '94', '-', '001436400', '0', '10-1 ปฐมภูมิ', '0', 1, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('77700', 'ศูนย์สุขภาพชุมชนตะลุบัน', '08', '47', '', '00', '01', '07', '94', '94110', '001146002', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09955', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตะบิ้ง', '18', '-', '', '03', '02', '07', '94', '-', '000995500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09956', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปะเสยะวอ', '18', '-', '', '02', '03', '07', '94', '-', '000995600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09957', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านบาเลาะ', '18', '-', '', '05', '03', '07', '94', '-', '000995700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09958', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางเก่า', '18', '-', '', '01', '04', '07', '94', '-', '000995800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09959', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบือเระ', '18', '-', '', '03', '05', '07', '94', '-', '000995900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09960', 'โรงพยาบาลส่งเสริมสุขภาพตำบลเตราะบอน', '18', '-', '', '01', '06', '07', '94', '-', '000996000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09961', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกะดุนง', '18', '-', '', '08', '07', '07', '94', '-', '000996100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09962', 'โรงพยาบาลส่งเสริมสุขภาพตำบลละหาร', '18', '-', '', '03', '08', '07', '94', '-', '000996200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09963', 'โรงพยาบาลส่งเสริมสุขภาพตำบลมะนังดาลำ', '18', '-', '', '01', '09', '07', '94', '-', '000996300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09964', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านจลาโก', '18', '-', '', '02', '09', '07', '94', '-', '000996400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09965', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านเจาะโบ', '18', '-', '', '01', '10', '07', '94', '-', '000996500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09966', 'โรงพยาบาลส่งเสริมสุขภาพตำบลแป้น', '18', '-', '', '05', '10', '07', '94', '-', '000996600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09967', 'โรงพยาบาลส่งเสริมสุขภาพตำบลทุ่งคล้า', '18', '-', '', '03', '11', '07', '94', '-', '000996700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00907', 'สำนักงานสาธารณสุขอำเภอไม้แก่น', '02', '-', '', '01', '01', '08', '94', '94220', '000090700', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09970', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านดินเสมอ', '18', '-', '', '01', '01', '08', '94', '94000', '000997000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11428', 'โรงพยาบาลไม้แก่น', '07', '108 ', '', '04', '01', '08', '94', '94000', '001142800', '30', '21-2.1 ทุติยภูมิระดับต้น', '30', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99871', 'ศูนย์สุขภาพชุมชนตำบลไทรทอง', '08', 'โรงพยาบาลไม้แก่น เลขที่ 108', '', '04', '01', '08', '94', '94220', '001142801', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09968', 'โรงพยาบาลส่งเสริมสุขภาพตำบลไม้แก่น', '18', '-', '', '01', '02', '08', '94', '94000', '000996800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09969', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านใหญ่', '18', '-', '', '03', '02', '08', '94', '94000', '000996900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09971', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านรังมดแดง', '18', '-', '', '02', '04', '08', '94', '94000', '000997100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14107', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านป่าไหม้', '18', '-', '', '01', '04', '08', '94', '94220', '001410700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09972', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตะโละ', '18', '-', '', '03', '01', '09', '94', '94150', '000997200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09973', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตะโละกาโปร์', '18', '-', '', '03', '02', '09', '94', '94150', '000997300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09974', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตันหยงดาลอ', '18', '-', '', '01', '03', '09', '94', '94150', '000997400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09975', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตันหยงจึงงา', '18', '-', '', '02', '04', '09', '94', '94150', '000997500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09976', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตอหลัง', '18', '-', '', '01', '05', '09', '94', '94150', '000997600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09977', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตาแกะ', '18', '-', '', '04', '06', '09', '94', '94150', '000997700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09978', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตาลีอายร์', '18', '-', '', '01', '07', '09', '94', '94150', '000997800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00908', 'สำนักงานสาธารณสุขอำเภอยะหริ่ง', '02', '-', '', '01', '08', '09', '94', '94150', '000090800', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11429', 'โรงพยาบาลยะหริ่ง', '07', '183ู', '', '02', '08', '09', '94', '94150', '001142900', '30', '21-2.1 ทุติยภูมิระดับต้น', '62', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99763', 'ศูนย์สุขภาพชุมชนตำบลยามู', '08', '15/4', '', '02', '08', '09', '94', '94150', '001142901', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09979', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบางปู', '18', '-', '', '03', '09', '09', '94', '94150', '000997900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09980', 'โรงพยาบาลส่งเสริมสุขภาพตำบลหนองแรด', '18', '-', '', '01', '10', '09', '94', '94150', '000998000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09981', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปิยามุมัง', '18', '-', '', '03', '11', '09', '94', '94150', '000998100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09982', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปุลากง', '18', '-', '', '01', '12', '09', '94', '94150', '000998200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09983', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบาโลย', '18', '-', '', '02', '13', '09', '94', '94180', '000998300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09984', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสาบัน', '18', '-', '', '03', '14', '09', '94', '94150', '000998400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09985', 'โรงพยาบาลส่งเสริมสุขภาพตำบลมะนังยง', '18', '-', '', '02', '15', '09', '94', '94150', '000998500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09986', 'โรงพยาบาลส่งเสริมสุขภาพตำบลราตาปันยัง', '18', '-', '', '04', '16', '09', '94', '94150', '000998600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09987', 'โรงพยาบาลส่งเสริมสุขภาพตำบลจะรัง', '18', '-', '', '05', '17', '09', '94', '94150', '000998700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09988', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านปาตาบูดี', '18', '-', '', '03', '18', '09', '94', '94150', '000998800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09989', 'โรงพยาบาลส่งเสริมสุขภาพตำบลแหลมโพธิ์', '18', '-', '', '04', '18', '09', '94', '94150', '000998900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00909', 'สำนักงานสาธารณสุขอำเภอยะรัง', '02', '32 ', '', '03', '01', '10', '94', '-', '000090900', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09990', 'โรงพยาบาลส่งเสริมสุขภาพตำบลยะรัง', '18', '-', '', '03', '01', '10', '94', '-', '000999000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09991', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสะดาวา', '18', '-', '', '04', '02', '10', '94', '-', '000999100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09992', 'โรงพยาบาลส่งเสริมสุขภาพตำบลประจัน', '18', '-', '', '01', '03', '10', '94', '-', '000999200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09993', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านบือแนปิแน', '18', '-', '', '07', '03', '10', '94', '-', '000999300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09994', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสะนอ', '18', '-', '', '01', '04', '10', '94', '-', '000999400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09995', 'โรงพยาบาลส่งเสริมสุขภาพตำบลระแว้ง', '18', '-', '', '04', '05', '10', '94', '-', '000999500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09996', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปิตุมุดี', '18', '-', '', '05', '06', '10', '94', '-', '000999600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11430', 'โรงพยาบาลยะรัง', '07', '106 ม.1 ถ.ยะรัง ', '', '01', '06', '10', '94', '96160', '001143000', '30', '21-2.1 ทุติยภูมิระดับต้น', '49', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('24033', 'คลินิกยะรังแพทย์แผนไทยประยุกต์', '16', '3/2 ต.ปิตูมุดี อ.ยะรัง จ.ปัตตานี  94160', '', '00', '06', '10', '94', '94160', '002403300', '0', '-', '-', 0, '', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99874', 'ศูนย์สุขภาพชุมชนโรงพยาบาลยะรัง', '08', 'โรงพยาบาลยะรัง เลขที่ 106 ', '', '01', '06', '10', '94', '94160', '001143001', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09997', 'โรงพยาบาลส่งเสริมสุขภาพตำบลวัด', '18', '-', '', '03', '07', '10', '94', '-', '000999700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09998', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกระโด', '18', '-', '', '02', '08', '10', '94', '-', '000999800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('09999', 'โรงพยาบาลส่งเสริมสุขภาพตำบลคลองใหม่', '18', 'ม.3 ต.คลองใหม่', '', '03', '09', '10', '94', '-', '000999900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10000', 'โรงพยาบาลส่งเสริมสุขภาพตำบลเมาะมาวี', '18', '-', '', '04', '10', '10', '94', '-', '001000000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10001', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านสะตา', '18', '-', '', '03', '11', '10', '94', '-', '001000100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10002', 'โรงพยาบาลส่งเสริมสุขภาพตำบลกอลำ', '18', '-', '', '05', '11', '10', '94', '-', '001000200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10003', 'โรงพยาบาลส่งเสริมสุขภาพตำบลเขาตูม', '18', '-', '', '03', '12', '10', '94', '-', '001000300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10004', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านจาเราะบองอ', '18', '-', '', '05', '12', '10', '94', '-', '001000400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00910', 'สำนักงานสาธารณสุขอำเภอกะพ้อ', '02', '-', '', '02', '01', '11', '94', '94230', '000091000', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10005', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านบาโงยือแบ็ง', '18', '-', '', '05', '01', '11', '94', '94230', '001000500', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11464', 'โรงพยาบาลกะพ้อ', '07', '-', '', '01', '01', '11', '94', '94140', '001146400', '10', '21-2.1 ทุติยภูมิระดับต้น', '32', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99873', 'ศูนย์สุขภาพชุมชนโรงพยาบาลกะพ้อ', '08', 'โรงพยาบาลกะพ้อ เลขที่ 86 ', '', '01', '01', '11', '94', '94230', '001146401', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10006', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านอุแตบือราแง', '18', '-', '', '02', '02', '11', '94', '94230', '001000600', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10007', 'โรงพยาบาลส่งเสริมสุขภาพตำบลตะโละดือรามัน', '18', '-', '', '03', '02', '11', '94', '94230', '001000700', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('14210', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านโต๊ะแน', '18', '-', '', '09', '02', '11', '94', '-', '001421000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10008', 'โรงพยาบาลส่งเสริมสุขภาพตำบลปล่องหอย', '18', '-', '', '02', '03', '11', '94', '94230', '001000800', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10009', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านปล่องหอย', '18', '-', '', '05', '03', '11', '94', '94230', '001000900', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('00911', 'สำนักงานสาธารณสุขอำเภอแม่ลาน', '02', '-', '', '04', '01', '12', '94', '94180', '000091100', '0', '-', '0', 0, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10010', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านคลองทราย', '18', '-', '', '02', '01', '12', '94', '94180', '001001000', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10011', 'โรงพยาบาลส่งเสริมสุขภาพตำบลสถานีอนามัยแม่ลาน', '18', '-', '', '04', '01', '12', '94', '94180', '001001100', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('11431', 'โรงพยาบาลแม่ลาน', '07', '128  ถ.บ้านนางโจ-ปรีดี ', '', '06', '01', '12', '94', '94180', '001143100', '10', '21-2.1 ทุติยภูมิระดับต้น', '18', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('99872', 'ศูนย์สุขภาพชุมชนโรงพยาบาลแม่ลาน', '08', 'โรงพยาบาลแม่ลาน เลขที่ 128', '', '06', '01', '12', '94', '94180', '001143101', '0', '10-1 ปฐมภูมิ', '-', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10012', 'โรงพยาบาลส่งเสริมสุขภาพตำบลม่วงเตี้ย', '18', '-', '', '01', '02', '12', '94', '94180', '001001200', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10013', 'โรงพยาบาลส่งเสริมสุขภาพตำบลบ้านต้นโหนด', '18', '-', '', '01', '03', '12', '94', '94180', '001001300', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');
INSERT INTO `chospital_responsible` (`hoscode`, `hosname`, `hostype`, `address`, `road`, `mu`, `subdistcode`, `distcode`, `provcode`, `postcode`, `hoscodenew`, `bed`, `level_service`, `bedhos`, `hdc_regist`, `dep`, `hmain_sent`) VALUES ('10014', 'โรงพยาบาลส่งเสริมสุขภาพตำบลป่าไร่', '18', '-', '', '03', '03', '12', '94', '94180', '001001400', '0', '10-1 ปฐมภูมิ', '0', 1, '21002', '');


-- ----------------------------
-- Table structure for ctambon_responsible
-- ----------------------------
DROP TABLE IF EXISTS `ctambon_responsible`;
CREATE TABLE `ctambon_responsible`  (
  `ampurcode` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `changwatcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tamboncodefull` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tambonname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tamboncode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag_status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ampurcode`, `changwatcode`, `tamboncodefull`, `tamboncode`) USING BTREE,
  INDEX `idx1`(`tamboncodefull`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ctambon_responsible
-- ----------------------------
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940101', 'สะบารัง', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940102', 'อาเนาะรู', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940103', 'จะบังติกอ', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940104', 'บานา', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940105', 'ตันหยงลุโละ', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940106', 'คลองมานิง', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940107', 'กะมิยอ', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940108', 'บาราโหม', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940109', 'ปะกาฮะรัง', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940110', 'รูสะมิแล', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940111', 'ตะลุโบะ', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940112', 'บาราเฮาะ', '12', '0');
INSERT INTO `ctambon_responsible` VALUES ('9401', '94', '940113', 'ปุยุด', '13', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940201', 'โคกโพธิ์', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940202', 'มะกรูด', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940203', 'บางโกระ', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940204', 'ป่าบอน', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940205', 'ทรายขาว', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940206', 'นาประดู่', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940207', 'ปากล่อ', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940208', 'ทุ่งพลา', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940209', '*แม่ลาน', '09', '1');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940210', '*ป่าไร่', '10', '1');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940211', 'ท่าเรือ', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940212', '*ม่วงเตี้ย', '12', '1');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940213', 'นาเกตุ', '13', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940214', 'ควนโนรี', '14', '0');
INSERT INTO `ctambon_responsible` VALUES ('9402', '94', '940215', 'ช้างให้ตก', '15', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940301', 'เกาะเปาะ', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940302', 'คอลอตันหยง', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940303', 'ดอนรัก', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940304', 'ดาโต๊ะ', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940305', 'ตุยง', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940306', 'ท่ากำชำ', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940307', 'บ่อทอง', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940308', 'บางเขา', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940309', 'บางตาวา', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940310', 'ปุโละปุโย', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940311', 'ยาบี', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9403', '94', '940312', 'ลิปะสะโง', '12', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940401', 'ปะนาเระ', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940402', 'ท่าข้าม', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940403', 'บ้านนอก', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940404', 'ดอน', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940405', 'ควน', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940406', 'ท่าน้ำ', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940407', 'คอกกระบือ', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940408', 'พ่อมิ่ง', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940409', 'บ้านกลาง', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9404', '94', '940410', 'บ้านน้ำบ่อ', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940501', 'มายอ', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940502', 'ถนน', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940503', 'ตรัง', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940504', 'กระหวะ', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940505', 'ลุโบะยิไร', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940506', 'ลางา', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940507', 'กระเสาะ', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940508', 'เกาะจัน', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940509', 'ปะโด', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940510', 'สาคอบน', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940511', 'สาคอใต้', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940512', 'สะกำ', '12', '0');
INSERT INTO `ctambon_responsible` VALUES ('9405', '94', '940513', 'ปานัน', '13', '0');
INSERT INTO `ctambon_responsible` VALUES ('9406', '94', '940601', 'ตะโละแมะนา', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9406', '94', '940602', 'พิเทน', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9406', '94', '940603', 'น้ำดำ', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9406', '94', '940604', 'ปากู', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940701', 'ตะลุบัน', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940702', 'ตะบิ้ง', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940703', 'ปะเสยะวอ', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940704', 'บางเก่า', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940705', 'บือเระ', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940706', 'เตราะบอน', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940707', 'กะดุนง', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940708', 'ละหาร', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940709', 'มะนังดาลำ', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940710', 'แป้น', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9407', '94', '940711', 'ทุ่งคล้า', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9408', '94', '940801', 'ไทรทอง', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9408', '94', '940802', 'ไม้แก่น', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9408', '94', '940803', 'ตะโละไกรทอง', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9408', '94', '940804', 'ดอนทราย', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940901', 'ตะโละ', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940902', 'ตะโละกาโปร์', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940903', 'ตันหยงดาลอ', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940904', 'ตันหยงจึงงา', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940905', 'ตอหลัง', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940906', 'ตาแกะ', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940907', 'ตาลีอายร์', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940908', 'ยามู', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940909', 'บางปู', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940910', 'หนองแรต', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940911', 'ปิยามุมัง', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940912', 'ปุลากง', '12', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940913', 'บาโลย', '13', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940914', 'สาบัน', '14', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940915', 'มะนังยง', '15', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940916', 'ราตาปันยัง', '16', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940917', 'จะรัง', '17', '0');
INSERT INTO `ctambon_responsible` VALUES ('9409', '94', '940918', 'แหลมโพธิ์', '18', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941001', 'ยะรัง', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941002', 'สะดาวา', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941003', 'ประจัน', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941004', 'สะนอ', '04', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941005', 'ระแว้ง', '05', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941006', 'ปิตูมุดี', '06', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941007', 'วัด', '07', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941008', 'กระโด', '08', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941009', 'คลองใหม่', '09', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941010', 'เมาะมาวี', '10', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941011', 'กอลำ', '11', '0');
INSERT INTO `ctambon_responsible` VALUES ('9410', '94', '941012', 'เขาตูม', '12', '0');
INSERT INTO `ctambon_responsible` VALUES ('9411', '94', '941101', 'กะรุบี', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9411', '94', '941102', 'ตะโละดือรามัน', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9411', '94', '941103', 'ปล่องหอย', '03', '0');
INSERT INTO `ctambon_responsible` VALUES ('9412', '94', '941201', 'แม่ลาน', '01', '0');
INSERT INTO `ctambon_responsible` VALUES ('9412', '94', '941202', 'ม่วงเตี้ย', '02', '0');
INSERT INTO `ctambon_responsible` VALUES ('9412', '94', '941203', 'ป่าไร่', '03', '0');

-- ----------------------------
-- Table structure for cvillage_responsible
-- ----------------------------
DROP TABLE IF EXISTS `cvillage_responsible`;
CREATE TABLE `cvillage_responsible`  (
  `villagecode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `villagecodefull` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tamboncode` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ampurcode` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `changwatcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `villagename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag_status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`villagecode`, `villagecodefull`, `tamboncode`, `ampurcode`, `changwatcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cvillage_responsible
-- ----------------------------
INSERT INTO `cvillage_responsible` VALUES ('01', '94010401', '940104', '9401', '94', 'สุไหงปาแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94010501', '940105', '9401', '94', 'ตันหยงลุโละ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94010601', '940106', '9401', '94', 'จืแรตันหยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94010701', '940107', '9401', '94', 'ท่าราบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94010801', '940108', '9401', '94', 'ปาเระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94010901', '940109', '9401', '94', 'ตะลุโบะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94011001', '940110', '9401', '94', 'รูสะมิแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94011101', '940111', '9401', '94', 'แบรอบูแยสะมิ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94011201', '940112', '9401', '94', 'แบระสะนิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94011301', '940113', '9401', '94', 'รามง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020101', '940201', '9402', '94', 'กะโผะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020201', '940202', '9402', '94', 'ยางแดง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020301', '940203', '9402', '94', 'ทุ่งศาลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020401', '940204', '9402', '94', 'ป่าบอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020501', '940205', '9402', '94', 'ลำหยัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020601', '940206', '9402', '94', 'นาประดู่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020701', '940207', '9402', '94', 'บาเงง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94020801', '940208', '9402', '94', 'ทุ่งพลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94021101', '940211', '9402', '94', 'ควน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94021301', '940213', '9402', '94', 'นาเกตุ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94021401', '940214', '9402', '94', 'แม่กัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94021501', '940215', '9402', '94', 'สวนนอก', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030101', '940301', '9403', '94', 'เกาะเปาะใต้', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030201', '940302', '9403', '94', 'คอลอตันหยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030301', '940303', '9403', '94', 'ดอนรัก', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030401', '940304', '9403', '94', 'เปี๊ยะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030501', '940305', '9403', '94', 'ตุยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030601', '940306', '9403', '94', 'ท่ากำซำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030701', '940307', '9403', '94', 'ควนคูหา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030801', '940308', '9403', '94', 'บางไร่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94030901', '940309', '9403', '94', 'ปากบางตาวา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94031001', '940310', '9403', '94', 'กาหยี', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94031101', '940311', '9403', '94', 'ยาบีใต้', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94031201', '940312', '9403', '94', 'มะพร้าวต้นเดียว', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040101', '940401', '9404', '94', 'ปะนาเระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040201', '940402', '9404', '94', 'ท่าข้าม', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040301', '940403', '9404', '94', 'ทุ่งใหญ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040401', '940404', '9404', '94', 'ราวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040501', '940405', '9404', '94', 'ปาลัส', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040601', '940406', '9404', '94', 'ตะโล๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040701', '940407', '9404', '94', 'ใหญ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040801', '940408', '9404', '94', 'เคียน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94040901', '940409', '9404', '94', 'มะรวด', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94041001', '940410', '9404', '94', 'บางหมู', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050101', '940501', '9405', '94', 'มายอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050201', '940502', '9405', '94', 'ถนน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050301', '940503', '9405', '94', 'บองอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050401', '940504', '9405', '94', 'กาแลตือเงาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050501', '940505', '9405', '94', 'บาลูกาตือเงาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050601', '940506', '9405', '94', 'กอแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050701', '940507', '9405', '94', 'ลางสาด', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050801', '940508', '9405', '94', 'แขนท้าว', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94050901', '940509', '9405', '94', 'บูดน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94051001', '940510', '9405', '94', 'บาตะกูโบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94051101', '940511', '9405', '94', 'ฆูลี', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94051201', '940512', '9405', '94', 'สะกำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94051301', '940513', '9405', '94', 'บาโง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94060101', '940601', '9406', '94', 'ลูกไม้ไผ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94060201', '940602', '9406', '94', 'ข่าลิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94060301', '940603', '9406', '94', 'บาลูกาลูวะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94060401', '940604', '9406', '94', 'ปาแดปาลัส', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070201', '940702', '9407', '94', 'ตะบิ้ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070301', '940703', '9407', '94', 'ปาตาบาระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070401', '940704', '9407', '94', 'บางเก่าเหนือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070501', '940705', '9407', '94', 'บือเระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070601', '940706', '9407', '94', 'เตราะบอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070701', '940707', '9407', '94', 'ฮุแตมาแจ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070801', '940708', '9407', '94', 'ทุ่งน้อย', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94070901', '940709', '9407', '94', 'มะนังดาลำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94071001', '940710', '9407', '94', 'เจาะโบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94071101', '940711', '9407', '94', 'ทุ่งคล้า', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94080101', '940801', '9408', '94', 'โคกนิบง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94080201', '940802', '9408', '94', 'ไม้แก่น', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94080301', '940803', '9408', '94', 'ดินเสมอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94080401', '940804', '9408', '94', 'ป่าไหม้', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090101', '940901', '9409', '94', 'ตะโละแอแร', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090201', '940902', '9409', '94', 'ปาตา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090301', '940903', '9409', '94', 'ตันหยงดาลอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090401', '940904', '9409', '94', 'โต๊ะตีเต', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090501', '940905', '9409', '94', 'ตอหลัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090601', '940906', '9409', '94', 'เทียรยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090701', '940907', '9409', '94', 'กะรุบี', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090801', '940908', '9409', '94', 'ยามู', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94090901', '940909', '9409', '94', 'โต๊ะโสม', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091001', '940910', '9409', '94', 'หนองแรต', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091101', '940911', '9409', '94', 'ทุ่งคา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091201', '940912', '9409', '94', 'ปุลากง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091301', '940913', '9409', '94', 'ปาโฮะแฮ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091401', '940914', '9409', '94', 'ตือระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091501', '940915', '9409', '94', 'อาโห', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091601', '940916', '9409', '94', 'ยาว', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091701', '940917', '9409', '94', 'กะดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94091801', '940918', '9409', '94', 'บูดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100101', '941001', '9410', '94', 'กรือเซะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100201', '941002', '9410', '94', 'ลือเม๊าะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100301', '941003', '9410', '94', 'บราโอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100401', '941004', '9410', '94', 'สะนอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100501', '941005', '9410', '94', 'ปูลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100601', '941006', '9410', '94', 'ชามู', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100701', '941007', '9410', '94', 'วัด', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100801', '941008', '9410', '94', 'กระโด', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94100901', '941009', '9410', '94', 'โคหญ้าคา', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94101001', '941010', '9410', '94', 'พงสาฆอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94101101', '941011', '9410', '94', 'กอลำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94101201', '941012', '9410', '94', 'เขาตูม', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94110101', '941101', '9411', '94', 'บาโง', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94110201', '941102', '9411', '94', 'บือแต', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94110301', '941103', '9411', '94', 'มะกอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94120101', '941201', '9412', '94', 'ใหม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94120201', '941202', '9412', '94', 'ปลักปรือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('01', '94120301', '941203', '9412', '94', 'ต้นโตนด', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010402', '940104', '9401', '94', 'บานา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010502', '940105', '9401', '94', 'ตันหยงลุโละ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010602', '940106', '9401', '94', 'คลองมานิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010702', '940107', '9401', '94', 'กะมิยอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010802', '940108', '9401', '94', 'ปาเระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94010902', '940109', '9401', '94', 'จางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94011002', '940110', '9401', '94', 'บางปลาหมอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94011102', '940111', '9401', '94', 'แบรอจะรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94011202', '940112', '9401', '94', 'บาราเฮาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94011302', '940113', '9401', '94', 'รามง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020102', '940201', '9402', '94', 'เคียน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020202', '940202', '9402', '94', 'โพธิ์', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020302', '940203', '9402', '94', 'บางโกระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020402', '940204', '9402', '94', 'ดอนเค็ด', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020502', '940205', '9402', '94', 'หลวงจันทร์', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020602', '940206', '9402', '94', 'กล้วย', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020702', '940207', '9402', '94', 'คลองหิน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94020802', '940208', '9402', '94', 'ป่าไร่', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94021102', '940211', '9402', '94', 'ควนเปล', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94021302', '940213', '9402', '94', 'ชะเมา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94021402', '940214', '9402', '94', 'ช้างให้', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94021502', '940215', '9402', '94', 'มะปรางมัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030102', '940301', '9403', '94', 'เกาะเปาะเหนือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030202', '940302', '9403', '94', 'บาโงสากอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030302', '940303', '9403', '94', 'ท่าด่าน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030402', '940304', '9403', '94', 'โคกหมัก', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030502', '940305', '9403', '94', 'ตุยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030602', '940306', '9403', '94', 'ปรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030702', '940307', '9403', '94', 'ห้วยน้ำเย็น', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030802', '940308', '9403', '94', 'บากง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94030902', '940309', '9403', '94', 'บางตาวา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94031002', '940310', '9403', '94', 'ท่ากูโบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94031102', '940311', '9403', '94', 'คลองช้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94031202', '940312', '9403', '94', 'แนบุ๊', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040102', '940401', '9404', '94', 'นาพร้าว', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040202', '940402', '9404', '94', 'สวนหมาก', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040302', '940403', '9404', '94', 'เกาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040402', '940404', '9404', '94', 'คลองมะยะแต', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040502', '940405', '9404', '94', 'ควนกลาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040602', '940406', '9404', '94', 'สุเหร่า', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040702', '940407', '9404', '94', 'หัวนอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040802', '940408', '9404', '94', 'นาจาก', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94040902', '940409', '9404', '94', 'ท่าชะเมา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94041002', '940410', '9404', '94', 'น้ำบ่อ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050102', '940501', '9405', '94', 'มาหยอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050202', '940502', '9405', '94', 'กูแบสาแม', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050302', '940503', '9405', '94', 'ตรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050402', '940504', '9405', '94', 'พอเบาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050502', '940505', '9405', '94', 'เมืองยอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050602', '940506', '9405', '94', 'ลางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050702', '940507', '9405', '94', 'กระเสาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050802', '940508', '9405', '94', 'ราเกาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94050902', '940509', '9405', '94', 'มะหุด', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94051002', '940510', '9405', '94', 'ม่วงหวาน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94051102', '940511', '9405', '94', 'บูดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94051202', '940512', '9405', '94', 'ศาลาบูดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94051302', '940513', '9405', '94', 'ปานัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94060102', '940601', '9406', '94', 'แลแวะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94060202', '940602', '9406', '94', 'พิเทน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94060302', '940603', '9406', '94', 'กำปงบือราแง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94060402', '940604', '9406', '94', 'ปาเสปูเตะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070202', '940702', '9407', '94', 'กูแบบาเดาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070302', '940703', '9407', '94', 'บน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070402', '940704', '9407', '94', 'บางเก่าใต้', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070502', '940705', '9407', '94', 'กอตอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070602', '940706', '9407', '94', 'กะลูแป', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070702', '940707', '9407', '94', 'กูแว', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070802', '940708', '9407', '94', 'ลากอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94070902', '940709', '9407', '94', 'กาแระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94071002', '940710', '9407', '94', 'จะเฆ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94071102', '940711', '9407', '94', 'ปะลุกาตือแร', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94080102', '940801', '9408', '94', 'สารวัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94080202', '940802', '9408', '94', 'ปาเส', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94080302', '940803', '9408', '94', 'ทะเล', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94080402', '940804', '9408', '94', 'รังมดแดง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090102', '940901', '9409', '94', 'เปาะพูแม', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090202', '940902', '9409', '94', 'ตะโละอาโห', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090302', '940903', '9409', '94', 'ตือระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090402', '940904', '9409', '94', 'ตันหยงจีงงา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090502', '940905', '9409', '94', 'ดุซงปาแยตะวันตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090602', '940906', '9409', '94', 'ตาแกาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090702', '940907', '9409', '94', 'บากง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090802', '940908', '9409', '94', 'ภูมีน้ำพุ่ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94090902', '940909', '9409', '94', 'บาลาดูวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091002', '940910', '9409', '94', 'แหลม', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091102', '940911', '9409', '94', 'บ่อม่วง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091202', '940912', '9409', '94', 'ปาโฮะกาเยาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091302', '940913', '9409', '94', 'โต๊ะตีแต', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091402', '940914', '9409', '94', 'ตะโละ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091502', '940915', '9409', '94', 'ตันหยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091602', '940916', '9409', '94', 'มูหลง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091702', '940917', '9409', '94', 'ปิยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94091802', '940918', '9409', '94', 'ตะโละสมีแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100102', '941001', '9410', '94', 'ยือแร', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100202', '941002', '9410', '94', 'สิเดะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100302', '941003', '9410', '94', 'ประจัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100402', '941004', '9410', '94', 'บือแนกะลูแป', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100502', '941005', '9410', '94', 'จือโระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100602', '941006', '9410', '94', 'บาซาเวาะเซ็ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100702', '941007', '9410', '94', 'ปูลากูวิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100802', '941008', '9410', '94', 'บาซากะจิ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94100902', '941009', '9410', '94', 'บินยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94101002', '941010', '9410', '94', 'ดูซงปาแย', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94101102', '941011', '9410', '94', 'ละหารยามู', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94101202', '941012', '9410', '94', 'บูเกะดาตู', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94110102', '941101', '9411', '94', 'เจาะกะพ้อ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94110202', '941102', '9411', '94', 'อุแตบือราแง', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94110302', '941103', '9411', '94', 'มะแนดาแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94120102', '941201', '9412', '94', 'ป่าสวย', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94120202', '941202', '9412', '94', 'คูระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('02', '94120302', '941203', '9412', '94', 'แม่ตีน๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010403', '940104', '9401', '94', 'บานา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010503', '940105', '9401', '94', 'กรือเซะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010603', '940106', '9401', '94', 'สระมาลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010703', '940107', '9401', '94', 'ตาเนาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010803', '940108', '9401', '94', 'ดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94010903', '940109', '9401', '94', 'กือยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94011003', '940110', '9401', '94', 'ดอนรัก', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94011103', '940111', '9401', '94', 'แบรอกูเวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94011203', '940112', '9401', '94', 'ลาดอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94011303', '940113', '9401', '94', 'บาราเฮาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020103', '940201', '9402', '94', 'ต้นธง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020203', '940202', '9402', '94', 'แลแป', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020303', '940203', '9402', '94', 'ฉาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020403', '940204', '9402', '94', 'นาค้อ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020503', '940205', '9402', '94', 'ทรายขาว(พลู)', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020603', '940206', '9402', '94', 'ห้วยเปียะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020703', '940207', '9402', '94', 'พระยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94020803', '940208', '9402', '94', 'เกาะตา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94021103', '940211', '9402', '94', 'ประดู่', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94021303', '940213', '9402', '94', 'ควนลาแม', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94021403', '940214', '9402', '94', 'ควนโนรี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94021503', '940215', '9402', '94', 'ช้างให้ตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030103', '940301', '9403', '94', 'ใหม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030203', '940302', '9403', '94', 'โคกโหนด', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030303', '940303', '9403', '94', 'กำปงบาลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030403', '940304', '9403', '94', 'ดอเลาะปีแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030503', '940305', '9403', '94', 'โคกดีปรี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030603', '940306', '9403', '94', 'ท่ายาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030703', '940307', '9403', '94', 'ไผ่มัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94030803', '940308', '9403', '94', 'บางทัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94031003', '940310', '9403', '94', 'น้ำดำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94031103', '940311', '9403', '94', 'ยาบีเหนือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94031203', '940312', '9403', '94', 'กาเดาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040103', '940401', '9404', '94', 'โต๊ะเปะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040203', '940402', '9404', '94', 'ท่ามะนาว', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040303', '940403', '9404', '94', 'นอก', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040403', '940404', '9404', '94', 'หัวนอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040503', '940405', '9404', '94', 'พิกุล', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040603', '940406', '9404', '94', 'ตีนเขา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040703', '940407', '9404', '94', 'ปากช่อง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040803', '940408', '9404', '94', 'พ่อมิ่ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94040903', '940409', '9404', '94', 'หัวเขาแก้ว', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94041003', '940410', '9404', '94', 'ท่าสู', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050103', '940501', '9405', '94', 'ปาแย', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050203', '940502', '9405', '94', 'ดูวา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050303', '940503', '9405', '94', 'เขาวัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050403', '940504', '9405', '94', 'กระหวะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050503', '940505', '9405', '94', 'โคกกอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050603', '940506', '9405', '94', 'ตาแบ๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050703', '940507', '9405', '94', 'บูวะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050803', '940508', '9405', '94', 'คลองช้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94050903', '940509', '9405', '94', 'ควนหยี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94051003', '940510', '9405', '94', 'ตุยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94051103', '940511', '9405', '94', 'สมาหอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94051203', '940512', '9405', '94', 'คลองโต๊ะเนาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94060103', '940601', '9406', '94', 'ตะโละแมะนา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94060203', '940602', '9406', '94', 'ป่ามะพร้าว', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94060303', '940603', '9406', '94', 'ชะมา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94060403', '940604', '9406', '94', 'เขาดิน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070203', '940702', '9407', '94', 'เจาะกือแย', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070303', '940703', '9407', '94', 'ปะเสยะวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070403', '940704', '9407', '94', 'บางเก่าทะเล', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070503', '940705', '9407', '94', 'บาโงยือริง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070603', '940706', '9407', '94', 'ฮูแตกอแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070703', '940707', '9407', '94', 'ปายอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070803', '940708', '9407', '94', 'เขา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94070903', '940709', '9407', '94', 'กือบง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94071003', '940710', '9407', '94', 'จะเฆ่ตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94071103', '940711', '9407', '94', 'นาหว้า', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94080103', '940801', '9408', '94', 'กูวิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94080203', '940802', '9408', '94', 'ใหญ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94080303', '940803', '9408', '94', 'ตะโละไกรทอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94080403', '940804', '9408', '94', 'ละเวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090103', '940901', '9409', '94', 'ป่าศรี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090203', '940902', '9409', '94', 'ท่าด่าน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090303', '940903', '9409', '94', 'ตำมะสู', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090503', '940905', '9409', '94', 'ดุซงปาแยตะวันออก', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090603', '940906', '9409', '94', 'ฝาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090703', '940907', '9409', '94', 'สีปาย', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090803', '940908', '9409', '94', 'ป่าหลวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94090903', '940909', '9409', '94', 'บางปู', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091003', '940910', '9409', '94', 'แบรอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091103', '940911', '9409', '94', 'ปิยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091203', '940912', '9409', '94', 'บือแนละที', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091303', '940913', '9409', '94', 'บาโลย', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091403', '940914', '9409', '94', 'สาบัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091503', '940915', '9409', '94', 'ดาลอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091603', '940916', '9409', '94', 'พังกับ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091703', '940917', '9409', '94', 'ตูเวาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94091803', '940918', '9409', '94', 'ปาตาบูดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100103', '941001', '9410', '94', 'บินยะรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100203', '941002', '9410', '94', 'อีบุ๊', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100303', '941003', '9410', '94', 'บือแนกือบง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100403', '941004', '9410', '94', 'บือแนดาแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100503', '941005', '9410', '94', 'มาปะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100603', '941006', '9410', '94', 'บาซาเอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100703', '941007', '9410', '94', 'เกาะหวาย', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100803', '941008', '9410', '94', 'ปรีกี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94100903', '941009', '9410', '94', 'กาแลสะนอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94101003', '941010', '9410', '94', 'เมาะมาวี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94101103', '941011', '9410', '94', 'สะตา', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94101203', '941012', '9410', '94', 'โสร่ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94110103', '941101', '9411', '94', 'กำปงบารู', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94110203', '941102', '9411', '94', 'กาหยี', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94110303', '941103', '9411', '94', 'บาโงสาเมาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94120103', '941201', '9412', '94', 'ทำเนียบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94120203', '941202', '9412', '94', 'ตันหยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('03', '94120303', '941203', '9412', '94', 'ละโพะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94010404', '940104', '9401', '94', 'กาปงตารง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94010604', '940106', '9401', '94', 'ตาเนาะบาดู', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94010704', '940107', '9401', '94', 'กาแลบือซา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94010904', '940109', '9401', '94', 'จืแรนิบง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94011004', '940110', '9401', '94', 'งาแม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94011104', '940111', '9401', '94', 'แบรอบูแยสะมิแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94011204', '940112', '9401', '94', 'กาฮง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94011304', '940113', '9401', '94', 'บาราเฮาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020104', '940201', '9402', '94', 'โคกโพธิ์', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020204', '940202', '9402', '94', 'นาค้อใต้', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020304', '940203', '9402', '94', 'บู', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020404', '940204', '9402', '94', 'นาค้อกลาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020504', '940205', '9402', '94', 'ควนลังงา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020604', '940206', '9402', '94', 'ยางแดง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020704', '940207', '9402', '94', 'บ่อหว้า', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94020804', '940208', '9402', '94', 'ห้วยเงาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94021104', '940211', '9402', '94', 'ควนแตน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94021304', '940213', '9402', '94', 'คล้องช้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94021404', '940214', '9402', '94', 'หนองครก', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94021504', '940215', '9402', '94', 'ปุหรน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030204', '940302', '9403', '94', 'ต้นสะท้อน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030304', '940303', '9403', '94', 'คลองขุด', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030404', '940304', '9403', '94', 'บาโงกาเสาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030504', '940305', '9403', '94', 'ท่ายาลอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030604', '940306', '9403', '94', 'ตันหยงเปาว์', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030704', '940307', '9403', '94', 'ควนดินตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94030804', '940308', '9403', '94', 'ดอนยาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94031004', '940310', '9403', '94', 'โคกคอแห้ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94031104', '940311', '9403', '94', 'ใหม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94031204', '940312', '9403', '94', 'ท่ากูโบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040104', '940401', '9404', '94', 'คลองต่ำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040204', '940402', '9404', '94', 'ทุ่ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040304', '940403', '9404', '94', 'หัวคลอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040404', '940404', '9404', '94', 'ดอนตะวันออก', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040504', '940405', '9404', '94', 'ใต้', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040604', '940406', '9404', '94', 'โต๊ะซา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040704', '940407', '9404', '94', 'มะรวด', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040804', '940408', '9404', '94', 'ใหม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94040904', '940409', '9404', '94', 'ป่ากะพ้อ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94041004', '940410', '9404', '94', 'แฆแฆ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050204', '940502', '9405', '94', 'ถนนตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050304', '940503', '9405', '94', 'ม่วงเงิน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050404', '940504', '9405', '94', 'ราวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050504', '940505', '9405', '94', 'ตะบิงติงงี', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050604', '940506', '9405', '94', 'บาละแต', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050704', '940507', '9405', '94', 'ยุกง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050804', '940508', '9405', '94', 'เกาะจัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94050904', '940509', '9405', '94', 'ป่าละเมาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94051104', '940511', '9405', '94', 'อาฆง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94051204', '940512', '9405', '94', 'กูบังบาเดาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94060104', '940601', '9406', '94', 'ตะโละนิบง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94060204', '940602', '9406', '94', 'บือจะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94060304', '940603', '9406', '94', 'บือแนยามู', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94060404', '940604', '9406', '94', 'มะนังยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070204', '940702', '9407', '94', 'เซะโมะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070304', '940703', '9407', '94', 'ทุ่งเด็จ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070404', '940704', '9407', '94', 'ป่าทุ่ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070504', '940705', '9407', '94', 'สะบือแร', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070604', '940706', '9407', '94', 'สือดัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070704', '940707', '9407', '94', 'กะดุนง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070804', '940708', '9407', '94', 'ช่องแมว', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94070904', '940709', '9407', '94', 'ปาโอะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94071004', '940710', '9407', '94', 'ด่าน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94071104', '940711', '9407', '94', 'เตราะปลิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94080104', '940801', '9408', '94', 'ปลักแตน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94080204', '940802', '9408', '94', 'กระจูด', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94080304', '940803', '9408', '94', 'บิลยา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94080404', '940804', '9408', '94', 'ดอนทราย', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090104', '940901', '9409', '94', 'ลุวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090204', '940902', '9409', '94', 'ท่าพง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090304', '940903', '9409', '94', 'ยือริง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090604', '940906', '9409', '94', 'กุหมัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090704', '940907', '9409', '94', 'ใหม่', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94090804', '940908', '9409', '94', 'ภูมีปอเนาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091004', '940910', '9409', '94', 'บือแนลุวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091104', '940911', '9409', '94', 'ตาหมน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091204', '940912', '9409', '94', 'เจาะกือแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091304', '940913', '9409', '94', 'กูวิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091404', '940914', '9409', '94', 'ซีโต๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091504', '940915', '9409', '94', 'ชะเอาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091604', '940916', '9409', '94', 'ยามูเฉลิม', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091704', '940917', '9409', '94', 'กาแลยง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94091804', '940918', '9409', '94', 'ดาโต๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100104', '941001', '9410', '94', 'ปายอเมาะสูเม็ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100204', '941002', '9410', '94', 'ศาลาสอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100304', '941003', '9410', '94', 'กอและ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100404', '941004', '9410', '94', 'คางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100504', '941005', '9410', '94', 'จาแบปะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100604', '941006', '9410', '94', 'โต๊ะทูวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100704', '941007', '9410', '94', 'กูแบปาเส', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100804', '941008', '9410', '94', 'กูแบบาเดาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94100904', '941009', '9410', '94', 'สุงาบารู', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94101004', '941010', '9410', '94', 'ต้นมะขาม', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94101104', '941011', '9410', '94', 'ปูลากาซิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94101204', '941012', '9410', '94', 'บาโงยะหา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94110104', '941101', '9411', '94', 'บาลูกา', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94110204', '941102', '9411', '94', 'ตะโละดือรามัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94110304', '941103', '9411', '94', 'มอแซง', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94120104', '941201', '9412', '94', 'นางโอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94120204', '941202', '9412', '94', 'ม่วงเตี้ย', '0');
INSERT INTO `cvillage_responsible` VALUES ('04', '94120304', '941203', '9412', '94', 'นาหมอเทพ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94010405', '940104', '9401', '94', 'กูวิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94010705', '940107', '9401', '94', 'ท่าราบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94010905', '940109', '9401', '94', 'กาฮง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94011005', '940110', '9401', '94', 'โคกสำโรง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94011105', '940111', '9401', '94', 'ปากา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94011205', '940112', '9401', '94', 'สะนิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94011305', '940113', '9401', '94', 'บาราเฮาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020105', '940201', '9402', '94', 'คล้องช้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020205', '940202', '9402', '94', 'ป่ากัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020305', '940203', '9402', '94', 'ล้อแตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020405', '940204', '9402', '94', 'นาค้อเหนือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020505', '940205', '9402', '94', 'ทรายขาวตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020605', '940206', '9402', '94', 'ควนประ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020705', '940207', '9402', '94', 'ชมภู่', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94020805', '940208', '9402', '94', 'เกาะวิหาร', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94021105', '940211', '9402', '94', 'ท่าเรือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94021305', '940213', '9402', '94', 'บาโงฆาดิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94021405', '940214', '9402', '94', 'ตุปะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94021505', '940215', '9402', '94', 'ปาลาม', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030205', '940302', '9403', '94', 'กาแลกูมิ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030305', '940303', '9403', '94', 'คลองวัว', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030405', '940304', '9403', '94', 'กูแบกีแย', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030505', '940305', '9403', '94', 'แฉงแหวง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030605', '940306', '9403', '94', 'บางราพา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030705', '940307', '9403', '94', 'ปาแดลางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94030805', '940308', '9403', '94', 'ดอนนา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94031005', '940310', '9403', '94', 'ปาแดลางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94031105', '940311', '9403', '94', 'คู', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94031205', '940312', '9403', '94', 'ทุ่งโพธิ์', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040105', '940401', '9404', '94', 'คาโต', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040305', '940403', '9404', '94', 'ปุลามาวอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040405', '940404', '9404', '94', 'ยางงาม', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040505', '940405', '9404', '94', 'ด่าน', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040605', '940406', '9404', '94', 'ข่า', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94040905', '940409', '9404', '94', 'กลาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94050405', '940504', '9405', '94', 'เมาะโง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94050505', '940505', '9405', '94', 'น้ำใส', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94050605', '940506', '9405', '94', 'ปาลัส', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94050705', '940507', '9405', '94', 'บือเระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94050805', '940508', '9405', '94', 'แยระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94060205', '940602', '9406', '94', 'บาแฆะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94060405', '940604', '9406', '94', 'ปากู', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070205', '940702', '9407', '94', 'สะนงกาเยาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070305', '940703', '9407', '94', 'บาเลาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070605', '940706', '9407', '94', 'ชะเมาสามต้น', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070705', '940707', '9407', '94', 'โต๊ะบาลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070805', '940708', '9407', '94', 'ละหาร', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94070905', '940709', '9407', '94', 'กาหงษ์', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94071005', '940710', '9407', '94', 'เตราะแก่น', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94071105', '940711', '9407', '94', 'พอเหมาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94080105', '940801', '9408', '94', 'ท่าช้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94090105', '940901', '9409', '94', 'สะมูหลง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94090205', '940902', '9409', '94', 'ท่ากุ้น', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94090305', '940903', '9409', '94', 'จาบังโต๊ะกู', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94090805', '940908', '9409', '94', 'ดินแดง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091005', '940910', '9409', '94', 'ลางา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091105', '940911', '9409', '94', 'ปาโต๊ะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091405', '940914', '9409', '94', 'ปาลาลูกา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091505', '940915', '9409', '94', 'ริมคลอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091605', '940916', '9409', '94', 'กลาขอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94091705', '940917', '9409', '94', 'มะปริง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100105', '941001', '9410', '94', 'พงสะตา', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100205', '941002', '9410', '94', 'อาโห', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100305', '941003', '9410', '94', 'บูโกะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100505', '941005', '9410', '94', 'ปุลาตาเยาะฆอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100605', '941006', '9410', '94', 'ปอซัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100705', '941007', '9410', '94', 'ปายอกะลูแว', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100805', '941008', '9410', '94', 'สาเราะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94100905', '941009', '9410', '94', 'โฉลง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94101005', '941010', '9410', '94', 'เกาะบาตอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94101105', '941011', '9410', '94', 'ลานควาย', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94101205', '941012', '9410', '94', 'จาเราะบองอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94110105', '941101', '9411', '94', 'บาโงยือแบ็ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94110205', '941102', '9411', '94', 'บีติง', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94110305', '941103', '9411', '94', 'คอกวัว', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94120105', '941201', '9412', '94', 'คลองทราย', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94120205', '941202', '9412', '94', 'ทำนบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('05', '94120305', '941203', '9412', '94', 'วังกว้าง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94010406', '940104', '9401', '94', 'จือโระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94010706', '940107', '9401', '94', 'สะมาโระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94010906', '940109', '9401', '94', 'กอแลบิเละ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94011006', '940110', '9401', '94', 'สวนสมเด็จ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94011106', '940111', '9401', '94', 'ปาแดบองอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94011206', '940112', '9401', '94', 'มาแบ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94011306', '940113', '9401', '94', 'สุงาการี', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94020106', '940201', '9402', '94', 'ทุ่งยาว', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94020206', '940202', '9402', '94', 'มะกรูด', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94020506', '940205', '9402', '94', 'ลำอาน', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94020606', '940206', '9402', '94', 'ตลาดนาประดู่', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94020706', '940207', '9402', '94', 'ปากล่อ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94021106', '940211', '9402', '94', 'โคกอ้น', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94021306', '940213', '9402', '94', 'หัวควน', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030206', '940302', '9403', '94', 'ไร่', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030306', '940303', '9403', '94', 'ปะกาจินอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030506', '940305', '9403', '94', 'ปะกาลือสง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030606', '940306', '9403', '94', 'เกาะหม้อแกง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030706', '940307', '9403', '94', 'บ่อทอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94030806', '940308', '9403', '94', 'สายหมอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94031006', '940310', '9403', '94', 'ฮูแตบองอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94031106', '940311', '9403', '94', 'หนองปู', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94040306', '940403', '9404', '94', 'ปูตะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94040406', '940404', '9404', '94', 'ป่าสัก', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94040906', '940409', '9404', '94', 'บ่ออิฐ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94050506', '940505', '9405', '94', 'เจาะบาแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94050606', '940506', '9405', '94', 'จูนง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94060206', '940602', '9406', '94', 'โต๊ะชูด', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94060406', '940604', '9406', '94', 'ตะโลโต๊ะโน', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94070306', '940703', '9407', '94', 'จ่ากอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94070606', '940706', '9407', '94', 'บาโงมูลง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94070706', '940707', '9407', '94', 'ละอาร์', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94070906', '940709', '9407', '94', 'จลาโก', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94071006', '940710', '9407', '94', 'แป้น', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94091006', '940910', '9409', '94', 'วอซา', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94091706', '940917', '9409', '94', 'นาหอม', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94100106', '941001', '9410', '94', 'ทุเรียน', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94100206', '941002', '9410', '94', 'บากง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94100306', '941003', '9410', '94', 'กูแบปูตะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94100506', '941005', '9410', '94', 'ระแว้ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94101206', '941012', '9410', '94', 'โคกขี้เหล็ก', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94110106', '941101', '9411', '94', 'คอลอกาปะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94110206', '941102', '9411', '94', 'กอลี', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94110306', '941103', '9411', '94', 'โลทู', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94120106', '941201', '9412', '94', 'ลูตง', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94120206', '941202', '9412', '94', 'กือแรแตยอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('06', '94120306', '941203', '9412', '94', 'แปลงงู', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94010407', '940104', '9401', '94', 'ปากาปายัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94010707', '940107', '9401', '94', 'บือแบกาแจ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94010907', '940109', '9401', '94', 'ปะกาฮะรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94011107', '940111', '9401', '94', 'ตะลุโบะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94011207', '940112', '9401', '94', 'ตูตง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94011307', '940113', '9401', '94', 'ปุยุด', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94020107', '940201', '9402', '94', 'ดอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94020207', '940202', '9402', '94', 'หรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94020607', '940206', '9402', '94', 'ศาลาลาก', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94020707', '940207', '9402', '94', 'โผงโผงนอก', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94021307', '940213', '9402', '94', 'คล้องช้างออก', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94030207', '940302', '9403', '94', 'แม่โอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94030507', '940305', '9403', '94', 'โคกม่วง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94030607', '940306', '9403', '94', 'ปาแด', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94030707', '940307', '9403', '94', 'โคกกอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94030807', '940308', '9403', '94', 'แคนา', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94031007', '940310', '9403', '94', 'ค่าย', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94040907', '940409', '9404', '94', 'ไสพญา', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94050507', '940505', '9405', '94', 'บูเกะกุง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94050607', '940506', '9405', '94', 'เปาะชี', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94060207', '940602', '9406', '94', 'ตือเบาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94060407', '940604', '9406', '94', 'จะมือฆา', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94070307', '940703', '9407', '94', 'ลุ่ม', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94070607', '940706', '9407', '94', 'กะลาพอออก', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94070707', '940707', '9407', '94', 'บือแนบาแด', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94071007', '940710', '9407', '94', 'ช่องหมู', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94091707', '940917', '9409', '94', 'จะรัง', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94100207', '941002', '9410', '94', 'กูแบบาเดาะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94100307', '941003', '9410', '94', 'บือแนปิแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94101207', '941012', '9410', '94', 'นิปิกูเละ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94110107', '941101', '9411', '94', 'เจาะกะพ้อใน', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94110207', '941102', '9411', '94', 'ตะโละโตะและห์', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94110307', '941103', '9411', '94', 'มือลอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94120107', '941201', '9412', '94', 'ต้นซ้าน', '0');
INSERT INTO `cvillage_responsible` VALUES ('07', '94120307', '941203', '9412', '94', 'กำปงดูวา', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94010408', '940104', '9401', '94', 'ยูโยะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94010908', '940109', '9401', '94', 'เจะดี', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94011108', '940111', '9401', '94', 'ดือราแฮ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94011208', '940112', '9401', '94', 'ปรีดอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94020108', '940201', '9402', '94', 'สามยอด', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94020608', '940206', '9402', '94', 'สลาม', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94020708', '940207', '9402', '94', 'โผงโผงใน', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94030208', '940302', '9403', '94', 'บาโงแนแต', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94030508', '940305', '9403', '94', 'บางปลาหมอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94030708', '940307', '9403', '94', 'ดอนยาง', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94040908', '940409', '9404', '94', 'แหลมแป้ง', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94050508', '940505', '9405', '94', 'โคกระกำ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94070608', '940706', '9407', '94', 'กะลาพอตก', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94070708', '940707', '9407', '94', 'ปายอนอก', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94071008', '940710', '9407', '94', 'ละหาร', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94100208', '941002', '9410', '94', 'ปูตะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94100308', '941003', '9410', '94', 'กูนิง', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94110108', '941101', '9411', '94', 'ปาแดกือมูติง', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94110208', '941102', '9411', '94', 'คอลอกาลี', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94110308', '941103', '9411', '94', 'มะแนลาแล', '0');
INSERT INTO `cvillage_responsible` VALUES ('08', '94120108', '941201', '9412', '94', 'โคกพันตัน', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94010409', '940104', '9401', '94', 'แหลมนก', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94011109', '940111', '9401', '94', 'บูโบะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94020109', '940201', '9402', '94', 'นิคมสร้างตนเองโคกโพธิ์', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94020709', '940207', '9402', '94', 'ปลักใหญ่', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94030709', '940307', '9403', '94', 'ทุ่งนเรนทร์', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94040909', '940409', '9404', '94', 'บนดอน', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94070609', '940706', '9407', '94', 'กะลูแปเหนือ', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94100309', '941003', '9410', '94', 'บือแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94110209', '941102', '9411', '94', 'โต๊ะแน', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94110309', '941103', '9411', '94', 'วังพลา', '0');
INSERT INTO `cvillage_responsible` VALUES ('09', '94120109', '941201', '9412', '94', 'โคกม่วง', '0');
INSERT INTO `cvillage_responsible` VALUES ('10', '94010410', '940104', '9401', '94', 'กูแยอีเตะ', '0');
INSERT INTO `cvillage_responsible` VALUES ('10', '94020110', '940201', '9402', '94', 'ท่าคลอง', '0');
INSERT INTO `cvillage_responsible` VALUES ('10', '94110310', '941103', '9411', '94', 'ตะโละบาโระ', '0');
INSERT INTO `cvillage_responsible` VALUES ('11', '94010411', '940104', '9401', '94', 'ปากาดารอ', '0');
INSERT INTO `cvillage_responsible` VALUES ('11', '94020111', '940201', '9402', '94', 'คลองป้อม', '0');

SET FOREIGN_KEY_CHECKS = 1;
