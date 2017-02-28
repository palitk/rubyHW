class RailwayStation

attr_accessor :name
attr_accessor :trains


	def initialize(name)
		@name = name
		@trains = Array.new
	end
	
	def take_a_train(train)
		self.trains.push(train)
	end
	
	
	def show_all_trains()
		self.trains.each do |train|
			puts "#{train}"
		end
	end
	
	def show_trains_with_type(train_type)
		self.trains.each do |train|
			if train.type == train_type
				puts train
			end
		end
	end	
	
	
	def send_train(train)
		self.trains.delete(train)
		train.send_train
	end
	
end















