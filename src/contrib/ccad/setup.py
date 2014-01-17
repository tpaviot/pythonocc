"""
Description
-----------
distutils setup.py for ccad.  View model.py for a full description of
ccad.

Author
------
Charles Sharman

License
-------
Distributed under the GNU LESSER GENERAL PUBLIC LICENSE Version 3.
View LICENSE for details.

Revision History
----------------
1/11/14: Began
"""

import os

import distutils.core
import distutils.dir_util
import distutils.sysconfig

name = 'ccad'

from display import version

# Install the module
distutils.core.setup(name=name,
                     version=str(version),
                     url='UNKNOWN',
                     py_modules=['ccad.model', 'ccad.display'],
                     package_dir={'ccad': '.'},
                     requires=['occe', 'pythonocc', 'pygtk', 'gtkglext']
                     )

# Install the documentation
# This is probably not the *proper* way to do this. ***
dist = distutils.core._setup_distribution
if 'install' in dist.commands:
    if 'prefix' in dist.command_options['install']:
        prefix = dist.command_options['install']['prefix'][1]
    elif 'home' in dist.command_options['install']:
        prefix = dist.command_options['install']['home'][1]
    else:
        prefix = distutils.PREFIX
    if prefix:
        # Hard-coding share into this makes it a linux-only distribution ***
        distutils.dir_util.copy_tree('rst/_build/html', os.path.join(prefix, 'share/doc/ccad/html'))
