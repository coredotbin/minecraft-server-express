# Maintainer: Corbin Bartsch <me@cbarts.net>

pkgname=minecraft-server-express
pkgver=1.17.1
pkgrel=1
pkgdesc='Express install script for a vanilla Minecraft server'
arch=('any')
url='https://github.com/coredotbin/minecraft-server-express'
license=('custom')
depends=('java-runtime')
install=minecraft-server-express.install
source=(git+https://github.com/coredotbin/minecraft-server-express.git#tag=${pkgver}
	minecraft-server-express.install
        minecraft-server-express.service
        "https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar")
noextract=('server.jar')
sha256sums=('SKIP'
            '2BED69738365CDF629085847800F5BADB3DDA2A20AB1F427D7B64E6AE2AAB299'
            'E8C211B41317A9F5A780C98A89592ECB72EB39A6E475D4AC9657E5BC9FFAF55F')

package() {
    # Install the systemd service
    mkdir -p ${pkgdir}/usr/lib/systemd/system
    install -m644 minecraft-server-express.service ${pkgdir}/usr/lib/systemd/system/

    # Install the server jar
    mkdir -p ${pkgdir}/usr/share/minecraft-server-express
    install -m644 server.jar ${pkgdir}/usr/share/minecraft-server-express/
}
