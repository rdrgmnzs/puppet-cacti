class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_9_to_gi2_0_16 {

  cacti_add_tree {
    'Gi2/0/9 to Gi2/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/9':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10609',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/9':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/9']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/10':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10610',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/10':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/10']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/11':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10611',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/11':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/11']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/12':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10612',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/12':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/12']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/13':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10613',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/13':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/13']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/14':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10614',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/14':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/14']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/15':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10615',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/15':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/15']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/16':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10616',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/16':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/9 to Gi2/0/16',
      require    => [Cacti_add_tree['Gi2/0/9 to Gi2/0/16'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/16']];
  }

}
