# Use the official .NET SDK image
FROM mcr.microsoft.com/devcontainers/dotnet:1-9.0 AS base

# Install additional tools if needed
RUN apt-get update && apt-get install -y \
    git \
    uuid-runtime \
    && apt-get clean

# Set up a non-root user
ARG USERNAME=vscode
RUN id -u $USERNAME &>/dev/null || useradd -m $USERNAME
USER $USERNAME
