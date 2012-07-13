class cacti::implementation::printers::sales::prt8 { 

  cacti_add_device {
    'Sales prt8':
      ip          => '192.168.1.28',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Sales prt8':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Sales',
      require    => Cacti_add_tree['Sales'];
  }

  cacti_add_graph {
    'Sales prt8 - Total printed pages':
      device     => 'Sales prt8',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Sales prt8'];
  }

  cacti_add_tree {
    'Sales prt8 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Sales prt8',
      require    => [Cacti_add_tree['Sales prt8'], Cacti_add_graph['Sales prt8 - Total printed pages']];
  }

  cacti_add_graph {
    'Sales prt8 - Used Level - Black Cartridge':
      device     => 'Sales prt8',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Cartridge HP CE505X',
      require       => Cacti_add_device['Sales prt8'];
  }

  cacti_add_tree {
    'Sales prt8 - Used Level - Black Cartridge':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Sales prt8',
      require    => [Cacti_add_tree['Sales prt8'], Cacti_add_graph['Sales prt8 - Used Level - Black Cartridge']];
  }

  cacti_add_graph {
    'Sales prt8 - Traffic - 192.168.1.28 (HP ETHERNET MUL)':
      device     => 'Sales prt8',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Sales prt8'];
  }

  cacti_add_tree {
    'Sales prt8 - Traffic - 192.168.1.28 (HP ETHERNET MUL)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Sales prt8',
      require    => [Cacti_add_tree['Sales prt8'], Cacti_add_graph['Sales prt8 - Traffic - 192.168.1.28 (HP ETHERNET MUL)']];
  }
}
