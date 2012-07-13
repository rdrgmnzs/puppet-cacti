class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_1_to_gi3_0_8 {

  cacti_add_tree {
    'Gi3/0/1 to Gi3/0/8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/1':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11101',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/1']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/2':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11102',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/2']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/3':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11103',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/3']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/4':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11104',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/4':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/4']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/5':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11105',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/5':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/5']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/6':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11106',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/6':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/6']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/7':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11107',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/7':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/7']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/8':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11108',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/1 to Gi3/0/8',
      require    => [Cacti_add_tree['Gi3/0/1 to Gi3/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/8']];
  }

}
