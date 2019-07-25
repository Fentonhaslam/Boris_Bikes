# in lib/docking_station.rb

class DockingStation
  attr_reader :bike

  def release_bike
    raise "No bikes available" unless @bike
    @bike
  end

  def dock(bike)
    raise "Cannot dock bike, station full." if @bike
    @bike = bike
  end
end
