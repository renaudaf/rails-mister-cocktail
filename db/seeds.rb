require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

i = ingredients["drinks"]

i.each do |ingredient|
 # ingredient["strIngredient1"]
 Ingredient.create(name: "#{ingredient["strIngredient1"]}")
end

