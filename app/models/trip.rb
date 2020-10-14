class Trip

    attr_reader :trip_name, :listing, :guest
    @@all = []
    def initialize(trip_name,listing,guest)
        @trip_name = trip_name
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

end