class cacti::implementation::upsdevices::apc_ups_network_management_card_ap9619 {

  cacti_add_device {
    'APC UPS Network Management Card AP9619':
      ip            => '192.168.1.100',
      template      => 'APC UPS Network Management Card AP9619',
      snmpversion   => '3',
      snmpusername  => 'user',
      snmppassword  => 'passWord1245',
      snmpauthproto => 'MD5',
      snmpprivpass  => 'PrivPass$%',
      snmpprivproto => 'DES',
      require       => Cacti::Import_templates['cacti_host_template_apc_ups_network_management_card_ap9619.xml'];
  }

    cacti_add_tree {
    'APC UPS Network Management Card AP9619':
      type       => 'node',
      tree       => 'UPS Devices',
      nodetype   => 'header',
      require    => Cacti_add_tree['UPS Devices'];
  }

  cacti_add_graph {
    'APC UPS Network Management Card AP9619 - APC Environmental Management System':
      device        => 'APC UPS Network Management Card AP9619',
      graphtype     => 'cg',
      graphtemplate => 'APC Environmental Management System (Single Probe)',
      require       => Cacti_add_device['APC UPS Network Management Card AP9619'];
  }

  cacti_add_tree {
    'APC UPS Network Management Card AP9619 - APC Environmental Management System':
      type       => 'node',
      tree       => 'UPS Devices',
      nodetype   => 'graph',
      parentnode => 'APC UPS Network Management Card AP9619',
      require    => [Cacti_add_tree['APC UPS Network Management Card AP9619'], Cacti_add_graph['APC UPS Network Management Card AP9619 - APC Environmental Management System']];
  }

  cacti_add_graph {
    'APC UPS Network Management Card AP9619 - Traffic - 192.168.1.100 (lance)':
      device        => 'APC UPS Network Management Card AP9619',
      graphtype     => 'ds',
      graphtemplate => 'Interface - Traffic (bits/sec)',
      snmpquery     => 'SNMP - Interface Statistics',
      snmpquerytype => 'In/Out Bits',
      snmpfield     => 'ifIndex',
      snmpvalue     => '2',
      require       => Cacti_add_device['APC UPS Network Management Card AP9619'];
  }

  cacti_add_tree {
    'APC UPS Network Management Card AP9619 - Traffic - 192.168.1.100 (lance)':
      type       => 'node',
      tree       => 'UPS Devices',
      nodetype   => 'graph',
      parentnode => 'APC UPS Network Management Card AP9619',
      require    => [Cacti_add_tree['APC UPS Network Management Card AP9619'], Cacti_add_graph['APC UPS Network Management Card AP9619 - Traffic - 192.168.1.100 (lance)']];
  }

}
