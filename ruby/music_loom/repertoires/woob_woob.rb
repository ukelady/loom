# 
#  woob_woob.rb: for deep bass effects
#  
#  Copyright October 2010, Adam Florin. All rights reserved.
# 
module MusicLoom
  class WoobWoob < Repertoire
    
    def initialize
      @gestures = [
        {:class => Flipper, :weight => 40},
        {:class => Hold, :weight => 10},
        {:class => Pump, :weight => 40},
        {:class => Purr, :weight => 20}]
      super
    end
    
  end
end
