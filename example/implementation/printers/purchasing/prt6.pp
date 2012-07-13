class cacti::implementation::printers::purchasing::prt6 {
  cacti_add_device {
    'Purchasing prt6':
      ip          => '192.168.1.26',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Purchasing prt6':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Purchasing',
      require    => Cacti_add_tree['Purchasing'];
  }

  cacti_add_graph {
    'Purchasing prt6 - Total printed pages':
      device     => 'Purchasing prt6',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Purchasing prt6'];

  }

  cacti_add_tree {
    'Purchasing prt6 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt6',
      require    => [Cacti_add_tree['Purchasing prt6'], Cacti_add_graph['Purchasing prt6 - Total printed pages']];
  }

  cacti_add_graph {
    'Purchasing prt6 - Used Level - Black Cartridge':
      device     => 'Purchasing prt6',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['Purchasing prt6'];
  }

  cacti_add_tree {
    'Purchasing prt6 - Used Level - Black Cartridge':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt6',
      require    => [Cacti_add_tree['Purchasing prt6'], Cacti_add_graph['Purchasing prt6 - Used Level - Black Cartridge']];
  }

  cacti_add_graph {
    'Purchasing prt6 - Used Level - Maintenance Kit':
      device     => 'Purchasing prt6',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '0',
      require       => Cacti_add_device['Purchasing prt6'];
  }

  cacti_add_tree {
    'Purchasing prt6 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt6',
      require    => [Cacti_add_tree['Purchasing prt6'], Cacti_add_graph['Purchasing prt6 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Purchasing prt6 - Traffic - 192.168.1.26 (HP ETHERNET MUL)':
      device     => 'Purchasing prt6',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Purchasing prt6'];
  }

  cacti_add_tree {
    'Purchasing prt6 - Traffic - 192.168.1.26 (HP ETHERNET MUL)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt6',
      require    => [Cacti_add_tree['Purchasing prt6'], Cacti_add_graph['Purchasing prt6 - Traffic - 192.168.1.26 (HP ETHERNET MUL)']];
  }

}
