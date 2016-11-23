## Writing my first component
Everything is a function. Even a div.
The first argument you pass to a React function is an attribute. If you don't pass one, you can just say 'null'

```
div(null,
  h1(null, 'This is my first component')
  )
)

div({style:{color:'red'}},
  h1(null, 'This is my first component')
  )
)
```

### React-DOM is a particular React library that's targeted towards a specific rendering environment.
For instance, there are different React components for Playstation, Netflix, Mobile, etc.

### Render methods
 Render methods *MUST* return a component
 They must also be a pure function. Every time you call it, it shouldn't iteratively change a value.

## Webpack
Builds the project.
Out of the box, webpack wants to bundle all your files together and give you a bundle.
Additional features: run lint, run tests, run Babel transpilation

Don't make React global. Keep things tight. Because if some idiot on your team overwrites React, your whole app will die.

**require statements won't work unless you webpack your bundle file**

Put all JS files in a public/bundle.js file so you don't clutter your index.html
Tell webpack an entry point (ClientApp) and what file to generate (public/bundle.js)

`webpack js/ClientApp.js public/bundle.js`

By putting everything into bundle, you can easily organize your scripts into one gigantic file
`1336 -rw-r--r--  1 SeanBoramLee  staff   665K Oct 28 18:13 public/bundle.js`

If you take a look at the console, you are no longer pulling in multiple scripts. Just bundle.js

## Webpack Config
Create a file in your root called webpack.config.js

The whole point of creating a webpack config is to specify what happens when you run webpack.
So back in your packag.json, you can remove all the extra specifications with your scripts: {build: webpack} command

*regexr.com* for regex help


## Babel
A plugin does exactly one transformation. e.g., it takes one arrow function and turns it into an older ES function
Presets include everything we need to do a set of transformations
*For production, don't include everything in a preset because the files are huge. Just include the individual plugins you actually need*

```
{
  "presets": ["react", "es2015"]
}
```

In your package.json, edit "build" to run js files through a babel transpiler

` "build": "webpack --module-bind 'js=babel' js/ClientApp.js public/bundle.js" `

## JSX and Why React is Awesome
JSX allows you to write HTML in JavaScript
React eschews the traditional paradigm of a MVC

Instead of arbitrarily separate different concerns into Model, View, Controller; they tried to separate them into individual components.
They take all concerns of the MVC and mash them into very small individual components.

Now these components are entirely self contained. So if you have a bug, you can easily identify the bug because you know that it's encapsulated within the scope of its component.

## Stateless Components
Lower case tags like <input> are React specific.
Upper case specifies composite (i.e., handmade) tags.

The more you limit the scope of what you need, the less surface area you have for bugs.
Advantage of stateless components: it just pulls in what you need.

## Different Ways of Making a Stateless Component

### Normal Way
```
var MyFirstComponent = function () {
  return (
    div(null,
      MyTitleFact({title: 'Props are great!', color: 'rebeccapurple'})
    )
  )
}
```

### Arrow Function

```
var MyFirstComponent = () => {
  return (
    <div>
      <MyTitle title='OMGLOWTFBBW' color='#f06d06'/>
    </div>
  )
}
```

### Arrow Function with Expression
Using () instead of {} tells React that an *expression* is about to follow.
React will interpret it as implicit return.
*Important* This is no longer a function body. It is an expression, so you can't declare a var or const within your expression.

```
var MyFirstComponent = () => (
    <div>
      <MyTitle title='OMGLOWTFBBW' color='#f06d06'/>
    </div>
)
```

### Quick Rebuilds with Webpack

`webpack --watch` => will just rebuild the changes you made so the build will be much faster

### Package JSON
* Dependencies: libraries that you need for production
* Dev Dependencies: libraries that you need while developing, such as testing suites
* Peer Dependencies: Libraries that work in tandem with other libraries. e.g., You wouldn't use React Router on its own. You would need it with React.

### React Router
Routes Using hashHistory

`#/?_k=cdwa0v`  
`#/` is the root and `?_k=cdwa0v` is React's method of tracking its internal state

* React does not parse JSON natively. You need to add a test case for .json in webpack.
* `<pre>` means pre formatted and `<code>` means actual code so this formats it nicely for you
```
<pre><code>  
  {JSON.stringify(shows, null, 4)}
</code></pre>

```

## ES6 Template Strings
`<img src={`public/img/posters/${show.poster}`} className='show-img' />`

## Index Routes
IndexRoute will take the path of its parent route

```
const App = () => (
  <Router history={hashHistory}>
    <Route path='/' component={Layout}/>
      <IndexRoute component={Landing} />
      <Route path='/search' component={Search} />
    </Route>
  </Router>
)
```

## Stateful Classes

Create Class does autobinding for you so when you call 'this', it automatically sets the correct binding for you.

* Advantage of createClass is that propTypes can live in the component.
```
const Search = React.createClass({
  getInitialState () {
    return {
      searchTerm: ''
    }
  },
  propTypes: {
    shows: arrayOf(object)
  },
  ...
```

```
const Search = React.createClass({
  render() {
    return (
      <div className='container'>
        <div className='shows'>
          {data.shows.map((show) => (
            <ShowCard {...show} key={show.imdbID} />
          ))}
        </div>
      </div>
    )
  }
})
```

or

```
class Search extends React.Component {
  render() {
    return (
      <div className='container'>
        <div className='shows'>
          {data.shows.map((show) => (
            <ShowCard {...show} key={show.imdbID} />
          ))}
        </div>
      </div>
    )
  }
}
```

## Test Coverage
`nyc --reporter=lcov --reporter=text --reporter=html --require babel-register --extension .jsx npm test
`
`ls -la `reveals a coverage folder that's generated upon the previous command

### Pre Code Trick
```
<div style={{textAlign: 'left'}} className='container'>
  <pre><code>
    {JSON.stringify(this.props, null, 4)}
  </code></pre>
</div>
```

## Redux and Debugging Redux
https://egghead.io/courses/getting-started-with-redux

`http-server -p 8080 ./`

## Universal Rendering
Also known as server side rendering or isomorphic rendering
Means rendering on your server and then sending a fully rendered payload to your client

## Express
It's annoying to have to stop and restart your node server every time so just run `nodemon`
componentWillMount
componentDidMount
componentWillUnMount
