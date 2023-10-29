# cap-pg

### Step 1: 
Create a new cap project with command `cds init`

### Step 2:
Add Schema.cds undr db and Service.cds under srv folder respectively 

### Step 3:
Add some mock data as csv format under db/data folder. The file format should be <namespace_entityt.csv>

### Step 4:
Test the service using `cds watch`

### Step 5:
Add user authorization to Service.cds file

### Step 6:
Add local test user to .cdsrc.json

### Step 7:
Add docker-compose.yml under cap-pg -> This will create a docker image. The following command `docker compose up` will create the container within which Postgresql will run as a db server. Make sure the docker desktop is up and running else image download and container creation will fail!

### Step 8: 

Open http://localhost:8080  and login to Postgresql Server and create a database 'Student'

### Step 9:
Add db deployment configuration under package.json

A. `cds add postgres` -> will add new cap service as dependency
```josn
"@cap-js/postgres": "^1"'
```
Execute `npm install`

B. Add local database information in Package.json or .cdsrc.json

C. `cds deploy` which will create underlined views and tables in PG.
