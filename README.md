# Example app for YunoHost

[![Integration level](https://dash.yunohost.org/integration/facilmap.svg)](https://dash.yunohost.org/appci/app/facilmap) ![](https://ci-apps.yunohost.org/ci/badges/facilmap.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/facilmap.maintain.svg)  
[![Install facilmap with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=facilmap)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install facilmap quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*


## Overview

> FacilMap is an online map that aims to bring together many useful functions in a usable and pretty way onto an open-source map based on OpenStreetMap.

FacilMap let's you browse OpenStreetMap, easily check and draw routes, create collaborative maps with markers and shapes, allowing live collaboration in a similar way [Etherpad](http://etherpad.org/) let's you work collaboratively on texts.

**Shipped version:** 3.0.0


## Screenshots

![](https://wiki.openstreetmap.org/w/images/7/7a/FacilMap.png)


## Demo

* [Official demo](https://facilmap.org)


## Documentation

 * Official documentation: https://github.com/FacilMap/facilmap2


## YunoHost specific features

#### Multi-user support

The app doesn't require any login, anyone can use it, unless you install it privately.

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/facilmap%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/facilmap/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/facilmap%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/facilmap/)


## Links

 * Report a bug: https://github.com/YunoHost-Apps/facilmap_ynh/issues
 * App website: https://facilmap.org
 * Upstream app repository: https://github.com/FacilMap/facilmap2
 * YunoHost website: https://yunohost.org/

---

## Developer info

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing --debug
or
sudo yunohost app upgrade facilmap -u https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing --debug
```
