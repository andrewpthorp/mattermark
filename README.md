# Mattermark

Ruby client for the mattermark API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mattermark'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mattermark

## Usage

    Mattermark.configure do |c|
      c.api_key = 'your_api_key'
    end

    client = Mattermark::Client.new

    begin
      puts client.companies
    rescue Mattermark::Forbidden
      puts "Forbidden!"
    end

## Contributing

1. Fork it ( https://github.com/andrewpthorp/mattermark/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
