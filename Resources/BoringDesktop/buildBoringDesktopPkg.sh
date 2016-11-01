#!/bin/sh

pkgname="BoringDesktop"
version="2.0"
identifier="com.example.${pkgname}"
install_location="/Library/Desktop Pictures/"

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin export PATH

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
		 --identifier "${identifier}" \
		 --version "${version}" \
		 --install-location "${install_location}" \
		 "${projectfolder}/${pkgname}-${version}.pkg"
