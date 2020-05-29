function congratulate {
	echo "Congratulations!!! your guess is correct"
}
actual=$(ls -al | grep '^[-l]'| wc -l )
read -p "Guess the number of files in the directory " guess
num='^[0-9]+$'
while true
do
	if ! [[ $guess =~ $num ]] 
	then
		echo "Sorry wrong input : Not a number" 
	elif [[ $guess -lt $actual ]]
	then
		echo "guess is less"
	elif [[ $guess -gt $actual ]]
	then
		echo "guess is more"
	elif [[ $guess -eq $actual ]]
	then
		congratulate
		break
	fi
	read -p "Guess the number of files in the directory " guess
done
