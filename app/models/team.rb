class Team
    attr_accessor :name, :motto, :heroes
  
    @@all = []
  
    def initialize(args)
      @name = args[:name]
      @motto = args[:motto]
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.clear
      @@all.clear
    end
  end