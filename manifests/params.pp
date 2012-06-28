# Class: cacti::params
#
# This class installs and configures parameters for cacti
#
#  Parameters:
#    
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class cacti::params {
  
  case $operatingsystem {
    'centos', 'redhat', 'fedora': {
      #Users
      $apache_user    = 'apache'
      $apache_group   = 'apache'
      #Package and Services Names
      $cacti          = 'cacti'
      $apache         = 'httpd'
      $snmp_utils     = 'net-snmp-utils'
      $spine          = 'cacti-spine'
      $cron           = 'crond'
      #Directories and Files
      $cacti_dir              = '/var/www/cacti/'
      $config_php             = '/var/www/cacti/include/config.php'
      $config_php_src         = 'puppet:///modules/cacti/redhat/config.php'
      $php_ini                = '/etc/php.ini'
      $php_ini_src            = 'puppet:///modules/cacti/redhat/php.ini'
      $cacti_conf             = '/etc/httpd/conf.d/cacti.conf'
      $cacti_conf_src         = 'puppet:///modules/cacti/redhat/cacti.conf'
      $spine_conf             = '/etc/spine.conf'
      $spine_conf_src         = 'puppet:///modules/cacti/redhat/spine.conf'
      $cron_cacti             = '/etc/cron.d/cacti'
      $cron_cacti_content     = "*/5 * * * *	apache	php /var/www/cacti/poller.php &>/dev/null\n"
      $cacti_config_sql       = '/var/www/cacti/cactiConfig.sql'
      $cacti_config_sql_src   = 'puppet:///modules/cacti/redhat/cactiConfig.sql'
      $spine_config_sql       = '/var/www/cacti/spineConfig.sql'
      $spine_config_sql_src   = 'puppet:///modules/cacti/redhat/spineConfig.sql'
    }
    default: { fail("No such operatingsystem: ${::operatingsystem} yet defined") }
  }

}
