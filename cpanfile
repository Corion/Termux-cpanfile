#!/bin/bash

# This will install cpanminus and then the Perl modules
# as listed at the end of this script. To run use
# the following commands:
#
# chmod ugo+x ./cpanfile && ./cpanfile
#

eval '
pkg install git perl make clang

if ! cpanm --help 2>&1 >/dev/null ; then
    curl -L https://cpanmin.us | perl - App::cpanminus
fi

DIR=$(dirname "$0")
cpanm --installdeps --notest --cpanfile "$DIR"

exit
'
if 0;

requires 'Mojolicious';
requires 'DBIx::Spreadsheet';
#requires 'App::sqldisplay'; # to be released on CPAN
requires 'DBIx::RunSQL';
