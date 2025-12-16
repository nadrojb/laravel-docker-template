## Scaffold a new Laravel project inside a Docker container.

#### 1. Clone repo and cd into it:
```bash
git clone git@github.com:nadrojb/laravel-docker-template.git your-project-name
cd your-project-name
```

#### 2. Set your project name (replace 'your-project-name' with your actual project name):
Create a `.env` file in the root directory:
```bash
echo "PROJECT_NAME=your-project-name" > .env
```

Or export it in your shell:
```bash
export PROJECT_NAME=your-project-name
```

#### 3. Create the Laravel project:
```bash
docker-compose run --rm composer create-project laravel/laravel ${PROJECT_NAME:-laravel}
```

#### 4. Update Laravel database configuration:
Edit `src/${PROJECT_NAME}/.env` and update the database settings:
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=${PROJECT_NAME}
DB_USERNAME=${PROJECT_NAME}
DB_PASSWORD=secret
```

#### 5. Build and run containers:
```bash
docker-compose up --build
```

**Note:** 
- The `PROJECT_NAME` environment variable defaults to `laravel` if not set
- Make sure `PROJECT_NAME` matches the directory name where your Laravel project was created in step 3
- The `.env` file will be automatically read by docker-compose
- Replace `${PROJECT_NAME}` in step 4 with your actual project name 
