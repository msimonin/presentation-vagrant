class {'wordpress':
   wordpress_db_name     => "wordpress",
   wordpress_db_user     => "wordpress",
   wordpress_db_password => "worpress",
   require               => Exec['update-system']
}

exec {'update-system':
  path    => "/usr/bin",
  command => "apt-get update"
}

Exec['update-system'] -> Class['wordpress']

