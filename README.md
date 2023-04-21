# Pix Gravitee APIM deployment

Ce dépot contient le code poussé sur Scalingo pour déployer l'instance APIM de Pix.

Il utilise le buildpack nginx de Scalingo.

[buildpack-nginx]: https://github.com/Scalingo/nginx-buildpack

# Usage

Variables d'environement :
 * Choisir la version de nginx `NGINX_VERSION=1.8.0`
 * Définir le host cible `TARGET_HOST=api.recette.pix.fr`
 * Application et API key `API_KEYS=toto:clef_1;titi:clef_2`

Le fichier à configurer est le fichier `nginx.conf.erb`
