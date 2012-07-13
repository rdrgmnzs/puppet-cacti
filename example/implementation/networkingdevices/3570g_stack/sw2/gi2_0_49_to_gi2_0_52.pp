class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_49_to_gi2_0_52 {

  cacti_add_tree {
    'Gi2/0/49 to Gi2/0/52':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/49':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10649',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/49':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/49 to Gi2/0/52',
      require    => [Cacti_add_tree['Gi2/0/49 to Gi2/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/49']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/50':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10650',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/50':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/49 to Gi2/0/52',
      require    => [Cacti_add_tree['Gi2/0/49 to Gi2/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/50']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/51':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10651',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/51':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/49 to Gi2/0/52',
      require    => [Cacti_add_tree['Gi2/0/49 to Gi2/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/51']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/52':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10652',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/52':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/49 to Gi2/0/52',
      require    => [Cacti_add_tree['Gi2/0/49 to Gi2/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/52']];
  }

}
