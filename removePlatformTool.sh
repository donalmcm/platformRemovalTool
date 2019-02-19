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

# Taking in users choice
read platformChoice

# Ensuring user choice matches an existing platform
while [[ ! " ${platforms[@] " =~ " ${platformChoice} " ]]
do
	echo "Invalid choice"
	echo "Please select a valid option"
	read platformChoice
done

# Finds all instances of files and directorys containing the user input
echo "*** Proceding to delete $platformChoice ***"
find . -name "*${platformChoice}*" -type d -exec rm -rf {} + # Remove folders
find . -type f -name "*${platformChoice}*" -delete # Remove files
echo "*** Removal Complete ***"