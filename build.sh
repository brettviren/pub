#!/bin/bash
if [ "$(hostname)" = "hokum" ] ; then
    hugo -D --baseURL http://localhost/ --destination /var/www/html/
fi
hugo -D --baseURL http://brettviren.github.io/ --destination github/
