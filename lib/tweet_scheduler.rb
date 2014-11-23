require 'tweet_scheduler/client'
require 'tweet_scheduler/parser'
require 'tweet_scheduler/version'

module TweetScheduler
  class Application
    def initialize(argv)
      @params = parse_options(argv)
      @client = TweetScheduler::Client.new
    end

    def run
      if !@params.has_key?(:date) && !@params.has_key?(:time)
        @client.send_tweet(@params[:text])
      end

      if !@params.has_key?(:date) && @params.has_key?(:time)
        @client.schedule_tweet(@params[:text], @params[:time])
      end
    end

    def parse_options(argv)
      parser = TweetScheduler::Parser.new(argv)
      parser.parse
    end
  end
end
