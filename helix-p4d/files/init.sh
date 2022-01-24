#!/bin/sh

# Setup directories
mkdir -p $P4ROOT
mkdir -p $P4DEPOTS
mkdir -p $P4CKP
mkdir -p $P4LOGDIR
chown -R perforce:perforce $P4HOME

# Ensure server is Unicode
sudo -E -u perforce p4d $P4CASE -r$P4ROOT -p$P4TCP -L$P4LOG -J$P4JOURNAL -xi
# Start p4d
sudo -E -u perforce p4d $P4CASE -r$P4ROOT -p$P4TCP -L$P4LOG -J$P4JOURNAL
