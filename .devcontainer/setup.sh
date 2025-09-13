#!/bin/bash

# Exit on error
set -e

# Target home directory for installation (use vscode user's home)
TARGET_HOME="/home/vscode"

# Create log file
LOG_FILE="/home/vscode/setup-log.txt"
if [ ! -d "/home/vscode" ]; then
    LOG_FILE="/tmp/setup-log.txt"
fi


# Simple logging function
log() {
    echo "[$(date '+%H:%M:%S')] $*"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG_FILE" 2>/dev/null || true
}

# Verbose logging function for detailed steps
log_verbose() {
    echo "  → $*"
    echo "  → $*" >> "$LOG_FILE" 2>/dev/null || true
}

# Log file operations with source and target
log_file_op() {
    local operation="$1"
    local source="$2"
    local target="$3"
    echo "  [$operation] Source: $source"
    echo "                Target: $target"
    echo "  [$operation] Source: $source → Target: $target" >> "$LOG_FILE" 2>/dev/null || true
}

log "========================================"
log "Starting development setup..."
log "========================================"
log_verbose "Script execution started at: $(date '+%Y-%m-%d %H:%M:%S')"
log_verbose "User: $(whoami)"
log_verbose "Home directory: $HOME"
log_verbose "Current directory: $(pwd)"
log_verbose "Log file location: $LOG_FILE"

# Clone the repository
REPO_URL="https://github.com/rajvermacas/development-setup.git"
TEMP_DIR="/tmp/development-setup"

log ""
log "=== STEP 1: Repository Cloning ==="
log_verbose "Repository URL: $REPO_URL"
log_verbose "Temporary clone directory: $TEMP_DIR"

# Remove existing temp directory if it exists
if [ -d "$TEMP_DIR" ]; then
    log_verbose "Found existing directory at $TEMP_DIR"
    log_verbose "Removing existing directory..."
    rm -rf "$TEMP_DIR" 2>/dev/null || true
    log_verbose "Directory removed successfully"
else
    log_verbose "No existing directory found at $TEMP_DIR"
fi

# Clone the repository
log_verbose "Starting git clone operation..."
log_verbose "Command: git clone $REPO_URL $TEMP_DIR"
if git clone "$REPO_URL" "$TEMP_DIR" 2>/dev/null; then
    log "✓ Repository cloned successfully"
    log_verbose "Clone completed at: $(date '+%H:%M:%S')"
    log_verbose "Repository size: $(du -sh "$TEMP_DIR" 2>/dev/null | cut -f1)"
    REPO_AVAILABLE=true
else
    log "✗ Failed to clone repository"
    log_verbose "Clone failed at: $(date '+%H:%M:%S')"
    log_verbose "Continuing setup without repository files..."
    REPO_AVAILABLE=false
fi

# Create target directories
log ""
log "=== STEP 2: Creating Target Directories ==="
log_verbose "Preparing to create directory structure..."

# Claude directories
log_verbose "Creating Claude directories..."
TARGET_DIR="$TARGET_HOME/.claude"
log_verbose "Main Claude directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
log_verbose "Created: $TARGET_DIR"

for subdir in agents commands output-styles; do
    FULL_PATH="$TARGET_DIR/$subdir"
    log_verbose "Creating subdirectory: $FULL_PATH"
    mkdir -p "$FULL_PATH"
    log_verbose "✓ Created: $FULL_PATH"
done

# Gemini directories
log_verbose "Creating Gemini directories..."
TARGET_DIR="$TARGET_HOME/.gemini/commands"
log_verbose "Target: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
log_verbose "✓ Created: $TARGET_DIR"

# Project templates directory
log_verbose "Creating project templates directory..."
TARGET_DIR="$TARGET_HOME/projects/claude-code-templates"
log_verbose "Target: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
log_verbose "✓ Created: $TARGET_DIR"

# User directory for VSCode settings
log_verbose "Creating User directory for VSCode settings..."
TARGET_DIR="$TARGET_HOME/User"
log_verbose "Target: $TARGET_DIR"
mkdir -p "$TARGET_DIR"
log_verbose "✓ Created: $TARGET_DIR"

log "✓ All directories created successfully"


# Copy configuration files
if [ "$REPO_AVAILABLE" = true ]; then
    log ""
    log "=== STEP 3: Copying Configuration Files ==="

    # Ensure target home directory exists
    if [ ! -d "$TARGET_HOME" ]; then
        log_verbose "Creating target home directory: $TARGET_HOME"
        mkdir -p "$TARGET_HOME"
    fi

    # Check if we can write to the target directory
    if [ ! -w "$TARGET_HOME" ]; then
        log_verbose "Warning: Cannot write to $TARGET_HOME"
        log "Error: No write access to $TARGET_HOME"
        exit 1
    fi

    log_verbose "Starting file copy operations..."
    log_verbose "Source base directory: $TEMP_DIR"

    # Copy Claude agents
    log_verbose ""
    log_verbose "Processing Claude agents..."
    SOURCE_DIR="$TEMP_DIR/.claude/agents"
    TARGET_DIR="$TARGET_HOME/.claude/agents"
    if [ -d "$SOURCE_DIR" ]; then
        log_verbose "Found agents directory at: $SOURCE_DIR"
        log_verbose "Listing agent files to copy:"
        for file in "$SOURCE_DIR"/*; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                log_verbose "  - $filename"
                log_file_op "COPY" "$file" "$TARGET_DIR/$filename"
                cp "$file" "$TARGET_DIR/" 2>/dev/null || log_verbose "    Warning: Failed to copy $filename"
            fi
        done
        log "✓ Copied Claude agents"
    else
        log_verbose "No agents directory found at: $SOURCE_DIR"
    fi

    # Copy Claude commands
    log_verbose ""
    log_verbose "Processing Claude commands..."
    SOURCE_DIR="$TEMP_DIR/.claude/commands"
    TARGET_DIR="$TARGET_HOME/.claude/commands"
    if [ -d "$SOURCE_DIR" ]; then
        log_verbose "Found commands directory at: $SOURCE_DIR"
        log_verbose "Listing command files to copy:"
        for file in "$SOURCE_DIR"/*; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                log_verbose "  - $filename"
                log_file_op "COPY" "$file" "$TARGET_DIR/$filename"
                cp "$file" "$TARGET_DIR/" 2>/dev/null || log_verbose "    Warning: Failed to copy $filename"
            fi
        done
        log "✓ Copied Claude commands"
    else
        log_verbose "No commands directory found at: $SOURCE_DIR"
    fi

    # Copy output-styles
    log_verbose ""
    log_verbose "Processing output-styles..."
    SOURCE_DIR="$TEMP_DIR/.claude/output-styles"
    TARGET_DIR="$TARGET_HOME/.claude/output-styles"
    if [ -d "$SOURCE_DIR" ]; then
        log_verbose "Found output-styles directory at: $SOURCE_DIR"
        log_verbose "Listing style files to copy:"
        for file in "$SOURCE_DIR"/*; do
            if [ -f "$file" ]; then
                filename=$(basename "$file")
                log_verbose "  - $filename"
                log_file_op "COPY" "$file" "$TARGET_DIR/$filename"
                cp "$file" "$TARGET_DIR/" 2>/dev/null || log_verbose "    Warning: Failed to copy $filename"
            fi
        done
        log "✓ Copied output-styles"
    else
        log_verbose "No output-styles directory found at: $SOURCE_DIR"
    fi

    # Copy Claude config files
    log_verbose ""
    log_verbose "Processing Claude configuration files..."

    # CLAUDE.md
    SOURCE_FILE="$TEMP_DIR/.claude/CLAUDE.md"
    TARGET_FILE="$TARGET_HOME/.claude/CLAUDE.md"
    if [ -f "$SOURCE_FILE" ]; then
        log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
        cp "$SOURCE_FILE" "$TARGET_FILE"
        log_verbose "✓ Copied CLAUDE.md"
    else
        log_verbose "CLAUDE.md not found at: $SOURCE_FILE"
    fi

    # settings.json
    SOURCE_FILE="$TEMP_DIR/.claude/settings.json"
    TARGET_FILE="$TARGET_HOME/.claude/settings.json"
    if [ -f "$SOURCE_FILE" ]; then
        log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
        cp "$SOURCE_FILE" "$TARGET_FILE"
        log_verbose "✓ Copied settings.json"
    else
        log_verbose "settings.json not found at: $SOURCE_FILE"
    fi

    # Copy templates
    log_verbose ""
    log_verbose "Processing Claude code templates..."
    SOURCE_FILE="$TEMP_DIR/claude-code-templates/session-scratchpad-template.md"
    TARGET_FILE="$TARGET_HOME/projects/claude-code-templates/session-scratchpad-template.md"
    if [ -f "$SOURCE_FILE" ]; then
        log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
        cp "$SOURCE_FILE" "$TARGET_FILE"
        log "✓ Copied templates"
    else
        log_verbose "Template not found at: $SOURCE_FILE"
    fi

    # Copy VSCode keybindings
    log_verbose ""
    log_verbose "Processing VSCode keybindings..."
    SOURCE_FILE="$TEMP_DIR/.vscode/keybindings.json"
    TARGET_FILE="$TARGET_HOME/User/keybindings.json"
    if [ -f "$SOURCE_FILE" ]; then
        log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
        cp "$SOURCE_FILE" "$TARGET_FILE"
        log_verbose "✓ Copied VSCode keybindings"
    else
        log_verbose "VSCode keybindings not found at: $SOURCE_FILE"
    fi

    # Copy Gemini files
    log_verbose ""
    log_verbose "Processing Gemini configuration..."
    if [ -d "$TEMP_DIR/.gemini" ]; then
        log_verbose "Found Gemini directory"

        # GEMINI.md
        SOURCE_FILE="$TEMP_DIR/.gemini/GEMINI.md"
        TARGET_FILE="$TARGET_HOME/.gemini/GEMINI.md"
        if [ -f "$SOURCE_FILE" ]; then
            log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
            cp "$SOURCE_FILE" "$TARGET_FILE"
            log_verbose "✓ Copied GEMINI.md"
        else
            log_verbose "GEMINI.md not found at: $SOURCE_FILE"
        fi

        # git-commit.toml
        SOURCE_FILE="$TEMP_DIR/.gemini/commands/git-commit.toml"
        TARGET_FILE="$TARGET_HOME/.gemini/commands/git-commit.toml"
        if [ -f "$SOURCE_FILE" ]; then
            log_file_op "COPY" "$SOURCE_FILE" "$TARGET_FILE"
            cp "$SOURCE_FILE" "$TARGET_FILE"
            log_verbose "✓ Copied git-commit.toml"
        else
            log_verbose "git-commit.toml not found at: $SOURCE_FILE"
        fi

        log "✓ Copied Gemini config"
    else
        log_verbose "No Gemini directory found at: $TEMP_DIR/.gemini"
    fi

    log_verbose "File copy operations completed"
else
    log ""
    log "=== STEP 3: Skipping File Copy ==="
    log_verbose "Repository not available, skipping all file copy operations"
    log_verbose "Reason: Git clone failed or repository was not accessible"
fi

# Install utility packages
log ""
log "=== STEP 4: Installing Utility Packages ==="
log_verbose "Preparing package installation..."

# Essential packages only
PACKAGES=(
    "vim"
    "git"
    "curl"
    "wget"
    "vim"
    "jq"
    "ripgrep"
    "fd-find"
    "tree"
    "htop"
    "net-tools"
    "sed"
    "awk"
    "sort"
    "diff"
    "sdiff"
    "uniq"
    "grep"
    "egrep"
    "fgrep"
    "ack"
    "base64"
    "head"
    "tail"
    "unzip"
    "find"
    "locate"
    "which"
    "vmstat"
    "ip"
    "ifconfig"
    "nslookup"
    "netstat"
    "ss"
    "tcpdump"
    "nmap"
    "ping"
    "traceroute"
)

log_verbose "Total packages to check/install: ${#PACKAGES[@]}"
log_verbose "Package list: ${PACKAGES[*]}"

# Update package list
log_verbose ""
log_verbose "Updating APT package lists..."
log_verbose "Command: sudo apt-get update -qq"
sudo apt-get update -qq
log_verbose "✓ Package lists updated"

# Install packages
log_verbose ""
log_verbose "Starting package installation..."
INSTALLED_COUNT=0
SKIPPED_COUNT=0
FAILED_COUNT=0

for package in "${PACKAGES[@]}"; do
    log_verbose ""
    log_verbose "Processing package: $package"

    # Check if already installed
    if dpkg -l | grep -q "^ii  $package "; then
        log_verbose "  Package $package is already installed - skipping"
        log "  ○ $package already installed"
        ((SKIPPED_COUNT++))
    else
        log_verbose "  Package $package not found, attempting installation..."
        log_verbose "  Command: sudo apt-get install -y -qq $package"

        # Try to install the package
        if sudo apt-get install -y -qq "$package" >/dev/null 2>&1; then
            log "  ✓ Successfully installed $package"
            log_verbose "  Installation completed for $package"
            ((INSTALLED_COUNT++))
        else
            log "  ✗ Failed to install $package"
            log_verbose "  ERROR: Installation failed for $package"
            ((FAILED_COUNT++))
        fi
    fi
done

# Package installation summary
log_verbose ""
log_verbose "Package installation summary:"
log_verbose "  - New installations: $INSTALLED_COUNT"
log_verbose "  - Already installed: $SKIPPED_COUNT"
log_verbose "  - Failed installations: $FAILED_COUNT"
log "✓ Package installation phase completed"

# Clean up
log ""
log "=== STEP 5: Cleanup ==="
log_verbose "Starting cleanup operations..."

if [ -d "$TEMP_DIR" ]; then
    log_verbose "Found temporary directory: $TEMP_DIR"
    log_verbose "Calculating size before removal..."
    TEMP_SIZE=$(du -sh "$TEMP_DIR" 2>/dev/null | cut -f1)
    log_verbose "Size of temporary directory: $TEMP_SIZE"
    log_verbose "Removing temporary directory..."
    rm -rf "$TEMP_DIR"
    log_verbose "✓ Temporary directory removed"
else
    log_verbose "No temporary directory to clean up"
fi

log_verbose "Cleanup completed"

# Final summary
log ""
log "========================================"
log "🎉 SETUP COMPLETED SUCCESSFULLY! 🎉"
log "========================================"
log ""
log "Configuration Summary:"
log "  • Claude configuration: ~/.claude/"
log "    - Agents: ~/.claude/agents/"
log "    - Commands: ~/.claude/commands/"
log "    - Output styles: ~/.claude/output-styles/"
log "    - Settings: ~/.claude/settings.json"
log "    - Configuration: ~/.claude/CLAUDE.md"
log ""
log "  • Gemini configuration: ~/.gemini/"
log "    - Commands: ~/.gemini/commands/"
log "    - Configuration: ~/.gemini/GEMINI.md"
log ""
log "  • Project templates: ~/projects/claude-code-templates/"
log ""
log "  • VSCode settings: ~/User/"
log ""
log "Statistics:"
log "  • Packages installed: $INSTALLED_COUNT"
log "  • Packages skipped: $SKIPPED_COUNT"
log "  • Packages failed: $FAILED_COUNT"
log ""
log "Log file saved at: $LOG_FILE"
log ""
log "Script execution completed at: $(date '+%Y-%m-%d %H:%M:%S')"
log "========================================"