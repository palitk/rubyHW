class Route
	attr_accessor :start_station
	attr_accessor :end_station
	attr_accessor :intermediate_stations
	
	def initialize
		
		@intermediate_stations = Array.new
		
	end
	
	#Может добавлять станцию в список
	
		def add_station(station)
		
		self.intermediate_stations.push(station)
		
	end
	
	def delete_station(station)
		
		if self.intermediate_stations.count != 0
			
			self.intermediate_stations.delete(station)
			
		else
		
			puts "Промежуточных станций нет, удалять нечего"
			
		end
	end
	
	def show_allStation	
		
		puts "Начальная станция #{self.start_station.name}"
		
		if self.intermediate_stations.count != 0
			
			self.intermediate_stations.each do |station|
				
				puts "Промежуточная станция #{station.name}"
				
			end
			
		else
		
			puts "Промежуточных станций нет"
			
		end
		
		puts "Конечная станция #{self.end_station.name}"
	end
		
end