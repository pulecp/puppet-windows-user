#
#init.pp

class puppet-windows-user {
  user { "$user_name":
    home      => "c:/Users/$user_name",
    password  => "$user_pass",
    group     => 'Remote Desktop Users',
  }

  file { "c:/Users/$user_name":
    ensure  => directory,
    owner   => "$user_name",
    group   => "$user_name",
    require => User["$user_name"],
  }


}
