## Query Selector

Document.querySelector => returns the first element that matches the specified group of selectors

e.g.
`var el = document.querySelector(".myclass")`

## addEventListener

Registers the specified listener on the EventTarget it's called on. The EventTarget can be an element on the document, the doc itself, a window, or any other object that supports events.

e.g.
```
var el = document.getElementById("outside");
el.addEventListener("click", modifyText, false);
```

modifyText is a listener that waits for event type "click"

## complete

document.getElementById("myImage").complete => whether or not the browser is finished loading an image
