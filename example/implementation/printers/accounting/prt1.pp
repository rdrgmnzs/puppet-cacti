class cacti::implementation::printers::accounting::prt1 {

  cacti_add_device {
    'Accounting prt1':
      ip          => '192.168.1.20',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Accounting prt1':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Accounting',
      require    => Cacti_add_tree['Accounting'];
  }

  cacti_add_graph {
    'Accounting prt1 - Total printed pages':
      device     => 'Accounting prt1',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Accounting prt1'];
  }

  cacti_add_tree {
    'Accounting prt1 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt1',
      require    => [Cacti_add_tree['Accounting prt1'], Cacti_add_graph['Accounting prt1 - Total printed pages']];
  }

  cacti_add_graph {
    'Accounting prt1 - Used Level - Black Toner':
      device     => 'Accounting prt1',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Toner',
      require       => Cacti_add_device['Accounting prt1'];
  }

  cacti_add_tree {
    'Accounting prt1 - Used Level - Black Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt1',
      require    => [Cacti_add_tree['Accounting prt1'], Cacti_add_graph['Accounting prt1 - Used Level - Black Toner']];
  }

  cacti_add_graph {
    'Accounting prt1 - Used Level - Maintenance Kit':
      device     => 'Accounting prt1',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Maintenance Kit',
      require       => Cacti_add_device['Accounting prt1'];
  }

  cacti_add_tree {
    'Accounting prt1 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt1',
      require    => [Cacti_add_tree['Accounting prt1'], Cacti_add_graph['Accounting prt1 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Accounting prt1 - Traffic - 192.168.1.20 (eth0)':
      device     => 'Accounting prt1',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Accounting prt1'];
  }

  cacti_add_tree {
    'Accounting prt1 - Traffic - 192.168.1.20 (eth0)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting prt1',
      require    => [Cacti_add_tree['Accounting prt1'], Cacti_add_graph['Accounting prt1 - Traffic - 192.168.1.20 (eth0)']];
  }
}
