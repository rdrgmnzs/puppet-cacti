class cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_33_to_gi1_0_40 {

  cacti_add_tree {
    'Gi1/0/33 to Gi1/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW1',
      require    => Cacti_add_tree['SW1'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/33':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10133',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/33':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/33']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/34':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10134',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/34':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/34']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/35':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10135',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/35':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/35']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/36':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10136',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/36':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/36']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/37':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10137',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/37':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/37']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/38':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10138',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/38':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/38']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/39':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10139',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/39':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/39']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi1/0/40':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10140',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi1/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi1/0/33 to Gi1/0/40',
      require    => [Cacti_add_tree['Gi1/0/33 to Gi1/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi1/0/40']];
  }

}
