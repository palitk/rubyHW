require_relative 'rail_way_station.rb'
require_relative 'route.rb'
require_relative 'cargo_train.rb'
require_relative 'passanger_train.rb'




train1 = Train.new(:cargo, 1)
train2 = Train.new(:cargo, 2)
train3 = Train.new(:cargo, 3)
train4 = Train.new(:cargo, 4)

train5 = Train.new(:passanger, 1)
train6 = Train.new(:passanger, 2)
train7 = Train.new(:passanger, 3)
train8 = Train.new(:passanger, 4)





station1 = RailwayStation.new("station1")
station2 = RailwayStation.new("station2")
station3 = RailwayStation.new("station3")
station4 = RailwayStation.new("station4")
station5 = RailwayStation.new("station5")
station6 = RailwayStation.new("station6")
station7 = RailwayStation.new("station7")
station8 = RailwayStation.new("station8")




route1 = Route.new
route2 = Route.new
route3 = Route.new
route4 = Route.new
route5 = Route.new
route6 = Route.new
route7 = Route.new
route8 = Route.new








route1.add_start_station(station1)
route1.add_end_station(station5)
route1.add_intermediate_station(station2)
route1.add_intermediate_station(station3)
route1.add_intermediate_station(station4)

route2.add_start_station(station2)
route2.add_end_station(station8)
route2.add_intermediate_station(station6)
route2.add_intermediate_station(station7)
route2.add_intermediate_station(station4)

route3.add_start_station(station3)
route3.add_end_station(station4)
route3.add_intermediate_station(station2)
route3.add_intermediate_station(station1)
route3.add_intermediate_station(station6)




<Route:0x007f880e04f720
@intermediate_station=[
						#<RailwayStation:0x007f880e9003b0 @name="station2", @trains=[]>,
						#<RailwayStation:0x007f880e0ad820 @name="station3", @trains=[]>,
						#<RailwayStation:0x007f880e09d830 @name="station4", @trains=[]>],
@start_station=#<RailwayStation:0x007f880e0c4110 @name="station1",@trains=[]>,
@end_station=#<RailwayStation:0x007f880e08d818 @name="station5", @trains=[]>> 