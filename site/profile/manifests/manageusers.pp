class profile::manageusers {

  accounts::user { 'ebsuser1':
    uid      => '4001',
    gid      => '4001',
    shell    => '/bin/bash',
    password => '$1$WAWf/Dao$9r6e/LpCPI4yZ8aAQ2vSe',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }

  accounts::user { 'ebsuser2':
    uid      => '4002',
    gid      => '4002',
    shell    => '/bin/bash',
    password => '$1$w35mXEdD$D2bQ0nzTk7gdRW2gwJLQ7',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }

  user { 'hpcadmin':
    ensure   => present,
    uid      => '4000',
    gid      => 'root',
    shell    => '/bin/bash',
    password => '$1$JkjdCTMH$mqtlrEouL4zpYaIOL7YbJ0',
    #sshkeys  => "ssh-rsa AAAA...",
    locked   => false,
  }


}
