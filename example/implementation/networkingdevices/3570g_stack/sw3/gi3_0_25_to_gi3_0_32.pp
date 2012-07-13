class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_25_to_gi3_0_32 {

  cacti_add_tree {
    'Gi3/0/25 to Gi3/0/32':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/25':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11125',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/25':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/25']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/26':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11126',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/26':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/26']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/27':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11127',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/27':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/27']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/28':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11128',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/28':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/28']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/29':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11129',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/29':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/29']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/30':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11130',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/30':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/30']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/31':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11131',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/31':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/31']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/32':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11132',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/32':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/25 to Gi3/0/32',
      require    => [Cacti_add_tree['Gi3/0/25 to Gi3/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/32']];
  }

}

