## Scaffold a new Laravel project inside a Docker container.

#### 1. Clone repo:
Clone the repo 
Change the directory name to your new projects name
cd into the directory

#### 2. Create the Laravel project:
```bash
docker-compose run --rm composer create-project laravel/laravel .```

#### 3. Build and run containers:
```bash
docker-compose up --build
``` 
