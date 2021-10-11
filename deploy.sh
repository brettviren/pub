#!/bin/bash
msg="$@"
if [ -z "$msg" ] ; then
    msg="updates as of $(date)"
fi

if [ "$(hostname)" = "hokum" ] ; then
    hugo -D --baseURL http://localhost/ --destination /var/www/html/
fi
hugo -D --baseURL https://brettviren.github.io/ --destination github/

cd github/
git add *
git commit -am "$msg"
git push
cd ..
# we don't do a blanket add in source!  DIY.
# git commit -am "$msg"
# git push
git status
