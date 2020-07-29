require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  cart.each do |grocery_item|
    coupons.each do |coupon|
      if coupon[:item] == grocery_item[:item]
        cart.append({item: grocery_item[:item] + " W/COUPON", 
                     price: coupon[:cost] / coupon[:num],
                     clearance: true,
                     count: coupon[:num]
                    })
        grocery_item[:count] = grocery_item[:count] - coupon[:num]
        binding.pry
      end 
    end 
  end 
  cart.each do |grocery_item|
    if grocery_item[:count] == 0 
      index = cart.find_index(grocery_item)
      cart.slice! index 
    end
  end 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
