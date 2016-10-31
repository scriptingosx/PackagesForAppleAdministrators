#!/bin/sh

pkgname="SourceCodePro"
version="2.030" # use the version from your download
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "/" \
         "${projectfolder}/${pkgname}-${version}.pkg"
