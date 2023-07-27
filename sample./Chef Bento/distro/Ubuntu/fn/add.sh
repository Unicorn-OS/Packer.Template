add(){
	if [ -d "$cache" ]; then
		vagrant box list
	else
		vagrant box add $distro $box
		echo "Added box"
	fi
}
