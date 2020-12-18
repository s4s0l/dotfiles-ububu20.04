# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

source ~/.bashdrop/.bash_hist.sh

source ~/.bashdrop/.bash_aws.sh

if [ -f /home/sasol/.bash_private ]; then
  source /home/sasol/.bash_private
fi


# Add sbin directories to PATH.  This is useful on systems that have sudo

[ -z "${PATH##*/sbin*}" ] || PATH=$PATH:/sbin:/usr/sbin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/sasol/.sdkman"
[[ -s "/home/sasol/.sdkman/bin/sdkman-init.sh" ]] && source "/home/sasol/.sdkman/bin/sdkman-init.sh"

source ~/.bashdrop/.bash_it.sh

source ~/.bashdrop/.bash_path.sh

[ -f ~/.fzf.bash  ] && source ~/.fzf.bash

source ~/.bashdrop/.bash_after.sh

#[[ -s "~/.perl5/etc/bashrc" ]] && source ~/.perl5//etc/bashrc

