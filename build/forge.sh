# Print all env vars
printenv

exit 0

#############

PHP="$1"

[ -z "$PHP" ] && echo "First argument should be the path to PHP, but it is not set" && exit 1
[ ! -x "$PHP" ] && echo "The provided PHP path is not an executable" && exit 1

COMPOSER="$2"

[ -z "$COMPOSER" ] && echo "First argument should be the path to Composer, but it is not set" && exit 1
[ ! -x "$COMPOSER" ] && echo "The provided Composer path is not an executable" && exit 1

$FORGE_COMPOSER install --no-interaction --prefer-dist --optimize-autoloader

