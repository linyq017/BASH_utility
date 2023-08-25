%%bash
cd # to the folder where subfolder count will be conducted
for dir in */; do
    echo "Number of files in $dir: $(find "$dir" -maxdepth 1 -type f | wc -l)" # find command searches within the subfolder using -maxdepth 1 to avoid searching recursively into sub-subfolders. -type f option specifies that only files should be counted
