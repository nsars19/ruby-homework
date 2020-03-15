class Timer
	
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string

		secs = @seconds % 60
		mins = @seconds / 60
		hours = mins / 60
		mins = (@seconds / 60) % 60
		
		# if mins >= 60
		# 	mins -= 60
		# end

		if secs < 10
			secs = '0' + secs.to_s
		end
		if mins < 10
			mins = '0' + mins.to_s
		end
		if hours < 10
			hours = '0' + hours.to_s
		end

		%(#{hours}:#{mins}:#{secs})
	end
end
