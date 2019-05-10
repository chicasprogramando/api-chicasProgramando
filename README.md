# README api-chicasProgramando

* Install RVM (https://rvm.io/)

> gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

> \curl -sSL https://get.rvm.io | bash -s stable

* System dependencies
> bundle install

* Run server on Rails in localhost:3000/admin
> rails server ó rails s

### Troubleshooting 

* If you get `An error occurred while installing pg (X.XX.X), and Bundler cannot continue` running on OSX
> Execute the following in your terminal: <br />
> 1- brew update && brew install postgres <br />
> 2- gem install pg <br />
> 3- bundle install 

* How to fix “Your Ruby version is X.X.X, but your Gemfile specified Y.Y.Y” while server starting
<br />
Use rvm to install and use as default the same version the Gemfile specifies.
> Execute the following in your terminal: <br />
> rvm install `Y.Y.Y` && rvm use `Y.Y.Y`


