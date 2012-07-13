class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_9_to_gi3_0_16 {

  cacti_add_tree {
    'Gi3/0/9 to Gi3/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/9':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11109',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/9':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/9']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/10':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11110',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/10':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/10']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/11':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11111',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/11':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/11']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/12':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11112',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/12':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/12']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/13':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11113',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/13':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/13']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/14':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11114',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/14':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/14']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/15':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11115',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/15':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/15']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/16':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11116',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/9 to Gi3/0/16',
      require    => [Cacti_add_tree['Gi3/0/9 to Gi3/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/16']];
  }

}
