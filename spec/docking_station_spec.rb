require "docking_station"
require "bike"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it "releases working bike when a bike available and working" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
  it "docks bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "returns docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "does not release bike when none are available" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end

  it "does not let me dock a new bike when there's already one" do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) }.to raise_error("Cannot dock bike, station full.")
  end

end
