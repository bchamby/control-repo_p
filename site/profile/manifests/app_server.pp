class profile::app_server {

  # if $facts['os']['family'] == 'windows' {
  registry_value { 'HKLM\SOFTWARE\Policies\Microsoft\Windows NT\Reliability\ShutdownReasonOn':
    ensure => present,
    data   => '0',
    type   => 'dword',
  }
  # }

  file { 'c:\temp\test.txt':
    content => 'This is the content of my test file!'
  }

}
