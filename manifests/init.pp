#
#init.pp

class puppet-windows-user {
  user { "$user_name":
    home      => "c:/Users/$user_name",
    password  => "$user_pass",
  }
}
