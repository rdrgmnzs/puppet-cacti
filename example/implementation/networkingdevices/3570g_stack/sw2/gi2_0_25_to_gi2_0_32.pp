class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_25_to_gi2_0_32 {

  cacti_add_tree {
    'Gi2/0/25 to Gi2/0/32':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/25':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10625',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/25':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/25']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/26':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10626',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/26':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/26']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/27':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10627',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/27':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/27']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/28':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10628',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/28':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/28']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/29':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10629',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/29':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/29']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/30':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10630',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/30':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/30']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/31':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10631',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/31':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/31']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/32':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10632',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/32':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/25 to Gi2/0/32',
      require    => [Cacti_add_tree['Gi2/0/25 to Gi2/0/32'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/32']];
  }

}

