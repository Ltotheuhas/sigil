#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"
mkdir -p "$INSTALL_DIR"
cp sigil "$INSTALL_DIR"

echo "'sigil' installed to $INSTALL_DIR"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
  echo -e "\nAdd this to your shell config (e.g., ~/.bashrc or ~/.zshrc):"
  echo "export PATH=\"\$PATH:$INSTALL_DIR\""
fi
