rake -T reveals Rake commands 

# 1) Generate Model

This is creating the class object. 

* command line *
`rake generate:model NAME=Doctor`
`rake generate:model NAME=Patient`

### Inside the Model 
* sublime *

```
**class name MUST match the file name otherwise AR will complain**
*When using a join table*

	class Doctor < ActiveRecord::Base
		has_many :appointments
		has_many :patients, through: :appointments
	end

	class Appointment < ActiveRecord::Base
		belongs_to :doctor
		belongs_to :patient
	end

```


# 2) Create Migration Table

Creates a corresponding table for your class. REMEMBER the table is plural!

* command line *
`generate:migration NAME=create_doctors`
`generate:migration NAME=create_patients`

OR 

`generate:migration NAME=createdoctors`

### Inside the Migration (create_table)

* sublime *

```

	class CreatorDoctors < ActiveREcord::Migration
		def change 
			create_table :doctors do |t|
				t.string :name 
				
				t.timestamps  null :false
		end
	end

	class CreatorPatients < ActiveREcord::Migration
		def change 
			create_table :patients do |t|
				t.string :name 

				t.timestamps null :false
		end
	end

	class CreatorAppointments< ActiveREcord::Migration
		def change 
			create_table :appointments do |t|
				t.string :name 
				t.references :doctor
				t.references :patient

				t.timestamps null :false
		end
	end

#### Creating a join table 

	class CreateAppointments < ActiveRecord::Migration 
		def change 
			create_table :appointments do |t|
			t.string :name 
			references :doctor 
			references :patient
			t.timestamps, null: false
		end 
	end


```


# 3) Run the Migrations - 

* command line *
`rake db:migrate`

# 4) Seed our tables with data from seeds file 

* command line *
`rake db:seed`

