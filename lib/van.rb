# require_relative 'bike'

class Van
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
    @working_bikes = []
    @broken_bikes = []
  end

  def accept bike
    fail 'Van is full' if full?
    bikes << bike
  end

  def distribute_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if working_bikes.empty? 
    bikes.pop
  end
  
  def working_bikes
    bikes.select { |bike| bike.working? }
  end

  def broken_bikes
    bikes.select { |bike| bike.working? == false }
  end

  

  private

  attr_reader :bikes


  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

  

end