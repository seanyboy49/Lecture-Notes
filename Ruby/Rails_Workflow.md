## Start a new rails project
`rails new Thingy --database=postgresql -T`
`rails new -d postgresql -T my_blog`

## Create new routes
`be rake routes`

In the config/route.rb, you can specify exceptions
`resources :posts, except: [:new]`

## Start a new server
`rails server`

## Generate new controller
`bin/rails generate controller Articles`

## Generate new model
`bin/rails generate model Comment commenter:string body:text article:references`

## Generate migration
`bin/rails db:migrate`

## Debugging params sent in from form
`render plain: params[:article].inspect`

## Links
Brings you to a show of a specific resource
`<td><%= link_to 'Show', article_path(article) %></td>`

Goes back to the resource index
`<%= link_to 'Back', articles_path %>`

Brings you to a form for a new resource
`<%= link_to 'New article', new_article_path %>`

Brings you to a form to edit an existing resource
`<td><%= link_to 'Edit', edit_article_path(article) %></td>`

Delete a resource
<td><%= link_to 'Destroy', article_path(article),
              method: :delete,
              data: { confirm: 'Are you sure?' } %></td>

## Nested resource
In routes

	  resources :articles do
	  	resources :comments
	  end

## Embeds a partial
This will now render the partial in app/views/comments/_comment.html.erb once for each comment that is in the @article.comments collection. As the render method iterates over the @article.comments collection, it assigns each comment to a local variable named the same as the partial, in this case comment which is then available in the partial for us to show.

<h2>Comments</h2>
<%= render @article.comments %>

This render defines the partial template we want to render, comments/form.

<h2>Add a comment:</h2>
<%= render 'comments/form' %>

## Deleting Associated Objects

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

end
