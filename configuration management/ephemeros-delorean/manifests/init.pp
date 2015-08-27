# == Class: delorean
#
# Initiate a Delorean and prepare it for time travel!
#
# === Authors
#
# Jonathan Rogers quantumfoam@gmail.com
#
# === Copyright
#
# Copyright 2015 Jonathan Rogers
#
class delorean inherits (

$options = $::delorean::params::options,
$speed = $::delorean::params::speed,
$capacitor = $::delorean::params::capacitor,
$model = $::delorean::params::model,
$avoid = $::delorean::params::avoid,
) inherits ::delorean::params

file { "/etc/widgetfile":
ensure => file,
path => "/etc/widgetfile",
owner => 'root',
group => 'root',
mode => '0644',
content => template('delorean/widgetfile.erb')
}
