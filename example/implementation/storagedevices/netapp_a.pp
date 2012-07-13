class cacti::implementation::storagedevices::netapp_a {

  cacti_add_device {
    'NetApp a':
      ip          => '192.168.1.60',
      template    => 'Network Appliance Filer',
      snmpversion  => '2',
      require     => Cacti::Import_templates['cacti_host_template_snmp_printer.xml'];
  }

  cacti_add_tree {
    'NetApp a':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'header',
      require    => Cacti_add_tree['Storage Devices'];
  }

  cacti_add_graph {
    'NetApp a - Cache Age':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'NetApp - Cache Age',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Cache Age':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Cache Age']];
  }

  cacti_add_graph {
    'NetApp a - NetApp - CIFS Ops':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'Netapp - CIFS Ops',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - NetApp - CIFS Ops':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - NetApp - CIFS Ops']];
  }

  cacti_add_graph {
    'NetApp a - NetApp - NFS Ops':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'NetApp - NFS Ops',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - NetApp - NFS Ops':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - NetApp - NFS Ops']];
  }

  cacti_add_graph {
    'NetApp a - NetApp CPU % Busy':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU % Busy',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - NetApp CPU % Busy':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - NetApp CPU % Busy']];
  }

  cacti_add_graph {
    'NetApp a - CPU Interrupts':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU Interrupts',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - CPU Interrupts':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - CPU Interrupts']];
  }

  cacti_add_graph {
    'NetApp a - CPU Usage':
      device     => 'NetApp a',
      graphtype => 'cg',
      graphtemplate => 'NetApp - CPU Usage',
      require       => Cacti_add_device['NetApp a'];

  }

  cacti_add_tree {
    'NetApp a - CPU Usage':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - CPU Usage']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - 192.168.1.70 (e0P)':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - 192.168.1.70 (e0P)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - 192.168.1.70 (e0P)']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - e0a/2':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - e0a/2':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - e0a/2']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - e0b/3':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '3',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - e0b/3':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - e0b/3']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - e0c/4':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '4',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - e0c/4':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - e0c/4']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - e0d/5':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '5',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - e0d/5':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - e0d/5']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - 127.0.0.1 (lo)':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '6',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - 127.0.0.1 (lo)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - 127.0.0.1 (lo)']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - vh/7':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '7',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - vh/7':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - vh/7']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - 127.0.20.1 (losk)':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '8',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - 127.0.20.1 (losk)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - 127.0.20.1 (losk)']];
  }

  cacti_add_graph {
    'NetApp a - Traffic - 192.168.1.60 (vif0)':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '9',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Traffic - 192.168.1.60 (vif0)':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Traffic - 192.168.1.60 (vif0)']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - aggr0':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '1',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - aggr0':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - aggr0']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - aggr0/.snapshot':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - aggr0/.snapshot':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - aggr0/.snapshot']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - /vol/root/':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '3',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - /vol/root/':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - /vol/root/']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - /vol/root/.snap':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '4',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - /vol/root/.snap':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - /vol/root/.snap']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - /vol/opsds01/':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '5',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - /vol/opsds01/':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - /vol/opsds01/']];
  }

  cacti_add_graph {
    'NetApp a - Volume Usage - /vol/opsds01/..':
      device     => 'NetApp a',
      graphtype => 'ds',
      graphtemplate => 'NetApp - Storage Volume Usage',
      snmpquery => 'NetApp - Volume Stats',
      snmpquerytype => 'NetApp Volstats',
      snmpfield     => 'dfIndex',
      snmpvalue     => '6',
      require       => Cacti_add_device['NetApp a'];
  }

  cacti_add_tree {
    'NetApp a - Volume Usage - /vol/opsds01/..':
      type       => 'node',
      tree       => 'Storage Devices',
      nodetype   => 'graph',
      parentnode => 'NetApp a',
      require    => [Cacti_add_tree['NetApp a'], Cacti_add_graph['NetApp a - Volume Usage - /vol/opsds01/..']];
  }

}
