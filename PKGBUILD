# Maintainer: Corbin Bartsch <me@cbarts.net>

pkgname=minecraft-server-express
pkgver=0.1
pkgrel=0
pkgdesc='Express install script for a vanilla Minecraft server'
arch=('any')
url='https://github.com/coredotbin/minecraft-server-express'
license=('custom')
depends=('java-runtime')
install=minecraft-server-express.install
source=(git+https://github.com/coredotbin/minecraft-server-express.git#tag=${pkgver}-${pkgrel}
        minecraft-server-express.service
        minecraft-server-express.sysusers
        "https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar")
sha256sums=('SKIP'
            'DD529610E1AA70A27127C725CCED314E034EC50794C6F3DD9ABDEE283940F742'
            'B2ACD40F3B39DCF3276BD6F4041D3ABB21806073707678FBC5CA813E2EEFDE21'
            'FFD3AA2C25C5BA68A706B59F2ABDC69AC1748E115CA9D3B47941E197736F088E')

package() {
    # Install the systemd service
    install -Dm644 minecraft-server-express.service ${pkgdir}/etc/systemd/system/

    install -Dm644 server.jar ${pkgdir}/usr/share/minecraft
}