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


## Redis, the Caching key value.

> [!NOTE]
> Redis configuration in this link [redis-config](https://laravel.com/docs/11.x/redis#configuration)


### How to check the status of Redis

In the path **routes/web.php**

We can run the Cache::remember() function to get an 1. To get values from the cache.

```php
Route::get('my-first-route', function()
{
    $value = Cache::remember('users', 1000, function () {
        return 1;
    });
    return 'Hello World!'.$value;
});
```



## Livewire

Added support to composer get Livewire blades. To fast deploy webs.

> [!NOTE]
> Livewire configuration in this link [Livewire](https://livewire.laravel.com/docs/quickstart)


To deploy a new Livewire.

```bash
php artisan make:livewire class name
```

This makes:
- app/Livewire/Class.php
- resources/views/livewire/class.blade.php 


### Recommendations

Make in that order
- Controller

```bash
php artisan make:controller ClassController
```

- Make the Components (Views)

```bash
php artisan make:livewire class name
```


- In the controller put the next :

```php
use Illuminate\Support\Facades\App;

class MyController extends Controller 
{
    public function index()
    {
         return App::call(MyLivewireComponent::class);
         // OR
        return view('livewire.livewire-component')
    }
}
```

In web.php, this point to index.

```php
use App\Http\Controllers\MyController;
 
Route::get('/controller', [MyController::class, 'index']);
```


## API

- To make api routes in **routes/api.php**

https://laravel.com/docs/11.x/routing#api-routes

- To get the data paginated with eloquent resources

https://laravel.com/docs/11.x/eloquent-resources#concept-overview