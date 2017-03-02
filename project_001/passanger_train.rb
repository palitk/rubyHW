require_relative 'train.rb'
require_relative 'passanger_vagon.rb'

class PassangerTrain < Train
	
	def initialize(vagons_count)
		
		super
		
		@vagons = Array.new
		
		vagons_count.each do
			
			self.vagons.push(PassangerVagon.new)
			
		end
		
	end
	
	
	def plus_minu_vagon(vagon)
		
		if self.speed == 0  && vagon.class == "PassangerVagon"

			if operation == "plus"
				self.vagons.push(PassangerVagon.new)
				self.show_vagons_count
			else
				self.vagons.delete_at(-1 )
				self.show_vagons_count
			end
		else
		
			puts "Остановите поезд и проверьте тип вагона"
			
		end
		
	end
	
	

end