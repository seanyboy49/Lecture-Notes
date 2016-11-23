[Crud With Sinatra and Restful Routing] (https://talks.devbootcamp.com/crud-with-sinatra-and-restful-routing)

## CRUD 
Create
Read
Update
Destroy 

### Creating new entries to the database 

.create instantiates a new object and saves to the db 

.new and .save! does the same thing => the bang will raise an error if the data can't be saved. 

### Searchin the db 

.find(id) is a dangerous method => it will return `0` if the id does not exist in the db 

.find_by(id) is a safe method => it will return `nil` if id does not exist

### Mass Updating attributes 

new_attributes = { weight: 53, breed: "Poodle", age: 1}
`jada.update(new_attributes)`

### Working around Browser Limitations for Put/Patch and Delete 

Modern web browsers don't recognize Put/Patch/Delete... 

<form action='/dogs' method='post'>
	<input type='hidden' name='_method' value='put'>

	<-- form stuff.. >
</form>




