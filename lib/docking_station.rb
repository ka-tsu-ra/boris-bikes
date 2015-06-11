require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end


  def release_bike
    fail 'No bikes available' if bikes.empty?
    fail 'The bike is broken' if bike.broken? == true
    bikes.pop
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes << bike
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