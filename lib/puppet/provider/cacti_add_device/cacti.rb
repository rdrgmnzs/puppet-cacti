Puppet::Type.type(:cacti_add_device).provide(:cacti_add_device) do

  optional_commands :php      => 'php'
  optional_commands :mysql    => 'mysql'

  def create
    templateid = mysql('-NBe', "select id from cacti.host_template WHERE name=\"#{@resource[:template]}\"").match(/.*/)[0]
    php('/var/www/cacti/cli/add_device.php', "--description=#{@resource[:title]}", "--ip=#{@resource[:ip]}", "--template=#{templateid}" )

    # Set notes
    notes = @resource.should(:notes)
    unless self.notes == notes
        self.notes = notes
    end

    # Set avail
    avail = @resource.should(:avail)
    unless self.avail == avail
        self.avail = avail
    end

    # Set pingmethod
    ping_method = @resource.should(:pingmethod)
    unless self.pingmethod == ping_method
        self.pingmethod = ping_method
    end

    # Set pingport
    ping_port = @resource.should(:pingport)
    unless self.pingport == ping_port
        self.pingport = ping_port
    end

    # Set pingretries
    ping_retries = @resource.should(:pingretries)
    unless self.pingretries == ping_retries
        self.pingretries = ping_retries
    end

    # Set snmpversion
    snmp_version = @resource.should(:snmpversion)
    unless self.snmpversion == snmp_version
        self.snmpversion = snmp_version
    end

    # Set snmpcommunity
    snmp_community = @resource.should(:snmpcommunity)
    unless self.snmpcommunity == snmp_community
        self.snmpcommunity = snmp_community
    end

    # Set snmpport
    snmp_port = @resource.should(:snmpport)
    unless self.snmpport == snmp_port
        self.snmpport = snmp_port
    end

    # Set snmptimeout
    snmp_timeout = @resource.should(:snmptimeout)
    unless self.snmptimeout == snmp_timeout
        self.snmptimeout = snmp_timeout
    end

    # Set snmpusername
    snmp_username = @resource.should(:snmpusername)
    unless self.snmpusername == snmp_username
        self.snmpusername = snmp_username
    end

    # Set snmppassword
    snmp_password = @resource.should(:snmppassword)
    unless self.snmppassword == snmp_password
        self.snmppassword = snmp_password
    end

    # Set snmpauthproto
    snmp_authproto = @resource.should(:snmpauthproto)
    unless self.snmpauthproto == snmp_authproto
        self.snmpauthproto = snmp_authproto
    end

    # Set snmpprivpass
    snmp_privpass = @resource.should(:snmpprivpass)
    unless self.snmpprivpass == snmp_privpass
        self.snmpprivpass = snmp_privpass
    end

    # Set snmpprivproto
    snmp_privproto = @resource.should(:snmpprivproto)
    unless self.snmpprivproto == snmp_privproto
        self.snmpprivproto = snmp_privproto
    end

    # Set snmpcontext
    snmp_context = @resource.should(:snmpcontext)
    unless self.snmpcontext == snmp_context
        self.snmpcontext = snmp_context
    end

    # Set snmpmaxoids
    snmp_maxoids = @resource.should(:snmpmaxoids)
    unless self.snmpmaxoids == snmp_maxoids
        self.snmpmaxoids = snmp_maxoids
    end

    #makes sure the data querys are pooled
    hostid = mysql('-NBe', "select id from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
    php('/var/www/cacti/cli/poller_reindex_hosts.php', "--id=#{hostid}" )
    

  end

  def destroy
  
  end

  def ip
    ipRegex = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"
    hostnameRegex = "^(([a-zA-Z]|[a-zA-Z][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z]|[A-Za-z][A-Za-z0-9\-]*[A-Za-z0-9])$";

    mysql('-NBe', "select hostname from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/#{ipRegex}|#{hostnameRegex}/)[0]
  end

  def ip=(value)
    mysql('-NBe', "UPDATE cacti.host SET hostname=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def notes
    mysql('-NBe', "select notes from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end

  def notes=(value)
    mysql('-NBe', "UPDATE cacti.host SET notes=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def avail
    mysql('-NBe', "select availability_method from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/\d+/)[0]
  end

  def avail=(value)
    mysql('-NBe', "UPDATE cacti.host SET availability_method=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def pingmethod
    mysql('-NBe', "select ping_method from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/\d+/)[0]
  end

  def pingmethod=(value)
    mysql('-NBe', "UPDATE cacti.host SET ping_method=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def pingport
    mysql('-NBe', "select ping_port from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/\d+/)[0]
  end

  def pingport=(value)
    mysql('-NBe', "UPDATE cacti.host SET ping_port=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def pingretries
    mysql('-NBe', "select ping_retries from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/\d+/)[0]
  end

  def pingretries=(value)
    mysql('-NBe', "UPDATE cacti.host SET ping_retries=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpversion
    mysql('-NBe', "select snmp_version from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/0|1|2|3/)[0]
  end

  def snmpversion=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_version=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpcommunity
    mysql('-NBe', "select snmp_community from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/(?:[a-z][a-z0-9_]*)/)[0]
  end

  def snmpcommunity=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_community=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpport
    mysql('-NBe', "select snmp_port from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end

  def snmpport=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_port=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmptimeout
    mysql('-NBe', "select snmp_timeout from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end
      
  def snmptimeout=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_timeout=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpusername
    mysql('-NBe', "select snmp_username from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end
      
  def snmpusername=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_username=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmppassword
    mysql('-NBe', "select snmp_password from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end
      
  def snmppassword=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_password=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpauthproto
    mysql('-NBe', "select snmp_auth_protocol from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end

  def snmpauthproto=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_auth_protocol=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpprivpass
    mysql('-NBe', "select snmp_priv_passphrase from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end 
    
  def snmpprivpass=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_priv_passphrase=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpprivproto
    mysql('-NBe', "select snmp_priv_protocol from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end 
    
  def snmpprivproto=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_priv_protocol=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpcontext
    mysql('-NBe', "select snmp_context from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end

  def snmpcontext=(value)
    mysql('-NBe', "UPDATE cacti.host SET snmp_context=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def snmpmaxoids
    mysql('-NBe', "select max_oids from cacti.host WHERE description=\"#{@resource[:title]}\"").match(/.*/)[0]
  end

  def snmpmaxoids=(value)
    mysql('-NBe', "UPDATE cacti.host SET max_oids=\"#{value}\" WHERE description=\"#{@resource[:title]}\"")
  end

  def exists?
    begin
      php("/var/www/cacti/cli/add_graphs.php", "--list-hosts").match(/#{@resource[:title]}/)
    rescue => e
      debug(e.message)
      return nil
    end
  end

end
