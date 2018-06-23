#!/usr/bin/env bash
docker build --no-cache -t ms-vfetc .
docker run -it --rm -v $(pwd)/data:/data ms-vfetc files=/data/vendor/agilent/batches.zip outputfile=/data/agilent_from_zip.txt && tail data/agilent_from_zip.txt
docker run -it --rm -v $(pwd)/data:/data ms-vfetc files=/data/vendor/agilent/example_batch1.txt,/data/vendor/agilent/example_batch2.txt outputfile=/data/agilent.txt && tail data/agilent.txt
docker run -it --rm -v $(pwd)/data:/data ms-vfetc files=/data/vendor/sciex/example_batch1.txt outputfile=/data/sciex.txt && tail data/sciex.txt
docker run -it --rm -v $(pwd)/data:/data ms-vfetc files=/data/vendor/shimadzu/example_batch1.txt,/data/vendor/shimadzu/example_batch2.txt,/data/vendor/shimadzu/example_batch3.txt outputfile=/data/shimadzu.txt && tail data/shimadzu.txt
docker run -it --rm -v $(pwd)/data:/data ms-vfetc files=/data/vendor/waters/example_batch1.txt,/data/vendor/waters/example_batch2.txt outputfile=/data/waters.txt && tail data/waters.txt