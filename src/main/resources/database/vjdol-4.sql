-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2019-04-24 09:21:07
-- 服务器版本： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjdol`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_admin`
--

CREATE TABLE `tb_admin`
(
    `admin_id`       int(10)      NOT NULL,
    `admin_name`     varchar(128) NOT NULL,
    `admin_pwd`      varchar(128) NOT NULL,
    `create_time`    datetime DEFAULT NULL,
    `last_edit_time` datetime DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `admin_pwd`, `create_time`, `last_edit_time`)
VALUES (41, '李四', 'dsasd', NULL, NULL),
       (42, 'n的_3', '1存放3', NULL, NULL),
       (43, 'n的_4', '1存放4', NULL, NULL),
       (44, 'n的_5', '1存放5', NULL, NULL),
       (45, 'n的_6', '1存放6', NULL, NULL),
       (46, 'n的_7', '1存放7', NULL, NULL),
       (47, 'n的_8', '1存放8', NULL, NULL),
       (48, 'n的_9', '1存放9', NULL, NULL),
       (49, 'n的_10', '1存放10', NULL, NULL),
       (51, 'sd的a', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tb_exam_paper`
--

CREATE TABLE `tb_exam_paper`
(
    `paper_id`     int(11)     NOT NULL DEFAULT '0',
    `stu_no`       varchar(10) NOT NULL,
    `topic_id`     int(11)     NOT NULL,
    `point_id`     int(11)     NOT NULL DEFAULT '1',
    `time_limit`   int(11)     NOT NULL DEFAULT '-1',
    `memory_limit` int(11)     NOT NULL DEFAULT '-1',
    `result`       text,
    `judge_result` text,
    `point_grade`  int(2)               DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_exam_paper`
--

INSERT INTO `tb_exam_paper` (`paper_id`, `stu_no`, `topic_id`, `point_id`, `time_limit`, `memory_limit`, `result`,
                             `judge_result`, `point_grade`)
VALUES (0, '1', 1, 1, 12, 38, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 2, 12, 27, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 3, 11, 29, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 4, 11, 18, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 5, 14, 38, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 6, 12, 29, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 7, 12, 21, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 1, 8, 14, 38, '非法退出，不允许退出虚拟机', '答案错误', 0),
       (0, '1', 2, 1, 4, 39, 'memory out', '内存溢出', 0),
       (0, '1', 2, 2, 4, 57, 'memory out', '内存溢出', 0),
       (0, '1', 2, 3, 2, 21, '11 176\n', '答案错误', 0),
       (0, '1', 2, 4, 3, 24, '11 176\n', '答案错误', 0),
       (0, '1', 2, 5, 2, 14, '11 176\n', '答案正确', 4),
       (0, '1', 2, 6, 2, 5, '11 176\n', '答案正确', 4),
       (0, '1', 2, 7, 2, 2, '11 176\n', '答案错误', 0),
       (0, '1', 3, 1, 24, 54, 'time out', '运行超时', 0),
       (0, '1', 3, 2, 23, 56, 'time out', '运行超时', 0),
       (0, '1', 3, 3, 22, 44, 'time out', '运行超时', 0),
       (0, '1', 3, 4, 23, 50, 'time out', '运行超时', 0),
       (0, '1', 3, 5, 22, 46, 'time out', '运行超时', 0),
       (0, '1', 3, 6, 22, 24, 'time out', '运行超时', 0),
       (0, '1', 3, 7, 22, 22, 'time out', '运行超时', 0),
       (0, '1', 3, 8, 22, 16, 'time out', '运行超时', 0),
       (0, '1', 4, 1, 5, 31, '', '答案错误', 0),
       (0, '1', 4, 2, 0, 0, 'compile error', '编译错误', 0),
       (0, '1', 4, 3, 5, 17, '', '答案错误', 0),
       (0, '1', 4, 4, 5, 21, '', '答案错误', 0),
       (0, '1', 4, 5, 5, 26, '', '答案错误', 0),
       (0, '1', 5, 1, 3221, 41, 'time out', '编译错误', 0),
       (0, '1', 5, 2, 3220, 37, 'time out', '编译错误', 0),
       (0, '1', 5, 3, 3220, 25, 'time out', '编译错误', 0),
       (0, '1', 5, 4, 3220, 23, 'time out', '编译错误', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tb_student_info`
--

CREATE TABLE `tb_student_info`
(
    `stu_no`      varchar(10) NOT NULL,
    `stu_pwd`     varchar(30) NOT NULL,
    `stu_name`    varchar(10) NOT NULL,
    `stu_id`      varchar(20) NOT NULL,
    `paper_id`    int(11)       DEFAULT NULL,
    `total_grade` int(11)       DEFAULT NULL,
    `stu_pic`     varchar(1024) DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_student_info`
--

INSERT INTO `tb_student_info` (`stu_no`, `stu_pwd`, `stu_name`, `stu_id`, `paper_id`, `total_grade`, `stu_pic`)
VALUES ('1', '123456', 'huoshan', '321313112321', NULL, NULL, NULL),
       ('6201363112', '262013641313112', 'dsa', '321313112321', NULL, NULL, NULL),
       ('6201383112', '262013861313112', 'dsa', '321313112321', NULL, NULL, NULL),
       ('6201543112', '262015451313112', 'dsa', '321313112321', NULL, NULL, NULL),
       ('6201553112', '262015531313112', 'dsa', '321313112321', NULL, NULL, NULL),
       ('6201603112', '262016001313112', 'dsa', '321313112321', NULL, NULL, NULL),
       ('6201643112', '262016481313112', 'dsa', '321313112321', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tb_teacher_info`
--

CREATE TABLE `tb_teacher_info`
(
    `teacher_no`   varchar(10) NOT NULL,
    `teacher_name` varchar(10) NOT NULL,
    `teacher_pwd`  varchar(10) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_teacher_info`
--

INSERT INTO `tb_teacher_info` (`teacher_no`, `teacher_name`, `teacher_pwd`)
VALUES ('123', '张三', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `tb_test_point`
--

CREATE TABLE `tb_test_point`
(
    `point_id`    int(11) NOT NULL,
    `topic_id`    int(11) NOT NULL,
    `topic_type`  int(11) NOT NULL DEFAULT '1',
    `input_data`  text,
    `out_data`    text,
    `point_socre` int(11) NOT NULL DEFAULT '0',
    `input_path`  varchar(1024)    DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_test_point`
--

INSERT INTO `tb_test_point` (`point_id`, `topic_id`, `topic_type`, `input_data`, `out_data`, `point_socre`,
                             `input_path`)
VALUES (1, 1, 1, '12 a\n', 'aaaaaaaaaaaa\na          a\na          a\na          a\na          a\naaaaaaaaaaaa\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_1.in'),
       (1, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 176\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_1.in'),
       (1, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_1.in'),
       (1, 4, 1,
        '[╮][╭][o][~\\][/~][<][>]\n[╯][╰][^][-][=][>][<][@][⊙]\n[Д][▽][_][ε][^]\n4\n1 1 2 2 2\n6 8 1 5 5\n3 3 4 3 3\n2 10 3 9 3\n',
        '╮(╯▽╰)╭\n<(@Д=)/~\no(^ε^)o\nAre you kidding me? @\\/@\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/4/4_1.in'),
       (1, 5, 1,
        '10 3\nTom 188\nMike 170\nEva 168\nTim 160\nJoe 190\nAnn 168\nBob 175\nNick 186\nAmy 160\nJohn 159\n\n',
        'Bob Tom Joe Nick\nAnn Mike Eva\nTim Amy John\n\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/5/5_1.in'),
       (1, 6, 1, '5 6 0 2\n1 2 1 5 3\n0 1 1\n0 2 2\n0 3 1\n1 2 1\n2 4 1\n3 4 1\n', '2 4\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/6/6_1.in'),
       (1, 7, 1, '345\n', '1234\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/7/7_1.in'),
       (1, 8, 1, NULL, NULL, 0, NULL),
       (1, 9, 1, NULL, NULL, 0, NULL),
       (2, 1, 1, '13 <\n',
        '<<<<<<<<<<<<<\n<           <\n<           <\n<           <\n<           <\n<           <\n<<<<<<<<<<<<<\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_2.in'),
       (2, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 176\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_2.in'),
       (2, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_2.in'),
       (2, 4, 1,
        '[╮][╭][o][~\\][/~][<][>]\n[╯][╰][^][-][=][>][<][@][⊙]\n[Д][▽][_][ε][^]\n4\n1 1 2 2 2\n6 8 1 5 5\n3 3 4 3 3\n2 10 3 9 3\n\n\n',
        '╮(╯▽╰)╭\n<(@Д=)/~\no(^ε^)o\nAre you kidding me? @\\/@\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/4/4_2.in'),
       (2, 5, 1, '10 3\nTom 188\nMike 170\nEva 168\nTim 160\nJoe 190\nAnn 168\nBob 175\nNick 186\nAmy 160\nJohn 159\n',
        'Bob Tom Joe Nick\nAnn Mike Eva\nTim Amy John\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/5/5_2.in'),
       (2, 6, 1, '5 6 0 2\n1 2 1 5 3\n0 1 1\n0 2 2\n0 3 1\n1 2 1\n2 4 1\n3 4 1\n', '2 4\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/6/6_2.in'),
       (2, 8, 1, NULL, NULL, 0, NULL),
       (2, 9, 1, NULL, NULL, 0, NULL),
       (3, 1, 1, '3 $\n', '$$$\n$$$\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_3.in'),
       (3, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 189\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_3.in'),
       (3, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_3.in'),
       (3, 4, 1,
        '[╮][╭][o][~\\][/~][<][>]\n[╯][╰][^][-][=][>][<][@][⊙]\n[Д][▽][_][ε][^]\n4\n1 1 2 2 2\n6 8 1 5 5\n3 3 4 3 3\n2 10 3 9 3\n',
        '╮(╯▽╰)╭\n<(@Д=)/~\no(^ε^)o\nAre you kidding me? @\\/@\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/4/4_3.in'),
       (3, 5, 1, '10 3\nTom 188\nMike 170\nEva 168\nTim 160\nJoe 190\nAnn 168\nBob 175\nNick 186\nAmy 160\nJohn 159\n',
        'Bob Tom Joe Nick\nAnn Mike Eva\nTim Amy John\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/5/5_3.in'),
       (3, 6, 1, '5 6 0 2\n1 2 1 5 3\n0 1 1\n0 2 2\n0 3 1\n1 2 1\n2 4 1\n3 4 1\n', '2 4\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/6/6_3.in'),
       (3, 8, 1, NULL, NULL, 0, NULL),
       (3, 9, 1, NULL, NULL, 0, NULL),
       (4, 1, 1, '9 *\n', '*********\n*       *\n*       *\n*       *\n*********\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_4.in'),
       (4, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 111\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_4.in'),
       (4, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_4.in'),
       (4, 4, 1,
        '[╮][╭][o][~\\][/~][<][>]\n[╯][╰][^][-][=][>][<][@][⊙]\n[Д][▽][_][ε][^]\n4\n1 1 2 2 2\n6 8 1 5 5\n3 3 4 3 3\n2 10 3 9 3\n',
        '╮(╯▽╰)╭\n<(@Д=)/~\no(^ε^)o\nAre you kidding me? @\\/\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/4/4_4.in'),
       (4, 5, 1, '10 3\nTom 188\nMike 170\nEva 168\nTim 160\nJoe 190\nAnn 168\nBob 175\nNick 186\nAmy 160\nJohn 159\n',
        'Bob Tom Joe Nick\nAnn Mike Eva\nTim Amy John\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/5/5_4.in'),
       (4, 6, 1, '5 6 0 2\n1 2 1 5 3\n0 1 1\n0 2 2\n0 3 1\n1 2 1\n2 4 1\n3 4 1\n', '2 4\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/6/6_4.in'),
       (4, 9, 1, NULL, NULL, 0, NULL),
       (5, 1, 1, '34 ?\n',
        '??????????????????????????????????\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n?                                ?\n??????????????????????????????????\n',
        0, '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_5.in'),
       (5, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 176\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_5.in'),
       (5, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_5.in'),
       (5, 4, 1,
        '[╮][╭][o][~\\][/~][<][>]\n[╯][╰][^][-][=][>][<][@][⊙]\n[Д][▽][_][ε][^]\n4\n1 1 2 2 2\n6 8 1 5 5\n3 3 4 3 3\n2 10 3 9 3\n',
        '╮(╯▽╰)╭\n<(@Д=)/~\no(^ε^)o\nAre you kidding me? @\\/\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/4/4_5.in'),
       (6, 1, 1, '1 2\n', '2\n', 0, '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_6.in'),
       (6, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 176\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_6.in'),
       (6, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_6.in'),
       (7, 1, 1, '9 *\n', '*********\n*       *\n*       *\n*       *\n*********\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_7.in'),
       (7, 2, 1, '6\n3-10 99\n11-5 87\n102-1 0\n102-3 100\n11-9 89\n3-2 61\n', '11 189\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/2/2_7.in'),
       (7, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 76\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_7.in'),
       (8, 1, 1, '3 $\n', '$$$\n$$$\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/1/1_8.in'),
       (8, 3, 1, '12\n37 76 20 98 76 42 53 95 60 81 58 93\n', '98 95 93\n42 37 81\n53 20 76\n58 60 7\n', 0,
        '/Users/huoshan/IdeaProjects/vjdol/src/main/resources/testPointData/in/3/3_8.in');

-- --------------------------------------------------------

--
-- 表的结构 `tb_topic_answer`
--

CREATE TABLE `tb_topic_answer`
(
    `paper_id`    int(11)     NOT NULL DEFAULT '0',
    `stu_no`      varchar(10) NOT NULL,
    `topic_id`    int(11)     NOT NULL,
    `code`        text,
    `topic_socre` int(11)              DEFAULT NULL,
    `submit_num`  int(11)              DEFAULT '0'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_topic_answer`
--

INSERT INTO `tb_topic_answer` (`paper_id`, `stu_no`, `topic_id`, `code`, `topic_socre`, `submit_num`)
VALUES (0, '1', 1,
        'public class SandBoxSecurityManager {\n    public static void main(String[] args){\n        System.exit(1);\n    }\n}',
        0, 261),
       (0, '1', 2,
        'import java.util.Scanner;\n\npublic class Main {\n	public static void main(String[] args) {\n		Scanner in = new Scanner(System.in);\n		int n = in.nextInt();\n		int[] team = new int[1001];\n		int max = 0;\n		for (int i = 0; i < n; i++) {\n			String[] scores = in.next().split(\"[-]\");\n			int value = in.nextInt();\n			int index = Integer.parseInt(scores[0]);\n			team[index] += value;\n			\n			if (team[index] > team[max]) {\n				max = index;\n			}\n		}\n		in.close();\n		System.out.println(max + \" \" + team[max]);\n	}\n}',
        8, 40),
       (0, '1', 3,
        'public class mains {\n    public static void main(String[] args){\n        for (int i=0;i<Long.MAX_VALUE;i++){\n            System.out.println(\"dasdsas\");\n        }\n    }\n}',
        0, 104),
       (0, '1', 4,
        'import java.util.Scanner;\n\npublic class Main {\n\n	public static void main(String[] args) {\n\n		Scanner in = new Scanner(System.in);\n		int n = in.nextInt();\n		char c = in.next().charAt(0);\n		in.close();\n\n		int col = (int) (n/ 2.0 + 0.5);\n		for (int i = 0; i < col; i++) {\n			for (int j = 0; j < n; j++) {\n				if (i == 0 || j == 0 || j == n-1 || i == col - 1) {\n					System.out.print(c);\n				} else {\n					System.out.print(\' \');\n				}\n			}\n			System.out.println();\n		}\n	}\n\n}',
        0, 27),
       (0, '1', 5,
        'import java.util.Arrays;\nimport java.util.Scanner;\n\npublic class Main {\n\n	public static void main(String[] args) {\n               while(true);		\n}\n}',
        0, 7);

-- --------------------------------------------------------

--
-- 表的结构 `tb_topic_info`
--

CREATE TABLE `tb_topic_info`
(
    `topic_id`       int(11)    NOT NULL,
    `topic_title`    text,
    `topic_content`  text,
    `input_format`   text,
    `output_format`  text,
    `input_sample`   text,
    `output_sample`  text,
    `time_limit`     int(11)    NOT NULL DEFAULT '-1',
    `memory_limit`   int(11)    NOT NULL DEFAULT '-1',
    `topic_score`    int(11)    NOT NULL DEFAULT '-1',
    `publish_state`  tinyint(1) NOT NULL DEFAULT '0',
    `point_num`      int(11)    NOT NULL DEFAULT '-1',
    `create_time`    datetime            DEFAULT CURRENT_TIMESTAMP,
    `last_edit_time` datetime            DEFAULT CURRENT_TIMESTAMP,
    `author`         varchar(20)         DEFAULT 'admin',
    `accepted`       int(11)             DEFAULT '0',
    `total_submit`   int(11)             DEFAULT '0',
    `topic_type`     int(11)    NOT NULL DEFAULT '1'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `tb_topic_info`
--

INSERT INTO `tb_topic_info` (`topic_id`, `topic_title`, `topic_content`, `input_format`, `output_format`,
                             `input_sample`, `output_sample`, `time_limit`, `memory_limit`, `topic_score`,
                             `publish_state`, `point_num`, `create_time`, `last_edit_time`, `author`, `accepted`,
                             `total_submit`, `topic_type`)
VALUES (1,
        '<p><span style=\"font-family: SimHei; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">跟奥巴马一起编程(15)</span></p>',
        '<p><span style=\"color: rgb(54, 96, 146);\">&nbsp; &nbsp;美国总统奥巴马不仅呼吁所有人都学习编程，甚至以身作则编写代码，成为美国历史上首位编写计算机代码的总统。2014年底，为庆祝“计算机科学教育周”正式启动，奥巴马编写了很简单的计算机代码：在屏幕上画一个正方形。现在你也跟他一起画吧！</span><br/></p>',
        '<p><span style=\"font-family: SimHei; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">&nbsp; 输入在一行中给出正方形边长N（3&lt;=N&lt;=20）和组成正方形边的某种字符C，间隔一个空格。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: SimHei; font-size: 14px; background-color: rgb(255, 255, 255);\">&nbsp;<span style=\"font-family: SimHei; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\"> &nbsp;输出由给定字符C画出的正方形。但是注意到行间距比列间距大，所以为了让结果看上去更像正方形，我们输出的行数实际上是列数的50%（四舍五入取整）。</span></span></p>',
        '<p><span style=\"font-family: SimHei; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">10 a</span></p>',
        '<p><span style=\"color: rgb(54, 96, 146);\"><span style=\"box-sizing: border-box; font-size: 14px; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: SimHei;\">aaaaaaaaaa</span><br/><span style=\"box-sizing: border-box; font-size: 14px; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: SimHei;\">a&nbsp; &nbsp; &nbsp; &nbsp; a</span><br/><span style=\"box-sizing: border-box; font-size: 14px; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: SimHei;\">a&nbsp; &nbsp; &nbsp; &nbsp; a</span><br/><span style=\"box-sizing: border-box; font-size: 14px; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: SimHei;\">a&nbsp; &nbsp; &nbsp; &nbsp; a</span><br/><span style=\"box-sizing: border-box; font-size: 14px; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: SimHei;\">aaaaaaaaaa</span></span></p>',
        30, 300, 20, 1, 8, '2018-05-12 11:48:22', '2018-05-12 11:48:22', 'admin', 64, 134, 1),
       (2,
        '<p><span style=\"font-family: NSimSun; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">编程团体赛(20)</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;编程团体赛的规则为：每个参赛队由若干队员组成；所有队员独立比赛；参赛队的成绩为所有队员的成绩和；成绩最高的队获胜。现给定所有队员的比赛成绩，请你编写程序找出冠军队。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;</span><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; font-weight: 700; line-height: inherit; color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\"></span><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">输入第一行给出一个正整数N（&lt;=10000），即所有参赛队员总数。随后N行，每行给出一位队员的成绩，格式为：“队伍编号-队员编号 成绩”，其中“队伍编号”为1到1000的正整数，“队员编号”为1到10的正整数，“成绩”为0到100的整数。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;在一行中输出冠军队的编号和总成绩，其间以一个空格分隔。注意：题目保证冠军队是唯一的。</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">6</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">3-10 99</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">11-5 87</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">102-1 0</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">102-3 100</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">11-9 89</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">3-2 61</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">11 176</span></p>',
        10, 30, 30, 1, 7, '2018-05-12 12:58:23', '2018-05-12 12:58:23', 'admin', 0, 47, 1),
       (3,
        '<p><span style=\"font-family: NSimSun; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">螺旋矩阵(25)</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 本题要求将给定的N个正整数按非递增的顺序，填入“螺旋矩阵”。所谓“螺旋矩阵”，是指从左上角第1个格子开始，按顺时针螺旋方向填充。要求矩阵的规模为m行n列，满足条件：m*n等于N；m&gt;=n；且m-n取所有可能值中的最小值。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 输入在第1行中给出一个正整数N，第2行给出N个待填充的正整数。所有数字不超过104，相邻数字以空格分隔。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 输出螺旋矩阵。每行n个数字，共m行。相邻数字以1个空格分隔，行末不得有多余空格。</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">12</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">37 76 20 98 76 42 53 95 60 81 58 93</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">98 95 93</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">42 37 81</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">53 20 76</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">58 60 76</span></p>',
        19, 60, 30, 1, 8, '2018-05-12 13:20:07', '2018-05-12 13:20:07', 'admin', 0, 108, 1),
       (4,
        '<p><span style=\"font-family: NSimSun; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">卖个萌 (20)</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp; &nbsp; 萌萌哒表情符号通常由“手”、“眼”、“口”三个主要部分组成。简单起见，我们假设一个表情符号是按下列格式输出的：</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">[左手]([左眼][口][右眼])[右手]</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;现给出可选用的符号集合，请你按用户的要求输出表情。</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp; &nbsp; 输入首先在前三行顺序对应给出手、眼、口的可选符号集。每个符号括在一对方括号[]内。题目保证每个集合都至少有一个符号，并不超过10个符号；每个符号包含1到4个非空字符。</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">之后一行给出一个正整数K，为用户请求的个数。随后K行，每行给出一个用户的符号选择，顺序为左手、左眼、口、右眼、右手——这里只给出符号在相应集合中的序号（从1开始），数字间以空格分隔。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;对每个用户请求，在一行中输出生成的表情。若用户选择的序号不存在，则输出“Are you kidding me? @\\/@”。</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">[╮][╭][o][~\\][/~][&lt;][&gt;]</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">[╯][╰][^][-][=][&gt;][&lt;][@][⊙]</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">[Д][▽][_][ε][^]</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">4</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">1 1 2 2 2</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">6 8 1 5 5</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">3 3 4 3 3</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">2 10 3 9 3</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">╮(╯▽╰)╭</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&lt;(@Д=)/~</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">o(^ε^)o</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Are you kidding me? @\\/@</span></p>',
        30, 300, 30, 1, 5, '2018-05-12 12:59:39', '2018-05-12 12:59:39', 'admin', 0, 27, 1),
       (5,
        '<p><span style=\"font-family: NSimSun; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">集体照 (25)</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp; &nbsp;拍集体照时队形很重要，这里对给定的N个人K排的队形设计排队规则如下：</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;每排人数为N/K（向下取整），多出来的人全部站在最后一排；</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;后排所有人的个子都不比前排任何人矮；</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;每排中最高者站中间（中间位置为m/2+1，其中m为该排人数，除法向下取整）；</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;每排其他人以中间人为轴，按身高非增序，先右后左交替入队站在中间人的两侧（例如5人身高为190、188、186、175、170，则队形为175、188、190、186、170。这里假设你面对拍照者，所以你的左边是中间人的右边）；</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;若多人身高相同，则按名字的字典序升序排列。这里保证无重名。</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">&nbsp;&nbsp;&nbsp;&nbsp;现给定一组拍照人，请编写程序输出他们的队形。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 每个输入包含1个测试用例。每个测试用例第1行给出两个正整数N（&lt;=10000，总人数）和K（&lt;=10，总排数）。随后N行，每行给出一个人的名字（不包含空格、长度不超过8个英文字母）和身高（[30, 300]区间内的整数）。</span></p>',
        '<p><span style=\"color: rgb(229, 102, 0); font-family: NSimSun; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;输出拍照的队形。即K排人名，其间以空格分隔，行末不得有多余空格。注意：假设你面对拍照者，后排的人输出在上方，前排输出在下方。</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">10 3</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Tom 188</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Mike 170</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Eva 168</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Tim 160</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Joe 190</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Ann 168</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Bob 175</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Nick 186</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Amy 160</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">John 159</span></p>',
        '<p><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Bob Tom Joe Nick</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Ann Mike Eva</span><br/><span style=\"box-sizing: border-box; word-wrap: break-word; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); font-family: NSimSun; color: rgb(229, 102, 0);\">Tim Amy John</span></p>',
        3213, 3132, 20, 1, 4, '2018-05-12 13:00:23', '2018-05-12 13:00:23', 'admin', 4, 7, 1),
       (6,
        '<p><span style=\"font-family: &quot;Noto Serif&quot;, serif; font-size: 19px; font-style: italic; font-weight: 700; text-align: center; background-color: rgb(255, 255, 255); color: rgb(54, 96, 146);\">Emergency (25)</span></p>',
        '<p><span style=\"color: rgb(118, 146, 60); font-family: &quot;Noto Serif&quot;, serif; font-size: 19px; font-weight: 700; background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;As an emergency rescue team leader of a city, you are given a special map of your country. The map shows several scattered cities connected by some roads. Amount of rescue teams in each city and the length of each road between any pair of cities are marked on the map. When there is an emergency call to you from some other city, your job is to lead your men to the place as quickly as possible, and at the mean time, call up as many hands on the way as possible.</span></p>',
        '<p><span style=\"box-sizing: inherit; border: 0px; font-family: &quot;Noto Serif&quot;, serif; font-size: 19px; font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(51, 204, 204); background-color: rgb(255, 255, 255);\">&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"box-sizing: inherit; font-family: &quot;Noto Serif&quot;, serif; font-size: 19px; font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); color: rgb(118, 146, 60);\">Each input file contains one test case. For each test case, the first line contains 4 positive integers: N (&lt;= 500) – the number of cities (and the cities are numbered from 0 to N-1), M – the number of roads, C1 and C2 – the cities that you are currently in and that you must save, respectively. The next line contains N integers, where the i-th integer is the number of rescue teams in the i-th city. Then M lines follow, each describes a road with three integers c1, c2 and L, which are the pair of cities connected by a road and the length of that road, respectively. It is guaranteed that there exists at least one path from C1 to C2.</span></span></p>',
        '<p><span style=\"color: rgb(118, 146, 60); font-family: 宋体, SimSun;\"><span style=\"color: rgb(118, 146, 60); border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); box-sizing: inherit; font-style: inherit; font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">For each test case, print in one line two numbers: the number of different shortest paths between C1 and C2, and the maximum amount of rescue teams you can possibly gather.</span><br/><span style=\"color: rgb(118, 146, 60); border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); box-sizing: inherit; font-style: inherit; font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">All the numbers in a line must be separated by exactly one space, and there is no extra space allowed at the end of a line.</span></span></p>',
        '<p><span style=\"font-family: 宋体, SimSun;\"><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">5 6 0 2</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">1 2 1 5 3</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">0 1 1</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">0 2 2</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">0 3 1</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">1 2 1</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">2 4 1</span><br/><span style=\"box-sizing: inherit; color: rgb(118, 146, 60); font-style: inherit; border: 0px; font-size: 19px; background-color: rgb(255, 255, 255); font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">3 4 1</span></span></p>',
        '<p><span style=\"box-sizing: inherit; border: 0px; font-family: &quot;Noto Serif&quot;, serif; font-size: 19px; font-weight: 700; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; background-color: rgb(255, 255, 255); color: rgb(118, 146, 60);\">2 4</span></p>',
        100, 100, 30, 0, 4, '2018-05-21 21:55:31', '2018-05-21 21:55:31', 'admin', 0, 0, 1),
       (7, '<p>hdueiwdew</p>', '<p>fftfthf</p>', '<p>gyj</p>', '<p>mkmkmkm</p>', '<p>ojoimomo</p>', '<p>kjnjinji</p>',
        12456, 345, 345, 0, 1, '2019-03-29 13:28:01', '2019-03-29 13:28:01', 'admin', 0, 0, 1),
       (8, '', NULL, NULL, NULL, NULL, NULL, -1, -1, -1, 0, 3, '2019-04-17 17:43:26', '2019-04-17 17:43:26', 'admin', 0,
        0, 1),
       (9, NULL, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, 0, 4, '2019-04-21 13:17:05', '2019-04-21 13:17:05', 'admin',
        0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
    ADD PRIMARY KEY (`admin_id`),
    ADD UNIQUE KEY `uk_admin_profile` (`admin_name`);

--
-- Indexes for table `tb_exam_paper`
--
ALTER TABLE `tb_exam_paper`
    ADD PRIMARY KEY (`paper_id`, `stu_no`, `topic_id`, `point_id`),
    ADD KEY `stu_no` (`stu_no`),
    ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `tb_student_info`
--
ALTER TABLE `tb_student_info`
    ADD PRIMARY KEY (`stu_no`);

--
-- Indexes for table `tb_teacher_info`
--
ALTER TABLE `tb_teacher_info`
    ADD PRIMARY KEY (`teacher_no`);

--
-- Indexes for table `tb_test_point`
--
ALTER TABLE `tb_test_point`
    ADD PRIMARY KEY (`point_id`, `topic_id`, `topic_type`),
    ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `tb_topic_answer`
--
ALTER TABLE `tb_topic_answer`
    ADD PRIMARY KEY (`paper_id`, `stu_no`, `topic_id`),
    ADD KEY `stu_no` (`stu_no`),
    ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `tb_topic_info`
--
ALTER TABLE `tb_topic_info`
    ADD PRIMARY KEY (`topic_id`, `topic_type`),
    ADD UNIQUE KEY `uk_topic_info` (`topic_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_admin`
--
ALTER TABLE `tb_admin`
    MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 52;
--
-- 限制导出的表
--

--
-- 限制表 `tb_exam_paper`
--
ALTER TABLE `tb_exam_paper`
    ADD CONSTRAINT `tb_exam_paper_ibfk_1` FOREIGN KEY (`stu_no`) REFERENCES `tb_student_info` (`stu_no`),
    ADD CONSTRAINT `tb_exam_paper_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `tb_topic_info` (`topic_id`);

--
-- 限制表 `tb_test_point`
--
ALTER TABLE `tb_test_point`
    ADD CONSTRAINT `tb_test_point_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `tb_topic_info` (`topic_id`);

--
-- 限制表 `tb_topic_answer`
--
ALTER TABLE `tb_topic_answer`
    ADD CONSTRAINT `tb_topic_answer_ibfk_2` FOREIGN KEY (`stu_no`) REFERENCES `tb_student_info` (`stu_no`),
    ADD CONSTRAINT `tb_topic_answer_ibfk_3` FOREIGN KEY (`topic_id`) REFERENCES `tb_topic_info` (`topic_id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
