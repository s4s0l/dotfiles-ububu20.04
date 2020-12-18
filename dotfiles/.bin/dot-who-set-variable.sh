#!/bin/bash
PS4='+$BASH_SOURCE> ' BASH_XTRACEFD=7 bash -xl 7>~/delete_me.envs
echo "look in delete_me.envs"

