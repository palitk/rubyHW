class RailwayStation
	attr_accessor :name
	attr_accessor :trains

	def initialize(name)
		
		@name = name
		@trains = Array.new
		
	end
	
	def get_train(train)
		
		self.trains.push(train)
		
	end
	
	def show_trains(type)
		
		if type != :all
			self.trains.each do |train|
			
				if train.type == type
					
					puts "#{train}"
					
				end
			end
			
		else
			self.trains.each do |train|
				puts "#{train}"
			end
			
		end
	end
	
	def send_train(train)
	

		if train.route.end_station == self
			puts "Поезд на кончной станции. Для его отправки задайте новый маршрут"
		else
			train.send
			self.trains.delete(train)

		end
		
	end

end