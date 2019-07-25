# in lib/docking_station.rb

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if @bikes == []
    @bikes.pop
  end

  def dock(bike)
    raise "Cannot dock bike, station full." if @bikes.length == 20
    @bikes << bike
  end
end
