#!/usr/bin/python2
"""
Amend .hgrc file
"""

import os
import ConfigParser

conf = ConfigParser.ConfigParser(allow_no_value=True)
conf.readfp(open(os.path.expanduser('~/.hgrc')))

if not conf.has_section('extensions'):
	conf.add_section('extensions')
	print('Added section "extensions"')

extensions = ['histedit', 'hggithub', 'smartlog', 'githelp', 'backups', 'fbamend', 'chistedit']
for ext in extensions:
	if not conf.has_option('extensions', ext):
		conf.set('extensions', ext, '')
		print('Added option "extensions.%s"' % ext)

if not conf.has_section('alias'):
	conf.add_section('alias')
	print('Added section "alias"')

if not conf.has_option('alias', 'sl'):
	conf.set('alias', 'sl', "smartlog --template \"{shortest(node)}  {author|user}  {bookmarks % '{ifeq(bookmark, current, label(\\\"yellow\\\", \\\" {bookmark}*\\\"), label(\\\"green\\\", \\\" {bookmark}\\\"))}'} {ifeq(branch, 'default', '', label(\\\"bold\\\", branch))}\\n{desc|firstline}\\n\\n\"")
	print('Added option alias.sl')

with open(os.path.expanduser('~/.hgrc'), 'wb') as f:
	conf.write(f)
	print('Saved to ~/.hgrc')
