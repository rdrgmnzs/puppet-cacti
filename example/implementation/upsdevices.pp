class cacti::implementation::upsdevices {

#------------------------------------------------------------------------------------------------------------------------------

# Set up Graph Tree for UPS Devices.
  cacti_add_tree {
    'UPS Devices':
      type    => 'tree',
      require        => Class['cacti'];
  }

#------------------------------------------------------------------------------------------------------------------------------

#******************************************************************************************************************************

# Import the Device templates
  cacti::import_templates {
    'cacti_host_template_apc_ups_network_management_card_ap9619.xml':
      directory      => '/var/www/cacti/cacti_templates/',
      user_rras      => '1:2:3:4:5',
      require        => Class['cacti'],
  }

#******************************************************************************************************************************

  class { 'cacti::implementation::upsdevices::apc_ups_network_management_card_ap9619':
    require => Cacti::Import_templates['cacti_host_template_apc_ups_network_management_card_ap9619.xml'];
  }
  
}
