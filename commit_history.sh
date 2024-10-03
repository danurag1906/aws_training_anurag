#!/bin/bash

export HISTTIMEFORMAT="%F %T "
source ~/.bashrc

# Change directory to the repo
#cd /home/ec2-user/aws_training
cd /home/ec2-user/cronjobtask/aws_training_anurag

# Capture the history from .bash_history to avoid session issues
cat ~/.bash_history  > /home/ec2-user/cronjobtask/aws_training_anurag/history.txt

# Ensure only the necessary file is added
/usr/bin/git add .

# Commit with the current time as the message
/usr/bin/git commit -m "$(date '+%Y-%m-%d %H:%M:%S')"

# Push to GitHub
/usr/bin/git push origin main
