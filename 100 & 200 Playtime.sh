#!/bin/zsh

# Use defaults to read the com.apple.dock.plist file
defaults read com.apple.dock

# Let's get specific information, show me only "Orientation"
defaults read com.apple.dock orientation

# Change orientation to "left"
defaults write com.apple.dock orientation -string "left"

# It didn't change, let's read the file
defaults read com.apple.dock orientation

# We need to restart the Dock to see the change
killall Dock

# Let's set it back and use && to combine the two commands into one line
defaults write com.apple.dock orientation -string "right" && killall Dock
