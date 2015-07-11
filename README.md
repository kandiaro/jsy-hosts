# hosts

#### Table of Contents

1. [Overview](#overview)
2. [Usage - Configuration options and additional functionality](#usage)
3. [Limitations - OS compatibility, etc.](#limitations)

## Overview

This is a simple puppet module to manage hosts file. 


## Usage

class {'hosts':
         hosts = {entry1 = {ip='127.0.0.1',host=>'localhost',alias=>'localdomain'}},
      }

## Limitations

This is where you list OS compatibility, version compatibility, etc.

