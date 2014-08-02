class Timer
    attr_accessor :seconds
    def initialize
        @seconds = 0
    end
    def time_string
        hours = @seconds / 3600
        minutes = (@seconds % 3600) / 60
        sec_left = @seconds % 60
        time = "#{pad(hours)}:#{pad(minutes)}:#{pad(sec_left)}"
    end
    private
    def pad(n)
        if n >= 10
            padded = "#{n}"
        else
            padded = "0#{n}"
        end
    end
        
end
    
my_timer = Timer.new
my_timer.seconds = 4000
puts my_timer.time_string
