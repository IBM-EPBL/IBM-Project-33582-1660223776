CREATE DATABASE /*!32312 IF NOT EXISTS*/`testdb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `testdb`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `name` varchar(256) NOT NULL,
  `active` varchar(256) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`name`,`active`) values ('food','YES'),('Mobile','YES');

/*Table structure for table `passwords` */

DROP TABLE IF EXISTS `passwords`;

CREATE TABLE `passwords` (
  `id` int(11) NOT NULL,
  `pass` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `passwords` */

/*Table structure for table `product_pricing` */

DROP TABLE IF EXISTS `product_pricing`;

CREATE TABLE `product_pricing` (
  `product_name` varchar(356) NOT NULL,
  `buying_price` varchar(100) NOT NULL,
  `Profit_margin` varchar(100) DEFAULT '0',
  `discount` varchar(100) DEFAULT '0',
  `selling_price` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_pricing` */

insert  into `product_pricing`(`product_name`,`buying_price`,`Profit_margin`,`discount`,`selling_price`) values ('aa','100','50','50','75.0'),('bb','100','10','0','110.0'),('juice','110','0','0','110'),('nokia','10','0','0','10'),('asda','110','0','0','110'),('abc','110','10','0','121.0'),('','5000','0','0','5000'),('','100','0','0','100'),('','100','0','0','100'),('Samsung','5000','0','0','5000'),('as','100','0','0','100'),('as','100','0','0','100'),('abc','100','0','0','100');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `P_name` varchar(255) NOT NULL,
  `Barcode` int(100) NOT NULL,
  `ExDate` date DEFAULT NULL,
  `Category` varchar(255) NOT NULL,
  PRIMARY KEY (`Barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`P_name`,`Barcode`,`ExDate`,`Category`) values ('abcghgh',1,'2019-08-07','food'),('Samsung',2,'2019-08-07','food'),('as',4,'2019-08-07','Mobile'),('asdas',5,'2019-08-07','Mobile');

/*Table structure for table `purchase_invoice` */

DROP TABLE IF EXISTS `purchase_invoice`;

CREATE TABLE `purchase_invoice` (
  `product_name` varchar(356) NOT NULL,
  `quantity` int(11) NOT NULL,
  `per_unit_price` varchar(356) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `barcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase_invoice` */

insert  into `purchase_invoice`(`product_name`,`quantity`,`per_unit_price`,`total_amount`,`date`,`barcode`) values ('abc',2,'110',220,'2019-08-07',1),('Samsung',2,'5000',10000,'2019-08-07',2),('as',2,'100',200,'2019-08-07',4),('as',2,'100',200,'2019-08-07',4),('abc',10,'100',1000,'2019-08-07',1);

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `product_name` varchar(356) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `per_unit_price` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `sale_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert  into `sales`(`product_name`,`quantity`,`per_unit_price`,`total_price`,`sale_id`) values ('Samsung','0.0','5000','0.0',1),('Samsung','1','5000','5000.0',2),('as','1','100','100.0',3),('abc','1','121.0','121.0',4);

/*Table structure for table `sales_returned` */

DROP TABLE IF EXISTS `sales_returned`;

CREATE TABLE `sales_returned` (
  `product_name` varchar(300) NOT NULL,
  `product_price` varchar(300) NOT NULL,
  `quantity` varchar(300) DEFAULT '0',
  `total_amount` varchar(300) NOT NULL,
  `sale_id` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales_returned` */

insert  into `sales_returned`(`product_name`,`product_price`,`quantity`,`total_amount`,`sale_id`) values ('juice','110','2.0','220.0','13'),('bb','110.0','1.0','110.0','13'),('Samsung','5000','1.0','5000.0','1'),('Samsung','5000','0','0','2'),('as','100','0','0','3'),('abc','121.0','0','0','4');

/*Table structure for table `student_data` */

DROP TABLE IF EXISTS `student_data`;

CREATE TABLE `student_data` (
  `Gr_No` int(100) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Father_Name` varchar(255) NOT NULL,
  `Age` int(100) NOT NULL,
  `Father_Profession` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `class` int(100) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  PRIMARY KEY (`Gr_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_data` */

insert  into `student_data`(`Gr_No`,`Name`,`Father_Name`,`Age`,`Father_Profession`,`address`,`class`,`Gender`) values (9,'hjkdk','kjsd',92,'jksd','jdkj',9,'Male'),(12,'ubaid','alkdj',2,'kladsj','kjsd',0,'Male'),(120,'sagher','ad',21,'alkjsdkl','asdjkl',14,'Male'),(1201,'sagher','ad',21,'alkjsdkl','asdjkl',14,'Male');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `company` varchar(300) NOT NULL,
  `contact_person` varchar(300) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

insert  into `supplier`(`company`,`contact_person`,`phone_no`,`address`,`status`) values ('a','muzamil','123','aksjd','yes');

/*Table structure for table `teacher_data` */

DROP TABLE IF EXISTS `teacher_data`;

CREATE TABLE `teacher_data` (
  `tchr_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cnic` int(13) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary` int(100) NOT NULL,
  `emp_date` date NOT NULL,
  PRIMARY KEY (`cnic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher_data` */

insert  into `teacher_data`(`tchr_id`,`name`,`cnic`,`subject`,`education`,`address`,`salary`,`emp_date`) values (88,'kasdkj',99909,'asdk','asda','asda',99,'2022-11-11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `status` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `foreign key` FOREIGN KEY (`user_id`) REFERENCES `passwords` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*Table structure for table `users_data` */

DROP TABLE IF EXISTS `users_data`;

CREATE TABLE `users_data` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users_data` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
