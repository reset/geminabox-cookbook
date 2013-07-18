name             'geminabox'
maintainer       'Jamie Winsor'
maintainer_email 'jamie@vialstudios.com'
license          'Apache 2.0'
description      'Installs/Configures geminabox'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'

depends 'rbenv', '>= 1.5.0'
depends 'nginx', '>= 1.7.0'
