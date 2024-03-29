#
#init.pp

class puppet-windows-user {
  user { "$user_name":
    home      => "c:/Users/$user_name",
    password  => "$user_pass",
    groups    => ['Remote Desktop Users'],
  }

#  group { "Remote Desktop Users":
#    require => User["$user_name"],
#  }

  file { "c:/Users/$user_name":
    ensure  => directory,
    owner   => "$user_name",
    group   => "$user_name",
    require => User["$user_name"],
  }

}
