Puppet::Type.type(:cacti_add_graph).provide(:cacti_add_graph) do

  optional_commands :php      => 'php'
  optional_commands :mysql    => 'mysql'

  def create
    hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:device]}\"").match(/.*/)[0]
    templateid = mysql('-NBe', "select id from cacti.graph_templates WHERE name=\"#{@resource[:graphtemplate]}\"").match(/.*/)[0]
   

    if @resource[:graphtype] == :cg
      php('/var/www/cacti/cli/add_graphs.php', "--host-id=#{hostid}", "--graph-type=#{@resource[:graphtype]}", "--graph-template-id=#{templateid}" )
    else
      snmpqueryid = mysql('-NBe', "select id from cacti.snmp_query WHERE name=\"#{@resource[:snmpquery]}\"").match(/.*/)[0]
      snmpquerytypeid= mysql('-NBe', "select id from cacti.snmp_query_graph WHERE name=\"#{@resource[:snmpquerytype]}\"").match(/.*/)[0]

      php('/var/www/cacti/cli/add_graphs.php', "--host-id=#{hostid}", "--graph-type=#{@resource[:graphtype]}", "--graph-template-id=#{templateid}", "--snmp-query-id=#{snmpqueryid}", "--snmp-query-type-id=#{snmpquerytypeid}", "--snmp-field=#{@resource[:snmpfield]}", "--snmp-value=#{@resource[:snmpvalue]}" )
    end
  end

  def destroy
  
  end

  def graphtype
      hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:device]}\"").match(/.*/)[0]
      templateid = mysql('-NBe', "select id from cacti.graph_templates WHERE name=\"#{@resource[:graphtemplate]}\"").match(/.*/)[0] 

      result = mysql('-NBe', "select * from cacti.host_graph WHERE host_id=\"#{hostid}\" and graph_template_id=\"#{templateid}\"").match(/\A[0-9]+/)

      if result == nil
        return :ds
      else
        return :cg
      end
  end

  def graphtype=(value)
  
  end

  def exists?
    begin
    
      hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:device]}\"").match(/.*/)[0]
      templateid = mysql('-NBe', "select id from cacti.graph_templates WHERE name=\"#{@resource[:graphtemplate]}\"").match(/.*/)[0]
 
      if @resource[:graphtype] == :cg 
        mysql('-NBe', "select id from cacti.graph_local WHERE host_id=\"#{hostid}\" and graph_template_id=\"#{templateid}\"").match(/\A[0-9]+/)
      else
        snmpqueryid = mysql('-NBe', "select id from cacti.snmp_query WHERE name=\"#{@resource[:snmpquery]}\"").match(/.*/)[0]

        snmpindex = mysql('-NBe', "select snmp_index from cacti.host_snmp_cache WHERE host_id=\"#{hostid}\" and snmp_query_id=\"#{snmpqueryid}\" and field_name=\"#{@resource[:snmpfield]}\"  and field_value=\"#{@resource[:snmpvalue]}\"").match(/\A[0-9]+/)[0]

        mysql('-NBe', "select id from cacti.graph_local WHERE host_id=\"#{hostid}\" and graph_template_id=\"#{templateid}\" and snmp_index=\"#{snmpindex}\"").match(/\A[0-9]+/)
      end 

    rescue => e
      debug(e.message)
      return nil
    end
  end

end
