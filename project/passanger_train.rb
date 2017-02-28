require_relative 'train.rb'
class PassangerTrain < Train
	def change_vagons_count(count, vagon)
		if vagon.class == "CargoVagon"
			if self.speed == 0
				if count == 1 || count == -1
					if (self.vagons_count + count) >= 0
						self.vagons_count += count
					else
						puts "Итоговое количество вагонов не может быть отрицательным"
					end
				else
					puts "За один раз можно +/- один вагон"
				end
			else
				puts "Сначала остановите поезд"
			end
		end
	end	
end