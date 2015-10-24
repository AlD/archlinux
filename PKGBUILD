# Maintainer: Bjoern Franke <bjo@nord-west.org>

pkgname=tvheadend

pkgver=4.0.7
pkgrel=2
pkgdesc="TV streaming server for Linux"
arch=('i686' 'x86_64' 'arm' 'armv6h' 'armv7h')
url="https://tvheadend.org/projects/tvheadend"
license=('GPL3')
depends=('avahi' 'linuxtv-dvb-apps' 'openssl' 'python2' 'ffmpeg' 'uriparser')
makedepends=('git')
optdepends=('xmltv: For an alternative source of programme listings'
	    'libhdhomerun: support for HDHomeRun devices')
provides=('tvheadend')
conflicts=('tvheadend' 'hts-tvheadend' 'hts-tvheadend-svn' 'hts-tvheadend-git' 'tvheadend-git')
install=tvheadend.install

source=("https://github.com/tvheadend/tvheadend/archive/v$pkgver.tar.gz" 
	'tvheadend.service')
sha512sums=('b895a401885010a2636afb8be4d4ac24c54c88113eab6760b6793fd9ecb2321b56aff3b853ae078faec8acc4ec8415b287c0ce32cb5cb8fe4b95e8c1ffaddf73'
            '456084a08ce0e02a4a32d67a8a7937d45695cb4b08b29297ead8a7e9d2a92963335f653f56d4c9346f4b2729868408fafbcd4caebf9fc8cdaa90171514cf4a57')
	    
prepare() {
    cd ${srcdir}/${pkgname}-${pkgver}
    ./configure --prefix=/usr --python=python2
}

build() {
    cd ${srcdir}/${pkgname}-${pkgver}
    make
}

package() {
    cd ${srcdir}/${pkgname}-${pkgver}
    make DESTDIR="$pkgdir/" install
    chmod 0644 ${pkgdir}/usr/share/man/man1/tvheadend.1
    install -D -m 644 "$srcdir/tvheadend.service" "$pkgdir/usr/lib/systemd/system/tvheadend.service"
}
