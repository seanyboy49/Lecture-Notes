Demonstration 

We start off with an array of contacts in our phone

contacts_array = ["April", "Chris", "Gina", "Mark", "Sally", "Tom"]

Our array is index from zero. So April is contacts_array[0] and Tom is contacts_array[5].

But what if we wanted to Bob to the list? Do we simply add him to the end of the array? We could, but does that make sense?
Contact lists are usually ordered alphabetically. Which means we need to insert him into index 1. This doesn't seem too difficult. You simply shift everyone after him by one spot. 

But if you're doing this for an array of thousands or millions of elements, this is a very VERY expensive process. 

*Demonstration*

ENTER, the linked list. 

Linked lists are a linear collection of data elements called *nodes* which point to the next node by means of a pointer or address. 

## Advantages 
Very good at inserts and deletions. It doesn't matter how many elements are in our collection, it'll be the same amount of time. 
Inserts/Deletes - Constant Time 

## Disadvantages 
Elements in a linked list are indexed. You can't just access a specific value in a LL the same way you could in an array. In a LL, you would have to go through every element of the list. 
Random Access - Linear Time 

1) Delete a node in a linked list 
2) How to tell if a linked list is a palindrome 
3) How to find a loop in a linked list 

Question 
What is the Big O of accessing an individual element in a linked list as opposed to an array?
Linked List: 0(n) 

