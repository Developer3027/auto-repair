# AutoRepair

This app is built for web and ios, to assist the shop, outside of the POS. It is a platform for members to review the garage for maintenance, for techs to communicate on vehicle concerns and get training, and only admins can make adjustments to app.

**Anyone**

  * View service information, both quick look and details
  * Get general information on car care.

**Members** (customers)

  * No fee for membership
  * Members can have a garage that holds many cars.
  * Members can view services, both quick look and details.
  * Members can be notified when services are due.
  * Members can add services to there order.
  * Members can view service history.
  * Members can schedule services.

**Tech** (hood and mechanical)

  * Tech can review vehicle.
  * Tech can make recommendations.
  * Tech can get notified on work.
  * Tech can create issues.
  * Tech can get training for ASE.
  * Tech can review shop hours.

**Admin**

  * Can manage the app.

************************************************

Off the main nav should be a quick link to ASE study guide and info. Here techs can pick categories and complete tasks, learn, take tests in preparation for ASE exams. Progress can be accessed through profile page.

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