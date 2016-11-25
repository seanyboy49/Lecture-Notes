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

*Why react and react-dom? FB engineers realized that React is an elegant solution for more use cases than
just the DOM. e.g., React can be used for mobile as well. So they decoupled react-dom from the core library.

*Flagging dependencies under dev creates a development environment
