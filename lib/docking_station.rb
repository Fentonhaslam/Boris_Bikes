# in lib/docking_station.rb

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Cannot dock bike, station full." if full?
    @bikes << bike
  end

  private
  def empty?
    @bikes == []
  end


  def full?
    @bikes.length == 20
  end
end
