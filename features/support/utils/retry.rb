module Utils
  module Retry
    RETRY_MAX = 5
    SLEEP_TIME = 5
    def self.retry_block_on_raise(opts = {})
      retries = opts[:retries] || RETRY_MAX
      sleep_time = opts[:sleep_time] || SLEEP_TIME
      try_num = 0
      while try_num <= retries
        begin
          yield
          break
        rescue Exception => e
          try_num += 1
          raise e if try_num >= retries
          sleep sleep_time
        end
      end
    end
  end
end