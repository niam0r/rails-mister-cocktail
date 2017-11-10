# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(url).read

ingredients = JSON.parse(serialized_ingredients)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


url = 'http://www.thecocktaildb.com/api/json/v1/1/search.php?s='

serialized = open(url).read

cocktails = JSON.parse(serialized)

cocktails["drinks"].each do |cocktail|
  c = Cocktail.new(name: cocktail["strDrink"],
                  description: cocktail["strInstructions"]
    )

  c.remote_photo_url = cocktail["strDrinkThumb"]
  c.save
end


# rails g migration add_picture_to_cocktails picture:string



