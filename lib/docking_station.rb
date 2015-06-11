require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
    @working_bikes = []
    @broken_bikes = []
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if working_bikes.empty? 
    bikes.pop
  end
  
  def working_bikes
    bikes.select { |bike| bike.working? }
  end

  def bikes_into_van

  end

  private

  attr_reader :bikes


  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

  #def non_broken?
   # THERE ARE SOME BIKES IN THE ARRAY THAT ARE NOT BROKEN

end