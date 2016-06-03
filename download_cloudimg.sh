#!/usr/bin/env bash
set -e

codename=precise
imgname="ubuntu-${codename}-core-cloudimg-i386"
tarball="${imgname}-root.tar.gz"
baseurl="https://partner-images.canonical.com/core/$codename/current"
#wget -qN "$baseurl/"{{MD5,SHA{1,256}}SUMS{,.gpg},"$imgname.manifest",'unpacked/build-info.txt'}
wget -qN "$baseurl/SHA256SUMS"
wget -N "$baseurl/$tarball"
sha256sum="$(sha256sum "$tarball" | cut -d' ' -f1)"
if ! grep -q "$sha256sum" SHA256SUMS; then
	echo >&2 "error: '$tarball' has invalid SHA256"
	exit 1
fi
