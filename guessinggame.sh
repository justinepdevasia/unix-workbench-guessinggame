
function congratulate {
	echo "Congratulations!!! your guess is correct"
}

actual=$(ls -a | wc -l )
read -p "Guess the number of files in the directory " guess

num='^[0-9]+$'
if ! [[ $guess =~ $num ]] 
then
   echo "Sorry wrong input : Not a number" 
   exit 1
fi

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
