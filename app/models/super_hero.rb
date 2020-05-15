class SuperHero 
    attr_reader :name, :power, :biography
    @@all = [] 

    def initialize(params) 
        @name = params[:name]
        @power = params[:power]
        @biography = params[:biography]

        self.save
    end

    def save 
        self.class.all << self
    end

    def self.all 
        @@all
    end

end
  