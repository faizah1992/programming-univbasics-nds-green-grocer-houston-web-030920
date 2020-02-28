def find_item_by_name_in_collection(name, collection)
  item_index=0 
  result=nil
  while item_index<collection.count do 
    item=collection[item_index][:item]
    if item == name 
      result= collection[item_index]
    end 
    item_index+=1 
  end 
  result
  # # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  newlist=[]
  item_index=0 
  while item_index<cart.count do 
  item= cart[item_index]
   name = cart[item_index][:item]
   found= find_item_by_name_in_collection(name,newlist)
   if found
     found[:count] += 1 
    else 
      item[:count] = 1 
      newlist.push(item)
    end 
    item_index += 1 
  end 
  newlist
   
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  item_index=0 
  while item_index<cart.count do 
    name=cart[item_index][:item]
    foundcoupon = find_item_by_name_in_collection(name,coupons)
    item=cart[item_index]
    if foundcoupon
      if item[:count] >= foundcoupon[:num]
        
      
  #go to each item 
  #check if any coupon for the item 
  #if yes check count 
  #if valid create a new hash 
  #add it to cart 
  #minus the count from the original item 
  
  
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
