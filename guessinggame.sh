
function congratulate {
	echo "Congratulations!!! your guess is correct"
}

actual=$(ls | wc -l )
read -p "Guess the number of files in the directory " guess
while [ $guess -ne $actual ]
do
	if [[ $guess -lt $actual ]]
		then
			echo "guess is less"
	else
		echo "guess is more"
	fi
	read -p "Guess the number of files in the directory " guess
done
if [[ $guess -eq $actual ]]
then
	congratulate
fi
