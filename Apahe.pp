class { 'apache':
  default_vhost => false,
}

apache::vhost { 'user.example.com':
  port          => '80',
  docroot       => '/var/www/user',
  docroot_owner => 'www-data',
  docroot_group => 'www-data',
}

apache::vhost { 'ssl.example.com':
  port    => '443',
  docroot => '/var/www/ssl',
  ssl     => true,
}
