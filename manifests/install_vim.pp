# documentation goes here
class dev_workstation::install_vim {
  
  # load packages in an array variable
  $vim_packages = ['vim-X11','vim-common','vim-enhanced','vim-filesystem','vim-minimal']
  
  $currentuser = hiera('currentusername')

  #install vim packages
  package { $vim_packages:
    ensure => installed,
  } 

  file { "/home/${currentuser}/.vimrc":
    ensure => file,
    source => 'puppet:///modules/dev_workstation/.vimrc',
  }

  exec { 'install puppet labs vcsrepo type':
    command => 'puppet module install puppetlabs-vcsrepo --version 1.5.0',
    cwd     => '/',
    user    => 'root',
    path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  } 

}
