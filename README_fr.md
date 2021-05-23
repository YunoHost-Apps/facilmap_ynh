# FacilMap pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/facilmap.svg)](https://dash.yunohost.org/appci/app/facilmap) ![](https://ci-apps.yunohost.org/ci/badges/facilmap.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/facilmap.maintain.svg)  
[![Installer facilmap avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=facilmap)

*[Read this readme in english.](./README.md)*

> *Ce package vous permet d'installer facilmap rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*


## Vue d'ensemble

[FacilMap](https://github.com/FacilMap/facilmap) est une carte interactive polyvalente, libre et respectueuse de la vie privée qui regroupe des nombreux services basés sur les données libres de OpenStreetMap. FacilMap permet de naviguer, chercher et dessiner facilement des trajets, créer des cartes collaboratives qui peuvent être éditées par plusieurs personnes simultanément, similairement à ce qu'[Etherpad](http://etherpad.org/) propose pour l'édition collaborative de texte.

**Version incluse :** 3.1.0


## Captures d'écran

![](https://wiki.openstreetmap.org/w/images/7/7a/FacilMap.png)


## Démo

* [Démo officielle](https://facilmap.org/)


## Documentation

 * Documentation officielle (en Anglais) : https://docs.facilmap.org/


## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

Aucun login ou compte n'est nécessaire pour utiliser l'application, elle est utilisable par n'importe qui, à moins de l'installer de manière privée.

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/facilmap%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/facilmap/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/facilmap%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/facilmap/)


## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/facilmap_ynh/issues
 * Site de l'application : https://facilmap.org
 * Dépôt de l'application principale : https://github.com/FacilMap/facilmap
 * Site web YunoHost : https://yunohost.org/

---


## Informations pour les développeurs

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing --debug
ou
sudo yunohost app upgrade facilmap -u https://github.com/YunoHost-Apps/facilmap_ynh/tree/testing --debug
```
