class cacti::implementation::printers::warehouse::prt9 {

  cacti_add_device {
    'Warehouse prt9':
      ip          => '192.168.1.29',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Warehouse prt9':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Warehouse',
      require    => Cacti_add_tree['Warehouse'];
  }

  cacti_add_graph {
    'Warehouse prt9 - Total printed pages':
      device     => 'Warehouse prt9',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Warehouse prt9'];
  }

  cacti_add_tree {
    'Warehouse prt9 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt9',
      require    => [Cacti_add_tree['Warehouse prt9'], Cacti_add_graph['Warehouse prt9 - Total printed pages']];
  }

  cacti_add_graph {
    'Warehouse prt9 - Used Level - Black Cartridge':
      device     => 'Warehouse prt9',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['Warehouse prt9'];
  }

  cacti_add_tree {
    'Warehouse prt9 - Used Level - Black Cartridge':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt9',
      require    => [Cacti_add_tree['Warehouse prt9'], Cacti_add_graph['Warehouse prt9 - Used Level - Black Cartridge']];
  }

  cacti_add_graph {
    'Warehouse prt9 - Used Level - Maintenance Kit':
      device     => 'Warehouse prt9',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '0',
      require       => Cacti_add_device['Warehouse prt9'];
  }

  cacti_add_tree {
    'Warehouse prt9 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt9',
      require    => [Cacti_add_tree['Warehouse prt9'], Cacti_add_graph['Warehouse prt9 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Warehouse prt9 - Traffic - 192.168.1.29 (HP ETHERNET MUL)':
      device     => 'Warehouse prt9',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Warehouse prt9'];
  }

  cacti_add_tree {
    'Warehouse prt9 - Traffic - 192.168.1.29 (HP ETHERNET MUL)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt9',
      require    => [Cacti_add_tree['Warehouse prt9'], Cacti_add_graph['Warehouse prt9 - Traffic - 192.168.1.29 (HP ETHERNET MUL)']];
  }

}
