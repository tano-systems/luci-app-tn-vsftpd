# LuCI support for VSFTPd server

## Description
This application allows you to configure VSFTPd server over LuCI web interface.

This LuCI application originally taken from https://github.com/coolsnowwolf/lede.git
repositoriy (master branch, revision a828ffad85e5d9b673d49ea9b8316ab3689d34c0).

## Dependencies

Master branch of this repository requires latest LuCI revision with client side rendering feature. Support for older LuCI releases (e.g. for version 18.06.x or 19.07.x) is left in the [v1.x](https://github.com/tano-systems/luci-app-tn-vsftpd/tree/v1.x) branch of this repository.

This VSFTP LuCI application required alternate VSFTP procd init scripts with
UCI configuration support. OpenEmbedded recipe and init scripts can be founded
in [meta-tanowrt](https://github.com/tano-systems/meta-tanowrt.git) OpenEmbedded layer.

## Supported languages
- English
- Russian

## Supported (tested) LuCI Themes
- [luci-theme-tano](https://github.com/tano-systems/luci-theme-tano) ([screenshots](#screenshots) are taken with this theme)
- luci-theme-bootstrap
- luci-theme-openwrt-2020
- luci-theme-openwrt

## Screenshots

### Service Settings
![](screenshots/luci-app-tn-vsftpd-service.png?raw=true)

### Connection Settings
![](screenshots/luci-app-tn-vsftpd-connection.png?raw=true)

### Global Settings
![](screenshots/luci-app-tn-vsftpd-global.png?raw=true)

### Local Users Settings
![](screenshots/luci-app-tn-vsftpd-local-users.png?raw=true)

### Virtual Users Settings
![](screenshots/luci-app-tn-vsftpd-virtual-users.png?raw=true)

### Anonymous User Settings
![](screenshots/luci-app-tn-vsftpd-anonymous-user.png?raw=true)

### Log Settings
![](screenshots/luci-app-tn-vsftpd-log.png?raw=true)
