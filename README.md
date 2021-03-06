# Software Engineering Interview Assignment

## System environment and dependencies

* Rails version: 5.2.3
* Ruby version: 2.4.2 (x86_64-darwin18)

## API Endpoints

API will expose the following four Restful endpoints as request:

Endpoint | Functionality
--- | ---
GET /agents | return JSON formatting which reflects ``example_agent_list.json``
GET /agents/:id | return JSON formatting which reflects ``example_agent.json``
GET /properties | return JSON formatting which reflects ``example_agent_list.json``
GET /properties/:id | return JSON formatting which reflects ``example_property_list.json``

## Brief setup instructions

* Generate a new project by running

```(ruby)
rails new perchwell_SDE_assignment --api
```

* Database use default SQLite Database

* Copy sample sample data into the directory: ``lib/seeds/``

* Add Models for ``Agent`` and ``Property`` based on sample data

* Build schema

```(ruby)
rails db:migrate
```

* Setup associations between ``Agent`` and ``Property`` (Many_To_Many)

* Migrate sample data into database by running script in the ``db/seeds.rb``

* Add controller for ``Agent`` and ``Property``

* Add helper functions for handling json format response and error exceptions

* Add routing in the ``routes.rb``

* Run rails server

```(ruby)
rails server
```

## How to run this project

```()
git clone this repo: git@github.com:ulyssesyang/perchwell_SDE_assignment.git
cd perchwell_SDE_assignment
bundle install
bundle exec rake db:create db:migrate
rails server
# visit http://localhost:3000
```