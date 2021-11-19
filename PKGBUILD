# Maintainer: Corbin Bartsch <me@cbarts.net>

pkgname=minecraft-server-express
pkgver=1.17.1
pkgdesc='Express install script for a vanilla Minecraft server'
arch=('any')
url='https://github.com/coredotbin/minecraft-server-express'
license=('custom')
depends=('java-runtime')
source=(git+https://github.com/coredotbin/minecraft-server-express.git#tag=${pkgver}
        minecraft-server-express.service
        minecraft-server-express.sysusers
        "https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar")
noextract=('server.jar')
sha256sums=('SKIP'
            'DD529610E1AA70A27127C725CCED314E034EC50794C6F3DD9ABDEE283940F742'
            'B2ACD40F3B39DCF3276BD6F4041D3ABB21806073707678FBC5CA813E2EEFDE21'
            'E8C211B41317A9F5A780C98A89592ECB72EB39A6E475D4AC9657E5BC9FFAF55F')

package() {
    # Install the systemd service
    mkdir -p ${pkgdir}/usr/lib/systemd/system
    install -m644 minecraft-server-express.service ${pkgdir}/usr/lib/systemd/system/

    # Install the server jar
    mkdir -p ${pkgdir}/usr/share/minecraft-server-express
    install -m644 server.jar ${pkgdir}/usr/share/minecraft-server-express/
    chown -R ${pkgdir}/usr/share/minecraft-server-express

    # Install sysusers hook
    mkdir -p {$pkgdir}/usr/lib/sysusers.d
    install -m644 minecraft-server-express.sysusers {$pkgdir}/usr/lib/sysusers.d/
}