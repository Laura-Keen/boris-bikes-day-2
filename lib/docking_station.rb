require_relative 'bike'

class DockingStation
  attr_reader :bike

  # def initialize
  #   @bike = false
  # end

  def dock(bike)
    @bike = bike
  end

  def release_bike
    Bike.new
  end

  def check_bike
    if @bike == false
      return false
    else
      return true
    end
  end
end