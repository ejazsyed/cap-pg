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

Add docker-compose.yml under cap-pg -> This will create a docker image. The following command `docker compose up` will create the container within which Postgresql will run as a db server

### Step 8:

Open http://localhost:8080 and login to Postgresql Server and create a database 'Student'

### Step 9:

Add db deployment configuration under package.json

A. `cds add postgres` -> will add new cap service as dependency

```josn
"@cap-js/postgres": "^1"'
```

Execute `npm install`

B. Add local database information in Package.json or .cdsrc.json

C. `cds deploy` which will create underlined views and tables in PG.

### Step 10:

Make the app ready for cf deployment.

A. Add passport -> `npm add passport`

B. Add xssecurity - > `npm add @sap./xssec`

C. Add xsuaa -> `cds add xsuaa` , will create xs-security.json

### Step 11:
Build the app -> 
`cds build`

### Step 12:
Add MTA to the project -> `cds add mta`

### Step 13:
Create two files under cap-app
1. pg-package.json
2. pg-build.sh


### Step 14:
A few corrections are required for mta.yaml file.

1. As the app I am planning to deploy in BTP trial (AWS). So the service plan should be 'Trial'.
2. rename the postgres instance name to 'cap-app-postgres' - done becuase I already created Postgresql instance in BTP with this name.
3. Under mta.yaml -> Builder section, Add pg-build.sh
4. Finally run `mbt build` to create mtar file

### Step 15:

Deploy previously generated mtar file into cloud foundry
1. `cf login`
2. `cf deploy mta_archives/cap-app_1.0.0.mtar`

Backend service will be successfuly uploaded to BTP