#!/bin/bash
	echo ""
	echo "=============================================="
	echo "START: MAKE CLEAN"
	echo "=============================================="
	echo ""
git reset --hard
if [ "${1}" = "noimg" ] ; then
	git ls-files . --ignored --exclude-standard --others --directory | grep -v 'img' | while read file; do echo $file; rm -rf $file; done
else
	git ls-files . --ignored --exclude-standard --others --directory | while read file; do echo $file; rm -rf $file; done
fi
git ls-files . --exclude-standard --others --directory | while read file; do echo $file; rm -rf $file; done
	echo ""
	echo "=============================================="
	echo "END: MAKE CLEAN"
	echo "=============================================="
	echo ""
