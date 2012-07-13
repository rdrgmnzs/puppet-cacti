class cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_17_to_gi2_0_24 {

  cacti_add_tree {
    'Gi2/0/17 to Gi2/0/24':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => 'SW2',
      require    => Cacti_add_tree['SW2'];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/17':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10617',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/17':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/17']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/18':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10618',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/18':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/18']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/19':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10619',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/19':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/19']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/20':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10620',
      require       => Cacti_add_device['3570G-STACK'];
  }
  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/20':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/20']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/21':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10621',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/21':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/21']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/22':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10622',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/22':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/22']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/23':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10623',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/23':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/23']];
  }

  cacti_add_graph {
    '3570G-STACK - Traffic - Gi2/0/24':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits (64-bit Counters)',
      snmpfield     => 'ifIndex',
      snmpvalue     => '10624',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - Traffic - Gi2/0/24':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Gi2/0/17 to Gi2/0/24',
      require    => [Cacti_add_tree['Gi2/0/17 to Gi2/0/24'], Cacti_add_graph['3570G-STACK - Traffic - Gi2/0/24']];
  }

}

