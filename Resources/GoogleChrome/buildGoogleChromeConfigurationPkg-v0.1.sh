#!/bin/sh

pkgname="GoogleChromeConfiguration"
version="0.1"
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname "$0")

pkgbuild --nopayload \
         --identifier "${identifier}" \
         --version "${version}" \
         --scripts "${projectfolder}/scripts" \
         "${projectfolder}/${pkgname}-${version}.pkg"