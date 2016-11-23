1. go to heroku.com to make an account 
on your local terminal:
2. brew install heroku-toolbelt
3. heroku update
4. heroku login
in your terminal in your project directory:
5. heroku create project_name 
(this will be the URL of your app, ex: project_name.herokuapp.com)
when you're ready to push up your MASTER branch to heroku:
7. git push heroku master
8. heroku run rake db:migrate
to open your app in your browser:
9. heroku openher