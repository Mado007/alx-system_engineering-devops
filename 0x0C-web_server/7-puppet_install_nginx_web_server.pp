# Ensure Nginx package is installed
package { 'nginx':
  ensure => 'installed',
}

# Define the Nginx site configuration
file { '/etc/nginx/sites-available/default':
  ensure  => 'file',
  content => template('nginx/default.erb'),
  require => Package['nginx'],
}

# Create a symbolic link to enable the site
file { '/etc/nginx/sites-enabled/default':
  ensure => 'link',
  target => '/etc/nginx/sites-available/default',
  require => File['/etc/nginx/sites-available/default'],
  notify => Service['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => File['/etc/nginx/sites-enabled/default'],
}

# Define the Nginx default site content
file { '/var/www/html/index.html':
  ensure  => 'file',
  content => '<html><body>Hello World!</body></html>',
  require => Package['nginx'],
}

# Create a custom Nginx configuration for the redirect
file { '/etc/nginx/sites-available/redirect_me':
  ensure  => 'file',
  content => template('nginx/redirect_me.erb'),
  require => Package['nginx'],
}

# Create a symbolic link to enable the redirect site
file { '/etc/nginx/sites-enabled/redirect_me':
  ensure => 'link',
  target => '/etc/nginx/sites-available/redirect_me',
  require => File['/etc/nginx/sites-available/redirect_me'],
  notify => Service['nginx'],
}
