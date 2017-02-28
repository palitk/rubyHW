class Train
	attr_accessor :type
	attr_accessor :vagons_count
	attr_accessor :speed
	attr_accessor :route
	attr_accessor :curent_route
	attr_accessor :curent_station_index
	
	

	def initialize(type, vagons_count)
		@type = type
		@vagons_count = vagons_count
		@speed = 0
		@curent_route = Array.new
	end
	
	def set_speed(speed)
		@speed = speed
	end
	
	def show_speed
		puts self.speed
	end
	
	def stop
		self.speed = 0
	end
	
	def show_vagons_count
		puts self.vagons_count
	end
	
	def set_route(route)
		self.route = route
		self.curent_route.push(route.start_station)
		route.intermediate_station.each do |station|	
			self.curent_route.push(station)	
		end
		self.curent_route.push(route.end_station)
		self.curent_station_index = 0
	end
	
	def send_train
		if self.curent_station_index < self.curent_route.count
			self.curent_station_index += 1
		else
			self.show_current_station
		end
				
	end
	
	def show_prev_station
		if self.curent_station_index == 0
			puts "Поезд находится на начальной станции"
		else
			puts "Предыдущая станция #{self.curent_route[self.curent_station_index - 1]}"
		end
	end
	
	def show_current_station
		puts "текущая станция #{self.curent_route[self.curent_station_index - 1].name}"
		
	end
	
	def show_next_station
		if self.curent_station_index < self.curent_route.count - 1
			puts "Следующая станция #{self.curent_route[self.curent_station_index + 1]}"
		else
			puts "Поезд на конечной станции"
		end
	end
	
end