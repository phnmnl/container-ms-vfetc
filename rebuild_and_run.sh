#!/usr/bin/env bash
docker build --no-cache -t ms-vfetc . && docker run -it --rm -v $(pwd)/data/tmp:/out ms-vfetc files=/files/ms-vfetc/data/vendor/agilent/example_batch1.txt,/files/ms-vfetc/data/vendor/agilent/example_batch2.txt outputfile=/out/agilent.txt && tail data/tmp/agilent.txt
docker build --no-cache -t ms-vfetc . && docker run -it --rm -v $(pwd)/data/tmp:/out ms-vfetc files=/files/ms-vfetc/data/vendor/sciex/example_batch1.txt outputfile=/out/sciex.txt && tail data/tmp/sciex.txt
docker build --no-cache -t ms-vfetc . && docker run -it --rm -v $(pwd)/data/tmp:/out ms-vfetc files=/files/ms-vfetc/data/vendor/shimadzu/example_batch1.txt,/files/ms-vfetc/data/vendor/shimadzu/example_batch2.txt,/files/ms-vfetc/data/vendor/shimadzu/example_batch3.txt outputfile=/out/shimadzu.txt && tail data/tmp/shimadzu.txt
docker build --no-cache -t ms-vfetc . && docker run -it --rm -v $(pwd)/data/tmp:/out ms-vfetc files=/files/ms-vfetc/data/vendor/waters/example_batch1.txt,/files/ms-vfetc/data/vendor/waters/example_batch2.txt outputfile=/out/waters.txt && tail data/tmp/waters.txt