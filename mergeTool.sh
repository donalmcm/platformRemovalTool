# A tool to merge identical files

# Change to where your identical files are
cd C:/Users/Visitor/Desktop

# Finds and lists all duplicate files
find . -type f -exec md5sum {} + | sort | uniq -w32 -dD

# keep one version of identical files and delete the rest

# rename remaining file with common name