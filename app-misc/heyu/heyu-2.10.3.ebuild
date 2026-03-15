# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Heyu controller X10 home automation devices"

HOMEPAGE="https://www.heyu.org/"

SRC_URI="https://github.com/HeyuX10Automation/${PN}/archive/refs/tags/v${PV}.tar.gz"

PATCHES=(
	"${FILESDIR}"/Configure.patch
	"${FILESDIR}"/Makefile.in.patch
)

LICENSE="GPL-3"

SLOT="0"

KEYWORDS="amd64"

src_configure() {
	./Configure
}

src_install() {
	emake install
	mkdir -p ${D}/var/tmp/heyu
}
