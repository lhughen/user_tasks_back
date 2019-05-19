This is the Back End API that handle the data.

The requirements are:
- Ruby 2.5.1
- Bundler 2.0.1
- PostgreSQL server
All others dependencies are resolved by the bundler.

If you have Ruby and not Bundler, you can install Bundler with the command:
gem install bundler -v=2.0.1

With Ruby and Bundler installed run the following command:
bundle install

With all the dependencies resolved you should change the config/database.yml to your database, and run the following commands to create the tables:
rake db:migrate

Before running this app you need to set up the Front End domain on config/initializers/cors.rb

For running this app you can use a webserver (Apache/Nginx) or you can use the following command to run in your development environment:
rails s
