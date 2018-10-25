def shopping_list
{
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
    :grains => ["crackers", "rice", "bread", "pasta", "cereal"]
}
end

# Write methods and implementation here based on README instructions and tests


def vegetarian_ingredients
  vegetarian_list = shopping_list
  vegetarian_list[:protein].delete(:meat)
  vegetarian_list[:protein][:other].shift
  vegetarian_list
end

def ketogenic_ingredients
  keto_list = shopping_list.select {|key, value|
    [:vegetables, :protein, :dairy].include? key
  }
  keto_list[:dairy] = ["cheese"]
  keto_list
end

def mediterranean_ingredients
  okay_categories = [:protein, :dairy, :fruits, :vegetables, :grains]
  med_list = shopping_list.select {|key,value|
    okay_categories.include? key
  }
  med_list[:protein][:meat].delete("steak")
  med_list[:protein][:other] = ["nuts"]
  med_list[:dairy].delete("milk")
  med_list
end


def vegan_ingredients
  vegan_list = vegetarian_ingredients
  vegan_list.delete(:dairy)
  vegan_list
end

def remove_allergens(ingredients_hash)
  ingredients_hash[:protein][:other].delete("nuts")
  ingredients_hash
end
