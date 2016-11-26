class profile::webportal_database {
  # This code is copy-pasted from the 'puppet resource cron' command
  cron { 'vacuum_customer_database':
    ensure  => 'present',
    command => 'mysqlcheck --databases webportal_customer',
    hour    => ['0'],
    target  => 'root',
    user    => 'root',
  }
}
