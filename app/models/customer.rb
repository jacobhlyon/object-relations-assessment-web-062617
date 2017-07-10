class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def all
  	@@all
  end

  def find_by_name(name)
  	split_name = name.split(" ")
  	#above should split the string into an array with the first and last name
  	@@all.find {|customer| @first_name == split_name[0] && @last_name == split_name[1] }
  	#above should compare each customer's first and last names to the given name
  	#find returns the first instance that this happens
  end

  def find_by_first_name(name)
  	@@all.select {|customer| @first_name == name}
  		#this could be self.full_name if we just wanted the names
  		#this is adding the entire customer object into the array
  	first_names
  end

  def all_names
  	@@all.map { |customer| self.full_name}
  end

  def add_review(restaurant, content)
  	Review.new(content)
  	#above should create a new review instance
  	review.restaurant = restaurant
  	review.customer = self
  end


end
