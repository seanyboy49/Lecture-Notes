# Imperative vs. Declarative

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
