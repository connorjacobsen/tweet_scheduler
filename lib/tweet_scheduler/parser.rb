module TweetScheduler
  class Parser
    def initialize(argv)
      @argv = argv
    end

    def parse
      params = {}

      if @argv.include? '-d'
        index = @argv.index('-d')
        params[:date] = @argv[index+1]
        2.times do
          @argv.delete_at(index)
        end
      elsif @argv.include? '--date'
        index = @argv.index('--date')
        params[:date] = @argv[index+1]
        2.times do
          @argv.delete_at(index)
        end
      end

      if @argv.include? '-t'
        index = @argv.index('-t')
        params[:time] = @argv[index+1]
        2.times do
          @argv.delete_at(index)
        end
      elsif @argv.include? '--time'
        index = @argv.index('--time')
        params[:time] = @argv[index+1]
        2.times do
          @argv.delete_at(index)
        end
      end

      params[:text] = @argv.join(' ')

      params
    end
  end
end