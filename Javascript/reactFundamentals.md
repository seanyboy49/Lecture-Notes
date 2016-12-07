# Intro to the React Ecosystem
Imperative vs. Declarative

### Imperative: How
```
var numbers = [4,2,3,6]
var total = 0
for (var i = 0; i < numbers.length; i++) {
  total += numbers[i]
}
```
Keeping track of state (total)

### Declarative: What
```
var numbers = [4,2,3,6]
numbers.reduce(function(previous, current)
return previous + current)
```
#### Benefits of Declarative Code
* No state to keep track of
* Less bugs
* More readable code
* Reduce side effects

# Setting up your first React Component with NPM, Babel and Webpack

## Setting up React: CLI Commands
`npm init`
`npm install --save react react-dom`
`npm install --save-dev html-webpack-plugin webpack webpack-dev-server babel-{core,loader} babel-preset-react`

* Why react and react-dom? FB engineers realized that React is an elegant solution for more use cases than just the DOM. e.g., React can be used for mobile as well.

* So they decoupled react-dom from the core library.

* Flagging dependencies under dev creates a development environment

# Pure Functions. f(d) = V. Props, and Nesting React Components
## ES6 Syntax

ES6 syntax uses native JS to create a class which extends the React Component.
It takes a constructor function.
No commas are necessary between functions in ES6.

```
class FriendsContainer extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    const name = "Sean Lee"
    const friends = ["David Ross", "Graham Ludwinski", "Florent Lefebvre", "Maguire Mealy"]
    return (
      <div>
        <h3>Name: {name} </h3>
        <ShowList names={friends} />
      </div>
    )
  }
}

```
ShowList is a nested component. It takes props passed down to it from its parent component and renders them into an unordered list.

```

class ShowList extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    const listItems = this.props.names.map(function(friend) {
      return <li> {friend} </li>
    });
    return (
      <div>
        <h3> Friends </h3>
        <ul>
          {listItems}
        </ul>
      </div>
    )
  }
}
```
There are many ways of writing a component.

### React.createClass
Props are being passed down to ProfilePic and must be accessed via the `this` keyword.

```
var ProfilePic = React.createClass({
  render: function() {
    return (
      <img src={this.props.imageURL} style={{height: 100, width: 100}}/>
    )
  }
})
```

### extends React.Component

A bit more verbose than the createClass method. But this also works without the constructor function.

```
class ProfilePic extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <img src={this.props.imageURL} style={{height: 100, width: 100}}/>
    )
  }
}
```

### ES5 Function With Explicit Return
Old JS way of declaring a function. Note absence of `this` keyword when referring to props.

```
const ProfilePic = function(props) {
  return <img src={props.imageURL} style={{height: 100, width: 100}}/>
}
```


### ES6 Function With Implicit Return
`const ProfilePic = props => <img src={props.imageURL} style={{height: 100, width: 100}}/>
`

## FIRST

All your React components should be tested against the *FIRST* acronym.

```
Focused
Independent
Reusable
Small
Testable
```

# this.props.children and React Router

What if we wanted to get access to data between opening/closing elements?

```
<Clock>
  12:49 AM
</Clock>
```
Calling `this.props.children` on our Clock component will evaluate to 12:49 AM

## "this" differences and binding

`React.createClass` will automatically bind `this` values correctly for us.

### The React.createClass way

In this code, when `changeURL` gets called, React will apply the right execution context to the method.

```
const Link = React.createClass({
  changeURL: function() {
    window.location.replace(this.props.href)
  },
  render: function() {
    return (
      <span
        style={{color: 'blue', cursor: 'pointer'}}
        onClick={this.changeURL}>
        {this.props.children}
      </span>
      )
  }
})
```

### The extends React.Component Way

ES6 classes require that you bind the right context. To avoid inline repetition, it is best to bind in the constructor function.

```
class Link extends React.Component {
  constructor(props) {
    super(props);
    this.changeURL = this.changeURL.bind(this);
  }
  changeURL() {
    console.log(this)
    window.location.replace(this.props.href)
  }
  render() {
    return (
      <span
        style={{color: 'blue', cursor: 'pointer'}}
        onClick={this.changeURL}>
        {this.props.children}
      </span>
    )
  }
}
```

# Stateless Functional Components and Proptypes

## React-Router
At its core, React-Router is an object.

Context allows you to pass items down to your child components without going through props
We don't have to pass the router down as props. We can just grab it off contextTypes.

When using `extends React.component` contextTypes must be declared statically outside of the class definition.

```
PromptContainer.contextTypes = {
      router: React.PropTypes.object.isRequired
    }
```
You can push new paths to the router but must first grab it dynamically by accessing the context.
Paths can be pushed in as an object with pathname and queries, or simply a path.

```
/...
if (this.props.routeParams.playerOne) {
  this.context.router.push({
    pathname: '/battle',
    query: {
      playerOne: this.props.routeParams.playerOne,
      playerTwo: this.state.username
    }
  })
} else {
  this.context.router.push('/playerTwo/' + this.state.username)
}
.../
```
## hashHistory vs. browserHistory
[Medium Post on Routing](https://medium.com/@dabit3/beginner-s-guide-to-react-router-53094349669#.bc9brs4gv)
If you would like a cleaner address, or you are using this in production, you may want to look into browserHistory vs hashHistory. When using browserHistory you must have a server that will always return your server at any route, for example if using nodejs, a configuration like the following (from the docs) would work:

### Style Trick

Import the styles object into a component.
If we add this property to a component, the background of that component will become transparent.

```
const styles = {
  transparentBg: {
    background: 'transparent'
  }
}

module.exports = styles;
```
# React Life Cycle Events and Conditional Rendering

Lifecycle methods are special methods each component can have that allow us to hook into the views when specific conditions happen (i.e. when the component first renders or when the component gets updated with new data, etc).

You can break React's Life Cycle Methods into two categories

1) When a component gets mounted to the DOM and unmounted.
2) When a component receives new data.

## Mounting/Unmounting
These are life cycle methods which are called when the component is initialized and added to the DOM (*mounting*), and when the component is removed from the DOM (*unmounting*)

These methods will be invoked only once during the life of the component.
