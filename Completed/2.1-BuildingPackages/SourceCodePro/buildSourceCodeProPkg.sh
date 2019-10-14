#!/bin/sh

pkgname="SourceCodePro"
version="2.030" # use the version from your download
install_location="/"
identifier="com.example.${pkgname}"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "${install_location}" \
         "${projectfolder}/${pkgname}-${version}.pkg"
