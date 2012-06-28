-- ************************** WARNING ********************************
-- File Managed by Puppet
-- Any changes to this file configuration should be done trough puppet
-- other wise configuration will be overwriten on te next puppet pass.
-- *******************************************************************

replace into settings (name,value) values ('path_rrdtool','/usr/bin/rrdtool');
replace into settings (name,value) values ('path_php_binary','/usr/bin/php');
replace into settings (name,value) values ('path_snmpwalk','/usr/bin/snmpwalk');
replace into settings (name,value) values ('path_snmpget','/usr/bin/snmpget');
replace into settings (name,value) values ('path_snmpbulkwalk','/usr/bin/snmpbulkwalk');
replace into settings (name,value) values ('path_snmpgetnext','/usr/bin/snmpgetnext');
replace into settings (name,value) values ('path_cactilog','/var/www/cacti/log/cacti.log');
replace into settings (name,value) values ('snmp_version','net-snmp');
replace into settings (name,value) values ('rrdtool_version','rrd-1.3.x');
UPDATE host_snmp_cache SET present=0 WHERE host_id='1' AND snmp_query_id='6';
INSERT INTO host_snmp_cache (host_id, snmp_query_id, field_name, field_value, snmp_index, oid, present) VALUES (1, 6, 'dskDevice', '/dev/mapper/vg_opcacticentos6-lv_root', '/dev/mapper/vg_opcacticentos6-lv_root', '', 1), (1, 6, 'dskDevice', '/dev/sda1', '/dev/sda1', '', 1), (1, 6, 'dskMount', '/', '/dev/mapper/vg_opcacticentos6-lv_root', '', 1), (1, 6, 'dskMount', '/boot', '/dev/sda1', '', 1) ON DUPLICATE KEY UPDATE field_value=VALUES(field_value), oid=VALUES(oid), present=VALUES(present);
DELETE FROM host_snmp_cache WHERE host_id='1' AND snmp_query_id='6' AND present='0';
update host_snmp_query set sort_field = 'dskDevice', title_format = '|query_dskDevice|' where host_id = '1' and snmp_query_id = '6';
delete from version;
insert into version (cacti) values ('0.8.8a');
