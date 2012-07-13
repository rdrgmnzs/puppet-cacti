class cacti::implementation::printers {

#------------------------------------------------------------------------------------------------------------------------------

  # Set up Graph Tree for printers.
  cacti_add_tree {
    'Printers':
      type    => 'tree',
      require        => Class['cacti'];
  }
#------------------------------------------------------------------------------------------------------------------------------

#******************************************************************************************************************************

  cacti::snmp_querie {
    'printer_supply.xml':
      require       => File['/var/www/cacti/cacti_templates/'];
  }

  cacti::import_templates {
    'cacti_host_template_snmp_printer.xml':
      directory      => '/var/www/cacti/cacti_templates/',
      user_rras      => '1:2:3:4:5',
      require        => [Class['cacti'], Cacti::Snmp_querie['printer_supply.xml']];
  }
#******************************************************************************************************************************

######################################################### Accounting ########################################################## 

  cacti_add_tree {
  'Accounting':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

###############################################################################################################################

  class { 'cacti::implementation::printers::accounting::prt1':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }
  class { 'cacti::implementation::printers::accounting::prt2':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  } 
  class { 'cacti::implementation::printers::accounting::prt3':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

############################################################## HR #############################################################

  cacti_add_tree {
  'HR':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

###############################################################################################################################

  class { 'cacti::implementation::printers::hr::prt4':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

######################################################### Purchasing ##########################################################

  cacti_add_tree {
  'Purchasing':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

###############################################################################################################################

  class { 'cacti::implementation::printers::purchasing::prt5':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }
  class { 'cacti::implementation::printers::purchasing::prt6':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }
  class { 'cacti::implementation::printers::purchasing::prt7':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

############################################################ Sales ############################################################

  cacti_add_tree {
  'Sales':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

###############################################################################################################################

  class { 'cacti::implementation::printers::sales::prt8':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

######################################################## Warehouse ############################################################

  cacti_add_tree {
  'Warehouse':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

###############################################################################################################################

  class { 'cacti::implementation::printers::warehouse::prt9':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }
  class { 'cacti::implementation::printers::warehouse::prt10':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }
  class { 'cacti::implementation::printers::warehouse::prt11':
    require => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

}
