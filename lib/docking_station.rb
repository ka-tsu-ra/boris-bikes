require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  # @working_bikes = []
  # @broken_bikes = []
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if working_bikes.empty? 
    
    bike_to_release = bikes.find { |bike|} bike.working? }
    bikes.delete bike_to_release

  end
  
  def working_bikes
    bikes.select { |bike| bike.working? }
    # this is done as a method so it is called every time you check
    # whether there are any working bikes - i.e. in the 
    # release_bike method.
    # Easier not to have an array of working bikes because
    # that would have to be added to and removed from every
    # time doc or release happens.
  end

  #def broken_bikes
  #  bikes.select { |bike| bike.working? == false }
  #end

  #def bikes_into_van

  #end

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