class ntp::params { 
  $package_name        = 'ntp'
  $package_ensure      = 'present'
  $config_name         = 'ntp.conf'
  $config_file_mode    = '0664'
  $servers             = ['0.centos.pool.ntp.org', '1.centos.pool.ntp.org']
  $service_ensure      = 'running'
  $service_enable      = true
  $service_has_restart = true
  $service_has_status  = true

  $service_name = $facts['os']['family'] ? {
    'Debian' => 'ntp',
    default  => 'ntpd',
  }
}
