class cacti::implementation::networkingdevices::barracuda_ng_firewall_f300 {

  cacti_add_device {
    'Barracuda NG Firewall F300':
      ip          => '192.168.1.1',
      template    => 'Barracuda NG Firewall SNMP',
      snmpversion  => '3',
      snmpusername => 'user',
      snmppassword => 'pass321',
      snmpauthproto => 'SHA',
      snmpprivpass  => 'privPass0987',
      snmpprivproto => 'AES',
      require     => Cacti::Import_templates['cacti_host_template_barracuda_ng_firewall_snmp.xml'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'header',
      require    => Cacti_add_tree['Networking Devices'];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - CPU Usage':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'cg',
      graphtemplate => 'ucd/net - CPU Usage',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - CPU Usage':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - CPU Usage']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Load Average':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'cg',
      graphtemplate => 'ucd/net - Load Average',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Load Average':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Load Average']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Memory Usage':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'cg',
      graphtemplate => 'ucd/net - Memory Usage',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Memory Usage':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Memory Usage']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port1':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port1',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port1']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port1':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port1',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port1':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port1']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port2':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port2',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port2']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port2':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port2',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port2':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port2']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port3':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port3',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port3']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port3':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port3',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port3':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port3']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port4':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port4',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port4':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port4']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port4':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port4',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port4':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port4']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port5':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port5',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port5':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port5']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port5':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port5',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port5':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port5']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port6':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port6',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port6':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port6']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port6':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port6',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port6':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port6']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port7':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port7',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port7':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port7']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port7':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port7',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port7':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port7']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Inbound Traffic - port8':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Inbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Inbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port8',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Inbound Traffic - port8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Inbound Traffic - port8']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - Outbound Traffic - port8':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Interface - Outbound Traffic (bits/sec)',
      snmpquery => 'Barracuda - SNMP - Interface Statistics',
      snmpquerytype => 'Outbound Traffic',
      snmpfield     => 'ifName',
      snmpvalue     => 'port8',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - Outbound Traffic - port8':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - Outbound Traffic - port8']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - /':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Storage',
      snmpquery => 'Barracuda - SNMP - Memory and Storage Statistics',
      snmpquerytype => 'Barracuda NG Firewall Storage and Memory',
      snmpfield     => 'hrStorageIndex',
      snmpvalue     => '31',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - /':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - /']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - /art':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Storage',
      snmpquery => 'Barracuda - SNMP - Memory and Storage Statistics',
      snmpquerytype => 'Barracuda NG Firewall Storage and Memory',
      snmpfield     => 'hrStorageIndex',
      snmpvalue     => '35',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - /art':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - /art']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - /phion0':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Storage',
      snmpquery => 'Barracuda - SNMP - Memory and Storage Statistics',
      snmpquerytype => 'Barracuda NG Firewall Storage and Memory',
      snmpfield     => 'hrStorageIndex',
      snmpvalue     => '36',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - /phion0':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - /phion0']];
  }

  cacti_add_graph {
    'Barracuda NG Firewall F300 - /boot':
      device     => 'Barracuda NG Firewall F300',
      graphtype => 'ds',
      graphtemplate => 'Barracuda NG Firewall Storage',
      snmpquery => 'Barracuda - SNMP - Memory and Storage Statistics',
      snmpquerytype => 'Barracuda NG Firewall Storage and Memory',
      snmpfield     => 'hrStorageIndex',
      snmpvalue     => '37',
      require       => Cacti_add_device['Barracuda NG Firewall F300'];
  }

  cacti_add_tree {
    'Barracuda NG Firewall F300 - /boot':
      type       => 'node',
      tree       => 'Networking Devices',
      nodetype   => 'graph',
      parentnode => 'Barracuda NG Firewall F300',
      require    => [Cacti_add_tree['Barracuda NG Firewall F300'], Cacti_add_graph['Barracuda NG Firewall F300 - /boot']];
  }

}
