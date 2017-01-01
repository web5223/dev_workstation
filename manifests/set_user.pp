# documentation goes here
class dev_workstation::set_user {
  
  group { 'web':
    ensure => 'present',
    gid    => '802',
  } 

  user { 'wpaton':
    ensure           => 'present',
    gid              => '802',
    home             => '/home/wpaton',
    managehome       => true,
    password         => sha1('hello'),
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '802',
  }
  
}
