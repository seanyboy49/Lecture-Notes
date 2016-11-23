# Exploring databases and SQL (structured query language)

#### release 0

console commands - have a period like `.tables` and **no semicolon** SQL query - no period and **do have a semicolon**
    
    
    select * from rabbits
    select name, age from rabbits;
    select * from rabbits where fluffy="true";
    insert into rabbits (name, age, fluffy) values ("Gumdrop", 2, "true");
    update rabbits set age=4 where name="Queen Bey";
    
    

#### turn headers on

`.headers on`

#### rename a table

`alter table gnome rename to gnomes;`

#### drop a table

`drop table rabbits`

#### Delete a row using a where condition

`delete from rabbits where name="Sylvie";`

#### View schema of table aka view structure

`.schema [tablename]`

#### Add a primary key

    CREATE TABLE your_table_name (
      id INTEGER PRIMARY KEY,
      ... the rest of your attributes go here ...);
 

#### string = VARCHAR in sql

#### Create a data table using SQL:
    
    CREATE TABLE rabbits (
      name VARCHAR(255),
      age INT,
      fluffy BOOLEAN
    );
   

#### notice the convention:
    
    CREATE TABLE table_name (
      attr_name DATATYPE,
      attr_name DATATYPE,
      attr_name DATATYPE
    );
    
    

#### Create a data table with a foreign key
    
    
    CREATE TABLE players (
        ... all you other column declartions here, including primary key...
        team_id INT,
        FOREIGN KEY (team_id) REFERNCES teams(id)
        );
    
    
    

#### Join: Viewing One-to-many relationships with one query
    
    
    SELECT * FROM players, teams WHERE players.team_id = teams.id;
    
    
    

this would display `players` data on left and `team` data on the right. To swap sides...

`SELECT * FROM teams, players WHERE teams.id = players.team_id;`

to view fewer columns...
    
    
    SELECT players.name, teams.name FROM players JOIN teams ON players.team_id = teams.id;
    
    

#### More Join Techniques http://www.tutorialspoint.com/sqlite/sqlite_using_joins.htm

    create table reviews 
      ( id integer primary key, 
      stars int, 
      comment varchar(255), 
      business_id int, 
      users_id int, 
      FOREIGN KEY (business_id) REFERENCES businesses(id), 
      FOREIGN KEY (users_id) REFERENCES users(id) );

#### Running SQLite commands from sublime
    
    require 'sqlite3'
    
    SQLite3::Database.new( "data.db" ) do |db|
        db.execute( "select * from table" ) do |row|
            p row
        end
    end
    

#### You can also pass the command a block.

If you want to return a results of your table as a hash.

  


`db.results_as_hash = true`

  


select [users.name](http://users.name), calories_goal, calories_consumed, current_date

FROM diary JOIN users on [diary.name](http://diary.name) = [users.name](http://users.name);

** Order By
select * from employees order by hire_date DESC or ASC

** Where

select hire_date, first_name, last)name
from employees
where hire_date < '2011-02-15'

#### LIKE Keyword

##### first name starts with letter a

    select * from employees where first_name
    LIKE 'A%'

##### name contains the word 'smith'

    select name FROM artists
    where name LIKE '%smith%'


#### selects where category has no value

    select * from tracks wehre composer is null 

#### Limits returned values to the top 10

    select * from invoices
    WHERE billing_city = 'boston'
    ORDER BY total DESC limit 10

#### OR key word


    select * from invoices 
    WHERE billy_city = 'Cupertino'
    OR billing_city = 'Mountain View'

#### Multiple WHERE conditions 

    SELECT * FROM invoices
    where total > 5
    AND
    billing_city  = 'Reno'


#### Return count of values

    select count(*) FROM invoices
    WHERE billing_city = "santiago"


#### GROUP BY keyword

    select country, count(*) FROM customers
    GROUP BY country

##### List of the top 5 cities by number of invoices in descending order

    select country, count(*) FROM customers
    group by country
    order by count(*) DESC limit 3

    SELECT country, count(id) FROM customers
    GROUP BY country
    ORDER BY count(id) DESC LIMIT 3

#### Join 

List all artist names alongside the titles of their albums, in alphabetical order by artist name

    SELECT artists.name, albums.title 
    FROM artists JOIN albums
    ON artists.id = albums.artist_id

 List all album names along with their track titles

    SELECT tracks.name, albums.title
    FROM tracks JOIN albums
    ON tracks.album_id = albums.id

List all artist names alongside the titles of their albums, in alphabetical order by artist name

    SELECT artists.name, albums.title
    FROM artists JOIN albums 
    ON artists.id = albums.artist_id
    ORDER BY artists.name

List all customers' first and last names next to the totals on their invoices, ordered by total, high to low
    
    SELECT customers.first_name, customers.last_name, invoices.total 
    FROM customers JOIN invoices 
    on customers.id = invoices.customer_id
    ORDER BY total DESC


#### Join 3 tables

Give me a list of every artist who has performed the song "Midnight"

    SELECT artists.name FROM artists
    JOIN albums ON
    artists.id = albums.artist_id
    JOIN tracks on 
    tracks.album_id = albums.id
    where tracks.name LIKE 'Midnight'

#### Join 2 tables and use group and order 

List all artists and the number of albums they each have

    SELECT artists.name, COUNT(albums.id)
    FROM artists JOIN albums
    ON artists.id = albums.artist_id
    GROUP BY artists.name
    ORDER BY artists.name

#### Join two tables and find count of relationships 

Find the artist with the most albums

    SELECT artists.*, count(albums) from artists 
    JOIN albums ON
    albums.artist_id = artists.id
    GROUP BY artists.id
    ORDER BY count(albums) DESC LIMIT 1

    SELECT albums.*, COUNT(tracks) from albums
    JOIN tracks on
    tracks.album_id = albums.id
    GROUP BY albums.id
    ORDER BY COUNT(tracks) DESC LIMIT 1


List all albums next to the number of tracks they each have in descending order

    select albums.*, count(tracks) 
    FROM albums JOIN tracks 
    on albums.id = tracks.album_id
    GROUP BY albums.id
    ORDER BY count(tracks) DESC

#### Using SUM 

    SELECT customers.first_name, customers.last_name, SUM(invoices.total)
    from customers join invoices 
    on invoices.customer_id = customers.id
    GROUP BY customers.id 
    ORDER BY sum(invoices.total)
    DESC LIMIT 5

#### Multiple ORDER statements 

    select artists.*, count(albums)
    FROM albums JOIN artists
    ON albums.artist_id = artists.id
    GROUP BY artists.id
    ORDER BY count(albums), artists.name ASC





