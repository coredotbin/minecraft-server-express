#!/bin/bash

# Minecraft server installer

echo Creating minecraft user...
useradd minecraft
# Get resources
# These will be included if cloning the repo
#wget https://github.com/coredotbin/minecraft-server-express/minecraft@minecraftd.service?raw=true minecraft@minecraftd.service
#wget https://github.com/coredotbin/minecraft-server-express/start.sh?raw=true start.sh
echo Downloading server jar...
wget https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar
chmod +x start.sh
# BY USING THIS PACKAGE YOU AGREE TO THE MINECRAFT END USER LICENSE AGREEMENT [1] AND MICROSOFT PRIVACY POLICY [2]
# [1] https://minecraft.net/terms
# [2] https://privacy.microsoft.com/en-US/privacystatement
echo eula=true > eula.txt
# Enable and start systemd service
mv minecraft@minecraftd.service /etc/systemd/system/
systemctl enable minecraft@minecraftd.service
echo Starting minecraftd...
systemctl start minecraft@minecraftd.service
