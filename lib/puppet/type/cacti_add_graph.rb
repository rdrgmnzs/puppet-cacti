Puppet::Type.newtype(:cacti_add_graph) do
  @doc = @doc = <<-EOT
     This module adds graphs for existing cacti hosts.
    
     Parameters:
       name (required)          - The name of the resource
       device (required)          - The name of the host the graph will be added to.
       graphtype (required)     - 'cg' graphs are for things like CPU temp/fan speed, while 
                                  'ds' graphs are for data-source based graphs (interface stats etc.)
       graphtemplate (required) - General information about this host.
    
     Sample Usage:
    
      cacti_add_graph {
        'Host 1 - Graph 1':
          host          => 'host 1',
          graphtype     => 'cg',
          graphtemplate => 'Graph template name';
        'Host 1 - Graph 2':
          host          => 'host 1',
          graphtype     => 'cg',
          graphtemplate => 'Graph 2 template name';
      }
  EOT

  ensurable

  newparam(:name) do
    desc "name - the name of the resource."
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "Failed: A title is required!"
      else
        super
      end
    end
    
  end

  newparam(:device) do
    desc "device (required) - The name of the device the graph will be added to."
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "host is required!!"
      else
        super
      end
    end
    
  end

  newproperty(:graphtype) do
    desc "graphtype (required)     - 'cg' graphs are for things like CPU temp/fan speed, while 
                                     'ds' graphs are for data-source based graphs (interface stats etc.)"

    newvalues(:cg, :ds)

    validate do |value|
      if value == ""
        raise ArgumentError,
              "Graphtype is required"
      else
        super
      end
    end

  end

  newparam(:graphtemplate) do
    desc "graphtemplate (required) - General information about this host."

    validate do |value|
      if value == ""
        raise ArgumentError,
              "Graphtemplate is required"
      else
        super
      end
    end
  end

  newparam(:snmpquery) do
    desc "snmpquery (required for ds graphs) - name of Data Query"

  end

  newparam(:snmpquerytype) do
    desc "snmpquerytype (required for ds graphs) - name of Associated Graph Template to be used"
  
  end

  newparam(:snmpfield) do
    desc "snmpfield (required for ds graphs) - name of the snmp field that will be used to in combination with the snmp valued to determine witch graph will be freated"
  
  end

  newparam(:snmpvalue) do
    desc "snmpvalue (required for ds graphs) - name of the snmp value that will determine which graph will be created."

  end


end
