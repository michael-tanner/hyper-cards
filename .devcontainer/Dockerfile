# Use the official .NET SDK image
FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0 AS base

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && apt-get clean

# Install Node.js (using NodeSource)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @azure/static-web-apps-cli

# Install PowerShell
RUN apt-get update && apt-get install -y \
    powershell \
    && apt-get clean

# Add the script to update the HTML file
COPY update-index-html.sh /usr/local/bin/update-index-html.sh
RUN chmod +x /usr/local/bin/update-index-html.sh

# Set up a non-root user
ARG USERNAME=vscode
RUN id -u $USERNAME &>/dev/null || useradd -m $USERNAME
USER $USERNAME
