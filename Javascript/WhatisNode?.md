# What is node?

It's a run time environment for Javascript, which used to be confined to the browser. The creators of Node used the Google Chrome V8 javascript engine to run javascript on your computer, in the same way you can do it with Ruby on Rails. 

## What do you do with it? 

- Utilities on your machine: things that you concatenate and build javascript files with. Or it will listen for file changes and do live reloads. 

- Web server (express, koa): Let's built a web application using node, usually using an Express framework. 

# NPM
Allows you to download and manage packages 

`npm install underscore` creates a node_modules folder, and an underscore subfolder with an underscore package.json 

`npm init` creates a package.json with all my modules and dependencies

`npm install -S` saves a new package to my package.json

`npm install webpack -g` installs globally so I can run the webpack command 

`NODE_ENV=production webpack` sets env to production and creates a minifiied scripts file 