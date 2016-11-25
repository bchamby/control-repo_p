class profile::base {

  #the base profile should include component modules that will be on all nodes

  accounts::user { 'monitoring':
    ensure     => present,
    uid        => '450',
    gid        => '450',
    managehome => false,
    locked     => true,
  }

  # accounts::user { 'emergency':
  #   ensure => present,
  #   uid      => '460',
  #   gid      => '460',
  #   shell    => '/bin/bash',
  #   password => '!!', # No password
  #   sshkeys  => [
  #     "ssh-rsa AAAA...",
  #     "ssh-rsa BBBB...",
  #     "ssh-rsa CCCC...",
  #   ],
  # }

}
