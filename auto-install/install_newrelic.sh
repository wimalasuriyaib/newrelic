# #!/bin/bash

# Source newrelic.properties file to load key-value pairs
source newrelic.properties

# Download and run the New Relic install script
curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash

# Install New Relic with specified API key and account ID
sudo NEW_RELIC_API_KEY="$NEW_RELIC_API_KEY" NEW_RELIC_ACCOUNT_ID="$NEW_RELIC_ACCOUNT_ID" /usr/local/bin/newrelic install -y
