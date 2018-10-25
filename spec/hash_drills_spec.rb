require 'spec_helper'
require_relative '../lib/hash_drills.rb'

original_shopping_list = {
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

describe 'shopping_list' do
  it 'has a method for the origin shopping list' do
    expect { shopping_list }.not_to raise_error
  end

  it 'returns a shopping list that is a hash' do
    expect(shopping_list).to be_kind_of(Hash)
  end

  it 'returns a hash of the original shopping list' do
    expect(shopping_list).to eq(original_shopping_list)
  end
end

describe 'vegetarian_ingredients' do
  it 'has a method for vegetarian ingredients' do
    expect { vegetarian_ingredients }.not_to raise_error
  end

  it 'returns a vegetarian list that is a hash' do
    expect(vegetarian_ingredients).to be_kind_of(Hash)
  end

  it 'returns a hash of vegetarian ingredients' do
    expect(vegetarian_ingredients[:sweets]).to include('soda', 'candy', 'potato chips')
    expect(vegetarian_ingredients[:protein]).not_to include(:meat)
    expect(vegetarian_ingredients[:protein][:other]).to include('eggs', 'nuts', 'beans')
    expect(vegetarian_ingredients[:dairy]).to include('milk', 'yogurt', 'cheese')
    expect(vegetarian_ingredients[:fruits]).to include('bananas', 'oranges', 'apples', 'grapes')
    expect(vegetarian_ingredients[:vegetables]).to include('cabbage', 'broccoli', 'tomatoes', 'carrots')
    expect(vegetarian_ingredients[:grains]).to include('crackers', 'rice', 'bread', 'pasta', 'cereal')
  end
end

describe 'ketogenic_ingredients' do
  it 'has a method for ketogenic ingredients' do
    expect { ketogenic_ingredients }.not_to raise_error
  end

  it 'returns a ketogenic list that is a hash' do
    expect(ketogenic_ingredients).to be_kind_of(Hash)
  end

  it 'returns a hash of ketogenic ingredients' do
    expect(ketogenic_ingredients).not_to include(:sweets)
    expect(ketogenic_ingredients[:protein][:meat]).to include('chicken (white)', 'fish (white)', 'steak (red)')
    expect(ketogenic_ingredients[:protein][:other]).to include('eggs', 'nuts', 'beans')
    expect(ketogenic_ingredients[:dairy]).to include('milk', 'yogurt', 'cheese')
    expect(ketogenic_ingredients).not_to include(:fruits)
    expect(ketogenic_ingredients[:vegetables]).to include('cabbage', 'broccoli', 'tomatoes', 'carrots')
    expect(ketogenic_ingredients).not_to include(:grains)
  end
end

describe 'mediterranean_ingredients' do
  it 'has a method for mediterranean ingredients' do
    expect { mediterranean_ingredients }.not_to raise_error
  end

  it 'returns a mediterranean list that is a hash' do
    expect(mediterranean_ingredients).to be_kind_of(Hash)
  end

  it 'returns a hash of mediterranean ingredients' do
    expect(mediterranean_ingredients).not_to include(:sweets)
    expect(mediterranean_ingredients[:protein][:meat]).to include('chicken (white)', 'fish (white)')
    expect(mediterranean_ingredients[:protein][:other]).to include('nuts')
    expect(mediterranean_ingredients[:protein][:other]).not_to include('beans', 'eggs')
    expect(mediterranean_ingredients[:dairy]).to include('yogurt', 'cheese')
    expect(mediterranean_ingredients[:vegetables]).to include('cabbage', 'broccoli', 'tomatoes', 'carrots')
    expect(mediterranean_ingredients[:fruits]).to include('bananas', 'oranges', 'apples', 'grapes')
    expect(mediterranean_ingredients[:grains]).to include('crackers', 'rice', 'bread', 'pasta', 'cereal')
  end
end

describe 'vegan_ingredients' do
  it 'can be used to confirm if a method is present in required relative' do
    expect { vegan_ingredients }.not_to raise_error
  end

  it 'returns a vegan list that is a hash' do
    expect(vegan_ingredients).to be_kind_of(Hash)
  end

  it 'returns a hash of vegan ingredients' do
    expect(vegan_ingredients[:sweets]).to include('soda', 'candy', 'potato chips')
    expect(vegan_ingredients[:protein]).not_to include(:meat)
    expect(vegan_ingredients[:protein][:other]).to include('nuts', 'beans')
    expect(vegan_ingredients[:protein][:other]).not_to include('eggs')
    expect(vegan_ingredients).not_to include(:dairy)
    expect(vegan_ingredients[:fruits]).to include('bananas', 'oranges', 'apples', 'grapes')
    expect(vegan_ingredients[:vegetables]).to include('cabbage', 'broccoli', 'tomatoes', 'carrots')
    expect(vegan_ingredients[:grains]).to include('crackers', 'rice', 'bread', 'pasta', 'cereal')
  end
end

describe 'mediterranean_ingredients_with_wine' do
  it 'returns a hash of mediterranean ingredients that includes wine as "sweets"' do
    expect(mediterranean_ingredients_with_wine[:sweets]).to include('wine')
    expect(mediterranean_ingredients_with_wine[:protein][:meat]).to include('chicken (white)', 'fish (white)')
    expect(mediterranean_ingredients_with_wine[:protein][:other]).to include('nuts')
    expect(mediterranean_ingredients_with_wine[:protein][:other]).not_to include('beans', 'eggs')
    expect(mediterranean_ingredients_with_wine[:dairy]).to include('yogurt', 'cheese')
    expect(mediterranean_ingredients_with_wine[:vegetables]).to include('cabbage', 'broccoli', 'tomatoes', 'carrots')
    expect(mediterranean_ingredients_with_wine[:fruits]).to include('bananas', 'oranges', 'apples', 'grapes')
    expect(mediterranean_ingredients_with_wine[:grains]).to include('crackers', 'rice', 'bread', 'pasta', 'cereal')
  end
end
