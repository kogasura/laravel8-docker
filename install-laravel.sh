# docker compose exec app bash を実行してから実行すること
composer create-project laravel/laravel .
composer require livewire/livewire
npm install -D tailwindcss
npx tailwindcss init

# https://github.com/laravel/vite-plugin/blob/main/UPGRADE.md#migrating-from-vite-to-laravel-mix
npm install --save-dev laravel-mix
npm pkg delete type