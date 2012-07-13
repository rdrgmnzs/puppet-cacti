class cacti::implementation::printers::purchasing::prt7 {

  cacti_add_device {
    'Purchasing prt7':
      ip          => '192.168.1.27',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Purchasing prt7':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Purchasing',
      require    => Cacti_add_tree['Purchasing'];
  }

  cacti_add_graph {
    'Purchasing prt7 - Total printed pages':
      device     => 'Purchasing prt7',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Total printed pages']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Used Level - Black Toner':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Toner',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Used Level - Black Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Used Level - Black Toner']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Used Level - Cyan Toner':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Cyan Toner',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Used Level - Cyan Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Used Level - Cyan Toner']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Used Level - Magenta Toner':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Magenta Toner',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Used Level - Magenta Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Used Level - Magenta Toner']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Used Level - Yellow Toner':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Yellow Toner',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Used Level - Yellow Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Used Level - Yellow Toner']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Used Level - Waste Toner':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Waste Toner',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Used Level - Waste Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Used Level - Waste Toner']];
  }

  cacti_add_graph {
    'Purchasing prt7 - Traffic - mgi0':
      device     => 'Purchasing prt7',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Purchasing prt7'];
  }

  cacti_add_tree {
    'Purchasing prt7 - Traffic - mgi0':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Purchasing prt7',
      require    => [Cacti_add_tree['Purchasing prt7'], Cacti_add_graph['Purchasing prt7 - Traffic - mgi0']];
  }

}
