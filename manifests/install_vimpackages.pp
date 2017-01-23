# documentation goes here
class dev_workstation::install_vimpackages {
  
  $currentuser = hiera('currentusername')

  vcsrepo { '/home/${currentuser}/myrepo': 
    ensure   => present, 
    provider => git,
  }

#  vcsrepo { "/home/${currentuser}/.vim/bundle":
#    ensure    => present,
#    provider  => git,
#    source    => 'git://github.com/voxpupuli/vim-puppet.git',
#    subscribe => Exec['install puppet labs vcsrepo type'],
#  }

}
