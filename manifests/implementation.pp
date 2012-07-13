# Class: cacti::implementation
#
# This module manages cacti
# http://www.cacti.net/
#
class cacti::implementation {
  
    #############################################################################################
  #                                                                                           #
  #                Location where templates will be stored for import                         #
  #                                                                                           #
  #############################################################################################

  file {
    "/var/www/cacti/cacti_templates/":
    ensure => directory,
  }


} # class cacti::implementation
