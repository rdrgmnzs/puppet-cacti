class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_33_to_gi3_0_40 {

  cacti_add_tree {
    'Gi3/0/33 to Gi3/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/33':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11133',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/33':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/33']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/34':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11134',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/34':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/34']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/35':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11135',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/35':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/35']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/36':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11136',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/36':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/36']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/37':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11137',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/37':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/37']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/38':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11138',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/38':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/38']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/39':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11139',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/39':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/39']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/40':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11140',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/40':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/33 to Gi3/0/40',
      require    => [Cacti_add_tree['Gi3/0/33 to Gi3/0/40'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/40']];
  }

}
