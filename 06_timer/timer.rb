class Timer
  
    def initialize(seconds = 0)
        @seconds = seconds
        @minutes = seconds
        @hours = seconds
    end

  def seconds=(new_seconds)
    @seconds = 
        if new_seconds < 60
            new_seconds
        elsif new_seconds < 3600
            @minutes = new_seconds / 60
            new_seconds - 60
        elsif new_seconds < 86400
            @hours = new_seconds / 3600
            new_seconds = new_seconds - (@hours * 3600)
            if new_seconds < 60
                new_seconds
            else
                @minutes = new_seconds / 60
                @seconds = new_seconds - (@minutes * 60)
            end

        end
  end

  def seconds
    @seconds
  end


  def time_string
    "%02d%c%02d%c%02d" % [@hours,":", @minutes, ":" ,@seconds]
  end


end
