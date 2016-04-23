The KSC Main Site
===============

This is the repo for the code for the main knowledge sharing campaign website at http://knowledgesharingcampaign.org  The backend has been designed for high scalability and performance for a large number This is the repo for the code for the main knowledge sharing campaign website at http://knowledgesharingcampaign.org  The backend has been designed for high scalability and performance for a large number of concurrent users and heavy loads.of concurrent users and heavy loads.


[![Join the chat at https://gitter.im/knowledge-sharing-campaign/site](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/knowledge-sharing-campaign/site?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

 
Tech Stack
-------------
> - HTML 5
> - CSS (Bootstrap)
> - CoffeeScript / Javascript
> - Ruby 2.7.x / Rails 4.x

Development requirements
--------------------------------
> - Install Ruby on Rails [![https://http://installrails.com/](http://installrails.com/steps/choose_os)] 


- *For Windows*
        - ``` download & install ruby 2.x ```
        - ``` install sublime or other favorite IDE```
        - ``` open gitBash ```
        - ``` curl http://installrails.com/update_rubygems.rb | ruby ```
     

 - *For UNIX *
        - ``` to be written in next commit ```
        

Running
----------
> - Clone this repo using ``` git clone https://github.com/knowledge-sharing-campaign/kscrubysite ```

> - Go inside the site folder using ``` cd site ```
> - run ``` sudo gems install  ```
	run ``` sudo bundle install  ``` 
    - *For development mode*
        - ``` sudo rails server``` 

Developing
--------------
> - All ruby code and HTML templates should be written in app/app_core
> - All static content should be put in app/views folder. Referenced as /filename.html.erb ... from HTML, CSS files.


-- The KSC Team
