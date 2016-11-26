class profile::non_prod_base {

  if $facts['os']['family'] == 'windows' {
    registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Reliability\ShutdownReasonOn':
      ensure => present,
      data   => '0',
      type   => 'dword',
    }
  }
}
