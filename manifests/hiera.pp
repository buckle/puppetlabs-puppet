# Class: puppet::hiera
#
# This class installs and configures hiera for Puppet master
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class puppet::hiera (
  $confdir    = $puppet::params::confdir,
  $config_file = $puppet::params::hiera_config_file
) inherits puppet::params {

  file { "${confdir}/hiera.yaml":
    owner   => 'puppet',
    group   => 'puppet',
    mode    => '0644',
    source  => $config_file,
  }

}
