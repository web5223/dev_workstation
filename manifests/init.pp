class puppet_workstation {

  include puppet_workstation::set_user
  include puppet_workstation::install_pathogen
  # include puppet_workstation::vim_setup

}
