if [ -d ~/.sdkman ]; then
	echo "=======> SdkMan already installed <======="
else
	echo "------->> installing SdkMan <<------"
	curl -s https://get.sdkman.io | bash
fi