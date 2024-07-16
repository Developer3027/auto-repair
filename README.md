# README

This app is built for web and ios, to assist the shop, outside of the POS.

**User**
A customer can review 

Things you may want to cover:

* Ruby version
  3.1.4

* System dependencies

* Configuration
  Action Text and images - review [RailsGuide](https://guides.rubyonrails.org/action_text_overview.html)
  Devise set up with roles - [user, tech, admin]
  
  *Database info*
  Postgres for development - default user: postgres, pass: postgres
  Seed will delete all users and services then create user, tech, and admin with some oil services

* Database creation
  PostgreSQL

* Database initialization
  My system does not have the local role available for postgres. In the database.yml I set up the default for host: localhost, with the default user name and password for postgres which is postgres / postgres.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Note - everything in the vendor/bundle folder will be created on bundle/install on user system. No need for all that to be shipped to github. Added to gitignore.