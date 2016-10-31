#!/bin/sh

pkgname="SourceCodePro"
version="2.030e" # use the version from your download
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "/" \
         --scripts "${projectfolder}/scripts" \
         --info "${projectfolder}/PackageInfo.xml" \
         --sign "Armin Briegel" \
         "${pkgname}-${version}.pkg"
