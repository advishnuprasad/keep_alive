# KeepAlive

Gem that will tell you whether the app/db is alive or not

## Installation

Add this line to your application's Gemfile:

    gem 'keep_alive'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install keep_alive

## Usage
add the following in initializers/keep_alive.rb

    KeepAlive.config do |config|
      config.model(ModelName)
    end

in routes.rb

    keep_alive
    
How to use ? 

    localhost:3000/keep_alive
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
