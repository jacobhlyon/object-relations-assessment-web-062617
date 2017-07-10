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

