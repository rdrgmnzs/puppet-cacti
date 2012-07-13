class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_33_to_gi2_0_40 {

  cacti_add_tree {
    'Gi2/0/33 to Gi2/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/33':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10633',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/33':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/33']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/34':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10634',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/34':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/34']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/35':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10635',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/35':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/35']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/36':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10636',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/36':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/36']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/37':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10637',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/37':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/37']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/38':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10638',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/38':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/38']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/39':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10639',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/39':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/39']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/40':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10640',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/33 to Gi2/0/40',
      require    => [Cacti_add_tree['Gi2/0/33 to Gi2/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/40']];
  }

}
