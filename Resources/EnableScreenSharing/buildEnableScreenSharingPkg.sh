#!/bin/sh

pkgname="EnableScreenSharing"
version="1.0"
identifier="com.example.${pkgname}"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --nopayload \
         --identifier "${identifier}" \
         --version "${version}" \
         --scripts "${projectfolder}/scripts" \
         "${projectfolder}/${pkgname}-${version}.pkg"
