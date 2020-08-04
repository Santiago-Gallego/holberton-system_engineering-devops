# SSH configuration file so that we can connect to a server without using a password 
include stdlib
file_line { 'declare file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/holberton',
}

file_line { 'passwd auth off':
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
}