#### To deploy to heroku

- Create Heroku account
- Install heroku toolbelt
- in application.rb:
  - config.assets.initialize_on_precompile = false
- in Gemfile:
  - gem 'pg', group: :production
  - gem 'mysql2', group: :development
- heroku create <name>
  - if you don't supply a name, heroku will supply one for you
- git push heroku master