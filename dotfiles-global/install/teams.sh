#!/bin/bash
set -e
wget https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.5153-1.x86_64.rpm -O /tmp/teams.rpm
zypper in /tmp/teams.rpm
