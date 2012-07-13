class cacti::implementation::printers::accounting::prt2 {

  cacti_add_device {
    'Accounting prt2':
      ip          => '192.168.1.21',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Accounting prt2':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Accounting',
      require    => Cacti_add_tree['Accounting'];
  }

  cacti_add_graph {
    'Accounting prt2 - Total printed pages':
      device     => 'Accounting prt2',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Accounting prt2'];
  }

  cacti_add_tree {
    'Accounting prt2 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt2',
      require    => [Cacti_add_tree['Accounting prt2'], Cacti_add_graph['Accounting prt2 - Total printed pages']];
  }

  cacti_add_graph {
    'Accounting prt2 - Used Level - Black Cartridge':
      device     => 'Accounting prt2',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['Accounting prt2'];
  }

  cacti_add_tree {
    'Accounting prt2 - Used Level - Black Cartridge':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt2',
      require    => [Cacti_add_tree['Accounting prt2'], Cacti_add_graph['Accounting prt2 - Used Level - Black Cartridge']];
  }

  cacti_add_graph {
    'Accounting prt2 - Used Level - Maintenance Kit':
      device     => 'Accounting prt2',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '0',
      require       => Cacti_add_device['Accounting prt2'];
  }

  cacti_add_tree {
    'Accounting prt2 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt2',
      require    => [Cacti_add_tree['Accounting prt2'], Cacti_add_graph['Accounting prt2 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Accounting prt2 - Traffic - 192.168.1.21 (HP ETHERNET MUL)':
      device     => 'Accounting prt2',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Accounting prt2'];
  }

  cacti_add_tree {
    'Accounting prt2 - Traffic - 192.168.1.21 (HP ETHERNET MUL)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt2',
      require    => [Cacti_add_tree['Accounting prt2'], Cacti_add_graph['Accounting prt2 - Traffic - 192.168.1.21 (HP ETHERNET MUL)']];
  }

}
