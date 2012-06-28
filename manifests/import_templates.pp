# Define: cacti::import_template
#
# This module imports templates into cacti
#
# Parameters:
#   title (required)      - name of template file to be imported.
#   user_rras (optional)  - user defined rras, if this is not defined the rras define
#                           on the template will be used.
#   directory (required)  - directory where the templare file is stored in the cacti server
#
# Actions:
# 
#   Place the template to be imported in the cacti module under "files/cacti_template"
#
#   Make sure that the folder where the templates will be placed on the cacti exists:
#   example:
#  
#     file {
#       "/var/www/cacti/imported_templates/":
#       ensure => directory,
#     } 
#
# Sample Usage:
#
#  file {
#    "/var/www/cacti/cacti_templates/":
#    ensure => directory,
#  }
#
#  cacti::import_template {
#    'template1.xml':
#      directory      => '/var/www/cacti/cacti_templates/',
#      user_rras      => '1:2:3:4:5';
#    'template2.xml':
#      directory      => '/var/www/cacti/cacti_templates/';
#    'template3.xml':
#      directory      => '/var/www/cacti/cacti_templates/',
#      user_rras      => '2:3:4:5';
#  }
#

define cacti::import_templates
(
$filename      = $title,
$user_rras     = '',
$directory     = '',

){

  if $filename == '' {
    fail("Failed: filename is required!")
  } #if
  elsif  $directory == '' {
    fail("Failed: directory is required!")
  } #else
  else {
    file {
      "$directory$filename":
      source   => "puppet:///modules/cacti/cacti_template/$filename",
      mode    => 644;
    } #file
  } #else

  if $user_rras != '' {
    $with_user_rras = "--with-user-rras=$user_rras"
  } #if
  else {
    $with_template_rras = "--with-template-rras"
  } #else

  #This is executed to deal with a problem with cacti 8.8.a where the poller cache is not built.
  exec{ "$directory$filename":
      command     => "/usr/bin/php /var/www/cacti/cli/import_template.php --filename=$directory$filename $with_template_rras $with_user_rras",
      logoutput   => true,
      require     => File["/var/www/cacti/cacti_templates/$filename"],
  }

} #class cacti::import_template
