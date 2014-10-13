require_relative 'burger'
require 'delegate'

class BurgerDecorator < SimpleDelegator
	def initialize(burger)
		@burger = burger
		super
	end
end

burgerDecorator = BurgerDecorator.new(Burger.new)
puts burgerDecorator.cost
puts burgerDecorator.calories