## What is HTTP?
 Hyper Text Transfer Protocol
 Made up of a Request/Response Cycle - Client (Browser) request from the Server (Web App)

 ### Anatomy of a Request: 

* Method: GET/POST/PUT/PATCH/DELETE 
v
 * Creating a new item to the data base - POST 
 * Replace or modify an existing item - PUT or PATCH 
 * * PUT would fully replace an entire item 
 * * PATCH would just update a specific part of an item. But most browsers only support GET/POST. 

* URI is a parent of URL
 
 * URL 

 URL's are fully parsable. 

 * * Uniform RESOURCE Locator 
 * * * scheme - http: https, ftp:, file:
 These are parsing rules. The s just means it's secure 
 * * * hostname - domain name, localhost
 * * * port - the port to connect, HTTP default is 80
 * * * path - the path to the resrouce on the server
 * * * query parameters - delimited with ?key=value&key2=value2

 		https://www.amazon.com/l/ref=Fr_GW_SWM_Shortcake_Acq_CA?_encoding=UTF8&node=14376356011&pf_rd_p=5ef7e8a7-1afc-466d-86ec-978f117c3387&pf_rd_s=nav-sitewide-msg&pf_rd_t=4201&pf_rd_i=navbar-4201&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=DGCM5MC9JD7ZVYEZSAYV

 * * * frag - fragment, will take directly to that id

 * HEADERS 

 * Body 

 ### Anatomy of a Response 

 * Status = http://httpstatus.es 
 * HEADERS 
 * Body 
