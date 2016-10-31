#!/bin/sh

pkgname="Office2016"
version="15.26.0"
identifier="com.example.${pkgname}"

PATH=/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname $0)

pkgbuild --nopayload \
         --identifier "${identifier}" \
         --version "${version}" \
         --scripts "${projectfolder}/scripts" \
         "${projectfolder}/${pkgname}-${version}.pkg"
