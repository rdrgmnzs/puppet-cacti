class cacti::implementation::printers::purchasing::prt5 {

  cacti_add_device {
    'Purchasing prt5':
      ip          => '192.168.1.25',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Purchasing prt5':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Purchasing',
      require    => Cacti_add_tree['Purchasing'];
  }

  cacti_add_graph {
    'Purchasing prt5 - Total printed pages':
      device     => 'Purchasing prt5',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Purchasing prt5'];
  }

  cacti_add_tree {
    'Purchasing prt5 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt5',
      require    => [Cacti_add_tree['Purchasing prt5'], Cacti_add_graph['Purchasing prt5 - Total printed pages']];
  }

  cacti_add_graph {
    'Purchasing prt5 - Used Level - Black Toner':
      device     => 'Purchasing prt5',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Toner',
      require       => Cacti_add_device['Purchasing prt5'];
  }

  cacti_add_tree {
    'Purchasing prt5 - Used Level - Black Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt5',
      require    => [Cacti_add_tree['Purchasing prt5'], Cacti_add_graph['Purchasing prt5 - Used Level - Black Toner']];
  }

  cacti_add_graph {
    'Purchasing prt5 - Used Level - Maintenance Kit':
      device     => 'Purchasing prt5',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Maintenance Kit',
      require       => Cacti_add_device['Purchasing prt5'];
  }

  cacti_add_tree {
    'Purchasing prt5 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt5',
      require    => [Cacti_add_tree['Purchasing prt5'], Cacti_add_graph['Purchasing prt5 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Purchasing prt5 - Traffic - 192.168.1.25 (eth0)':
      device     => 'Purchasing prt5',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Purchasing prt5'];
  }

  cacti_add_tree {
    'Purchasing prt5 - Traffic - 192.168.1.25 (eth0)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt5',
      require    => [Cacti_add_tree['Purchasing prt5'], Cacti_add_graph['Purchasing prt5 - Traffic - 192.168.1.25 (eth0)']];
  }

}
