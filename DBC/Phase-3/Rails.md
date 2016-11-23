In rails, a resourceful route provides a mapping between HTTP verbs and URLs to controller actions.

# Rails Structure High Levl Overview 

## Assets 
Streamlines assets for both CSS and HTML optimizes web performance

## Helpers
helpers are typically used exclusives in your views to help formatting

## Config
This is where most of the decisions that Rails makes live 

## Lib 
Anything that is part of your application that you wrote, but doesn't really fall into the stereotypical MVC structure. 
Generally where you would put util scripts or clases that do heavy data lifting/transformation

### Lib/Assets
Javascript that you wrote yourself, but doesn't really relate to the application. i.e., if you write a JQuery library that you might need later, you can insert into your Assets. 

## Log 
Rails will log every piece of information it can get its hands on. 

## Public 
Kind of like assets, but everything is static. Things in public are served outside the usual Rails layout file. Yield will not touch these files. 

## TMP 
Generated assets will go into tmp. 
*VERY IMPORTANT*, make sure your tmp is in your git ignore. 

## Vendor Assets
Libraries that you want to use but haven't written yourself. It buys yourself a little more headspace in terms of seperating these libraries from things you've written. 

## Secrets.yaml 
Defining things that are secret that you wouldn't want in your repo like an AWS key. 

## Config/Initializers
Custom pieces of code that will run in sequence when your Rails app is booted. 
This is for doing things like setting constants that run throughout your entire application.
Customizing pieces of your code's environment. Not necessarily the Rails env. But whatever your code needs to do before serving traffic. 

## 4.2 Say "Hello" Rails
A controller's purpose is to receive specific requests for the application. 
Routing decides which controller recieves which requests.  

View - A view's purpose is to display information in a human readable format. 

## 5. Up and Running 
A *resource* is the term used for a collection of similar objects, such as articles, people or animals. You can create, read, update and destroy items for a resource and these operations are referred to as CRUD operations.

## Views in Rails 
Rails is attempting to find a template called *articles/new* within **app/views** for the application. The format for this template can only be html and the handler must be one of erb, builder or coffee. *:erb* is most commonly used for HTML templates, *:builder* is used for XML templates, and *:coffee* uses CoffeeScript to build JavaScript templates.

## Configuring the environment to use pry 
Add this line of code to gem file and run bundle
`gem 'pry-rails', :group => :development`
