class cacti::implementation::storagedevices {

#------------------------------------------------------------------------------------------------------------------------------

  # Set up Graph Tree for Storage Devices.
  cacti_add_tree {
    'Storage Devices':
      type    => 'tree',
      require        => Class['cacti'];
  }

#------------------------------------------------------------------------------------------------------------------------------

#******************************************************************************************************************************

  cacti::snmp_querie {
    'netapp_volumes.xml':
      require       => File['/var/www/cacti/cacti_templates/'];
  }  

  cacti::import_templates {
    'cacti_host_template_network_appliance_filer.xml':
      directory      => '/var/www/cacti/cacti_templates/',
      user_rras      => '1:2:3:4:5',
      require        => [Class['cacti'], Cacti::Snmp_querie['netapp_volumes.xml']];
  }

#******************************************************************************************************************************

  class { 'cacti::implementation::storagedevices::netapp_a':
   require => Cacti::Import_templates['cacti_host_template_network_appliance_filer.xml'];
  }
  class { 'cacti::implementation::storagedevices::netapp_b':
   require => Cacti::Import_templates['cacti_host_template_network_appliance_filer.xml'];
  }

}
