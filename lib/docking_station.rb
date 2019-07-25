# in lib/docking_station.rb

class DockingStation
  attr_reader :bikes, :capacity

  @@DEFAULT_CAPACITY = 20

  def initialize(num = @@DEFAULT_CAPACITY)
    @bikes = []
    @capacity = num
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
    @bikes.length == @capacity
  end
end
