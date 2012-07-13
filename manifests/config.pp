# Class: cacti::config
#
#
#   - This class should not be called directly.      -
#   - To config cacti please call class 'cacti'     -
#
#
class cacti::config
(
  $db_name        = 'cacti',

) inherits cacti::params {

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

  exec{ "cacti-config":
      command     => "/usr/bin/mysql $db_name < /var/www/cacti/cactiConfig.sql",
      logoutput   => true,
      refreshonly => true,
      require     => Service['mysqld'];
  }

  #This is executed to deal with a problem with cacti 8.8.a where the poller cache is not built.
  exec{ "rebuild_poller_cache":
      command     => "/usr/bin/php /var/www/cacti/cli/rebuild_poller_cache.php",
      logoutput   => true,
      refreshonly => true,
  }

} # class cacti::config
