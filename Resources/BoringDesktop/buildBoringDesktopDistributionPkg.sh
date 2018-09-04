#!/bin/bash

pkgname="BoringDesktop"
version="2.0"
identifier="com.example.${pkgname}"
install_location="/Library/Desktop Pictures/"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

# build the component package
pkgbuild --root "${projectfolder}/payload" \
		 --identifier "${identifier}" \
		 --version "${version}" \
		 --ownership recommended \
		 --install-location "${install_location}" \
		 "${projectfolder}/${pkgname}.pkg"

# build the distribution package
productbuild --package "${projectfolder}/${pkgname}.pkg" \
		"${projectfolder}/${pkgname}-${version}.pkg"
		
# remove temporary component package file
rm "${projectfolder}/${pkgname}.pkg"
