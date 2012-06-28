# This has to be a separate type to enable collecting
Puppet::Type.newtype(:cacti_add_device) do
  @doc = @doc = <<-EOT
     This module adds hosts to cacti.
    
     Parameters:
       title (required)            - the name that will be displayed by Cacti in the graphs.
       ip (required)               - self explanatory (can also be a FQDN).
       template (optional)         - id of template to use, if any.
       notes (optional)            - General information about this host.
       avail (optional)            - method of checking host availabitlity [none, pingandsnmp, snmpuptime, ping, pingorsnmp, snmpdesc, snmpgetnext]
       pingmethod (optional)       - if ping is the method of checking availabitlity
                                     use this method to ckeck it [icmp, tcp, udp] (default tcp)
       pingport (optional)         - port to use for checking availabitlity method
       pingretries (optional)      - the number of time to attempt to communicate with a host
       snmpversion (optional)      - snmp version [1, 2, 3]
       snmpcommunity (optional)    - snmp community string for snmp v1 and snmp v2.
       snmpport (optional)         - snmp port (default 161)
       snmptimeout (optional)      - snmp response time out (default 500)
       snmpusername (optional)     - snmp username for snmp v3
       snmppassword (optional)     - snmp password for snmp v3
       snmpauthproto (optional)    - snmp authentication protocol for snmp v3 [MD5, SHA]
       snmpprivpass (optional)     - snmp privacy passphrase for snmp v3
       snmpprivproto (optional)    - snmp privacy protocol for snmp v3 [DES, AES]
       snmpcontext (optional)      - snmp context for snmp v3
       snmpmaxoids (optional)      - the number of OID's that can be obtained in a single SNMP Get request
    
    
     Sample Usage:
    
      cacti_add_device {
        'Printer1':
          ip            => '192.168.1.10',
          template      => 1,
          notes         => "Thesere are notes about the device"
          avail         => 'ping',
          pingmethod    => 'tcp',
          pingport      => 23,
          pingretries   => 2,
          snmpersion    => 2,
          snmpcommunity => 'public',
          snmpport      => 161,
          snmptimeout       => 500,
          snmpmaxoids      => 10;
        'firewall1':
          ip            => '192.168.1.20',
          template      => 2,
          snmpversion       => 3,
          snmpusername      => 'user',
          snmppassword      => 'password',
          snmpauthproto     => 'MD5',
          snmpprivpass      => 'passphrase',
          snmpprivproto     => 'DES';
        'switch1':
          ip            => '192.168.1.25',
          template      => 2,
          snmpversion       => 3,
          snmpusername      => 'user',
          snmppassword      => 'drowssap';
      }
  EOT

  ensurable

  newparam(:title, :namevar=>true) do
    desc "title - the name that will be displayed by Cacti in the graphs."
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "Failed: A title is required!"
      else
        super
      end
    end
    
  end

  newproperty(:ip) do
    desc "self explanatory (can also be a FQDN)."
    
    validate do |value|
      if value == ""
        raise ArgumentError,
              "Failed: IP or FQDN of the host is required!!"
      else
        super
      end
    end
    
  end

  newparam(:template) do
    desc "template (optional)     - id of template to use, if any."

    defaultto "0"

  end

  newproperty(:notes) do
    desc "notes (optional) - General information about this host."

    defaultto ""
  end

  newproperty(:avail) do
    desc "avail (optional) - method of checking host availabitlity [none, pingandsnmp, snmpuptime, ping, pingorsnmp, snmpdesc, snmpgetnext]."

    newvalues(:none, :pingandsnmp, :snmpuptime, :ping, :pingorsnmp, :snmpdesc, :snmpgetnext)

    defaultto "snmpuptime"

    munge do |value|
        if value == "none"
          value = "0"
        elsif value == "pingandsnmp"
          value = "1"
        elsif value == "snmpuptime"
          value = "2"
        elsif value == "ping"
          value = "3"
        elsif value == "pingorsnmp"
          value = "4"
        elsif value == "snmpdesc"
          value = "5"
        elsif value == "snmpgetnext"
          value = "6"
        end
    end

  end

  newproperty(:pingmethod) do
    desc "if ping is the method of checking availabitlity
          use this method to ckeck it [icmp, tcp, udp] (default udp)"

    newvalues(:icmp, :tcp, :udp)

    defaultto "udp"

    munge do |value|
        if value == "icmp" 
          value = "1"
        elsif value == "udp"
          value = "2"
        elsif value == "tcp" 
          value = "3"
        end
    end

  end

  newproperty(:pingport) do
    desc "pingport (optional) - port to use for checking availabitlity method"

    defaultto "23"

  end

  newproperty(:pingretries) do
    desc "pingretries (optional) - the number of time to attempt to communicate with a host"

    defaultto "1"

  end

  newproperty(:snmpversion) do
    desc "snmpversion (optional) - snmp version [1, 2, 3]."

    newvalues(:none, :"1", :"2", :"3")

    defaultto "1"

  end

  newproperty(:snmpcommunity) do
    desc "snmpcommunity (optional) - snmp community string for snmp v1 and snmp v2."

    defaultto "public"

  end

  newproperty(:snmpport) do
    desc "snmpport (optional) - snmp port (default 161)"

    defaultto "161"

  end

  newproperty(:snmptimeout) do
    desc "snmptimeout (optional) - snmp response time out (default 500)"

    defaultto "500"

  end

  newproperty(:snmpusername) do
    desc "snmpusername (optional) - snmp username for snmp v3"

    defaultto ""

  end

  newproperty(:snmppassword) do
    desc "snmppassword (optional) - snmp password for snmp v3"

    defaultto ""

  end

  newproperty(:snmpauthproto) do
    desc "snmpauthproto (optional) - snmp authentication protocol for snmp v3 [MD5, SHA]"

    newvalues(:MD5, :SHA)

    defaultto "MD5"

  end

  newproperty(:snmpprivpass) do
    desc "snmpprivpass (optional)     - snmp privacy passphrase for snmp v3"

    defaultto ""

  end

  newproperty(:snmpprivproto) do
    desc "snmpprivproto (optional) - snmp privacy protocol for snmp v3 [DES, AES]"

    newvalues(:DES, :AES)

    defaultto "DES"

  end

  newproperty(:snmpcontext) do
    desc "snmpcontext (optional) - snmp context for snmp v3"

    defaultto ""

  end

  newproperty(:snmpmaxoids) do
    desc "snmpmaxoids (optional) - the number of OID's that can be obtained in a single SNMP Get request"

    defaultto "10"

  end

end
