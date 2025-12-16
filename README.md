## Scaffold a new Laravel project inside a Docker container.

#### 1. Clone repo and cd into it:
```bash
git clone git@github.com:nadrojb/laravel-docker-template.git your-project-name
cd your-project-name
```

#### 2. Create the Laravel project:
```bash
docker-compose run --rm composer create-project laravel/nameOfProject .
```
Replace `nameOfProject` with your desired Laravel package (e.g., `laravel` for the standard Laravel framework).

#### 3. Build and run containers:
```bash
docker-compose up --build
``` 
