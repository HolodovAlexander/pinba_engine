CREATE TABLE `%name%` (
	`script_name` varchar(128) DEFAULT '' NOT NULL,
	%tag_value_columns%
	`req_count` int(11) DEFAULT NULL,
	`req_per_sec` float DEFAULT NULL,
	`hit_count` int(11) DEFAULT NULL,
	`hit_per_sec` float DEFAULT NULL,
	`timer_value` float DEFAULT NULL,
	`timer_median` float DEFAULT NULL,
	`ru_utime_value` float DEFAULT NULL,
	`ru_stime_value` float DEFAULT NULL,
	`index_value` varchar(256) DEFAULT NULL,
	%percentile_columns%
	KEY(`script_name`)
) ENGINE=PINBA DEFAULT CHARSET=latin1 COMMENT='tagN_report:%tags%:%conditions%:%percentiles%';
