node 'cacti.domain.local' {
  include concat::setup
  include 'puppet'
  include 'cacti'

  #############################################################################################
  #                                                                                           #
  #                Location where templates will be stored for import                         #
  #                                                                                           #
  #############################################################################################

  file {
    "/var/www/cacti/cacti_templates/":
    ensure => directory,
  }

  #############################################################################################
  #                                                                                           #
  #                                          Printers                                         #
  #                                                                                           #
  #############################################################################################
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

  # Set up Graph Tree for printers.
  cacti_add_tree {
    'Printers':
      type    => 'tree',
      require        => Class['cacti'];
  }

  # The configuration for each device is store in it's own file for ease of management.
  
  cacti_add_tree {
  'Accounting':
    type       => 'node',
    tree       => 'Printers',
    nodetype   => 'header',
    require    => Cacti_add_tree['Printers'];
  }

  import 'cactiDevices/Accounting - printer 1.pp'
  import 'cactiDevices/Accounting - printer 2.pp'
  import 'cactiDevices/Accounting - printer 3.pp'

}
