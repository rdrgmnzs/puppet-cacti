class cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_49_to_gi3_0_52 {

  cacti_add_tree {
    'Gi3/0/49 to Gi3/0/52':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW3',
      require    => Cacti_add_tree['SW3'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/49':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11149',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/49':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/49 to Gi3/0/52',
      require    => [Cacti_add_tree['Gi3/0/49 to Gi3/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/49']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/50':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11150',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/50':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/49 to Gi3/0/52',
      require    => [Cacti_add_tree['Gi3/0/49 to Gi3/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/50']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/51':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11151',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/51':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/49 to Gi3/0/52',
      require    => [Cacti_add_tree['Gi3/0/49 to Gi3/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/51']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi3/0/52':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '11152',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi3/0/52':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi3/0/49 to Gi3/0/52',
      require    => [Cacti_add_tree['Gi3/0/49 to Gi3/0/52'], Cacti_add_graph['3570G-STACK - Traffic - Gi3/0/52']];
  }

}
