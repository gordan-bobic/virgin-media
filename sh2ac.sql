CREATE TABLE `BandwidthDown` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `Downloaded` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `BandwidthUp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `Uploaded` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `Latencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `Protocol` varchar(4) NOT NULL,
  `TTL` tinyint(3) unsigned NOT NULL,
  `Min` float DEFAULT NULL,
  `Avg` float DEFAULT NULL,
  `Max` float DEFAULT NULL,
  `Loss` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx1` (`Protocol`,`TTL`,`time`)
);

CREATE TABLE `SH2acDownstreamPowerLevel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PowerLevel1` float DEFAULT NULL,
  `PowerLevel2` float DEFAULT NULL,
  `PowerLevel3` float DEFAULT NULL,
  `PowerLevel4` float DEFAULT NULL,
  `PowerLevel5` float DEFAULT NULL,
  `PowerLevel6` float DEFAULT NULL,
  `PowerLevel7` float DEFAULT NULL,
  `PowerLevel8` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `SH2acPostRSErrors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PostRSErrors1` int(11) DEFAULT NULL,
  `PostRSErrors2` int(11) DEFAULT NULL,
  `PostRSErrors3` int(11) DEFAULT NULL,
  `PostRSErrors4` int(11) DEFAULT NULL,
  `PostRSErrors5` int(11) DEFAULT NULL,
  `PostRSErrors6` int(11) DEFAULT NULL,
  `PostRSErrors7` int(11) DEFAULT NULL,
  `PostRSErrors8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `SH2acPreRSErrors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PreRSErrors1` int(11) DEFAULT NULL,
  `PreRSErrors2` int(11) DEFAULT NULL,
  `PreRSErrors3` int(11) DEFAULT NULL,
  `PreRSErrors4` int(11) DEFAULT NULL,
  `PreRSErrors5` int(11) DEFAULT NULL,
  `PreRSErrors6` int(11) DEFAULT NULL,
  `PreRSErrors7` int(11) DEFAULT NULL,
  `PreRSErrors8` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `SH2acRxMER` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `RxMER1` float DEFAULT NULL,
  `RxMER2` float DEFAULT NULL,
  `RxMER3` float DEFAULT NULL,
  `RxMER4` float DEFAULT NULL,
  `RxMER5` float DEFAULT NULL,
  `RxMER6` float DEFAULT NULL,
  `RxMER7` float DEFAULT NULL,
  `RxMER8` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);

CREATE TABLE `SH2acUpstreamPowerLevel` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `DeviceName` varchar(255) NOT NULL,
  `PowerLevel1` float DEFAULT NULL,
  `PowerLevel2` float DEFAULT NULL,
  `PowerLevel3` float DEFAULT NULL,
  `PowerLevel4` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx1` (`DeviceName`,`time`)
);
