class Train
	attr_accessor :speed
	attr_accessor :route	
	
	attr_accessor :vagons
	
	attr_accessor :train_route
	attr_accessor :curet_station_id
	
	
	def initialize()
		
		@speed = 0
		
	end
	
	def set_speed(speed)
		self.speed = speed
		self.show_speed
	end
	
	def show_speed
		puts "Текущая сорость #{self.speed}"
	end
	
	def stop
		
		self.speed = 0
		
		self.show_speed
		
	end
		
	def show_vagons_count
		
		puts "Количество вагонов поезда #{self.vagons.count}"
		
	end

	def get_route(route)
		@route = route
		
		self.train_route = Array.new
		self.train_route.push(route.start_station)
		
		route.intermediate_stations.each do |station|
			
			self.train_route.push(station)
			
		end
		
		self.train_route.push(route.end_station)
		self.curet_station_id = 0
		
		route.start_station.get_train(self)
		
	end
	
	def send	
		if self.train_route.count > 0
			
			if self.curet_station_id < self.train_route.count
				self.curet_station_id += 1
				self.train_route[self.curet_station_id].get_train(self)
				
			else 
				puts "Поезд на конечной станции"	
			end
		else
			puts "У поезда нет маршрута"
		end
	end

	def show_prev_station
		if self.curet_station_id > 0
			puts "Предыдущая станция #{self.train_route[self.curet_station_id - 1].name}"
		else
			puts "Позед на начальной станции"
		end
	end
	
	def show_curent_station
		puts "Текущая станция #{self.train_route[self.curet_station_id].name}"
	end
	
	
	def show_next_station
		if self.curet_station_id < (self.train_route.count - 1)
			
			puts "Следующая станция #{self.train_route[self.curet_station_id + 1].name}"
			
		else
		
			puts "Позед на кончной станции"
			
		end
	end
	
end