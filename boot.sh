#! /bin/sh

set -e

# Generate list of files in debian/ to distribute.
#(echo '# Automatically generated by boot.sh (from Git tree).' &&
# printf 'EXTRA_DIST += \\\n' &&
# git ls-files debian | grep -v '^debian/\.gitignore$' |
# sed -e 's/\(.*\)/	\1 \\/' -e '$s/ \\//') > debian/automake.mk

#cat debian/control.in > debian/control

# Bootstrap configure system from .ac/.am files
autoreconf --install --force
