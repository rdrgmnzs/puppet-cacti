# Class: cacti
#
# This module manages cacti
# http://www.cacti.net/
#
# Requires:
#   class apache::php
#   class mysql::server
#
class cacti {
    
  include apache::php
  include mysql::server
 
  package {
    'httpd':
      ensure  => installed,
      name    => $apache::params::apache_name;
    "cacti":
      require => [ Package["net-snmp-utils"], Yumrepo[ "Repoforge" ] ];
    "cacti-spine":
      require => Package["cacti"];
    "net-snmp-utils":;
  } # package
    
  service { 
    'httpd':
      ensure    => running,
      name      => $apache::params::apache_name,
      enable    => true;
    'crond':
      ensure    => running,
      enable    => true;
  } # service

  file {
    "/var/www/cacti/":
      require => [ Package["cacti"], Package["httpd"] ],
      recurse => true,
      owner   => "apache",
      group   => "apache";
    "/var/www/cacti/include/config.php":
      source  => "puppet:///modules/cacti/config.php",
      require => [ Package["cacti"], Package["httpd"] ],
      owner   => "apache",
      group   => "apache",
      mode    => 640;
    "/etc/php.ini":
      source  => "puppet:///modules/cacti/php.ini",
      require => Package["httpd"];
    "/etc/httpd/conf.d/cacti.conf":
      source  => "puppet:///modules/cacti/cacti.conf",
      notify  => Service["httpd"],
      require => Package["httpd"];
    "/etc/spine.conf":
      source  => "puppet:///modules/cacti/spine.conf",
      require => Package["cacti-spine"];
    "/etc/cron.d/cacti":
      content => "*/5 * * * *	apache	php /var/www/cacti/poller.php &>/dev/null\n",
      require => Package["cacti"],
      notify  => Service["crond"], 
      mode    => 644;
    "/var/www/cacti/cactiConfig.sql":
      source  => "puppet:///modules/cacti/cactiConfig.sql",
      require => Package["cacti"];
  } # file
 
  mysql::db { "cacti":
    user      =>  'cacti',
    password  =>  'cacti',
    sql       =>  '/var/www/cacti/cacti.sql',
    notify    => [ Exec['cacti-config'], Exec['rebuild_poller_cache'] ],
  }
  
  exec{ "cacti-config":
      command     => "/usr/bin/mysql cacti < /var/www/cacti/cactiConfig.sql",
      logoutput   => true,
      refreshonly => true,
  }

  #This is executed to deal with a problem with cacti 8.8.a where the poller cache is not built.
  exec{ "rebuild_poller_cache":
      command     => "/usr/bin/php /var/www/cacti/cli/rebuild_poller_cache.php",
      logoutput   => true,
      refreshonly => true,
  }

} # class cacti
