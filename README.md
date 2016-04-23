The KSC Main Site
===============

[![Join the chat at https://gitter.im/knowledge-sharing-campaign/site](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/knowledge-sharing-campaign/site?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

This is the repo for the code for the main knowledge sharing campaign website at http://knowledgesharingcampaign.org

The backend has been designed for high scalability and performance for a large number of concurrent users and heavy loads.

Tech Stack
-------------
> - HTML 5
> - CSS 3
> - CoffeeScript / Javascript
> - Ruby 2.0.x / Rails 4.2

Development requirements
--------------------------------
> - Install ruby 

Running
----------
> - Clone this repo using ``` git clone https://github.com/knowledge-sharing-campaign/kscrubysite ```
> - Go inside the site folder using ``` cd site ```
> - run ``` sudo bundle install ```
> - run the following commands (will use *7070* port by default)
    - *For production mode*
        - ``` sudo ./ksc -start ```
        - ``` sudo ./ksc -stop ```
        - ``` sudo ./ksc -restart ```
    - *For development mode*
        - ``` sudo rails server -dev```
        - ``` sudo ./ksc -stop -dev``` 

Developing
--------------
> - All ruby code and HTML templates should be written in app/
> - All static content should be put in app/views folder. Referenced as /views/... from HTML, CSS files.


-- The KSC Team
