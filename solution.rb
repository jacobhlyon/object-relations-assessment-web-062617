

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




class Review

	attr_accessor :restaurant, :customer, :content

	@@all = []

	def initialize(content)
		@@all << self
		#above should tie this instance to the review and customer
		#this will be tied to the restaurant and customer classes, so that it will be created automatically
		@content = content
	end

	def all
		@@all
	end

	def customer
		self.customer
	end

	def restaurant
		self.restaurant
	end
  
end


