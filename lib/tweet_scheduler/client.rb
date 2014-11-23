require 'twitter'
require 'rufus-scheduler'

module TweetScheduler
  class Client
    def initialize()
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['CONSUMER_KEY']
        config.consumer_secret     = ENV['CONSUMER_SECRET']
        config.access_token        = ENV['ACCESS_TOKEN']
        config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
      end
    end

    # Send a tweet.
    def send_tweet(text)
      @client.update(text)
    end

    # Schedule a tweet to be sent.
    def schedule_tweet(text, datetime)
      scheduler = Rufus::Scheduler.new

      job = scheduler.schedule datetime do
        puts "beep"
        send_tweet(text)
      end

      puts "Job trigger time: #{job.time}\n"
      puts "Running Jobs: #{scheduler.running_jobs}\n"
    end
  end
end