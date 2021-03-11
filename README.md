# Courses demo

### Get the code

```
$ git clone git@github.com:vonamann/courses-demo.git
```

### Install required gems

```
$ bundle install
```

### Run migrations

```
$ bin/rails db:migrate
```

This will create all required tables and also populate them with some test data


### Run the webserver

```
$ bin/rails s --port=3000
```

### Test the API

Open in your favorite web browser some URLs

```
http://localhost:3000/api/users/1
http://localhost:3000/api/users/1/courses/1
http://localhost:3000/api/users/1/courses/2
http://localhost:3000/api/users/1/courses/101 # NOT FOUND
http://localhost:3000/api/users/100           # NOT FOUND
```
