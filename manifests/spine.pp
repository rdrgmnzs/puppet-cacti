# Class: cacti::spine
#
# This module installs spine
# http://www.cacti.net/
#
# Requires:
#   class cacti
#
class cacti::spine
(
  $db_name  = 'cacti'

) inherits cacti::params {

  package {
    $spine:
      require => [ Package[$cacti], Exec["cacti-config"] ],
  } #package

  file {
    $spine_conf:
      source  => $spine_conf_src,
      require => Package[$spine];
    $spine_config_sql:
      source  => $spine_config_sql_src,
      require => Package[$spine];
  } # file

  exec{ "spine-config":
      command     => "/usr/bin/mysql $db_name < $spine_config_sql",
      logoutput   => true,
      refreshonly => true,
      require     => [ Package[$spine], Mysql::Db[$db_name], File[$spine_config_sql] ],
  }

} #class cacti::spine
