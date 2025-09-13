#!/bin/bash

# Exit on error
set -e

# Create log file
LOG_FILE="/home/vscode/setup-log.txt"
if [ ! -d "/home/vscode" ]; then
    LOG_FILE="/tmp/setup-log.txt"
fi

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Simple logging function
log() {
    echo "[$(date '+%H:%M:%S')] $*"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG_FILE" 2>/dev/null || true
}

log "${GREEN}Starting development setup...${NC}"

# Clone the repository
REPO_URL="https://github.com/rajvermacas/development-setup.git"
TEMP_DIR="/tmp/development-setup"

log "${YELLOW}Cloning repository...${NC}"

# Remove existing temp directory if it exists
rm -rf "$TEMP_DIR" 2>/dev/null || true

# Clone the repository
if git clone "$REPO_URL" "$TEMP_DIR" 2>/dev/null; then
    log "${GREEN}Repository cloned successfully${NC}"
    REPO_AVAILABLE=true
else
    log "${RED}Failed to clone repository${NC}"
    REPO_AVAILABLE=false
fi

# Create target directories
log "${YELLOW}Creating target directories...${NC}"
mkdir -p ~/.claude/{agents,commands,output-styles}
mkdir -p ~/.gemini/commands
mkdir -p ~/projects/claude-code-templates
mkdir -p ~/User

# Copy configuration files
if [ "$REPO_AVAILABLE" = true ]; then
    log "${YELLOW}Copying configuration files...${NC}"

    # Copy Claude agents
    if [ -d "$TEMP_DIR/.claude/agents" ]; then
        cp -r "$TEMP_DIR/.claude/agents/"* ~/.claude/agents/ 2>/dev/null || true
        log "  ${GREEN}✓${NC} Copied agents"
    fi

    # Copy Claude commands
    if [ -d "$TEMP_DIR/.claude/commands" ]; then
        cp -r "$TEMP_DIR/.claude/commands/"* ~/.claude/commands/ 2>/dev/null || true
        log "  ${GREEN}✓${NC} Copied commands"
    fi

    # Copy output-styles
    if [ -d "$TEMP_DIR/.claude/output-styles" ]; then
        cp -r "$TEMP_DIR/.claude/output-styles/"* ~/.claude/output-styles/ 2>/dev/null || true
        log "  ${GREEN}✓${NC} Copied output-styles"
    fi

    # Copy Claude config files
    [ -f "$TEMP_DIR/.claude/CLAUDE.md" ] && cp "$TEMP_DIR/.claude/CLAUDE.md" ~/.claude/
    [ -f "$TEMP_DIR/.claude/settings.json" ] && cp "$TEMP_DIR/.claude/settings.json" ~/.claude/

    # Copy templates
    if [ -f "$TEMP_DIR/claude-code-templates/session-scratchpad-template.md" ]; then
        cp "$TEMP_DIR/claude-code-templates/session-scratchpad-template.md" ~/projects/claude-code-templates/
        log "  ${GREEN}✓${NC} Copied templates"
    fi

    # Copy VSCode keybindings
    [ -f "$TEMP_DIR/.vscode/keybindings.json" ] && cp "$TEMP_DIR/.vscode/keybindings.json" ~/User/

    # Copy Gemini files
    if [ -d "$TEMP_DIR/.gemini" ]; then
        [ -f "$TEMP_DIR/.gemini/GEMINI.md" ] && cp "$TEMP_DIR/.gemini/GEMINI.md" ~/.gemini/
        [ -f "$TEMP_DIR/.gemini/commands/git-commit.toml" ] && cp "$TEMP_DIR/.gemini/commands/git-commit.toml" ~/.gemini/commands/
        log "  ${GREEN}✓${NC} Copied Gemini config"
    fi
else
    log "${YELLOW}Skipping file copy (repository not available)${NC}"
fi

# Install utility packages
log "${YELLOW}Installing utility packages...${NC}"

# Essential packages only
PACKAGES=(
    "git"
    "nodejs"
    "npm"
    "curl"
    "wget"
    "vim"
    "jq"
    "ripgrep"
    "fd-find"
    "tree"
    "htop"
    "net-tools"
)

# Update package list
sudo apt-get update -qq

# Install packages
for package in "${PACKAGES[@]}"; do
    if ! dpkg -l | grep -q "^ii  $package "; then
        if sudo apt-get install -y -qq "$package" >/dev/null 2>&1; then
            log "  ${GREEN}✓${NC} Installed $package"
        else
            log "  ${RED}✗${NC} Failed to install $package"
        fi
    fi
done

# Clean up
[ -d "$TEMP_DIR" ] && rm -rf "$TEMP_DIR"

log "${GREEN}================================${NC}"
log "${GREEN}Setup completed!${NC}"
log "${GREEN}Configuration files copied to:${NC}"
log "  • ~/.claude/"
log "  • ~/.gemini/"
log "  • ~/projects/claude-code-templates/"
log "${GREEN}================================${NC}"