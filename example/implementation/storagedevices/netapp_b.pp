class cacti::implementation::storagedevices::netapp_b {

  cacti_add_device {
    'NetApp b':
      ip          => '192.168.1.61',
      template    => 'Network Appliance Filer',
      snmpversion  => '2',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'NetApp b':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'header',
      require    => Cacti_add_tree['Storage Devices'];
  }

  cacti_add_graph {
    'NetApp b - Cache Age':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'NetApp - Cache Age',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Cache Age':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Cache Age']];
  }

  cacti_add_graph {
    'NetApp b - NetApp - CIFS Ops':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'Netapp - CIFS Ops',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - NetApp - CIFS Ops':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - NetApp - CIFS Ops']];
  }

  cacti_add_graph {
    'NetApp b - NetApp - NFS Ops':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'NetApp - NFS Ops',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - NetApp - NFS Ops':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - NetApp - NFS Ops']];
  }

  cacti_add_graph {
    'NetApp b - NetApp CPU % Busy':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU % Busy',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - NetApp CPU % Busy':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - NetApp CPU % Busy']];
  }

  cacti_add_graph {
    'NetApp b - CPU Interrupts':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU Interrupts',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - CPU Interrupts':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - CPU Interrupts']];
  }

  cacti_add_graph {
    'NetApp b - CPU Usage':
      device     => 'NetApp b',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU Usage',
      require       => Cacti_add_device['NetApp b'];

  }

  cacti_add_tree {
    'NetApp b - CPU Usage':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - CPU Usage']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - 192.168.0.61 (e0P)':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - 192.168.0.61 (e0P)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - 192.168.0.61 (e0P)']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - e0a/2':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - e0a/2':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - e0a/2']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - e0b/3':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '3',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - e0b/3':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - e0b/3']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - e0c/4':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '4',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - e0c/4':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - e0c/4']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - e0d/5':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '5',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - e0d/5':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - e0d/5']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - 127.0.0.1 (lo)':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '6',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - 127.0.0.1 (lo)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - 127.0.0.1 (lo)']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - vh/7':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '7',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - vh/7':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - vh/7']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - 127.0.20.1 (losk)':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '8',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - 127.0.20.1 (losk)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - 127.0.20.1 (losk)']];
  }

  cacti_add_graph {
    'NetApp b - Traffic - 192.168.1.61 (vif0)':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '9',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Traffic - 192.168.1.61 (vif0)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Traffic - 192.168.1.61 (vif0)']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - aggr0':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - aggr0':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - aggr0']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - aggr0/.snapshot':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - aggr0/.snapshot':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - aggr0/.snapshot']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - /vol/root/':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '3',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - /vol/root/':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - /vol/root/']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - /vol/root/.snap':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '4',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - /vol/root/.snap':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - /vol/root/.snap']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - /vol/opsds01/':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '5',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - /vol/opsds01/':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - /vol/opsds01/']];
  }

  cacti_add_graph {
    'NetApp b - Volume Usage - /vol/opsds01/..':
      device     => 'NetApp b',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '6',
      require       => Cacti_add_device['NetApp b'];
  }

  cacti_add_tree {
    'NetApp b - Volume Usage - /vol/opsds01/..':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp b',
      require    => [Cacti_add_tree['NetApp b'], Cacti_add_graph['NetApp b - Volume Usage - /vol/opsds01/..']];
  }

}
