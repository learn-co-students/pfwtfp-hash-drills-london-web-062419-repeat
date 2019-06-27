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
    veggies = shopping_list
    veggies[:protein].delete(:meat)
    veggies[:protein][:other].shift
    veggies
end

def ketogenic_ingredients
    keto = shopping_list
    keto.delete(:grains)
    keto.delete(:sweets)
    keto.delete(:fruits)
    keto[:dairy].shift
    keto[:dairy].shift
    # keto[:protein][:other].pop
    keto
end

def mediterranean_ingredients 
    medi = shopping_list
    medi.delete(:sweets)
    medi[:dairy].shift
    medi[:protein][:meat].pop
    medi[:protein][:other].pop
    medi[:protein][:other].shift
    medi
end

def vegan_ingredients
    vegan = vegetarian_ingredients
    vegan.delete(:dairy)
    vegan
end

def remove_allergens(any_ingred)
    allergenless = any_ingred
    allergenless[:protein][:other].delete(:nuts)
    allergenless
end