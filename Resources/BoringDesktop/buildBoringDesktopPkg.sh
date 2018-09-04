#!/bin/bash

pkgname="BoringDesktop"
version="1.0"
install_location="/Library/Desktop Pictures/"
identifier="com.example.${pkgname}"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "${install_location}" \
         "${projectfolder}/${pkgname}-${version}.pkg"
