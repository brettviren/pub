#!/bin/bash
msg="$@"
if [ -z "$msg" ] ; then
    msg="updates as of $(date)"
fi

hugo -D --baseURL http://localhost/~bv/ --destination ~/public_html/
hugo -D --baseURL http://brettviren.github.io/ --destination github/
cd github/
git add *
git commit -am "$msg"
git push
cd ..
# we don't do a blanket add in source!  DIY.
# git commit -am "$msg"
# git push
git status
