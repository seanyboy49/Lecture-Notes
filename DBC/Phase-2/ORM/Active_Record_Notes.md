## Pathname

represents a pahtname which locates a file in a filesystem

### basename

Returns the last component of the path

	# Identify the name of the challenge
	APP_NAME = APP_ROOT.basename.to_s

## Database 

*Migrations* are files that help build our database schema (e.g., creating tables)

*Seed files* contain a script which we can use to automatically add data to our database.

# Setting Up My Active Record Project

## Specifying Gems

*Gemfile* specifies gems used in this application. 

## Installing Gems

`gem install bundler`

`bundler install` - installs all gems listed in my Gemfile

Installing through Gemfile.lock tells Bundler to use this file to determine exactly which version of each gem to install. 

IMPORTANT - start your challenge with this step to ensure all necessary gems are installed

## Create the Database

`bundle exec rake db:create` - creates the database for our application in the db/ directory.

Prefacing our command with `bundle exec` executes the command within context of gems specified for this application. 

## Check Database Version

`bundle exec rake db:version` - asks for the version of the database

Everytime we run a migration (adding/dropping tables, adding columns, altering names), it's like we're creating another version of our database.

Since we haven't run any migrations, our `current version is 0.`

## Run the Test Suite

`bundle exec rake spec`

## Run the Migrations

`bundle exec rake db:migrate` - Creates the table specified in our migration file

Three things are happening here 
	1) `CREATE TABLE "schema_migrations" ("version"... )` - Active Record creates a table where it can track which migrations have been run. 
	2) At the end, there's a bit of SQL that says something like `INSERT INTO "schema_migrations"..` which is just AR noting that it's run our migration file, so that it won't run it again. 
	3) Active Record is letting us know which migration is being run. 

## Check the Database Version... AGAIN

`bundle exec rake db:version` - asks for the version of the database

## Run the Test Suite... AGAIN

`bundle exec rake spec`

## Populate the Database with Seed Data

`bundle exec rake db:seed`

## Open and Use the Console

` bundle exec rake console` - Opens up an IRB with our environment loaded. 

`ActiveRecord::Base.connection.tables`  

	returns an array containing the names of the tables in our database

`ActiveRecord::Base.connection.columns(:dogs)` 
	
	returns an array of objects representing the columns in the dog table - one object for each column 

`Dog`

	will return the Dog class itself

`Dog.all`

	class method which returns all records in the dogs table as instances of the Dog class

## Rollback the Database

`bundle exec rake db:rollback` - Undoes the last migration

## Drop the Database 

`bundle exec rake db:drop`

