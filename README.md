# python

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What python affects](#what-python-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with python](#beginning-with-python)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

python installation and pip management

## Module Description

this module provides a resource for managing pip modules

## Setup

### What python affects

* installs python and python-pip
* adds a resource for pip module management: **pythonpip**

### Setup Requirements **OPTIONAL**

This module requires pluginsync enabled

### Beginning with python

pip module installation:

```puppet
pythonpip { 'elasticsearch-curator':
  ensure => 'present',
}
```

## Usage

## Reference

## Limitations

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
