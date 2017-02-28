class Route
	attr_accessor :start_station
	attr_accessor :end_station
	attr_accessor :intermediate_station
	
	def initialize()
		@intermediate_station = Array.new
	end
	
	def add_start_station(station)
		self.start_station = station
	end
	
	def add_end_station(station)
		self.end_station = station
	end
	
	
	def add_intermediate_station(station)
		self.intermediate_station.push(station)
	end
	
	def delet_intermediate_station(station)
		self.intermediate_station.delete(station)
	end
	
	def show_all_station
		puts self.start_station
		
		self.intermediate_station.each do |station|
			puts station
		end
		
		puts self.end_station	
	end
	
end