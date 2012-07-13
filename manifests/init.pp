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
  $db_name  = 'cacti',
  $db_user  = 'cacti',
  $db_pass  = 'cacti',
  $install_spine  = true

) inherits cacti::params {
  
  class { 'cacti::install':
    db_name       => $db_name,
    db_user       => $db_user,
    db_pass       => $db_pass,
    install_spine => $install_spine,
  }

  class { 'cacti::config':
    db_name       => $db_name,
    require       => Class['cacti::install'],
  }  

  include cacti::service

  # This if statement should not be here. But for the life of me I could not figure out why the require was not working.
  # After spending more time than I should have on this I decided that to use the if instead and move forward.
  if $database_created {
    class { 'cacti::implementation':
      require => Class['cacti::config'];
    }
  }


} # class cacti
