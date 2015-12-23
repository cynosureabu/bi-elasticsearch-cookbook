# Encoding: utf-8
name             'bi-elasticsearch'
maintainer       'Chen Wang'
maintainer_email 'chen@obostinsider.com'
license          'Apache 2.0'
description      'Deploy Es to EC2 vpc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'java', '>=8.20'
depends 'elasticsearch', '>= 2.0.0'
