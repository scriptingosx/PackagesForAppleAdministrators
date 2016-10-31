#!/bin/sh

pkgname="BBEditCLITools"
version="11.6.2"
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
     --identifier "${identifier}" \
     --version "${version}" \
     --install-location "/" \
    "${projectfolder}/${pkgname}-${version}.pkg"
    