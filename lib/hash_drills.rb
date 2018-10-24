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

def vegetarian_ingredients
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

  vegetarian_list
end

def ketogenic_ingredients
  ketogenic_list = {
    :protein => {
        :meat => ["chicken (white)", "fish (white)", "steak (red)"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
  }

  ketogenic_list
end

def mediterranean_ingredients
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

  mediterranean_list
end

def vegan_ingredients
  vegan_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :other => ["nuts","beans"]
    },
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
  }

  vegan_list
end

def mediterranean_ingredients_with_wine
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

    new_mediterranean_list
end
