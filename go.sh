#!/bin/bash
#
# Wrapper to run Chef.
#

if test ! "$1"
then
	echo "Syntax: $0 ./path/to/attributes.json"
	exit 1
fi
FILE=$1

DEBUG=""
if test "$CHEF_ENV" == "debug"
then
	DEBUG="-l debug"
fi

DIR=`pwd`
chef-solo -c ${DIR}/config.rb -j ${DIR}/${FILE} $DEBUG $@

if test "$CHEF_ENV" == "debug"
then
	echo ""
	echo "Too much output? Try running with CHEF_ENV=\"\" next time!"
	echo ""

else
	echo ""
	echo "Not enough output? Try running with CHEF_ENV=\"debug\" next time!"
	echo ""

fi

