# Define: cacti::add_device
#
# This module adds hosts to cacti.
#
# Parameters:
#   title (required)        - the name that will be displayed by Cacti in the graphs.
#   ip (required)           - self explanatory (can also be a FQDN).
#   template (optional)     - id of template to use, if any.
#   notes (optional)        - General information about this host.
#   disable (optional)      - add this host but to disable checks.
#   avail (optional)        - method of checking host availabitlity [none, ping, snmp, pingsnmp]
#   ping_method (optional)  - if ping is the method of checking availabitlity
#                             use this method to ckeck it [icmp, tcp, udp] (default tcp)
#   ping_port (optional)    - port to use for checking availabitlity method
#   ping_retries (optional) - the number of time to attempt to communicate with a host
#   version (optional)      - snmp version [1, 2, 3]
#   community (optional)    - snmp community string for snmp v1 and snmp v2.
#   port (optional)         - snmp port (default 161)
#   timeout (optional)      - snmp response time out (default 500)
#   username (optional)     - snmp username for snmp v3
#   password (optional)     - snmp password for snmp v3
#   authproto (optional)    - snmp authentication protocol for snmp v3 [MD5, SHA]
#   privpass (optional)     - snmp privacy passphrase for snmp v3
#   privproto (optional)    - snmp privacy protocol for snmp v3 [DES, AES]
#   context (optional)      - snmp context for snmp v3
#   max_oids (optional)     - the number of OID's that can be obtained in a single SNMP Get request
#
#
# Sample Usage:
#
#  cacti::add_device {
#    'Printer1':
#      ip            => '192.168.1.10',
#      template      => 1,
#      notes         => "Thesere are notes about the device"
#      avail         => 'ping',
#      ping_method   => 'tcp',
#      ping_port     => 23,
#      ping_retries  => 2,
#      version       => 2,
#      community     => 'public',
#      port          => 161,
#      timeout       => 500,
#      max_oids      => 10;
#    'firewall1':
#      ip            => '192.168.1.20',
#      template      => 2,
#      version       => 3,
#      username      => 'user',
#      password      => 'password',
#      authproto     => 'MD5',
#      privpass      => 'passphrase',
#      privproto     => 'DES';
#    'switch1':
#      ip            => '192.168.1.25',
#      template      => 2,
#      version       => 3,
#      username      => 'user',
#      password      => 'drowssap';
#  }
#

define cacti::add_device2
(
$ip           = '',
$template     = '',
notes         = '',
disable       = false,
avail         = '',
ping_method   = '',
ping_port     = '',
ping_retries  = '',
version       = '',
community     = '',
port          = '',
timeout       = '',
username      = '',
password      = '',
authproto     = '',
privpass      = '',
privproto     = '',
context       = '',
max_oids      = '10',

){

  if $title == '' {
    fail("Failed: A title is required!")
  } #if
  
  if $ip == '' {
    fail("Failed: IP or FQDN of the host is required!")
  } #if

  if $template != '' {
    $host_template = "--template=$template"
  } 

  if $notes != ''{
    $host_notes = "--notes=\"$notes\""
  }
  
  if $disable {
    $host_disable = "--disable"
  }

  if $avail != ''{
    $host_avail = "--avail=$avail"
    
    if ($avail == "ping") or ($avail == "pingsnmp"){
     
      if $ping_method != ''{
        $host_ping_methos = "--ping_method=$ping_method"
      }

      if $ping_port != ''{
        $host_ping_port = "--ping_port=$ping_port"
      }

      if $ping_retries != ''{
        $host_ping_retries = "--ping_retries=$ping_retries"
      }
    } 
  }

  if $version != '' {
    $snmp_version = "--version=$version"

    if ($version == '1') or ($version == '2') {
 
      if $community != '' {
        $snmp_community = "--community=$community"
      }
      
    }
    elsif $version == '3' {
      
      if $username == '' {
        fail("Failed: Username is required for SNMP v3")
      }
      else {
        $snmp_username = "--username=$username"
      }

      if $password == '' {
        fail("Failed: Password is required for SNMP v3")
      }
      else {
        $snmp_password = "--password=$password"
      }

      if $authproto != '' {
        $snmp_authproto = "--authproto=$authproto"
      }
	  
      if $privpass != '' {
        $snmp_privpass = "--privpass=$privpass"
      }
	
      if $privproto != '' {
       $snmp_privproto = "--privproto=$privproto"
      }
	
      if $context != '' {
        $snmp_context = "--context=$context"
      } 
    }

    if $version =~ /1|2|3/ 
    {
      if $max_oids != '' {
      $snmp_max_oids = "--max_oids=$max_oids"
      }

      if $port != '' {
        $snmp_port = "--port=$port"
      }
      
      if $timeout != '' {
        $snmp_timeout = "--timeout=$timeout"
      }
    }
    
  }  
  
  exec{ "$title":
          command     => "/usr/bin/php /var/www/cacti/cli/add_device.php --description=\"$title\" --ip=$ip $host_template $host_notes $host_disable $host_avail $host_ping_methos $host_ping_port $host_ping_retries $snmp_version $snmp_community $snmp_password $snmp_username $snmp_authproto $snmp_privpass $snmp_privproto $snmp_context $snmp_port  $snmp_timeout $snmp_max_oids",  
    logoutput   => true,
    refresh     => false,
  }

} #class cacti::import_template
