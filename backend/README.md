# Golden Grandson
## How to Start Backend Service

### Set up
* create conda environment  
    ```
    conda create --name golden_grandson_be python=3.9
    ```
    ```
    conda activate golden_grandson_be
    ```
    ```
    pip install -r requirements.txt
    ```

### Edit necessary files
1. copy `.env.example` and rename the file name to `.env`
2. edit `.env` to fit your environment

<!-- ### Create Database
1. In your directory, run `docker-compose up -d`
2. If the database doesn't create table automatically, run  
    ```
    docker exec -it test_postgres psql -u test_user -w db_project -f docker-entrypoint-initdb.d/schema.sql
    ```
   You could check the database through psql or dbeaver -->

### Rebuild Database
1. `docker rm db_project_database`
2. `docker-compose up`

### Start backend service
1. Run service  
    ```
    uvicorn app:app --reload
    ```
2. Go to `localhost:8000/docs` to find your APIs