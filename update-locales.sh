#!/usr/bin/env sh

BASEDIR=$1
LC_SRC=$2
LC_DST=$3

find $BASEDIR -type f -name "*.rb" -not -name "load_configuration.rb" -exec sed -r "s/([_0-9a-zA-Z]*)_"$LC_SRC":/'\1_"$LC_DST"':/g" -i {} \;
find $BASEDIR -type f -name "*.rb" -exec sed -r "s/\""$LC_SRC"\"/'"$LC_DST"'/g" -i {} \;
