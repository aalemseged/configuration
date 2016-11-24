class profile::manageusers {

  accounts::user { 'hpcuser1': 

    

  }

  accounts::user { 'hpcuser2': }

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
