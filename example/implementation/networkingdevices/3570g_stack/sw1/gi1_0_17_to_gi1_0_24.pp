class cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_17_to_gi1_0_24 {

  cacti_add_tree {
    'Gi1/0/17 to Gi1/0/24':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW1',
      require    => Cacti_add_tree['SW1'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/17':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10117',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/17':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/17']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/18':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10118',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/18':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/18']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/19':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10119',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/19':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/19']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/20':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10120',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/20':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/20']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/21':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10121',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/21':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/21']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/22':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10122',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/22':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/22']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/23':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10123',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/23':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/23']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/24':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10124',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/24':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/17 to Gi1/0/24',
      require    => [Cacti_add_tree['Gi1/0/17 to Gi1/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/24']];
  }

}

