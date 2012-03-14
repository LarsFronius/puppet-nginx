# Class: nginx::passenger
#
# Manage nginx passenger configuration.
# Provide nginx::passenger::site
#
class nginx::passenger inherits nginx {
    Package['nginx-package'] {
        name    => 'nginx-extras',
        ensure  => installed,
    }
    nginx::config { 'passenger':
        content => "passenger_root /usr/lib/ruby/1.8/phusion_passenger;"
    }
}
