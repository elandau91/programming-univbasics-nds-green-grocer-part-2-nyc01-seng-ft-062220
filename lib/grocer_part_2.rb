require "pry"

require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  new_cart = []
  coupon_item = ""
  coupon_amount = 0
  coupon_number = 0
  
  coupons.each do |item|
    coupon_item = item[:item]
    coupon_amount += item[:cost]
    coupon_number += item[:num]
  end
  
  cart.each do |grocery_item|
    if grocery_item[:item] == coupon_item && grocery_item[:count] >= coupon_number
      
      
      while grocery_item[:count] >= coupon_number do
        grocery_item[:item] = "#{grocery_item[:item]} W/COUPON"
        grocery_item[:price] = grocery_item[:count] * grocery_item[:price] - coupon_amount
        new_cart << grocery_item
        binding.pry
      end
        
        
    else
      new_cart << grocery_item
    end
  end
  new_cart
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
