# Laravel Playground

This is a repository that allows to developers, to works with Laravel bare minimum requirements. The repository got updates if a new need is identified.

The compose.yaml, contains the next containers:
## Laravel Bitnami 
*(automakes the projects if not exists and have 5 php threads).*

>[!NOTE]
> More information about the container of Laravel [laravel-docker](https://hub.docker.com/r/bitnami/laravel)
> Configuration about php.ini and initial config of Laravel [laravel-config](https://docs.bitnami.com/aws/infrastructure/lapp/get-started/use-laravel/)

## PostgreSQL, the most potent RDBMS of the Open Source World.

>[!NOTE]
> More information about the interoperability of Laravel and PostgreSQL [laravel-postgress](https://supabase.com/blog/laravel-postgres)
> Configuration about php.ini and initial config of Laravel [laravel-config](https://docs.bitnami.com/aws/infrastructure/lapp/get-started/use-laravel/)
> Aditional packages installed and required: [php-pgsql](https://packages.debian.org/bullseye/php-pgsql)

### Upstart the DB

```bash
php artisan migrate
```

### How to check the status of the RDBMS
```php
use Illuminate\Support\Facades\DB;

// Test database connection
try {
    DB::connection()->getPdo();
} catch (\Exception $e) {
    die("Could not connect to the database.  Please check your configuration. error:" . $e );
}
```


- Redis, the Caching key value.

> [!NOTE]
> Redis configuration in this link [redis-config](https://laravel.com/docs/11.x/redis#configuration)

