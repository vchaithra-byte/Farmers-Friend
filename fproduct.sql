--
-- Table structure for table `fproduct`
--
create table details(
	did int(10) primary key,
	pid int(255) NOT NULL,
	product varchar(255) NOT NULL,
	SciName varchar(100),
	cliTemp varchar(50),
	soil varchar(50),
	varieties varchar(50))ENGINE=InnoDB DEFAULT CHARSET=latin1;
    