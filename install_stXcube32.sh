#!/bin/sh


while true; do
    read -p "Do you wish to install this program? (y/n): " yn
    case $yn in
        [Yy]* ) 
        	sudo apt install -y gcc-arm-none-eabi stlink-tools;
		sudo apt upgrade -y gcc-arm-none-eabi stlink-tools;
		
		while true; do
		    read -p "Do you have GUI this system? if say no, will not install STM32XCUBE (y/n): " yn
		    case $yn in
			[Yy]* ) 
				sudo wget -P ~/stXcube32 https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/8c/64/99/4a/f8/b5/4f/79/stm32cubemx-lin/files/stm32cubemx-lin.zip/jcr:content/translations/en.stm32cubemx-lin.zip
				sudo apt install -y default-jre code zip;
				sudo apt upgrade -y default-jre code zip;
				sudo unzip ~/stXcube32/en.stm32cubemx-lin.zip -d ~/stXcube32/

				sudo java -jar ~/stXcube32/SetupSTM32CubeMX-6.4.0
				sudo rm -r ~/stXcube32/SetupSTM32CubeMX-6.4.0 
				sudo rm -r ~/stXcube32/Readme.html 
				sudo rm -r ~/stXcube32/jre
				break;;
			[Nn]* ) exit;;
			* ) echo "Please answer yes or no.";;
		    esac
		done
		
		break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done




