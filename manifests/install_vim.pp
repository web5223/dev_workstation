# documentation goes here
class dev_workstation::install_vim {
  
  # load packages in an array variable
  $vim_packages = ['vim-X11','vim-common','vim-enhanced','vim-filesystem','vim-minimal']

  #install vim packages
  package { $vim_packages:
    ensure => installed,
  } 

  file { '/home/wpaton/.vimrc':
    ensure => file,
    source => 'puppet:///modules/dev_workstation/.vimrc',
  }

}
