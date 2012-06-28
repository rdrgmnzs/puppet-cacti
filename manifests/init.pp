# Class: cacti
#
# This module manages cacti
# http://www.cacti.net/
#
# Requires:
#   class apache::php
#   class mysql::server
#
class cacti
(
  $DBname  = 'cacti',
  $DBuser  = 'cacti',
  $DBpass  = 'cacti',
  $installSpine  = true

) inherits cacti::params {
    
  include apache::php
  include mysql::server
 
  package {
    $apache:
      ensure  => installed;
    $cacti:
      require => [ Package[$snmp_utils], Yumrepo[ "RepoForge" ] ];
    #$spine:
    #  require => Package[$cacti ];
    $snmp_utils:;
  } # package
    
  service { 
    $apache:
      ensure    => running,
      enable    => true;
    $cron:
      ensure    => running,
      enable    => true;
  } # service

  file {
    $cacti_dir:
      require => [ Package[$cacti], Package[$apache] ],
      recurse => true,
      owner   => $apache_user,
      group   => $apache_group;
    $config_php:
      source  => $config_php_src,
      require => [ Package[$cacti], Package[$apache] ],
      owner   => $apache_user,
      group   => $apache_group,
      mode    => 640;
    $php_ini:
      source  => $php_ini_src,
      require => Package[$apache];
    $cacti_conf:
      source  => $cacti_conf_src,
      notify  => Service[$apache],
      require => Package[$apache];
    $cron_cacti:
      content => $cron_cacti_content,
      require => Package[$cacti],
      notify  => Service[$cron], 
      mode    => 644;
    $cacti_config_sql:
      source  => $cacti_config_sql_src,
      require => Package[$cacti];
  } # file
 
  mysql::db { $DBname:
    user      =>  $DBuser,
    password  =>  $DBpass,
    sql       =>  '/var/www/cacti/cacti.sql',
    notify    => [ Exec['cacti-config'],Exec['spine-config'], Exec['rebuild_poller_cache'] ],
  }
  
  exec{ "cacti-config":
      command     => "/usr/bin/mysql $DBname < /var/www/cacti/cactiConfig.sql",
      logoutput   => true,
      refreshonly => true,
  }

  if $installSpine {
    class {"cacti::spine" :
      db_name       => $DBname,
      require  => [ Package[$cacti], Exec['cacti-config'] ];
    }
  }

  #This is executed to deal with a problem with cacti 8.8.a where the poller cache is not built.
  exec{ "rebuild_poller_cache":
      command     => "/usr/bin/php /var/www/cacti/cli/rebuild_poller_cache.php",
      logoutput   => true,
      refreshonly => true,
  }

} # class cacti
