# Welcome to new dbt project!

### Preparation 
```
brew install python virtualenv
```

### Step 1: installing virtual env 
```
pip install virtualenv
```

### Step 2: connect to virtualenv
```
virtualenv venv
```

### Step 3: Activate a virtual environment
```
. venv/bin/activate
```

### Step 4: Upgrade PIP if required
```
python3 -m pip install --upgrade pip
```

### Step 5: Install dbt Snowflake dependencies 
```
pip install dbt-snowflake
```

### Set 6: Set up project 
```
dbt init dbtproject
```

### Configuration Path
```
/Users/vaibhavsrivastava/.dbt/profiles.yml
/Users/vaibhavsrivastava/.dbt/dbt_cloud.yml
```

### Downloading Seeds file
```
curl https://dbtlearn.s3.us-east-2.amazonaws.com/seed_full_moon_dates.csv -o seeds/seed_full_moon_dates.csv
```

### To Create/Update Snapshot
```
dbt snapshot
```

### To Validate Source Freshness
```
dbt source freshness
```

### Snowflake Tables and Views created by DBT
![alt text](https://github.com/vabnix/dbt-project/blob/main/dbt-snowflake-results.png)

### Using the starter project
```
Try running the following commands:
- dbt run
- dbt test
```
![alt text](https://github.com/vabnix/dbt-project/blob/main/dbt-run-results.png)
