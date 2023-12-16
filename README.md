1- launch docker MYSQL container docker compose up -d
2-go to http://localhost:8080 to open adminer
3- import data.sql
4- when running spring boot application it should be working "http://loclhost:8087"
5- I add a postman collection for testing
http://localhost:8087/api/auth/signup [POST]
{        "id": 1,        "name": "montassar",        "email": "montassar@gmail.com",        "password": "123" } http://localhost:8087/api/auth/signin [POST]  {  "name":"montassar", "password":"123"}
http://localhost:8087/users/ [GET]
http://localhost:8087/posts/ [GET]
http://localhost:8087/comments/ [GET]
http://localhost:8087/posts/1/comments [GET]
http://localhost:8087/users/1/posts [GET]
