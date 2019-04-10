require 'bundler/setup'
Bundler.require
require_all 'app'


g1 = Guests.new("Chris")
g2 = Guests.new("Paola")

l1 = Listings.new("Houston")
l2 = Listings.new("LA")

t1 = Trips.new(l1, g1, "Apr 14")
t2 = Trips.new(l2, g1, "Apr 25")
t3 = Trips.new(l1, g2, "Apr 20")

binding.pry
0
