---
title: Review and Reflect - Classes and Modules Week 6
notebook: DBC
tags:classes, modules, states, behavior, sintance, variable, method, attribute, initialize
---
# Review and Reflect - Classes and Modules Week 6

## 1. What are classes? Be sure to define the following terms in your explanation and describe the relationships between them:

* A **class** is a categorical blueprint from which individual objects are created. These individual objects are known as **instances** of a class. Classes are powerful because you can define them to include **state** (attributes) and **behavior** (also known as **instance methods** which are simply methods that can be called on) which are inherited by every instance. When you add state to a class, you create         **instance variables**, which are variables defined in a class and prepended with an @. Instance variables have a special scope and can be accessed by any instance of the class. 



2. What are attributes?

* Attributes are characteristics that describe a class' state. They are values stores in special variables prepended with @. Some attributes are created to change frequently, others remain static. Otherwise, all instances of the same class would be perfeclty identical. 

3. Give an example of a real world object, and describe how you might assign its attributes if you were to design a class to represent that object.

* Table class. An initalized table would come with a few attributes: flat top surface of 4 sides of equal length and 4 legs. Every instance of this class will start with these attributes. But we can change these attributes too. For instance, the 4 sides of the surface don't have to be equal, thus making a square. We can modify the side length and side amount to create any shape we want like a rectangle or circle. The table can have more than 4 chairs. The matieral of the table can be wood, plastic, marble, or anything else we can think of. 

4. What is the purpose of the initialize method? When does it run?

* The initalize method is a special method that Ruby will run when an instance of that class is initialized. 

5. What are modules?

* A module is a set of behaviours or methods that are used frequently enough that we organize them into their own category. Unlike instance methods, module methods can be called upon without creating an encapsulating object. 

6. What are the different ways you can use a module?

* Modules provide compartmentalization for methods, so instead of calling some_method, you would call SomeModule.some_method -- similar to how you might organize files into folders in order to group them. This compartmentalization prevents clutter, and decreases the likelihood that one programmer might accidentally overwrite the method of another programmer. 

* Modules can also be mixed in to classes, giving those classes extra functionality. 
