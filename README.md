## Scaffold a new Laravel project inside a Docker container.

#### 1. Clone repo and cd into it:

#### 2. Create the Laravel project:
```bash
docker-compose run --rm composer create-project laravel/laravel
```

#### 3. Build and run containers:
```bash
docker-compose up --build
``` 
