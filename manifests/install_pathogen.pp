# documentation goes here
class dev_workstation::install_pathogen {
  
  exec { 'setup pathogen vim bundle manager':
    command => 'mkdir -p .vim/autoload .vim/bundle && \
    curl -LSso .vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim',
    cwd     => '/home/wpaton',
    user    => 'wpaton',
    path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ]
  } 

}
