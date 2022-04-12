/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : hqh

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 12/04/2022 10:36:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hqh_course
-- ----------------------------
DROP TABLE IF EXISTS `hqh_course`;
CREATE TABLE `hqh_course`  (
  `course_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `course_tag` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程标签',
  `course_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_course
-- ----------------------------
INSERT INTO `hqh_course` VALUES (1, 'javaweb', NULL, 1, '0', '0', 'admin', '2022-01-28 15:57:57', 'admin', '2022-01-29 15:58:04');
INSERT INTO `hqh_course` VALUES (2, '数据库', NULL, 1, '0', '0', 'admin', '2022-01-28 15:57:57', 'admin', '2022-01-29 15:58:04');
INSERT INTO `hqh_course` VALUES (3, '数据通讯', NULL, 1, '0', '0', 'admin', '2022-01-28 15:57:57', 'admin', '2022-01-29 15:58:04');
INSERT INTO `hqh_course` VALUES (4, '恋爱学', NULL, 1, '0', '0', 'admin', '2022-01-28 15:57:57', 'admin', '2022-01-29 15:58:04');

-- ----------------------------
-- Table structure for hqh_question
-- ----------------------------
DROP TABLE IF EXISTS `hqh_question`;
CREATE TABLE `hqh_question`  (
  `question_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '题目ID',
  `question_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题目',
  `topic` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '题型',
  `OptionA` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项A',
  `OptionB` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项B',
  `OptionC` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项C',
  `OptionD` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '选项D',
  `correct_answer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '正确答案',
  `analysis` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '解析',
  `mark` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '分数',
  `classification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `isdata` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否出卷',
  PRIMARY KEY (`question_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 130 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_question
-- ----------------------------
INSERT INTO `hqh_question` VALUES (1, '通过操作系统对外围设备的管理实现了“设备处理的一致性”。这种“一致性”是指（）', '单选题', '外围设备硬件的处理一致性', '通道硬件设计的处理一致性', '通道程序设计的处理一致性', '用户可不考虑设备的具体物理特性', 'D', '操作系统概念', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (2, '设有3个作业，它们同时到达，运行时间分别为T1、T2和T3,且T1≤T2≤T3，若它们在单处理机系统中按单道运行，采用短作业优先调度算法，则平均周转时间为（）。', '单选题', 'T1+T2+T3', '(T1+T2+T3)', 'T1+T2/3+2*T3/3', 'T3/3+2*T2/3+T1', 'D', '单处理器调度', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (3, '一个进程释放一种资源将有可能导致一个或几个进程（）。', '单选题', '由就绪变运行', '由运行变就绪', '由阻塞变运行', '由阻塞变就绪', 'D', '进程管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (4, '页式存储管理中，每取一条指令或取一个操作数，访问主存的次数最多是()。', '单选题', '1', '2', '3', '4', 'B', '虚拟内存', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (5, '不能防止死锁的资源分配策略是()', '单选题', '剥夺式分配方式', '按序分配方式', '静态分配方式', '互斥使用分配方式', 'D', '死锁', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (6, '某系统采用了银行家算法，则下列叙述正确的是（）。', '单选题', '系统处于不安全状态时一定会发生死锁', '系统处于不安全状态时可能会发生死锁', '系统处于安全状态时可能会发生死锁', '系统处于安全状态时一定会发生死锁', 'B', '银行家算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (7, '在可变式分区分配方案中，某一作业完成后，系统收回其主存空间，并与相邻空闲区合并，为此需修改空闲区表，造成空闲区数减1的情况是（）。', '单选题', '无上邻空闲区，也无下邻空闲区', '有上邻空闲区，但无下邻空闲区', '有下邻空闲区，但无上邻空闲区', '有上邻空闲区，也有下邻空闲区', 'D', '内存管理算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (8, '操作系统中利用信号量和P、V操作，()。', '单选题', '只能实现进程的互斥', '只能实现进程的同步', '可实现进程的互斥和同步', '可完成进程调度', 'C', '信号量', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (9, '下列关于进程和线程的叙述中，正确的是()', '单选题', '一个进程只可拥有一个线程', '一个线程只可拥有一个进程', '一个进程可拥有若干个线程', '一个线程可拥有若干个进程', 'C', '进程与线程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (10, '在请求式分页系统中，用五状态进程模型对进程状态进行描述，当前指令访问发生缺页，则此进程会发生的状态变迁为().', '单选题', '就绪->运行', '运行->阻塞', '新建->就绪', '运行->退出', 'B', '分页系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (11, '在简单分页内存管理中，每取一次数据，要访问()次内存。', '单选题', '1', '2', '3', '4', 'B', '分页', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (12, 'SPOOLing技术可以实现设备的()分配。', '单选题', '独占', '共享', '虚拟', '物理', 'C', '内存管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (13, '系统抖动是指()。', '单选题', '使用机器时,屏幕闪烁的现象', '由于主存分配不当,偶然造成主存不够的现象', '系统盘有问题,致使系统不稳定的现象', '被调出的页面又立刻被调入所形成的频繁调入调出现象', 'D', '置换策略', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (14, '伙伴系统中某已经分配的块大小为K，其起始地址为A，在用二叉树所描述当前内存分区的树中该块是左节点，则其伙伴地址为().', '单选题', 'A+2*K', 'A+K', 'A-K', 'A-2*K', 'B', '伙伴系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (15, '进程控制块的英文缩写是()。', '单选题', 'CPU', 'MMU', 'PCB', 'TLB', 'C', '什么是进程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (16, '在下述文件系统目录结构中，能够用多条路径访问同一文件(或目录)的目录结构是()', '单选题', '单级目录', '二级目录', '纯树型目录', '非循环图目录', 'D', '文件目录', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (17, '作业调度的关键在于()。', '单选题', '选择恰当的进程管理程序', '用户作业准备充分', '选择恰当的作业调度算法', '有一个较好的操作环境', 'C', '调度算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (18, '在分页存储管理系统中，从页号到物理块号的地址映射是通过()实现的。', '单选题', '段表', '页表', 'PCB', 'JCB', 'B', '虚拟地址映射', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (19, '某系统采用了银行家算法，则下列叙述正确的是()。', '单选题', '系统处于不安全状态时一定会发生死锁', '系统处于不安全状态时可能会发生死锁', '系统处于安全状态时可能会发生死锁', '系统处于安全状态时一定会发生死锁', 'A', '死锁的条件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (20, '发生进程切换的过程中上下文切换一共()次。', '单选题', '2', '1', '0', '3', 'A', '进程调度', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (21, '在操作系统中，进程的最基本的特征是()。', '单选题', '动态性和并发性', '顺序性和可再现性', '与程序的对应性', '执行过程的封闭性', 'A', '进程的基本概念', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (22, '系统用五状态进程模型对进程状态进行描述，则此模型下的处理器调度不包括()调度.', '单选题', '长程', '中程', '短程', '磁盘', 'B', '处理器调度类型', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (23, '避免死锁的一个著名的算法是()', '单选题', '先人先出算法', '优先级算法', '银行家算法', '资源按序分配法', 'C', '死锁避免', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (24, '采用直接存取法来读写磁盘上的物理记录时，效率最高的是（）。', '单选题', '连续结构的文件', '索引结构的文件', '链接结构文件', '其他结构文件', 'A', '文件组织和访问', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (25, '存储器的段页式管理中，每次从主存中取出一条指令或一个操作数，需（）次访问主存。', '单选题', '1', '2', '3', '4', 'C', '段页式', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (26, '引入多道程序设计技术的主要目的在于（）。', '单选题', '减少存储器碎片', '充分利用处理机减少处理机空闲时间', '有利于代码共享', '充分利用外围设备', 'B', '多道批处理系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (27, '在操作系统中，一方面每个进程具有独立性，另一方面进程之间又具有相互制约性。对于任何两个并发进程，它们（）。', '单选题', '必定无关', '必定相关', '可能相关', '可能相同', 'C', '进程的交互', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (28, '设有n个进程共用一个相同的程序段(临界区)，如果每次最多允许m个进程(m<n)同时进入临界区。则信号量的初始值为（）。', '单选题', 'n', 'm', 'm-n', 'n-m', 'B', '进程的交互', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (29, '从分类来看，日常使用的windowsXP、windows7、windows10操作系统属于（）。', '单选题', '串行处理系统', '简单批处理系统', '多道批处理系统', '分时系统', 'C', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (30, '下列算法中可用于进程调度，磁盘调度，I/O调度的是（）。', '单选题', '先来先服务', 'SSTF服务', '时间片轮转', '优先级高者优先', 'A', 'Windows I/O', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (31, '一个虚拟存储器系统中，设主存的容量为16MB，辅存的容量为1GB，而地址寄存器的位数32位，在这样的系统中，虚存的最大容量是（）。', '单选题', '1GB', '16MB', '1GB+16MB', '4GB', 'D', '虚拟内存', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (32, '使用信号量S解决N个进程之间的互斥问题，则运行过程中S的最小值可能为().', '单选题', '-1', '', '0', '1-N', 'D', '信号量', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (33, '为保证系统数据库的完整性，可以把信号量定义为某个库文件的锁，初值为1，任何进程存取该库文件之前先对该信号量做一个操作，存取之后对它做一个()，从而使任一时刻只有一个进程可存取该库文件，但要注意信号量使用不当引起的死锁。', '单选题', 'semSignal操作', 'read操作', 'write操作', 'semWait操作', 'A', '信号量', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (34, '设计批处理多道系统时，首先要考虑的是()', '单选题', '灵活性和可适应性', '系统效率和吞吐量', '交互性和响应时间', '实时性和可靠性', 'B', '多道批处理系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (35, '在单处理器的多进程系统中，进程什么时候占用处理器和能占用多长时间取决于()', '单选题', '进程相应的程序段的长度', '进程总共需要运行时间多少', '进程自身和进程调度策略', '进程完成什么功能', 'C', '进程控制', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (36, '一种既有利于短小作业又兼顾到长作业的作业调度算法是(C)', '单选题', '先来先服务', '轮转', '最高响应比优先', '均衡调度', 'C', '选择调度策略', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (37, '有一个链接结构的文件，其中被链接的每个物理块存放一个逻辑记录和一个链接指针。目前，该文件中共存放了1、2、3、4、5五个逻辑记录。假设对应于该文件的目录项已经在主存储器中，那么完成删除记录4需访问磁盘()次。', '单选题', '1', '2', '4', '5', 'D', '操作系统软件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (38, '有关进程的叙述正确的是()。', '单选题', '进程是动态的，多个进程可以含有相同的程序，多个进程可以并发运行', '进程是动态的，多个进程对应的程序必须是不同的，多个进程可以并发运行', '进程是动态的，多个进程可以含有相同的程序，多个进程不能并发运行', '进程是静态的，多个进程可以含有相同的程序，多个进程可以并发运行', 'A', '进程和进程控制块', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (39, '()不是Unix系统的特色。', '单选题', '\"交互的分时系统\"', '\"以全局变量为中心的模块结构\"', '\"模块之间调用关系简明\"', '\"可以分成内核和外壳\"', 'C', 'Unix系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (40, '关于Unix的用户标识()是不正确的。', '单选题', '一为实际的UID一为有效的SUID', 'UID与SUID可能不同', 'SUID比UID更能反映用户的真实身份', 'SUID表示用户临时具有执行某个程序的权力', 'C', 'Unix系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (41, '假设有编号为1、2、3、4四个空闲区，大小分别为16K、24K、15K、30K，现要申请18K的主存空间，采用最佳适配算法，则申请到的空闲区编号为()。', '单选题', '1', '2', '3', '4', 'B', '动态分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (42, '启动外设前必须组织好通道程序通道程序是由若干()组成。', '单选题', 'CCW', 'CSW', 'CAW', 'PSW', 'A', 'I/O操作', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (43, '关于操作系统的叙述（）是不正确的。', '单选题', '\"管理资源的程序\"', '\"管理用户程序执行的程序\"', '\"能使系统资源提高效率的程序\"', '\"能方便用户编程的程序\"', 'D', '对操作系统的概念理解', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (44, '计算机系统中判别是否有中断事件发生应是在()', '单选题', '进程切换时', '执行完一条指令后', '执行', '由用户态转入核心态时', 'B', '中断处理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (45, '有关资源分配图中存在环路和死锁关系正确的说法是()。', '单选题', '图中无环路则系统可能存在死锁', '图中有环路则系统肯定存在死锁', '图中有环路则系统可能存在死锁，也可能不存在死锁', '以上说法都不对', 'C', '资源分配图', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (46, '文件的保密是指防止文件被()', '单选题', '篡改', '破坏', '窃取', '删除', 'C', '文件管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (47, '在多进程的并发系统中，肯定不会因竞争()而产生死锁。', '单选题', '打印机', '磁带机', '磁盘', 'CPU', 'D', '死锁', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (48, '若当前进程因时间片用完而让出处理机时，该进程应转变为()状态。', '单选题', '就绪', '等待', '运行', '完成', 'A', '进程状态', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (49, '下述内存管理技术中，()存储管理通常可不要求进程占用的内存是连续的。①固定分区②动态分区③简单分页④简单分段⑤虚拟内存分页', '单选题', '①②③', '②③④⑤', '③④⑤', '④⑤', 'C', '内存分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (50, '进程和程序是两个既有联系又有区别的概念，下面描述中，()是错误的。', '单选题', '进程是动态的，程序是静态的', '一个程序可对应多个进程', '进程是有生命周期，而程序相对是永久的', '程序是可以并发执行', 'D', '进程与线程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (51, '操作系统的发展过程是()', '单选题', '设备驱动程序组成的原始操作系统，管理程序，操作系统', '原始操作系统，操作系统，管理程序', '管理程序，原始操作系统，操作系统', '管理程序，操作系统，原始操作系统', 'A', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (52, '支持程序浮动的地址转换机制是()', '单选题', '页式地址转换', '段式地址转换', '静态重定位', '动态重定位', 'D', '重定位', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (53, '在哲学家就餐问题中，若仅提供5把叉子，则同时要求就餐的人数最多不超过()个时，一定不会发生死锁。', '单选题', '2', '3', '4', '5', 'C', '哲学家就餐问题', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (54, '下列针对英文词组的中文翻译，错误的是()', '单选题', 'page', 'interrupt', 'mutex，信号量', 'program', 'C', '操作系统术语', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (55, '某磁盘寻道，采用最短寻道时间优先算法，如果将要访问的磁道分别是27、136、58、100、72、40而当前磁头在80道上，则磁头移动总道数是（）。', '单选题', '80', '136', '162', '165', 'C', '磁盘调度策略', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (56, '对磁盘进行移臂调度时，既考虑了减少寻找时间，又不频繁改变移动臂的移动方向的调度算法是()。', '单选题', '先来先服务', '最短寻找时间优先', '电梯调度', '优先级高者优先', 'C', '调度算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (57, '伙伴系统中某已经分配的块大小为K，其起始地址为A，在用二叉树所描述当前内存分区的树中该块是右节点，则其伙伴地址为().', '单选题', 'A+2*K', 'A+K', 'A-K', 'A-2*K', 'C', 'B树', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (58, '已知某磁盘的旋转速度为7500r/m,平均寻道时间为4ms,每一个磁道有500个扇区，每扇区512字节，则读一个磁道的时间为()ms.', '单选题', '8', '4', '12', '16', 'D', '磁盘性能参数', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (59, '某页式管理系统中，地址寄存器的低11位表示页内地址，则页面大小为()。', '单选题', '1024字节', '512字节', '2K字节', '4K字节', 'C', '分页', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (60, '为实现设备分配，应为每一类设备配置一张()。', '单选题', '设备分配表', '逻辑设备表', '设备控制表', '设备开关表', 'C', '设备分配', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (61, '设计多道批处理系统时，首先要考虑的是()。', '单选题', '灵活性和可适应性', '交互性和响应时间', '系统效率和吞吐量', '实时性和可靠性', 'C', '多道批处理系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (62, '简单段页式存储管理方案中一次数据访问需要访问内存()次。', '单选题', '2', '1', '0', '3', 'D', '段页式', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (63, '在中断处理过程中，下列哪些步骤由软件完成（）。（1）将当前PSW压栈；　（2）将当前PC压栈；　（3）根据中断加载新PC值；（4）处理中断；　　（5）恢复PSW；　（6）恢复PC值。', '单选题', '（1）、（2）、（3）', '（4）、（5）、（6）', '（3）、（4）、（5）、（6）', '全部都是', 'B', '中断处理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (64, '某计算机系统中有10台打印机，有K个进程竞争使用，每个进程最多需要4台打印机。该系统可能会发生死锁的K的最小值是()。', '单选题', '2', '3', '4', '5', 'C', '死锁检测算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (65, '分时系统中，当前运行进程时间片已经执行完毕，则该进程会发生的状态变迁为().', '单选题', '就绪->运行', '运行->就绪', '新建->就绪', '运行->退出', 'B', '分时系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (66, '下列进程调度算法中，综合考虑进程等待时间和执行时间的是()。', '单选题', '时间片轮转调度算法', '短进程优先调度算法', '先来先服务调度算法', '高响应比优先调度算法', 'D', '选择调度算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (67, '实时系统中的进程调度，通常采用()算法。', '单选题', '高响应比优先', '抢占式的优先数高者优先', '时间片轮转', '短作业优先', 'B', '进程调度', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (68, '如果允许不同用户的文件可以具有相同的文件名，通常采用()来保证按名存取的安全。', '单选题', '重名翻译机构', '建立索引表', '建立指针', '多级目录结构', 'D', '索引文件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (69, '某计算机系统中若同时存在五个进程，则处于阻塞状态的进程最多可有个。', '单选题', '1', '4', '5', '0', 'C', '进程状态', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (70, '在动态分区分配管理中，首次适应分配算法要求对空闲区表项按()进行排列。', '单选题', '地址从大到小', '地址从小到大', '尺寸从大到小', '尺寸从小到大', 'B', '动态分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (71, '当进程调度采用最高优先级调度算法时，从保证系统效率的角度来看，应提高()进程的优先级。', '单选题', '以计算为主的', '在就绪队列中等待时间长的', '以I/O为主的', '连续占用处理器时间长的', 'B', '进程切换', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (72, '与设备分配策略有关的因素有：设备固有属性、设备分配算法、()和设备的独立性。', '单选题', '设备的使用频度', '设备分配中的安全性', '设备的配套性', '设备使用的周期性', 'B', '设备分配政策', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (73, '在以下的存储管理方案中，能扩充主存容量的是()。', '单选题', '固定式分区分配', '可变式分区分配', '分页虚拟存储管理', '基本页式存储管理', 'C', '内存分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (74, '关于操作系统的叙述()是不正确的。', '单选题', '管理资源的程序', '管理用户程序执行的程序', '能使系统资源提高效率的程序', '能方便用户编程的程序', 'D', '操作系统功能', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (75, '使用信号量S(初值为1)解决N个进程之间的互斥问题，则当前运行过程中S的值为0，表示已经有进程在()之上.', '单选题', '临界区', '临界资源', '共享区', '栈段', 'A', '互斥', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (76, '虚拟内存方案中，页表是由（）建立的。', '单选题', '内存管理单元（MMU）', '操作系统', '编译器和链接器', '应用程序', 'B', '局部性和虚拟内存', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (77, '下列方法中，解决碎片问题最好的存储管理方法是()。', '单选题', '基本页式存储管理', '基本分段存储管理', '固定大小分区管理', '不同大小分区管理', 'A', '内存管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (78, '进程和线程是两个既相关又有区别的概念，下面陈述中，()是错误的。', '单选题', '线程是分配资源和调度的独立单位', '每个进程有自己的主存空间，同一进程中的各线程共享该进程主存空间', '进程中所有线程对进程的整个主存空间都有存取权限', '不同的线程可以对应相同的程序', 'A', '进程和线程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (79, '在现代操作系统中采用缓冲技术的主要目的是()。', '单选题', '改善用户编程环境', '提高', '提高', '实现与设备无关性', 'C', 'I/O缓冲', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (80, '进程控制块是描述进程状态和特性的数据结构，一个进程()。', '单选题', '只能有惟一的进程控制块', '可以有多个进程控制块', '可以和其他进程共用一个进程控制块', '可以没有进程控制块', 'A', '进程控制块', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (81, '为解决计算机与打印机之间速度不匹配的问题，通常设置一个打印数据缓冲区，主机将要输出的数据依次写入该缓冲区，而打印机则依次从该缓冲区中取出数据。该缓冲区的逻辑结构应该是()。', '单选题', '栈', '队列', '树 ', '图', 'B', '缓冲区高速缓存', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (82, '对记录式文件，操作系统为用户存取文件信息的最小单位是()。', '单选题', '字符', '数据项', '记录', '文件', 'C', '文件存取', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (83, '内存保护和特权指令引出了运行模式的概念。用户程序以()执行，此时有些内存区域是受保护的，特权指令也不允许执行。', '单选题', '保护模式', '用户模式', '内核模式', '安全模式', 'B', '进程控制', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (84, '关于进程和线程之间的关系，错误的是()。', '单选题', '进程和线程都支持并发执行', '进程是资源分配的基本单位，线程是执行的基本单位', '一个进程可能包含多个线程', '线程的状态（运行、就绪、阻塞）与它所在的进程的状态相同', 'D', '进程和线程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (85, '位示图法可用于()。', '单选题', '文件目录的查找', '分页式存储管理中主存空闲块的分配和回收', '磁盘空闲盘块的分配和回收', '页式虚拟存储管理中的页面置换', 'C', '磁盘调度', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (86, '常见的由操作系统支持的I/O缓冲方案不包括（）', '单选题', '双缓冲', '循环缓冲', '缓冲池', '单缓冲', 'C', 'I/O缓冲', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (87, '产生死锁的4个必要条件无法破坏的是（）。', '单选题', '互斥条件', '请求和保持条件', '不剥夺条件', '环路等待条件', 'A', '死锁的条件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (89, '进程从运行状态进入就绪状态的原因可能是()。', '单选题', '时间片用完', '被选中占有', '等待某一事件', '等待的事件已经发生', 'A', '进程控制结构', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (90, '以下内存管理技术中，可能存在外部碎片的是（）。', '单选题', '简单分段', '简单分页', '固定分区', '虚存分页', 'A', '硬件和控制结构', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (91, '设某类资源有5个，由3个进程共享，每个进程最多可申请()个资源而使系统不会死锁。', '单选题', '1', '2', '3', '4', 'B', '死锁避免', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (92, '可重定位分区分配的目的为()。', '单选题', '回收空白区方便', '便于多作业共享内存', '解决碎片问题', '便于用户干预', 'C', '重定位', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (93, '处理器不能直接访问的存储器是()', '单选题', '寄存器', '高速缓冲存储器', '主存储器', '辅助存储器', 'D', '操作系统的基本概念', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (94, '关于处理器调度，正确的说明是()。', '单选题', '处理器调度有三级，高级调度是用于作业调度和进程调度', '处理器调度有三级，高级调度是用于进程调度', '处理器调度有三级，高级调度是用于作业调度', '处理器调度有三级，高级调度是用于作业和进程注册', 'C', '调度和资源管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (95, '属于内存离散分配方式的是()。', '单选题', '固定分区分配方式', '可变分区分配方式', '单一连续分配方式', '页式存储管理方式', 'D', '内存分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (96, 'PV操作是在信号量上的操作，当信号量的值为()时，若有进程调用P操作，则该进程在调用P操作后必定可以继续执行。', '单选题', '0', '≠0', '＞0', '＜0', 'C', '进程控制解构', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (97, '采用多道程序设计能()。', '单选题', '缩短每道程序执行时间', '增加平均周转时间', '降低对处理器调度的要求', '发挥且提高并行工作能力', 'D', '多道批处理系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (98, '设计处理机调度算法时，不属于考虑的原则是()。', '单选题', '公平性', '极大的流量', '平衡资源使用', '提高程序执行速度', 'D', '调度和资源管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (99, '()引起进程的并发执行。', '单选题', '进程调度策略', '资源分配策略', '进程状态变化', '多道程序设计', 'D', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (100, '一种既有利于短作业又兼顾长作业的作业调度算法是()', '单选题', '先来先服务', '短作业优先', '最高响应比优先', '均衡调度', 'C', '调度算法', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (101, '对操作系统的说法中错误的是()。', '单选题', '按运行环境将操作系统分为实时操作系统、分时操作系统和批处理操作系统', '分时操作系统具有多个终端', '实时操作系统是对外来信号及时做出反应的操作系统', '批处理操作系统指利用CPU的空余时间处理成批的作业', 'D', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (102, '通道是一种()。', '单选题', 'I/O', '数据通道', 'I/O', '软件工具', 'C', '略', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (103, 'UNIX操作系统是一个()。', '单选题', '交互式分时操作系统', '多道批处理操作系统', '实时操作系统', '分布式操作系统', 'A', '传统的UNIX系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (104, '对操作系统的文件系统而言，一个源程序、一批数据、一篇文章或一张图片等都可以被称为文件，只要它是()', '单选题', '连续分布在一片磁盘区域中的信息集合', '采用链接方式连接起来的多个磁盘块组成的信息集合', '逻辑上具有完整意义的信息集合', '属于同一个用户的一个信息集合', 'C', '文件的定义', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (105, '访问一次磁盘操作必须给出如下参数()', '单选题', '磁头号', '扇区号', '柱面号', '三个都给出', 'D', '磁盘调度', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (106, '关于进程的叙述()是不正确的。', '单选题', '“一个进程独占处理器时其执行结果只取决于进程本身”', '“一个进程的工作没有完成之前，另一进程可开始工作，则称这些进程具有并发性”', '“并发进程是轮流占用处理器的”', '“可并发执行的进程是指若干进程同一时刻占用处理器”', 'D', '进程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (107, '多道程序设计是指()', '单选题', '在实时系统中并发运行多个程序', '在分布系统中同一时刻运行多个程序', '在一台处理机上同一时刻运行多个程序', '在一台处理机上并发运行多个程序', 'D', '进程控制', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (108, '光盘上的文件一般可以采用（）存取方式。', '单选题', '顺序', '随机', '直接', '顺序或随机', 'C', '文件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (109, 'MS—DOS中用于软盘整盘复制的命令是()', '单选题', 'COMP', 'DISKCOPY', 'SYS', 'BACKUP', 'B', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (110, '在可变式分区分配方案中，某一作业完成后，系统收回其主存空间，并与相邻空闲区合并，为此需修改空闲区表，造成空闲区数减1的情况是()', '单选题', '无上邻空闲区，也无下邻空闲区', '有上邻空闲区，但无下邻空闲区', '有下邻空闲区，但无上邻空闲区', '有上邻空闲区，也有下邻空闲区', 'D', '内存分区', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (111, '在以下存贮管理方案中，不适用于多道程序设计系统的是()', '单选题', '单用户连续分配', '固定式分区分配', '可变式分区分配', '页式存贮管理', 'A', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (112, '操作系统是一种()', '单选题', '系统软件', '系统硬件', '应用软件', '支援软件', 'A', '基本构成', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (113, '可以分配给多个进程的设备是（）。', '单选题', '共享设备', '块设备', '独占设备', '互斥设备', 'A', '进程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (114, '虚拟存储器的最大容量由（）决定。', '单选题', '内存容量', '程序的地址空间', '内外存容量', '计算机的地址机构', 'B', '虚拟存储器', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (115, '文件系统采用多级目录结构后，对于不同用户的文件，其文件名()', '单选题', '应该相同', '应该不同', '可以相同，也可以不同', '受系统约束', 'C', '文件目录', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (116, '用磁带作为文件存贮介质时，文件只能组织成()', '单选题', '顺序文件', '链接文件', '索引文件', '目录文件', 'A', '内存管理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (117, 'MS—DOS的存贮管理采用了()', '单选题', '段式存贮管理', '段页式存贮管理', '单用户连续存贮管理', '固定式分区存贮管理', 'C', '操作系统的目标和功能', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (118, '一作业8：00到达系统，估计运行时间为1小时，若10：00开始执行该作业其响应比是()', '单选题', '2', '1', '3', '0.5', 'C', '进程状态', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (119, '已知，作业的周转时间=作业完成时间-作业的到达时间。现有三个同时到达的作业J1，J2和J3，它们的执行时间分别是T1，T2和，T3且T1()', '单选题', 'T1+T2+T3', '(T1+T2+T3)', 'T1+T2+T3', 'T1+T2+T3', 'C', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (120, '所有就绪状态的进程按建立的先后顺序形成一个对列，从队列首挑选一个进程，分给时间片q，投入运行。当时间片到时，而又没有完成的进程，将再次加入到队列尾，排队等待下一轮调度。这种进程调度算法称为（）。', '单选题', '循环轮转调度算法', '优先数调度算法', '固定周期轮转调度算法', '多级队列调度算法', 'B', '进程', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (121, '进程从运行状态进入就绪状态的原因可能是()', '单选题', '被选中占有处理机', '等待某一事件', '等待的事件已发生', '时间片用完', 'D', '进程状态', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (122, '页式存储管理的快表一般存放在（）。', '单选题', '内存', '外存', '硬盘', 'CACHE', 'D', '分页', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (123, '如果一个计算机的硬盘为64G，每个块的大小为4K，如果用位示图来管理硬盘的空间，则位示图的大小为（）字节。', '单选题', '16M', '4M', '2M', '1M', 'C', '计算机存储', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (124, '任何两个并发进程之间()', '单选题', '一定存在互斥关系', '一定存在同步关系', '一定彼此独立无关', '可能存在同步或互斥关系', 'D', '并发的原理', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (125, '以下不属于操作系统部件的是（）。', '单选题', '进程管理', '数据库管理', '保护系统', '命令解释器系统', 'B', '系统部件', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (126, '位示图方法可用于()', '单选题', '盘空间的管理', '盘的驱动调度', '文件目录的查找', '页式虚拟存贮管理中的页面调度', 'A', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (127, '用户程序在目态下使用特权指令将引起的中断是属于()', '单选题', '硬件故障中断', '程序中断', '外部中断', '访管中断', 'B', '中断', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (128, '下列算法中用于磁盘移臂调度的是()', '单选题', '时间片轮转法', 'LRU', '最短寻找时间优先算法', '优先级高者优先算法', 'C', '操作系统的演化', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (129, '紧耦合系统就是（）。', '单选题', '分时操作系统', '分布式操作系统', '网络操作系统', '并行操作系统', 'D', '紧耦合系统', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);
INSERT INTO `hqh_question` VALUES (130, '已知某磁盘的旋转速度为5400r/m,在此速度下的磁盘平均旋转延迟为().', '单选题', '11.11', '5.55', '2', '4', 'A', '磁盘性能参数', '1', 'hqh', '0', NULL, '', NULL, '', NULL, NULL);

-- ----------------------------
-- Table structure for hqh_teacher
-- ----------------------------
DROP TABLE IF EXISTS `hqh_teacher`;
CREATE TABLE `hqh_teacher`  (
  `teacher_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '老师ID',
  `teacher_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '老师账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '老师昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '老师邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '老师性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老师信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_teacher
-- ----------------------------
INSERT INTO `hqh_teacher` VALUES (1, 'admin', '宋浩', '253546534@qq.com', '18888888888', '0', '', 'xxxxxx', '0', '0', '10.25.245.45', '2022-01-23 15:50:27', 'admin', '2022-01-23 15:50:48', 'hqh', '2022-01-26 15:50:53');
INSERT INTO `hqh_teacher` VALUES (2, 'zs', '张三', '253546544@qq.com', '18888888888', '0', '', 'xxxxxx', '0', '0', '10.25.245.45', '2022-01-23 15:50:27', 'admin', '2022-01-23 15:50:48', 'hqh', '2022-01-26 15:50:53');
INSERT INTO `hqh_teacher` VALUES (3, 'ls', '李四', '253546544@qq.com', '18888888888', '0', '', 'xxxxxx', '0', '0', '10.25.245.45', '2022-01-23 15:50:27', 'admin', '2022-01-23 15:50:48', 'hqh', '2022-01-26 15:50:53');

-- ----------------------------
-- Table structure for hqh_teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `hqh_teacher_course`;
CREATE TABLE `hqh_teacher_course`  (
  `teacher_id` bigint(0) NOT NULL COMMENT '老师ID',
  `course_id` bigint(0) NOT NULL COMMENT '课程ID',
  PRIMARY KEY (`teacher_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '老师和课程关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_teacher_course
-- ----------------------------
INSERT INTO `hqh_teacher_course` VALUES (1, 1);
INSERT INTO `hqh_teacher_course` VALUES (2, 3);
INSERT INTO `hqh_teacher_course` VALUES (2, 4);
INSERT INTO `hqh_teacher_course` VALUES (3, 2);

-- ----------------------------
-- Table structure for hqh_user
-- ----------------------------
DROP TABLE IF EXISTS `hqh_user`;
CREATE TABLE `hqh_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `professional` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '专业',
  `sclass` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '班级',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_user
-- ----------------------------
INSERT INTO `hqh_user` VALUES (1, 'admin', '管理员', '计科', '四班', 'rickhqh@qq.com', '14343335445', '0', '', '1111111', '0', '0', '10.25.245.45', '2022-01-23 15:50:27', 'admin', '2022-01-23 15:50:48', 'hqh', '2022-06-26 15:50:53');
INSERT INTO `hqh_user` VALUES (2, 'hqh', '贺启衡', '软件', '二班', '252322344@qq.com', '13545454888', '0', '', '2222222', '0', '0', '10.25.245.45', '2022-01-23 15:50:27', 'admin', '2022-01-04 15:50:48', 'hqh', '2022-05-26 15:50:53');
INSERT INTO `hqh_user` VALUES (3, 'hjj', '黄嘉婕', '软件', '五班', '2342344@qq.com', '13434343598', '0', '', '3333333', '0', '0', '10.25.2345.45', '2022-01-23 15:50:27', 'admin', '2022-01-28 10:03:48', 'hqh', '2022-03-26 11:50:53');
INSERT INTO `hqh_user` VALUES (4, 'llz', '刘丽芝', '计科', '三班', '114234234344@qq.com', '14548867688', '0', '', '4444444', '0', '0', '10.25.2345.45', '2022-01-23 15:50:27', 'admin', '2022-03-17 15:50:48', 'hqh', '2022-03-26 11:50:53');
INSERT INTO `hqh_user` VALUES (5, 'gc', '耿晨', '计科', '四班', '793489qq.com', '18564655568', '0', '', '5555555', '0', '0', '10.25.2345.45', '2022-01-23 15:50:27', 'admin', '2023-07-13 15:50:48', 'hqh', '2022-03-26 11:50:53');
INSERT INTO `hqh_user` VALUES (6, 'xh', '小贺', '计科', '一班', '210401532@qq.com', '13087323157', '0', '', '6666666', '0', '0', '10.25.2345.45', '2022-01-23 15:50:27', 'admin', '2023-07-13 15:50:48', 'hqh', '2022-03-26 11:50:53');
INSERT INTO `hqh_user` VALUES (7, 'hsh', '贺寿红', '物联网', '五班', '12412312@qq.com', '13347221058', NULL, NULL, 'hsh', '0', '0', '127.0.0.1', NULL, 'hsh', '2022-04-04 10:48:38', NULL, NULL);
INSERT INTO `hqh_user` VALUES (8, 'hjs', '黄军胜', '信安', '二班', '88743352@qq.com', '1234555566', NULL, NULL, 'hjs', '0', '0', '127.0.0.1', NULL, 'hjs', '2022-04-04 10:50:30', NULL, NULL);
INSERT INTO `hqh_user` VALUES (9, 'hsdf', '红烧豆腐', '计科', '一班', 'admin@cloudreve.org', '17323342347', NULL, NULL, 'hsdf', '0', '0', '127.0.0.1', NULL, 'hsdf', '2022-04-04 10:54:34', 'hsdf', '2022-04-04 10:54:34');
INSERT INTO `hqh_user` VALUES (10, 'ls', '刘申', '计科', '一班', '210401532@qq.com', '1845637201', NULL, NULL, 'ls', '0', '0', '127.0.0.1', NULL, 'ls', '2022-04-04 11:07:37', 'ls', '2022-04-04 11:07:37');
INSERT INTO `hqh_user` VALUES (22, 'ls', '刘申', '计科', '一班', '210401532@qq.com', '1845637201', NULL, NULL, 'ls', '0', '0', '127.0.0.1', NULL, 'ls', '2022-04-04 11:23:53', 'ls', '2022-04-04 11:23:53');
INSERT INTO `hqh_user` VALUES (23, 'hjjsb', '贺启衡', '计科', '一班', '210401532@qq.com', '18670065013', NULL, NULL, 'hjjsb', '0', '2', '127.0.0.1', NULL, 'hjjsb', '2022-04-11 10:20:22', 'hjjsb', '2022-04-11 10:20:22');

-- ----------------------------
-- Table structure for hqh_user_course
-- ----------------------------
DROP TABLE IF EXISTS `hqh_user_course`;
CREATE TABLE `hqh_user_course`  (
  `user_id` bigint(0) NOT NULL COMMENT '学生ID',
  `course_id` bigint(0) NOT NULL COMMENT '课程ID',
  PRIMARY KEY (`user_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生和课程关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hqh_user_course
-- ----------------------------
INSERT INTO `hqh_user_course` VALUES (1, 1);
INSERT INTO `hqh_user_course` VALUES (1, 4);
INSERT INTO `hqh_user_course` VALUES (2, 1);
INSERT INTO `hqh_user_course` VALUES (2, 2);
INSERT INTO `hqh_user_course` VALUES (2, 3);
INSERT INTO `hqh_user_course` VALUES (2, 4);
INSERT INTO `hqh_user_course` VALUES (3, 1);
INSERT INTO `hqh_user_course` VALUES (3, 2);
INSERT INTO `hqh_user_course` VALUES (3, 3);
INSERT INTO `hqh_user_course` VALUES (3, 4);

SET FOREIGN_KEY_CHECKS = 1;
