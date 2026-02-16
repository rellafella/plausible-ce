<div align="center">
    <picture>
        <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/plausible/community-edition/refs/heads/v2.1.1/images/logo_dark.svg" width="300">
        <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/plausible/community-edition/refs/heads/v2.1.1/images/logo_light.svg" width="300">
        <img src="https://raw.githubusercontent.com/plausible/community-edition/refs/heads/v2.1.1/images/logo_light.svg" width="300">
    </picture>
</div>

[![Laravel Forge Site Deployment Status](https://img.shields.io/endpoint?url=https%3A%2F%2Fforge.laravel.com%2Fsite-badges%2Ff1b67638-81af-47d0-a9e9-2c480c5b0b14&style=plastic)](https://forge.laravel.com/servers/825593/sites/2413935)

---

This repo is a fork of Plausible's Community Edition repo,[https://github.com/plausible/community-edition](https://github.com/plausible/community-edition).

Based off of John Morton's [`plausible-with-traefik-update-for-laravel-forge`](https://github.com/johnfmorton/plausible-with-traefik-update-for-laravel-forge) repo, but updated to work with the current itteration of Plausible Community Edition.

It contains modifications to the original repo to make it work with Laravel Forge and Traefik. Modifications are primarily in the [`compose.prod.yml`](compose.prod.yml) file. Use `.env` for environmental variables. Using the `.env` file allows you to use Laravel Forge's built-in environmental variables editor.

Keeping to the modular config of clickhouse there has been a [`clickhouse/backups.xml`](clickhouse/backups.xml)

## Laravel Forge Deployment script

Here is a basic version of the deployment script. a couple of assumptions are made, docker and docker compose are installed use the [`scripts/forge-recipe-install-docker`](scripts/forge-recipe-install-docker) script if it's not already installed.

```bash
cd /home/forge/REPLACE_ME

git pull origin $FORGE_SITE_BRANCH

make prod
```

## Reference links

- https://github.com/johnfmorton/plausible-with-traefik-update-for-laravel-forge
- https://putyourlightson.com/articles/replacing-google-analytics-with-self-hosted-analytics
- https://plausible.io/docs/self-hosting
- https://www.digitalocean.com/community/tutorials/how-to-use-traefik-as-a-reverse-proxy-for-docker-containers-on-ubuntu-20-04
