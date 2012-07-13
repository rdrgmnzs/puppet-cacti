class cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_41_to_gi1_0_48 {

  cacti_add_tree {
    'Gi1/0/41 to Gi1/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW1',
      require    => Cacti_add_tree['SW1'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/41':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10141',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/41':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/41']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/42':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10142',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/42':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/42']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/43':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10143',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/43':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/43']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/44':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10144',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/44':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/44']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/45':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10145',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/45':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/45']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/46':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10146',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/46':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/46']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/47':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10147',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/47':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/47']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/48':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10148',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/41 to Gi1/0/48',
      require    => [Cacti_add_tree['Gi1/0/41 to Gi1/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/48']];
  }

}
