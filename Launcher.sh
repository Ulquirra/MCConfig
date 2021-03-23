#!/bin/bash
# Bash Menu Script Example
cat <<!
___  ________  _____              __ _                      
|  \/  /  __ \/  __ \            / _(_)       				              MADE BY : RIP930
| .  . | /  \/| /  \/ ___  _ __ | |_ _  __ _ 
| |\/| | |    | |    / _ \|  _ \|  _| |/ _  | 
| |  | | \__/\| \__/\ (_) | | | | | | | (_| | 
\_|  |_/\____/ \____/\___/|_| |_|_| |_|\__  |
                                        __/ |               
                                       |___/                
======================================================                                                 
!


PS3='Please enter your choice: '
options=("Installer Minecraft" "Installer Server Minecraft 1.7.10" "Installer Server Minecraft 1.12.2" "Installer Server Minecraft 1.13.2" "Installer Server Minecraft 1.16.5" "Installer Java" "Configuration Java" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Installer Minecraft")
            echo "you chose to install Minecraft"
            sudo dpkg -i  ../MCConfig/Install_MC/log/Minecraft.deb
            sudo apt update
            ;;

        "Installer Server Minecraft 1.7.10")
            echo "you chose minecraft server 1.7.10"
            sudo java -jar ../MCConfig/Install_SRV_MC/log/1.7.10/forge-1.7.10-10.13.4.1614-1.7.10-installer.jar
            ;;

        "Installer Server Minecraft 1.12.2")
            echo "you chose minecraft server 1.12.2"
            sudo java -jar ../MCConfig/Install_SRV_MC/log/1.12.2/forge-1.12.2-14.23.5.2854-installer.jar
            ;;
        "Installer Server Minecraft 1.13.2")
            echo "you chose minecraft server 1.13.2"
            sudo java -jar ../MCConfig/Install_SRV_MC/log/1.13.2/forge-1.13.2-25.0.219-installer.jar
            ;;
        "Installer Server Minecraft 1.16.5")
            echo "you chose minecraft server 1.16.5"
            sudo java -jar ../MCConfig/Install_SRV_MC/log/1.16.5/forge-1.16.5-36.1.0-installer.jar
            ;;

        "Installer Java")
            echo "You chose to install java"
            sudo apt install openjdk8-jdk-headless
            sudo apt install openjdk11-jdk-headless
            sudo apt update
            ;;

        "Configuration Java")
            echo "You chose to configure your Java"
            sudo update-alternatives --config java
            ;;

        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
