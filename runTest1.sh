#!/bin/bash

# run example datasets
php -f /files/ms-vfetc/src/vfetc.php files=/files/ms-vfetc/data/vendor/sciex/example_batch1.txt outputfile=/tmp/sciex.txt
php -f /files/ms-vfetc/src/vfetc.php files=/files/ms-vfetc/data/vendor/agilent/example_batch1.txt,/files/ms-vfetc/data/vendor/agilent/example_batch2.txt outputfile=/tmp/agilent.txt
php -f /files/ms-vfetc/src/vfetc.php files=/files/ms-vfetc/data/vendor/shimadzu/example_batch1.txt,/files/ms-vfetc/data/vendor/shimadzu/example_batch2.txt,/files/ms-vfetc/data/vendor/shimadzu/example_batch3.txt outputfile=/tmp/shimadzu.txt
php -f /files/ms-vfetc/src/vfetc.php files=/files/ms-vfetc/data/vendor/waters/example_batch1.txt,/files/ms-vfetc/data/vendor/waters/example_batch2.txt outputfile=/tmp/waters.txt

# compare output
if ! cmp -s "/files/ms-vfetc/data/tmp/agilent.txt" "/tmp/agilent.txt"; then
	echo "Agilent files don't match!"
	exit 1
fi

if ! cmp -s "/files/ms-vfetc/data/tmp/sciex.txt" "/tmp/sciex.txt"; then
	echo "Sciex files don't match!"
	exit 1
fi

if ! cmp -s "/files/ms-vfetc/data/tmp/shimadzu.txt" "/tmp/shimadzu.txt"; then
	echo "Shimadzu files don't match!"
	exit 1
fi

if ! cmp -s "/files/ms-vfetc/data/tmp/waters.txt" "/tmp/waters.txt"; then
	echo "Waters files don't match!"
	exit 1
fi

echo "All files created successfully"
