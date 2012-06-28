-- ************************** WARNING ********************************
-- File Managed by Puppet
-- Any changes to this file configuration should be done trough puppet
-- other wise configuration will be overwriten on te next puppet pass.
-- *******************************************************************

replace into settings (name,value) values ('path_spine', '/usr/bin/spine');
replace into settings (name,value) values ('poller_type', '2');
