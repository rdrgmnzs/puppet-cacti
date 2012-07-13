class cacti::implementation::networkingdevices::3570g_stack {

  cacti_add_device {
    '3570G-STACK':
      ip          => '192.168.1.10',
      template    => 'Cisco Switch',
      snmpversion  => '3',
      snmpusername => 'user',
      snmppassword => 'pass12345',
      snmpauthproto => 'MD5',
      require     => Cacti::Import_templates['cacti_host_template_cisco_switch.xml'];
  }

    cacti_add_tree {
    '3570G-STACK':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      require    => Cacti_add_tree['Networking Devices'];
  }

  cacti_add_graph {
    '3570G-STACK - CPU Usage':
      device     => '3570G-STACK',
      graphtype => 'cg',
      graphtemplate => 'Cisco - CPU Usage',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - CPU Usage':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => '3570G-STACK',
      require    => [Cacti_add_tree['3570G-STACK'], Cacti_add_graph['3570G-STACK - CPU Usage']];
  }

  cacti_add_graph {
    '3570G-STACK - SW#1, Sensor#1,':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Cisco - Switch Stack Temp',
      snmpquery => 'Cisco Switch Stack Temp',
      snmpquerytype => 'Cisco - Switch Stack Temperature',
      snmpfield     => 'vsIndex',
      snmpvalue     => '1005',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - SW#1, Sensor#1,':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => '3570G-STACK',
      require    => [Cacti_add_tree['3570G-STACK'], Cacti_add_graph['3570G-STACK - SW#1, Sensor#1,']];
  }

  cacti_add_graph {
    '3570G-STACK - SW#2, Sensor#1,':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Cisco - Switch Stack Temp',
      snmpquery => 'Cisco Switch Stack Temp',
      snmpquerytype => 'Cisco - Switch Stack Temperature',
      snmpfield     => 'vsIndex',
      snmpvalue     => '2005',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - SW#2, Sensor#1,':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => '3570G-STACK',
      require    => [Cacti_add_tree['3570G-STACK'], Cacti_add_graph['3570G-STACK - SW#2, Sensor#1,']];
  }

  cacti_add_graph {
    '3570G-STACK - SW#3, Sensor#1,':
      device     => '3570G-STACK',
      graphtype => 'ds',
      graphtemplate => 'Cisco - Switch Stack Temp',
      snmpquery => 'Cisco Switch Stack Temp',
      snmpquerytype => 'Cisco - Switch Stack Temperature',
      snmpfield     => 'vsIndex',
      snmpvalue     => '3005',
      require       => Cacti_add_device['3570G-STACK'];
  }

  cacti_add_tree {
    '3570G-STACK - SW#3, Sensor#1,':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => '3570G-STACK',
      require    => [Cacti_add_tree['3570G-STACK'], Cacti_add_graph['3570G-STACK - SW#3, Sensor#1,']];
  }

  cacti_add_tree {
    'SW1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => '3570G-STACK',
      require    => Cacti_add_tree['3570G-STACK'];
  }

  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_1_to_gi1_0_8
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_9_to_gi1_0_16
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_17_to_gi1_0_24
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_25_to_gi1_0_32
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_33_to_gi1_0_40
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_41_to_gi1_0_48
  include cacti::implementation::networkingdevices::3570g_stack::sw1::gi1_0_49_to_gi1_0_52

  cacti_add_tree {
    'SW2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => '3570G-STACK',
      require    => Cacti_add_tree['3570G-STACK'];
  }

  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_1_to_gi2_0_8
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_9_to_gi2_0_16
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_17_to_gi2_0_24
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_25_to_gi2_0_32
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_33_to_gi2_0_40
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_41_to_gi2_0_48
  include cacti::implementation::networkingdevices::3570g_stack::sw2::gi2_0_49_to_gi2_0_52

  cacti_add_tree {
    'SW3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      parentnode => '3570G-STACK',
      require    => Cacti_add_tree['3570G-STACK'];
  }

  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_1_to_gi3_0_8
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_9_to_gi3_0_16
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_17_to_gi3_0_24
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_25_to_gi3_0_32
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_33_to_gi3_0_40
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_41_to_gi3_0_48
  include cacti::implementation::networkingdevices::3570g_stack::sw3::gi3_0_49_to_gi3_0_52

  include cacti::implementation::networkingdevices::3570g_stack::vlan

}
