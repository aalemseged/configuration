class profile::manageusers {

  accounts::user { 'ebsuser1': }

  accounts::user { 'ebsuser2': }

  accounts::user { 'hpcadmin':
    ensure   => present,
    managehome => true,
    uid      => '1001',
    gid      => '1001',
    shell    => '/bin/bash',
    password => '$1$JkjdCTMH$mqtlrEouL4zpYaIOL7YbJ0',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }


}
