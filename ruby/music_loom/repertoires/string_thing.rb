# 
#  string_thing.rb: for use with Tension string physical modeler
#  
#  Copyright October 2010, Adam Florin. All rights reserved.
# 
module MusicLoom
  class StringThing < Repertoire
    
    def initialize
      @gestures = [
        {:class => Bucephalus, :weight => 1},
        {:class => Flipper, :weight => 12},
        {:class => Cirrus, :weight => 4}]
      super
    end
    
  end
end
