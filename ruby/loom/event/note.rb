# 
#  note.rb: MIDI note event
#  
#  Copyright August 2011, Adam Florin. All rights reserved.
# 
module Loom
  module Event
    
    class Note < Event
      
      # serialize note event into format Max makenote wants
      # 
      def output(data = nil)
        super([@data[:pitch], @data[:velocity], @data[:duration]])
      end
      
      
      private
        
        def default_data
          { :pitch => BASE_PITCH,
            :velocity => 100,
            :duration => TICKS_2N}
        end
        
    end
    
  end
end
