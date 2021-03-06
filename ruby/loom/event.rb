# 
#  event.rb: simple struct for MIDI events
# 
#  tbd: always store events in canonical form?
#  
#  Copyright August 2011, Adam Florin. All rights reserved.
# 
module Loom
  module Event
    
    class Event
      
      include Loom::Tools::Timing
      include Loom::Tools::Tonality
      
      attr_accessor :at, :data
      
      # init from args
      # 
      def initialize(args = {})
        # must clone or all note events will point to same structure!
        @data ||= default_data.clone
        
        args.each do |k, v|
          self.send("#{k}=", v) unless v.nil?
        end
      end
      
      # 
      # 
      def data=(data)
        @data.merge! data if data.is_a? Hash
      end
      
      # convert event into array form for output into Max world.
      # allow subclasses to specify data.
      # 
      def output(data = nil)
        event_type = self.class.name.gsub(/[^:]+$/).first.underscorize
        [@at, event_type] + (data || [])
      end
      
      # 
      # 
      def end_at
        @at + @data[:duration]
      end
      
      
      private
        
        # to be overwritten
        # 
        def default_data
          {}
        end
        
    end
    
  end
end
