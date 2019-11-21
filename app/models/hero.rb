class Hero
    attr_accessor :name, :power, :bio, :team
  
    @@all = []
  
    def initialize(args)
      @name = args[:name]
      @power = args[:power]
      @bio = args[:bio]
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.clear
      @@all.clear
    end
  end