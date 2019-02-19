# A tool to remove a specified platform or version

# Change location to where your platorms are stored
cd C:/Users/Visitor/Desktop

echo "*** Please enter a platform you wish to remove ***"

# List of current platforms - change the names to your platforms 
platforms=(version1 version2 version3 version4)
echo ""
for i in "${platforms[@]"; do
 echo "$i"
 done
echo ""
echo "**************************************************"