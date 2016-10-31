#!/bin/sh

pkgname="InstallerUI"
version="1.0"
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname $0)

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "/" \
         "${projectfolder}/${pkgname}-${version}.pkg"

productbuild --distribution Distribution.xml \
         --resources Resources \
         "${projectfolder}/${pkgname}.pkg"