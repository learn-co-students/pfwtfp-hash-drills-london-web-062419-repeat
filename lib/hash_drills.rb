
def shopping_list
  shopping_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken (white)", "fish (white)", "steak (red)"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}

  shopping_list
end

def vegetarian_ingredients
  /
  vegetarian_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
  /

  vegetarian_list = Hash.new

  vegetarian_list[:sweets] = shopping_list[:sweets]  
  vegetarian_list[:protein] = {}
  vegetarian_list[:protein][:other] = shopping_list[:protein][:other]
  vegetarian_list[:dairy] = shopping_list[:dairy]
  vegetarian_list[:fruits] = shopping_list[:fruits]
  vegetarian_list[:vegetables] = shopping_list[:vegetables]
  vegetarian_list[:grains] = shopping_list[:grains]

  vegetarian_list
end

def ketogenic_ingredients
  /
  ketogenic_list = {
    :protein => {
        :meat => ["chicken (white)", "fish (white)", "steak (red)"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
  }
  /
  ketogenic_list = Hash.new

  ketogenic_list[:protein] = shopping_list[:protein]
  ketogenic_list[:dairy] = shopping_list[:dairy]
  ketogenic_list[:vegetables] = shopping_list[:vegetables]

  ketogenic_list
end

def mediterranean_ingredients
  /
  mediterranean_list = {
    :protein => {
        :meat => ["chicken (white)", "fish (white)"],
        :other => "nuts"
    },
    :dairy => ["yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
  /

  mediterranean_list = Hash.new

  mediterranean_list[:protein] = {}
  mediterranean_list[:protein][:meat] = ["chicken (white)", "fish (white)"]
  mediterranean_list[:protein][:other] = ["nuts"]
  mediterranean_list[:dairy] = shopping_list[:dairy]
  mediterranean_list[:fruits] = shopping_list[:fruits]
  mediterranean_list[:vegetables] = shopping_list[:vegetables]
  mediterranean_list[:grains] = shopping_list[:grains]

  mediterranean_list
end

def vegan_ingredients
  /
  vegan_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :other => ["nuts","beans"]
    },
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }
  /
  vegan_list = vegetarian_ingredients
  vegan_list[:protein][:other].delete("eggs")
  vegan_list.delete(:dairy)

  vegan_list
end

def mediterranean_ingredients_with_wine
  /
    new_mediterranean_list = {
      :sweets => "wine",
      :protein => {
        :meat => ["chicken (white)", "fish (white)"],
        :other => "nuts"
    },
    :dairy => ["yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
    }
    /
    new_mediterranean_list = mediterranean_ingredients
    new_mediterranean_list[:sweets] = "wine"

    new_mediterranean_list
end