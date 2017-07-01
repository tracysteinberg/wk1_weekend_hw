#Q1 
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,amount)
  pet_shop[:admin][:pets_sold] += amount
end

def stock_count (pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop,breed)
   found_pets = []
   for pet in pet_shop[:pets]
     if pet[:breed] == breed 
      
     found_pets << pet
     end
   end
   return found_pets
end

def pets_by_breed_not(pet_shop,breed)
    found_pets = []
    for pet in pet_shop[:pets]
      if pet[:breed] == breed 
      found_pets << pet
      end
     end
     return found_pets
end

    def find_pet_by_name(pet_shop,name)
    # find_pets = {}
     for pet in pet_shop[:pets]
       if pet[:name] == name
         return pet
       end
     end
       return nil
    end

    def remove_pet_by_name(pet_shop,name)
  
    count = 0
     for pet in pet_shop[:pets]

       if pet[:name] == name
          pet_shop[:pets].delete_at(count)
       end
          count = count + 1
       end
       return nil
    end
    
    def add_pet_to_stock(pet_shop,new_pet)
        
        pet_shop[:pets]<<(new_pet)
        
        return pet_shop[:pets].length
    end

    def customer_pet_count(customers)
      
        return customers[:pets].length
    end


    def add_pet_to_customer(customers,new_pet)
        customers[:pets]<<(new_pet)
    
        return customers[:pets].length
    end
