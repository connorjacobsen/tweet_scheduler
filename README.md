# TweetScheduler

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tweet_scheduler'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tweet_scheduler

## Usage

Clone the application to your machine:
```bash
git clone https://github.com/connorjacobsen/tweet_scheduler.git
```

Make sure you have permission to execute the bin executable:
```bash
# from the application dir
chmod +x bin/tweet
```

Add to your path:
```bash
export PATH=/path/to/application/bin:$PATH
```

You will also need to set environment variables for your Twitter application and account:
```bash
export CONSUMER_KEY=YOUR-TWITTER-CONSUMER-KEY
export CONSUMER_SECRET=YOUR-TWITTER-CONSUMER-SECRET
export ACCESS_TOKEN=YOUR-ACCESS-TOKEN
export ACCESS_TOKEN_SECRET=YOUR-ACCESS-TOKEN-SECRET
```

Tweet away!
```bash
tweet Hello Twitter!!
```

I am currently working out some kinks on the ability to schedule tweets to be sent at a later date or time, so for now you can't do that :(

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tweet_scheduler/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
