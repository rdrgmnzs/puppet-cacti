class cacti::implementation::networkingdevices {

#------------------------------------------------------------------------------------------------------------------------------

# Set up Graph Tree for Networking Devices.
  cacti_add_tree {
    'Networking Devices':
      type         => 'tree',
      require      => Class['cacti'];
  }

#------------------------------------------------------------------------------------------------------------------------------

#******************************************************************************************************************************

# Import needed snmp queries for the device
  cacti::snmp_querie {
    'barracuda_interface.xml':
      require       => File['/var/www/cacti/cacti_templates/'];
    'barracuda_disk.xml':
      require       => File['/var/www/cacti/cacti_templates/'];
  }

# Import the Device templates
  cacti::import_templates {
    'cacti_host_template_barracuda_ng_firewall_snmp.xml':
      directory      => '/var/www/cacti/cacti_templates/',
      user_rras      => '1:2:3:4:5',
      require        => [Class['cacti'], Database['cacti'], Cacti::Snmp_querie['barracuda_interface.xml'], Cacti::Snmp_querie['barracuda_disk.xml']];
  }

#******************************************************************************************************************************

  class { 'cacti::implementation::networkingdevices::barracuda_ng_firewall_f300':
    require => Cacti::Import_templates['cacti_host_template_barracuda_ng_firewall_snmp.xml'];
  }

  
#******************************************************************************************************************************

# Import needed snmp queries for the device
  cacti::snmp_querie {
    'cisco_switch_stack_temp.xml':
      require       => File['/var/www/cacti/cacti_templates/'];
  }

# Import the Device templates
  cacti::import_templates {
    'cacti_host_template_cisco_switch.xml':
      directory      => '/var/www/cacti/cacti_templates/',
      user_rras      => '1:2:3:4:5',
      require        => [Class['cacti'], Cacti::Snmp_querie['cisco_switch_stack_temp.xml']];
  }

#******************************************************************************************************************************

  class { 'cacti::implementation::networkingdevices::3570g_stack':
    require => Cacti::Import_templates['cacti_host_template_cisco_switch.xml'];
  }

}
