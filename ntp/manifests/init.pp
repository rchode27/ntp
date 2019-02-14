# This module is to setup the ntp service

class ntp
{
  $remote_ntp_server = $ntp::remote_ntp_server

  package { 'Install ntp package':
    name   => 'ntp',
    ensure => latest,
  }

  file { '/etc/ntp.conf':
    ensure   => file,
    owner    => root,
    group    => root,
    mode     => '0600',
    template => template('ntp/ntp_conf.erb'),
    notify   => Service['ntpd'],
  } 

  service { 'ntpd':
   name       => ntpd,
   ensure     => running,
   enable     => true,
   hasrestart => true,
  }
}
