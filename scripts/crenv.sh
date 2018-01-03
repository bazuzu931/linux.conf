#!/bin/bash

# create virtualenv
python3 -m venv $1;
cd $1;
  
# create isvenv.py with checking content
touch isvenv.py;

# add isvenv.py content
echo "
import sys
def is_venv():
	return (hasattr(sys, 'real_prefix') or
			(hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix))

if is_venv():
	print('inside virtualenv or venv')
else:
	print('outside virtualenv or venv')
" >> isvenv.py;


# add isvenv alias in ~/.bashrc
# isvenv='alias isv="python isvenv.py"'
# if ! [ grep -q '$isvenv' ~/.bashrc ] ; then
# printf '\n\n\n$isvenv' >> ~/.bashrc;
# fi

source ~/.bashrc

# activate venv
if [ -d 'bin' ] ; then
	source ./bin/activate
else
	source $1/bin/activate
fi