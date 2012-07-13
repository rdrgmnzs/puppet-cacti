class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_41_to_gi2_0_48 {

  cacti_add_tree {
    'Gi2/0/41 to Gi2/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/41':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10641',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/41':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/41']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/42':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10642',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/42':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/42']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/43':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10643',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/43':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/43']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/44':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10644',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/44':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/44']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/45':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10645',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/45':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/45']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/46':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10646',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/46':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/46']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/47':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10647',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/47':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/47']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/48':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10648',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/48':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/41 to Gi2/0/48',
      require    => [Cacti_add_tree['Gi2/0/41 to Gi2/0/48'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/48']];
  }

}
