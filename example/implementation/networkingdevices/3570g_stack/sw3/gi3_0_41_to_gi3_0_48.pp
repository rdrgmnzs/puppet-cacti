class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_41_to_gi3_0_48 {

  cacti_add_tree {
    'Gi3/0/41 to Gi3/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/41':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11141',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/41':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/41']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/42':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11142',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/42':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/42']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/43':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11143',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/43':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/43']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/44':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11144',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/44':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/44']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/45':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11145',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/45':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/45']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/46':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11146',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/46':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/46']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/47':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11147',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/47':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/47']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/48':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11148',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/41 to Gi3/0/48',
      require    => [Cacti_add_tree['Gi3/0/41 to Gi3/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/48']];
  }

}
