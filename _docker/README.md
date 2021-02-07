# Getting start(for developers)

## Initial Settings

### 1. Build and Installing docker

```
make setup
```

### 2. Create a db (T.B.D)

```
$ docker-compose run web bash
$ mysql -uroot -ppass -hdb
$ CREATE DATABASE irodemeel CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
$ CREATE DATABASE irodemeel_test CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
$ exit
```

### 3. Migration
```
make migrate
```


## Run and Down

### 1. Up the server

```
make up
```

### 2. Down the server

```
make down
```

## Utiities

### 1. Seeding
```
make seed
```

### 2. Composer (updating)
```
make composer
```

### 3. Migration (updating)
```
make migrate
```
