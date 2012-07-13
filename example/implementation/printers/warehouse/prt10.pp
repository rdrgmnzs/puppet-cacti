class cacti::implementation::printers::warehouse::prt10 {

  cacti_add_device {
    'Warehouse prt10':
      ip          => '192.168.1.30',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Warehouse prt10':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Warehouse',
      require    => Cacti_add_tree['Warehouse'];
  }

  cacti_add_graph {
    'Warehouse prt10 - Total printed pages':
      device     => 'Warehouse prt10',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Warehouse prt10'];
  }

  cacti_add_tree {
    'Warehouse prt10 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt10',
      require    => [Cacti_add_tree['Warehouse prt10'], Cacti_add_graph['Warehouse prt10 - Total printed pages']];
  }

  cacti_add_graph {
    'Warehouse prt10 - Used Level - Black Toner':
      device     => 'Warehouse prt10',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Toner',
      require       => Cacti_add_device['Warehouse prt10'];
  }

  cacti_add_tree {
    'Warehouse prt10 - Used Level - Black Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt10',
      require    => [Cacti_add_tree['Warehouse prt10'], Cacti_add_graph['Warehouse prt10 - Used Level - Black Toner']];
  }

  cacti_add_graph {
    'Warehouse prt10 - Used Level - Maintenance Kit':
      device     => 'Warehouse prt10',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Maintenance Kit',
      require       => Cacti_add_device['Warehouse prt10'];
  }

  cacti_add_tree {
    'Warehouse prt10 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt10',
      require    => [Cacti_add_tree['Warehouse prt10'], Cacti_add_graph['Warehouse prt10 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Warehouse prt10 - Traffic - 192.168.1.30 (eth0)':
      device     => 'Warehouse prt10',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Warehouse prt10'];
  }

  cacti_add_tree {
    'Warehouse prt10 - Traffic - 192.168.1.30 (eth0)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Warehouse prt10',
      require    => [Cacti_add_tree['Warehouse prt10'], Cacti_add_graph['Warehouse prt10 - Traffic - 192.168.1.30 (eth0)']];
  }

}
