class Train
	attr_accessor :type
	attr_accessor :vagos_count
	attr_accessor :speed
	attr_accessor :route
	
	
	attr_accessor :curent_station
	attr_accessor :next_station
	attr_accessor :prev_station
	
	def initialize(type, vagos_count)
		@type = type
		@speed = 0
		@vagos_count = vagos_count
		puts "поезд тип #{type} кол-во #{vagos_count} создан"
	end
	
	def set_speed(speed)
		@speed = speed
	end
	
	def stop
		@speed = 0
	end
	
	def plus_vagon
		if self.speed == 0
			self.vagos_count += 1
		else
			puts "Сначала остановите поезд"
		end
	end
	
	def minus_vagon
		if self.speed == 0
			self.vagos_count -= 1
		else
			puts "Сначала остановите поезд"
		end
	end
	
	def set_route(route)
		self.route = route
		self.curent_station = route.first_station
		self.next_station = route.intermediate_stations.first
	end
	
	
	def move_train
		self.prev_station = self.curent_station
		self.curent_station = self.next_station
		if (self.route.intermediate_stations.index(self.curent_station) + 1) <= self.route.intermediate_stations.length
			self.next_station = self.route.intermediate_stations[self.route.intermediate_stations.index(self.curent_station) + 1]
		else
			puts "Поезд доехал до конечной и не моежт двигаться дальше"
		end
		
	end
		
	
	
	
	
end
class Route
	attr_accessor :first_station
	attr_accessor :last_station
	attr_accessor :intermediate_stations
	
	def initialize(first_station, last_station)
		@first_station = first_station
		@last_station = last_station
		@intermediate_stations = []
		
		puts "Маршрут создан станция отправления - #{first_station} станция назначения - #{last_station}"
		
	end
	
	def add_intermediate_stations(station)
		self.intermediate_stations.push(station)
		puts "В маршрут добавлена промежуточная станция #{station}"
	end
	
	def remove_intermediate_stations(station)
		if self.intermediate_stations.index(station)
			self.intermediate_stations.delete(station)
			puts "Из маршрута удалена промежуточная станция #{station}"
		end
	end
	
	
	def show_all_stations()
		puts "Начальная станция #{self.first_station.stationName}"
		
		self.intermediate_stations.each do |station|
			puts "Промежуточная станция #{station.stationName}"
		end
		
		puts "Конечная станция #{self.last_station.stationName}"
	end	
	
end

class RailwayStation
	
	attr_accessor :stationName
	attr_accessor :trains
	
	
	def initialize(stationName)
		@stationName = stationName
		@trains = []
		puts "Станция #{stationName} создана"
	end
	
	def accept_train(train)
		@trains.push(train)
		puts "Поезд #{train} принят на станцию #{self.stationName}"
	end
	
	def show_all_trains
		puts "Поезда на станции #{self.trains} "
	end
	
	def show_passenger_trains
		puts "Пассажирские поезда на станции:"
		self.trains.each do |train|
			next if train.type != "passenger"
			puts "#{train}"
		end
	end
	
	def show_cargo_trains
		puts "Грузовые поезда на станции:"
		self.trains.each do |train|
			next if train.type != "cargo"
			puts "#{train}"
		end
	end
	
	def send_train(train)
		self.trains.delete(train)
		puts "Поезд #{train} отправлен"
	end
end




# 
# 
# 
# 
# 
# 
# 
# 
# station1 = RailwayStation.new("Станция 1")
# station2 = RailwayStation.new("Станция 2")
# station3 = RailwayStation.new("Станция 3")
# station4 = RailwayStation.new("Станция 4")
# station5 = RailwayStation.new("Станция 5")
# station6 = RailwayStation.new("Станция 6")
# station7 = RailwayStation.new("Станция 7")
# station8 = RailwayStation.new("Станция 8")
# 
# 
# route1 = Route.new(station1, station4)
# route2 = Route.new(station5, station6)
# route3 = Route.new(station1, station3)
# route4 = Route.new(station1, station4)
# route5 = Route.new(station2, station7)
# route6 = Route.new(station1, station8)
# 
# 
# 
# train1 = Train.new("passenger", 3)
# train2 = Train.new("passenger", 5)
# train3 = Train.new("cargo", 9)
# train4 = Train.new("cargo", 6)
# train5 = Train.new("passenger", 2)
# train6 = Train.new("cargo", 2)
# train7 = Train.new("passenger", 4)
# 
# 
# 
# 
# 
# station1 nil
# station2 nil
# station3 nil
# station4 nil
# station5 nil
# station6 nil
# station7 nil
# station8 nil
# 
# 
# route1 = nil
# route2 = nil
# route3 = nil
# route4 = nil
# route5 = nil
# route6 = nil
# 
# 
# 
# train1 = nil
# train2 = nil
# train3 = nil
# train4 = nil
# train5 = nil
# train6 = nil
# train7 = nil



