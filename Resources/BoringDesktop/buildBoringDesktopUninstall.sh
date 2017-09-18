#!/bin/sh

pkgname="BoringDesktop-Uninstall"
version="2.0"
identifier="com.example.${pkgname}"

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --nopayload \
		 --scripts "${projectfolder}/uninstall-scripts" \
		 --identifier "${identifier}" \
		 --version "${version}" \
		 "${projectfolder}/${pkgname}-${version}.pkg"
