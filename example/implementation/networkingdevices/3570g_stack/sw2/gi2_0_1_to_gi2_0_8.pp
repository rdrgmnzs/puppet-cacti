class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_1_to_gi2_0_8 {

  cacti_add_tree {
    'Gi2/0/1 to Gi2/0/8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/1':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10601',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/1']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/2':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10602',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/2']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/3':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10603',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/3']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/4':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10604',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/4':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/4']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/5':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10605',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/5':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/5']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/6':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10606',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/6':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/6']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/7':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10607',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/7':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/7']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/8':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10608',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/1 to Gi2/0/8',
      require    => [Cacti_add_tree['Gi2/0/1 to Gi2/0/8'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/8']];
  }

}
