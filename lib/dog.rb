# Add your code here
class Dog
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        self
        @@all << self
        save
    end
    def self.all
       return @@all.uniq
    end
    def self.clear_all
        @@all.clear
    end
    def self.print_all
       puts  @@all.collect{|dog| dog.name}.uniq
    end
    def save
        @@all << self
    end

end