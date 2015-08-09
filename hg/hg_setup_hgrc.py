#!/usr/bin/python2
"""
Amend .hgrc file
"""

import os
import ConfigParser

conf = ConfigParser.ConfigParser(allow_no_value=True)
conf.readfp(open(os.path.expanduser('~/.hgrc')))

for s in ['extensions', 'alias', 'color']:
	if not conf.has_section(s):
		conf.add_section(s)
		print('Added section "' + s + '"')

extensions = ['histedit', 'smartlog', 'githelp', 'backups', 'fbamend', 'chistedit', 'hggit', 'hgext.bookmarks', 'color']
for ext in extensions:
	if not conf.has_option('extensions', ext):
		conf.set('extensions', ext, '')
		print('Added option "extensions.%s"' % ext)

if not conf.has_option('alias', 'sl'):
	conf.set('alias', 'sl', "smartlog --template \"{shortest(node)}  {author|user}  {bookmarks % '{ifeq(bookmark, current, label(\\\"yellow\\\", \\\" {bookmark}*\\\"), label(\\\"green\\\", \\\" {bookmark}\\\"))}'} {ifeq(branch, 'default', '', label(\\\"bold\\\", branch))}\\n{desc|firstline}\\n\\n\"")
	print('Added option alias.sl')

if not conf.has_option('color', 'mode'):
	conf.set('color', 'mode', 'auto')

with open(os.path.expanduser('~/.hgrc'), 'wb') as f:
	conf.write(f)
	print('Saved to ~/.hgrc')
