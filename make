#! /bin/bash
echo "">out
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "generating: $line"
	printf "\n\n" >> out
	echo "$line" >> out
	printf "\n\n" >> out
	curl "http://artii.herokuapp.com/make?text=Find+LicenseCode&font=$line" >> out
	printf "\n\n" >> out
done < "$1"
