#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
OUTDIR=$ROOTDIR/continuous
TMPDIR=`mktemp -d`

cd $TMPDIR
git clone git@github.com:polux/propcheck.git
cd propcheck
pub install
rm -rf $OUTDIR
dartdoc -v --link-api --pkg packages/ --out $OUTDIR lib/propcheck.dart
#dartdoc -v --generate-app-cache --link-api --pkg packages/ --out $OUTDIR lib/propcheck.dart
rm -rf $TMPDIR
