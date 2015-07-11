# hosts

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
3. [Validations](#validations)
4. [Limitations - OS compatibility, etc.](#limitations)

## Overview

This is a simple puppet module to manage hosts file. You provide the IP, Host and Alias as a hash value and it will update /etc/hosts by default.
Alternatively you can also provide a file location.  


## Usage


Provide one or mulitple entries like below.

class {'hosts':
         hosts = {entry1 = {ip='127.0.0.1',host=>'localhost',alias=>'localdomain'}},
      }


You may also provide the path to the file that will be updated.
```puppet
class {'hosts':
         file => '/root/somefile',
	 hosts = {entry1 => {ip=>'127.0.0.1',host=>'localhost',alias=>'localdomain'},
	 	  entry2 => {ip=>'127.0.0.1',host=>'',alias=>'localdomain'}
	 	 }
      }
```

## Validations

This modules require that the IP address must not be empty and either host or alias is provided. If the IP is empty or both the host and alias are missing then
it will not process that entry. At the moment there is no validation for correct IP or hostname which will be added in the future so please take care when adding
these values.

## Limitations

This module should be compatible with all systems. Please pay extra attention to IP and hostnames as these are not validated yet.

