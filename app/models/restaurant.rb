class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def all
  	@@all
  end

  def find_by_name(given_name)
  	@@all.find { |restaurants| @name == given_name} 
  	#find should return the first instance where the names match
  end

  def reviews
  	self.all.select { |review| self.review}
  end

  def customers
  	self.all.select { |customer| self.customer}
  end

end
