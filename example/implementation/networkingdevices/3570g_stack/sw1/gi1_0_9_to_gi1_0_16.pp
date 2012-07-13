class cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_9_to_gi1_0_16 {

  cacti_add_tree {
    'Gi1/0/9 to Gi1/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW1',
      require    => Cacti_add_tree['SW1'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/9':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10109',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/9':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/9']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/10':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10110',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/10':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/10']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/11':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10111',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/11':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/11']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/12':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10112',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/12':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/12']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/13':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10113',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/13':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/13']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/14':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10114',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/14':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/14']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/15':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10115',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/15':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/15']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/16':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10116',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/9 to Gi1/0/16',
      require    => [Cacti_add_tree['Gi1/0/9 to Gi1/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/16']];
  }

}
