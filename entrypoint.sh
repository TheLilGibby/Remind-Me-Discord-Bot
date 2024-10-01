#!/bin/sh

# Check if DISCORD_BOT_TOKEN is set
if [ -z "$DISCORD_BOT_TOKEN" ]; then
    echo "Error: DISCORD_BOT_TOKEN is not set"
    exit 1
fi

# Replace the placeholder in config.js with the actual token
sed -i "s/BOT_TOKEN: 'placeholder'/BOT_TOKEN: '$DISCORD_BOT_TOKEN'/" config.js

# Run the main application
exec "$@"
