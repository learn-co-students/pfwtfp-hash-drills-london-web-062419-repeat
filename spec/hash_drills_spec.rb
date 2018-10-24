require 'spec_helper'
require_relative '../lib/hash_drills.rb'

original_shopping_list = {
    :sweets => ["soda", "candy", "potato chips"],
    :protein => {
        :meat => ["chicken", "fish", "steak"],
        :other => ["eggs", "nuts","beans"]
    },
    :dairy => ["milk", "yogurt", "cheese"],
    :fruits => ["bananas", "oranges", "apples", "grapes"],
    :vegetables => ["cabbage", "broccoli", "tomatoes", "carrots"],
}

describe 'shopping_list' do
  it 'method exists' do
    expect { shopping_list }.not_to raise_error
  end

  it 'returns a Hash of the original shopping list' do
    expect(shopping_list).to eq(original_shopping_list)
  end
end

describe 'vegetarian_ingredients' do
  it 'exists' do
    expect { vegetarian_ingredients }.not_to raise_error
  end

  it 'returns a Hash' do
    expect(vegetarian_ingredients).to be_kind_of(Hash)
  end

  it 'returns a Hash of vegetarian ingredients' do
    expect(vegetarian_ingredients[:sweets]).to include("soda", "candy", "potato chips")
    expect(vegetarian_ingredients[:protein]).not_to include(:meat)
    expect(vegetarian_ingredients[:protein][:other]).not_to include("eggs")
    expect(vegetarian_ingredients[:dairy]).to include("milk", "yogurt", "cheese")
    expect(vegetarian_ingredients[:fruits]).to include("bananas", "oranges", "apples", "grapes")
    expect(vegetarian_ingredients[:vegetables]).to include("cabbage", "broccoli", "tomatoes", "carrots")
    expect(vegetarian_ingredients[:grains]).to include("crackers", "rice", "bread", "pasta", "cereal")
  end
end

describe 'ketogenic_ingredients' do
    it 'exists' do
        expect { ketogenic_ingredients }.not_to raise_error
    end

    it 'returns a Hash' do
        expect(ketogenic_ingredients).to be_kind_of(Hash)
    end

    it 'returns a Hash of ketogenic ingredients' do
      expect(ketogenic_ingredients).not_to include(:sweets)
      expect(ketogenic_ingredients[:protein][:meat]).to include("chicken", "fish", "steak")
      expect(ketogenic_ingredients[:protein][:other]).to include("eggs", "nuts","beans")
      expect(ketogenic_ingredients[:dairy]).not_to include("milk", "yogurt")
      expect(ketogenic_ingredients[:dairy]).to include("cheese")
      expect(ketogenic_ingredients).not_to include(:fruits)
      expect(ketogenic_ingredients[:vegetables]).to include("cabbage", "broccoli", "tomatoes", "carrots")
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

    it 'exists' do
      expect { mediterranean_ingredients }.not_to raise_error
    end

    it 'returns a Hash' do
        expect(mediterranean_ingredients).to be_kind_of(Hash)
    end

    it 'returns a Hash of mediterranean ingredients' do
      expect(mediterranean_ingredients).not_to include(:sweets)
      expect(mediterranean_ingredients[:protein][:meat]).to include("chicken", "fish")
      expect(mediterranean_ingredients[:protein][:meat]).not_to include("steak")
      expect(mediterranean_ingredients[:protein][:other]).to include("nuts")
      expect(mediterranean_ingredients[:protein][:other]).not_to include("beans", "eggs")
      expect(mediterranean_ingredients[:dairy]).to include("yogurt", "cheese")
      expect(mediterranean_ingredients[:vegetables]).to include("cabbage", "broccoli", "tomatoes", "carrots")
      expect(mediterranean_ingredients[:fruits]).to include("bananas", "oranges", "apples", "grapes")
      expect(mediterranean_ingredients[:grains]).to include("crackers", "rice", "bread", "pasta", "cereal")
    end
end

describe 'vegan_ingredients' do
    it 'exists' do
      expect { vegan_ingredients }.not_to raise_error
    end

    it 'returns a Hash' do
        expect(vegan_ingredients).to be_kind_of(Hash)
    end

    it 'returns a Hash of vegan ingredients' do
      expect(vegan_ingredients[:sweets]).to include("soda", "candy", "potato chips")
      expect(vegan_ingredients[:protein]).not_to include(:meat)
      expect(vegan_ingredients[:protein][:other]).to include("nuts","beans")
      expect(vegan_ingredients[:protein][:other]).not_to include("eggs")
      expect(vegan_ingredients).not_to include(:dairy)
      expect(vegan_ingredients[:fruits]).to include("bananas", "oranges", "apples", "grapes")
      expect(vegan_ingredients[:vegetables]).to include("cabbage", "broccoli", "tomatoes", "carrots")
      expect(vegan_ingredients[:grains]).to include("crackers", "rice", "bread", "pasta", "cereal")
    end
end

describe 'remove_allergens' do
    it 'exists' do
      expect { remove_allergens(vegan_ingredients) }.not_to raise_error
    end

    it 'returns a Hash' do
        expect(remove_allergens(vegan_ingredients)).to be_kind_of(Hash)
    end

    it 'removes nuts from any other ingredients Hash' do
      ingredients_lists = [shopping_list, vegetarian_ingredients, ketogenic_ingredients, mediterranean_ingredients, vegan_ingredients]
      ingredients_lists.each do |list|
        remove_allergens(list).each do |key, value|

          if key == :protein
            no_nuts = list[key]
            no_nuts[:other].delete("nuts")
            expect(value).to eq(no_nuts)
          else
            expect(value).to eq(list[key])
          end
        end
      end
    end
end
