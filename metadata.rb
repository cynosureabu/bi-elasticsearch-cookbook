# Encoding: utf-8
name             'elasticsearch_bi'
maintainer       'Chen Wang'
maintainer_email 'chen@obostinsider.com'
license          'Apache 2.0'
description      'Deploy Es to EC2 vpc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt'
depends 'yum'
depends 'chef-sugar'
depends 'elasticsearch', '>= 2.0.0'
