# === Authors
#
# Junaid Syed <junaid@kandiaro.net>
#
# === 

class hosts(
 $file = $hosts::params::file,
 $hosts = {entry => {ip => '127.0.0.0',host => 'localhost localhost.localdomain',alias => 'localdomain'}}
		
) inherits hosts::params {
 validate_hash($hosts)
  file{$file:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('hosts/hosts.erb'),
  }
}

