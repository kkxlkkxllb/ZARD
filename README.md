SUMMARY
-------

ZARD Music Station is a Web Site about one of my favorite musician Izumi Sakai's most songs,images and videos.
You can not only listen her songs online but also read her lyrics on this site.

Please visit [http://zard.heroku.com](http://zard.heroku.com).

This site is based on Ruby 1.8.7 & Rails 3.0 and deployed on [Heroku](http://heroku.com).

Plugins Used
------------

* gem 'sqlite3-ruby', :require => 'sqlite3'
* gem 'jquery-rails'
* gem 'haml'
* gem 'haml-rails'
* gem 'authlogic', :git => 'http://github.com/odorcicd/authlogic.git', :branch => 'rails3'
* gem 'will_paginate','~> 3.0.pre2'

Plugins Info
------------

* jquery-rails : add jquery support to rails project smartly
* haml   			: i used it to replace the html.erb
* haml-rails : can create .haml file by rails generator auto
* authlogic : used to control user's authentication
* will_paginate : used to paginate @songs and @images

Install
-------

When download project ,run bundle first
		 
		bundle install
		
Migrate database

		rake db:migrate
		
Run server

		rails server
		
Open browser at 

		http://localhost:3000/
		


