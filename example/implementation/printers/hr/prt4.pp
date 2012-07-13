class cacti::implementation::printers::hr::prt4 {

  cacti_add_device {
    'HR prt4':
      ip          => '192.168.1.24',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'HR prt4':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'HR',
      require    => Cacti_add_tree['HR'];
  }

  cacti_add_graph {
    'HR prt4 - Total printed pages':
      device     => 'HR prt4',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['HR prt4'];
  }

  cacti_add_tree {
    'HR prt4 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'HR prt4',
      require    => [Cacti_add_tree['HR prt4'], Cacti_add_graph['HR prt4 - Total printed pages']];
  }

  cacti_add_graph {
    'HR prt4 - Used Level - Black Toner':
      device     => 'HR prt4',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Black Toner',
      require       => Cacti_add_device['HR prt4'];
  }

  cacti_add_tree {
    'HR prt4 - Used Level - Black Toner':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'HR prt4',
      require    => [Cacti_add_tree['HR prt4'], Cacti_add_graph['HR prt4 - Used Level - Black Toner']];
  }

  cacti_add_graph {
    'HR prt4 - Used Level - Maintenance Kit':
      device     => 'HR prt4',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyDesc',
      snmpvalue     => 'Maintenance Kit',
      require       => Cacti_add_device['HR prt4'];
  } 
      
  cacti_add_tree { 
    'HR prt4 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'HR prt4',
      require    => [Cacti_add_tree['HR prt4'], Cacti_add_graph['HR prt4 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'HR prt4 - Traffic - 192.168.1.24 (eth0)':
      device     => 'HR prt4',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['HR prt4'];
  } 
      
  cacti_add_tree { 
    'HR prt4 - Traffic - 192.168.1.24 (eth0)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'HR prt4',
      require    => [Cacti_add_tree['HR prt4'], Cacti_add_graph['HR prt4 - Traffic - 192.168.1.24 (eth0)']];
  }

}
