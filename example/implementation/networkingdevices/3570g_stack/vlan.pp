class cacti::implementation::networkingdevices::3570g_stack::vlan {

  cacti_add_tree {
    'vlan':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => '3570G-STACK',
      require    => Cacti_add_tree['3570G-STACK'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Vl1':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Vl1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'vlan',
      require    => [Cacti_add_tree['vlan'], Cacti_add_graph['3570G-STACK - Traffic - Vl1']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Vl2':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Vl2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'vlan',
      require    => [Cacti_add_tree['vlan'], Cacti_add_graph['3570G-STACK - Traffic - Vl2']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Vl3':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '3',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Vl3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'vlan',
      require    => [Cacti_add_tree['vlan'], Cacti_add_graph['3570G-STACK - Traffic - Vl3']];
  }

}
