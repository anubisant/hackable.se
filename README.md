# Hackable.se


## API


Dev:
```
apt-get install libmysqlclient-dev mysql-server
sudo mysql
> CREATE DATABASE hackable_se;
> CREATE USER hackable_se@localhost IDENTIFIED BY '...';
> GRANT ALL ON hackable_se.* TO hackable_se@localhost;

echo "DATABASE_URL=mysql://hackable_se:aXjLmRO9zAJx1e26@localhost/hackable_se" > .env

cargo install diesel_cli --no-default-features --features mysql
diesel setup
diesel migration run
```

## Scrapbook

```
curl -i http://localhost:8000/users/123e4567-e89b-12d3-a456-426655440000
curl -i http://localhost:8000/users/31b7ff47-a899-42d6-881c-ac936064bfae
curl -i http://localhost:8000/users --data '{"username": "ZetaTwo", "password": "123456", "email": "calle.svensson@zeta-two.com"}' -H 'Content-Type: application/json'
curl -i http://localhost:8000/users --data '{"username": "ZetaTwo", "password": "123456", "email": "calle.svensson@zeta-two.com"}' -H 'Content-Type: application/json'
curl -i http://localhost:8000/users --data '{"username": "ZetaTwo", "password": "123456"}' -H 'Content-Type: application/json'
curl -XPATCH -i http://localhost:8000/users/31b7ff47-a899-42d6-881c-ac936064bfae --data '{"password":"abcabc", "email":"calle.svensson@zeta-two.com"}' -H 'Content-Type: application/json'
curl -XDELETE -i http://localhost:8000/users/31b7ff47-a899-42d6-881c-ac936064bfae
```
