# Maintainer: Hewol <hewol@proton.me>
pkgname=aeros-calamares-config
_destname1="/etc"
pkgver=1.1
pkgrel=2
pkgdesc="Calamares for aerOS"
arch=('any')
url="https://github.com/hewol"
license=('GPL3')
makedepends=('git')
depends=()
conflicts=('alci-calamares-config' 'alci-calamares-config-dev' 'alci-calamares-config-pure' 'alci-calamares-config-btrfs')
provides=("${pkgname}")
options=(!strip !emptydirs)
source=(${pkgname}::"git+${url}/${pkgname}")
sha256sums=('SKIP')
package() {
	install -dm755 ${pkgdir}${_destname1}
	cp -r ${srcdir}/${pkgname}${_destname1}/* ${pkgdir}${_destname1}
}
