# Rails, CSRF and JQUERY ajax

## CSRF Overview
Cross-site request forgery, also known as one-click attack or session riding, is a type of malicious exploit of a website where unathorized commands are transmitted from a user that the website trusts. 

### History 
KNown and in some cases exploited since 2001. 
* YouTube was vulnerable to CSRF in 2008, allowing any attacer to perform nearly all actions of any user. 

### So How Does it Work?
If an attacker is able to find a reproducible link that executes a specific action on the target page while the victim is logged in there, they can embed such a link on a page they control and trick the victim into opening it. 

# Notes from Ruby on Rails Security Guide 

## Sessions 
## 2.1 What are sessions?
HTTP is a stateless protocol. Sessions make it *stateful*

## 2.3 Session Hijacking
What is LAN? Local Area Network. in an unencrypted wireless LAN, it is especailly easy to listen to traffic of all connected computers and sniff out a cookie. 