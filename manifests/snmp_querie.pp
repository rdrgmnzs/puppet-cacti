# Define: cacti_snmp_querie
#
# This module imports snmp queries into the aproriate cacti folder
#
# Parameters:
#   title (required)      - name of snmp file to be imported.
#
# Actions:
# 
#   Place the template to be imported in the cacti module under "files/cacti_snmp_queries"
#
# Sample Usage:
#
#  cacti_snmp_querie {
#    'snmp_query1.xml':
#    'snmp_query2.xml':
#  }
#

define cacti::snmp_querie
(
$filename      = $title,

){

  file {
    "/var/www/cacti/resource/snmp_queries/$filename":
      source   => "puppet:///modules/cacti/cacti_snmp_queries/$filename",
      mode    => 644;
  } #file

} #define cacti_snmp_querie
