# Pick-A-Wish
Pick-A-Wish is a Ruby on Rails application to simplify sharing wish lists with different people. It allows users to create a simple wish list and to share it with a custom group of people. Those people can then see the items on the list and pick the ones that they are planning to get the person. Once an item is picked, it disappears from the list for all of the other people. However, the list creator does not see that someone has picked it. For convenience, there is also a shopping list tab that lists all of the items that the user has picked from the different lists.

## Getting started
Make sure you have Ruby 2.6.5 and Rails 5.2.1 installed. The current configuration makes use of PostgreSQL, so it needs to be installed on the system as well. Then run the following commands:

```
git clone git@github.com:sykaeh/pick-a-wish.git
cd pick-a-wish
bundle install
rake db:create db:migrate db:seed
rails server
```

Once the server is running, Pick-A-Wish can be accessed at [http://localhost:3000](http://localhost:3000). It can also be deployed to [Heroku](https://www.heroku.com/) without any problems.

## Built using
- [Ruby on Rails](http://rubyonrails.org/)
- [Bootstrap](http://getbootstrap.com/)
- [Font Awesome](https://fortawesome.github.io/Font-Awesome/)
- [Devise](https://github.com/plataformatec/devise)


## License
Copyright (c) 2015 - 2019 [Sybil Ehrensberger](https://sybil-ehrensberger.com). See the LICENSE file for license rights and limitations (MIT).

## Testing
There are no tests yet.
