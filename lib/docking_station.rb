# in lib/docking_station.rb

class DockingStation
  attr_reader :bikes, :DEFAULT_CAPACITY

  def initialize
    @bikes = []
    @DEFAULT_CAPACITY = 20
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
    @bikes.length == @DEFAULT_CAPACITY
  end
end
