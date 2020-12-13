#!/bin/bash

function prepare_dir_dotfile () {
DIR=${1?}
REL=${2?}
echo -e "config:\n  dotpath: $REL/$DIR"
echo "profiles:"
echo "actions:"
echo "  pre:"
echo "    s_dotdrop-installer: |"
echo "      export DOT_USER=\"{{@@ base_user @@}}\""
echo "      {{@@ _dotfile_abs_src @@}}"
echo "dotfiles:"
for f in "$DIR"/* ; do 
    NAM="$(basename $f)"
    LABEL="inst_${NAM//[^a-zA-Z0-9]/_}"
    echo "  $LABEL:"
    echo "    dst: \"{{@@ env['HOME'] @@}}/.dotdrop-install/$NAM\""
    echo "    src: install/$NAM"
    echo "    actions:"
    echo "    - s_dotdrop-installer"
done
}
