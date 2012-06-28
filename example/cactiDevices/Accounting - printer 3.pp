  cacti_add_device {
    'Accounting - printer 3':
      ip          => '192.168.1.12',
      template    => 'SNMP Printer',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'Accounting - printer 3':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'header',
      parentnode => 'Accounting',
      require    => Cacti_add_tree['Accounting'];
  }

  cacti_add_graph {
    'Accounting - printer 3 - Total printed pages':
      device     => 'Accounting - printer 3',
      graphtype => 'cg',
      graphtemplate => 'Host MIB - Total printed pages',
      require       => Cacti_add_device['Accounting - printer 3'];
  }

  cacti_add_tree {
    'Accounting - printer 3 - Total printed pages':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting - printer 3',
      require    => [Cacti_add_tree['Accounting - printer 3'], Cacti_add_graph['Accounting - printer 3 - Total printed pages']];
  }

  cacti_add_graph {
    'Accounting - printer 3 - Used Level - Black Cartridge':
      device     => 'Accounting - printer 3',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['Accounting - printer 3'];
  }

  cacti_add_tree {
    'Accounting - printer 3 - Used Level - Black Cartridge':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting - printer 3',
      require    => [Cacti_add_tree['Accounting - printer 3'], Cacti_add_graph['Accounting - printer 3 - Used Level - Black Cartridge']];
  }

  cacti_add_graph {
    'Accounting - printer 3 - Used Level - Maintenance Kit':
      device     => 'Accounting - printer 3',
      graphtype => 'ds',
      graphtemplate => 'Host MIB - Available Printer Supply',
      snmpquery => 'SNMP - Get Printer Supply',
      snmpquerytype => 'Available Printer Supply',
      snmpfield     => 'prtMarkersSupplyIndex',
      snmpvalue     => '0',
      require       => Cacti_add_device['Accounting - printer 3'];
  }

  cacti_add_tree {
    'Accounting - printer 3 - Used Level - Maintenance Kit':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting - printer 3',
      require    => [Cacti_add_tree['Accounting - printer 3'], Cacti_add_graph['Accounting - printer 3 - Used Level - Maintenance Kit']];
  }

  cacti_add_graph {
    'Accounting - printer 3 - Traffic - 192.168.1.53 (HP ETHERNET MUL)':
      device     => 'Accounting - printer 3',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['Accounting - printer 3'];
  }

  cacti_add_tree {
    'Accounting - printer 3 - Traffic - 192.168.1.53 (HP ETHERNET MUL)':
      type       => 'node',
      tree       => 'Printers',
      nodetype   => 'graph',
      parentnode => 'Accounting - printer 3',
      require    => [Cacti_add_tree['Accounting - printer 3'], Cacti_add_graph['Accounting - printer 3 - Traffic - 192.168.1.53 (HP ETHERNET MUL)']];
  }
