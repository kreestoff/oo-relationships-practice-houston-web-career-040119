# require_relative 'listings.rb'
# require_relative ' trips.rb'

class Guests
  attr_accessor  :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trips.all.select do |trip|
      trip.guest == self
    end
  end

  def listings
    self.trips.map do |trip|
      trip.listing
    end
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveller
    result = []
    self.all.each do |guest|
      if guest.trip_count > 1
        result << guest
      end
    end
    result
  end

  def self.find_all_by_name(name)
    result = []
    self.all.each do |guest|
      if guest.name == name
        result << guest
      end
    end
    result
  end



end
