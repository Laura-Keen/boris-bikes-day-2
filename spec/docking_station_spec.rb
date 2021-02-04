require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'returns bike to docking station' do
    subject.instance_variable_set :@bike, false
    subject.dock(Bike.new)
    expect(subject.bike).to be_a(Bike)
  end

  it 'sees docked bikes' do
    subject.instance_variable_set :@bike, Bike.new
    expect(subject.check_bike).to be true
  end

  it 'doesnt see docked bikes' do
    subject.instance_variable_set :@bike, false
    expect(subject.check_bike).to be false
  end

end
