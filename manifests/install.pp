# Class: cacti::install
#
# Requires:
#   class apache::php
#   class mysql::server
#
#
#
#   - This class should not be called directly.      -
#   - To install cacti please call class 'cacti'     -
#
#
class cacti::install
(
  $db_name        = 'cacti',
  $db_user        = 'cacti',
  $db_pass        = 'cacti',
  $install_spine  = true

) inherits cacti::params {

  include apache::php
  include mysql::server

  package {
    $apache:
      ensure  => installed;
    $cacti:
      require => [ Package[$snmp_utils], Yumrepo[ "RepoForge" ] ];
    $snmp_utils:;
  } # package

  mysql::db { $db_name:
    user      =>  $db_user,
    password  =>  $db_pass,
    sql       =>  '/var/www/cacti/cacti.sql',
    notify    => [ Exec['cacti-config'],Exec['spine-config'], Exec['rebuild_poller_cache'] ],
  }  # mysql::db

  if $install_spine {
    class {"cacti::spine" :
      db_name       => $db_name,
      require  => [ Package[$cacti], Exec['cacti-config'] ];
    }
  }

} # class cacti::install
