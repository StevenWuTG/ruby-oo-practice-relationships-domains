require 'pry'
class Listing
    attr_reader :location
    @@all = []
    def initialize(location)
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        self.trips.map {|trip| trip.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(location)
        self.all.select {|list| list.location == location}

    end

    def self.most_popular
        most_visited = self.all.max do |listing_a, listing_b|
            listing_a.trip_count <=> listing_b.trip
    end


end