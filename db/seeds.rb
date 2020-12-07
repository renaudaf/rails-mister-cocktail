require 'json'
require 'open-uri'

puts "Clearing database"

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "Filling database"

filepath = 'db/ingredients.json'
ingredients_serialized = open(filepath).read
ingredients = JSON.parse(ingredients_serialized)

i = ingredients["drinks"]

i.each do |ingredient|
 Ingredient.create(name: "#{ingredient["strIngredient1"]}")
end

cuba_libre = Cocktail.new(name: "Cuba Libre", description: "The Cuba libre or Rum and Coke, is a highball cocktail consisting of cola, rum, and in many recipes lime juice on ice.")
file = URI.open('https://noseychef.com/wp-content/uploads/2018/07/IMG_3791.jpg')
cuba_libre.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
cuba_libre.save!

mojito = Cocktail.new(name: "Mojito", description: "Mojito is a traditional Cuban highball. The cocktail often consists of five ingredients: white rum, sugar (traditionally sugar cane juice), lime juice, soda water, and mint. Its combination of sweetness, citrus, and herbaceous mint flavours is intended to complement the rum, and has made the mojito a popular summer drink.")
file = URI.open('http://noseychef.com/wp-content/uploads/2018/05/mohjito.jpg')
mojito.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
mojito.save!

gin_n_tonic = Cocktail.new(name: "Gin Tonic", description: "A gin and tonic or, less frequently, gin tonic, is a highball cocktail made with gin and tonic water poured over a large amount of ice. The ratio of gin to tonic varies according to taste, strength of the gin, other drink mixers being added, etc, with most recipes calling for a ratio between 1:1 and 1:3. It is usually garnished with a slice or wedge of lime.")
file = URI.open('http://noseychef.com/wp-content/uploads/2018/04/hendrickstonic.jpg')
gin_n_tonic.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
gin_n_tonic.save!

margarita = Cocktail.new(name: "Margarita", description: "A margarita is a Mexican cocktail consisting of tequila, orange liqueur, and lime juice often served with salt on the rim of the glass. The drink is served shaken with ice (on the rocks), blended with ice (frozen margarita), or without ice (straight up). Although it has become acceptable to serve a margarita in a wide variety of glass types, ranging from cocktail and wine glasses to pint glasses and even large schooners, the drink is traditionally served in the eponymous margarita glass, a stepped-diameter variant of a cocktail glass or champagne coupe.")
file = URI.open('http://noseychef.com/wp-content/uploads/2018/08/IMG_3861.jpg')
margarita.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
margarita.save!

pina_colada = Cocktail.new(name: "Piña Colada", description: "The piña colada 'pineapple', and colada 'strained' is a sweet cocktail made with rum, cream of coconut or coconut milk, and pineapple juice, usually served either blended or shaken with ice. It may be garnished with either a pineapple wedge, maraschino cherry, or both. There are two versions of the drink, both originating in Puerto Rico.")
file = URI.open('http://noseychef.com/wp-content/uploads/2020/10/IMG_8480123.jpg')
pina_colada.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pina_colada.save!

daiquiri = Cocktail.new(name: "Daiquiri", description: "Daiquiri is a family of cocktails whose main ingredients are rum, citrus juice (typically lime juice), and sugar or other sweetener.")
file = URI.open('http://noseychef.com/wp-content/uploads/2019/08/IMG_4991.jpg')
daiquiri.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
daiquiri.save!