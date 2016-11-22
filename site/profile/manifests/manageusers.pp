class profile::manageusers {

  accounts::user { 'ebsuser1':
    uid      => 4001,
    gid      => 4001,
    shell    => '/bin/bash',
    password => '!!',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }

  accounts::user { 'ebsuser2':
    uid      => 4002,
    gid      => 4002,
    shell    => '/bin/bash',
    password => '!!',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }

}
