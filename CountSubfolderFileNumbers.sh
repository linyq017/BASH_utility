%%bash
directory="/workspace/Lidardata01/Lin/Data/Indices/tiles"
 
for dir in "$directory"/*/; do
    # Use find to count files in the subdirectory at depth 1
    file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    
    # Extract the subdirectory name
    subfolder_name=$(basename "$dir")
    
    # Print the result
    echo "Number of files in $subfolder_name: $file_count"
done
