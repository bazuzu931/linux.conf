
# init
composer create-project --prefer-dist laravel/laravel $1;
cd $1;

#
cp .env.example .env;
php artisan key:generate;
php artisan config:cache;

#
php artisan make:auth;

# for bs4 success installation
# sudo apt-get install libpng16-dev -y;

# install bs4
composer require laravelnews/laravel-twbs4;
php artisan preset bootstrap4;
php artisan preset bootstrap4-auth;
npm install && npm run dev;

# for DB columns modification
composer require doctrine/dbal;

#
composer require laravelcollective/html;

#
composer require intervention/image;

# add flag --optimize for deploy
composer dump-autoload;

#
php artisan serve &