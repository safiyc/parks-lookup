# Parks Lookup

#### Technologies used: Ruby, Ruby on Rails Framework, API, Postgres Database

##### By Safiy Cham

## Description

This API lets users CRUD and search for parks. Users can also let app display random parks from the database.

## Setup

* terminal, run: git clone https://github.com/safiyc/parks-lookup.git

* terminal, in project directory, run: bundle install

* terminal, in project directory, run: rake db:setup

* download Postman to do GET/POST/PULL/DELETE from https://www.getpostman.com/

* web browser, paste to address bar: http://localhost:3000

## Request Routes

* GET /parks - all parks are displayed

* GET /parks/:id - request a park by id

* POST /parks - create parks with parameters name and state

* PUT /parks/:id - update parks with one or both parameters name and state

* DELETE /parks/:id - delete the park from the database

* GET /parks?name[""] - search for a park in database based on name

## Known Bugs

* No Known Bugs

## Pending Features

* API versioning

* Token authentication

* Rate limiting (to place a limit on how frequent a user can make an api call within a specified timeframe)

* More thorough testing

## Contact Info

For questions and comments, please contact csafi13@yahoo.com

## License

Copyright (c) 2017

This software is licensed under the MIT licensed
