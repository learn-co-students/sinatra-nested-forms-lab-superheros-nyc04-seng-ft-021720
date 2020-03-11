class Superhero

    attr_accessor :name, :power, :bio

    @@heroes = []

    def initialize(name, power, bio)
        @name = name
        @power = power
        @bio = bio
        @@heroes.push(self)
    end

    def self.all
        @@heroes
    end
end