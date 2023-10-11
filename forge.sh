# TODO This will be set by Forge and should be removed from the script
FORGE_PHP="/usr/bin/php8.1"

[ -f artisan ] \
    && [ -f vendor/autoload.php ] \
    && [ -f bootstrap/app.php ] \
    && [ -f vendor/laravel/framework/src/Illuminate/Contracts/Console/Kernel.php ] \
    && $FORGE_PHP artisan down

git fetch origin

git reset --hard origin/$FORGE_SITE_BRANCH

[ -z "$SHELL" ] && SHELL="/usr/bin/env bash"

$SHELL build/forge.sh $FORGE_PHP $FORGE_COMPOSER
