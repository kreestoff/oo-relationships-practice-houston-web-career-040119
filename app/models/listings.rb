# require_relative 'trips.rb'
# require_relative ' guests.rb'
require 'pry'

class Listings
  attr_accessor :city
  @@all = []


  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trips.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    self.trips.count
  end

end
