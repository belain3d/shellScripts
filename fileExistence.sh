command="htop"

if command -v $command
then
	echo "$command is available, let's run it..."
else
	echo "$command is not availabe, installing it now..."
	sudo apt update && sudo apt install -y $command
fi

$command
