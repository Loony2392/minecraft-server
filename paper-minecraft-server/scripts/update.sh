#!/bin/bash

# Stop the Minecraft server
echo "Stopping the Minecraft server..."
screen -S minecraft -p 0 -X stuff "stop$(echo -ne '\r')"

# Wait for the server to stop
sleep 10

# Update server.jar
echo "Updating server.jar..."
wget -O server.jar https://papermc.io/ci/job/Paper-1.17.1/latest/download/artifact/paper-1.17.1.jar

# Define the plugins and their versions
declare -A plugins
plugins=(
  ["EssentialsX"]="2.19.0"
  ["WorldEdit"]="7.2.8"
  ["WorldGuard"]="7.0.6"
  ["Vault"]="1.7.3"
  ["LuckPerms"]="5.3.47"
)

# Download and update plugins
echo "Updating plugins..."
mkdir -p plugins
cd plugins
for plugin in "${!plugins[@]}"; do
  version=${plugins[$plugin]}
  echo "Checking for updates for $plugin (current version: $version)..."
  
  # Fetch the latest version from Spigot (this is a placeholder, you need to replace it with the actual URL and logic)
  latest_version=$(curl -s "https://api.spigotmc.org/versions/$plugin/latest")

  if [ "$latest_version" != "$version" ]; then
    echo "New version available for $plugin: $latest_version. Downloading..."
    curl -o "$plugin.jar" "https://api.spigotmc.org/plugins/$plugin/download/$latest_version"
    plugins[$plugin]=$latest_version
  else
    echo "$plugin is up to date."
  fi
done

echo "All plugins are up to date."

# Start the Minecraft server
echo "Starting the Minecraft server..."
screen -S minecraft -d -m java -Xmx1024M -Xms1024M -jar ../server.jar nogui

echo "Update complete!"