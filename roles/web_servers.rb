name "web_server"
description "This role contains nodes, which act as web servers"
run_list "recipe[nginx]"
default_attributes 'ntp' => {
  'ntpdate' => {
    'disable' => true
  }
}
