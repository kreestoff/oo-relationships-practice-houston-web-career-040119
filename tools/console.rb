require_relative '../config/environment.rb'
# require_relative '../app/models/guests.rb'
# require_relative '../app/models/listings.rb'
# require_relative '../app/models/trips.rb'

def reload
  load 'config/environment.rb'
end

Pry.start
